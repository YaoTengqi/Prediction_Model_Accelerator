#include <assert.h>
#include <stdint.h>

#include <cmath>
#include <iostream>
using namespace std;
inline uint32_t fp32_to_bits(float f)
{
#if defined(__OPENCL_VERSION__)
    return as_uint(f);
#elif defined(__CUDA_ARCH__)
    return (uint32_t)__float_as_uint(f);
#elif defined(__INTEL_COMPILER)
    return _castf32_u32(f);
#else
    union
    {
        float as_value;
        uint32_t as_bits;
    } fp32 = {f};
    return fp32.as_bits;
#endif
}
// 改写32bit到16bit
inline uint16_t fp16_to_bits(float f)
{
#if defined(__OPENCL_VERSION__)
    return as_uint(f);
#elif defined(__CUDA_ARCH__)
    return (uint32_t)__float_as_uint(f);
#elif defined(__INTEL_COMPILER)
    return _castf32_u32(f);
#else
    union
    {
        float as_value;
        uint16_t as_bits;
    } fp16 = {.as_value = f};
    return fp16.as_bits;
#endif
}
inline static int32_t asr_s32(int32_t x, uint32_t n)
{
#ifdef PYTORCH_QNNP_USE_SHIFT_BASE_UB_WORKAROUND
#if defined(__x86_64__) || defined(__aarch64__)
    return (int32_t)((uint64_t)(int64_t)x >> n);
#else
    return x >= 0 ? x >> n : ~(~x >> n);
#endif
#else
    return x >> n;
#endif
}

void tvm(size_t n, int32_t *input, float double_multiplier, int8_t zero_point, int8_t qmin,
         int8_t qmax, int8_t *output)
{
    int32_t significand, exponent;

    // Get the significand and exponent.
    double significand_d = std::frexp(double_multiplier, &exponent);

    // Convert the double significand to int significand, i.e., convert into a
    // integer where the decimal point is between bit 31 and 30. This is done by
    // multiplying the double value with 2^31 and then casting to int.
    significand_d = std::round(significand_d * (1ll << 15));
    auto significand_int64 = static_cast<int64_t>(significand_d);

    if (significand_int64 == (1ll << 15))
    {
        significand_int64 /= 2;
        ++exponent;
    }

    significand = static_cast<int32_t>(significand_int64);
    for (int i = 0; i < 4; i++)
    {
        output[i] = ((int64_t)input[i] * (int64_t)significand) >> (-exponent + 15);
    }
}

void pytorch(size_t n, int32_t *input, float scale, int8_t zero_point, int8_t qmin, int8_t qmax,
             int8_t *output)
{
    // assert(scale < 1.0f);
    assert(scale >= 0x1.0p-32f);

    /* Compute requantization parameters */
    const uint32_t scale_bits = fp32_to_bits(scale);

    /* Multiplier is in [0x40000000, 0x7FFFFF80] range */
    const int32_t multiplier =
        (int32_t)(((scale_bits & UINT32_C(0x007FFFFF)) | UINT32_C(0x00800000)) << 7);
    assert(multiplier >= INT32_C(0x40000000));
    assert(multiplier <= INT32_C(0x7FFFFF80));

    /* Shift is in [0, 31] range */
    const int32_t shift = 127 + 31 - 32 - (fp32_to_bits(scale) >> 23);
    // assert(shift >= 0);
    assert(shift < 32);

    const int64_t q31rounding = INT64_C(0x40000000);
    const int32_t remainder_mask = (int32_t)((UINT32_C(1) << shift) - UINT32_C(1));
    const int32_t threshold = (int32_t)((uint32_t)remainder_mask >> 1);
    const int32_t smin = (int32_t)(uint32_t)qmin - (int32_t)(uint32_t)zero_point;
    const int32_t smax = (int32_t)(uint32_t)qmax - (int32_t)(uint32_t)zero_point;
    for (; n != 0; n -= 4)
    {
        const int32_t x = input[0];
        const int32_t y = input[1];
        const int32_t z = input[2];
        const int32_t w = input[3];
        input += 4;

        /*
         * Compute full 64-bit product of signed 32-bit factors.
         *
         * Note: multiplier can be treated as either signed or unsigned.
         */
        const int64_t x_product = (int64_t)x * (int64_t)multiplier;
        const int64_t y_product = (int64_t)y * (int64_t)multiplier;
        const int64_t z_product = (int64_t)z * (int64_t)multiplier;
        const int64_t w_product = (int64_t)w * (int64_t)multiplier;

        /*
         * Get the Q31 multiplication result by extracting bits 31-62 of the
         * product, with rounding up. Add rounding value (0x40000000) and then shift
         * right by 31 bits and extract the low 32-bit word. Note: casts to unsigned
         * types are needed to avoid undefined behavior. Given the multiplier range,
         * the result of Q31 multiplication is in [-2147483520, 2147483519] range.
         */
        const int32_t x_q31product = (int32_t)(uint32_t)((uint64_t)(x_product + q31rounding) >> 31);
        const int32_t y_q31product = (int32_t)(uint32_t)((uint64_t)(y_product + q31rounding) >> 31);
        const int32_t z_q31product = (int32_t)(uint32_t)((uint64_t)(z_product + q31rounding) >> 31);
        const int32_t w_q31product = (int32_t)(uint32_t)((uint64_t)(w_product + q31rounding) >> 31);

        /*
         * Arithmetically shift the adjusted product right with rounding.
         * Rounding is performed towards closest integer, with midpoints rounded
         * away from zero.
         *
         * Shift with correct rounding could be efficiently implemented by
         * pre-adding rounding constant, but with input in
         * [-2147483520, 2147483519] range and rounding constant up to 2**30 we
         * can't rule out overflow. This limitation leaves us with 3 options:
         * 1. Extend input to 64-bit signed integer, perform addition and shift on
         * 64-bit integers, then truncate result to 32 bits.
         * 2. Detect overflow and handle this situation separately. Note that
         * overflow is possible only when input is positive, and even when addition
         * of a rounding constant overflows 32-bit signed integer, it still doesn't
         *    overflow 32-bit unsigned integer. Thus, in case of signed overflow, we
         * can compute the result using unsigned arithmetics, specifically using
         * logical shift right instead of arithmetic shift right.
         * 3. Performs arithmetic shift as is, which will produce division result
         * rounded down. Then compute remainder of this division by a power of 2,
         * and adjust the result. Result needs adjustment (increment by 1) when
         *     - input is positive, shift is non-zero, and remainder >= 2**(shift -
         * 1), e.g. 10 >> 2 needs adjustment
         *     - input is negative, shift is non-zero, and remainder > 2**(shift -
         * 1), e.g. -10 >> 2 doesn't need adjustment These conditions can be
         * generalized as remainder + (input <= 0) > 2**(shift - 1) or equivalently
         *        remainder - (input < 0) > ((2**shift - 1) >> 1)
         *    When shift is 0, remainder is 0 as well, the last condition is always
         * false, and no adjustment is done.
         *
         * Among these options, option 3 is the most performant across the board,
         * although option 1 is promising for 64-bit instruction sets.
         */
        const int32_t x_remainder = (x_q31product & remainder_mask) - (int32_t)(x_q31product < 0);
        const int32_t y_remainder = (y_q31product & remainder_mask) - (int32_t)(y_q31product < 0);
        const int32_t z_remainder = (z_q31product & remainder_mask) - (int32_t)(z_q31product < 0);
        const int32_t w_remainder = (w_q31product & remainder_mask) - (int32_t)(w_q31product < 0);

        const int32_t x_scaled = asr_s32(x_q31product, shift) + (int32_t)(x_remainder > threshold);
        const int32_t y_scaled = asr_s32(y_q31product, shift) + (int32_t)(y_remainder > threshold);
        const int32_t z_scaled = asr_s32(z_q31product, shift) + (int32_t)(z_remainder > threshold);
        const int32_t w_scaled = asr_s32(w_q31product, shift) + (int32_t)(w_remainder > threshold);

        /*
         * Clamp scaled value with zero point between (qmin - zero point) and (qmax
         * - zero point).
         */
        const int32_t x_clamped = x_scaled < smin ? smin : x_scaled > smax ? smax
                                                                           : x_scaled;
        const int32_t y_clamped = y_scaled < smin ? smin : y_scaled > smax ? smax
                                                                           : y_scaled;
        const int32_t z_clamped = z_scaled < smin ? smin : z_scaled > smax ? smax
                                                                           : z_scaled;
        const int32_t w_clamped = w_scaled < smin ? smin : w_scaled > smax ? smax
                                                                           : w_scaled;

        /*
         * Add zero point to clamped value.
         * The result is guaranteed to be in [qmin, qmax] range.
         *
         * This addition can not be safely done before clamping, because scaled
         * values are in [-2147483520, 2147483519] range, so addition of zero point
         * (which can be up to 255) can overflow signed 32-bit integer.
         */
        const int32_t x_biased = x_clamped + zero_point;
        const int32_t y_biased = y_clamped + zero_point;
        const int32_t z_biased = z_clamped + zero_point;
        const int32_t w_biased = w_clamped + zero_point;

        output[0] = (int8_t)x_biased;
        output[1] = (int8_t)y_biased;
        output[2] = (int8_t)z_biased;
        output[3] = (int8_t)w_biased;
        output += 4;
    }
}

std::pair<int32_t, int32_t> GetFixedPointMultiplierShift(double double_multiplier)
{
    int32_t significand, exponent;
    // 修改成pytorch的运行方式
    float scale = (float)double_multiplier;
    const uint32_t scale_bits = fp32_to_bits(scale); // 1bit符号位 + 8bit阶数 + 23bit尾数

    /* Multiplier is in [0x40000000, 0x7FFFFF80] range */
    const int32_t multiplier =
        (int32_t)(((scale_bits & UINT32_C(0x007FFFFF)) | UINT32_C(0x00800000))
                  << 7); // 取后23bit的值，并在32bit的第二个位置，置1——“01……(scale_bits的23位)”
    assert(multiplier >= INT32_C(0x40000000));
    assert(multiplier <= INT32_C(0x7FFFFF80));

    /* Shift is in [0, 31] range */
    const int32_t shift =
        127 + 31 - 32 - (fp32_to_bits(scale) >> 23); // 右移23bit：取出阶数 "0 0111 1100"
    // assert(shift >= 0);
    assert(shift < 32);
    return std::make_pair(multiplier, shift);
}
std::pair<int16_t, int16_t> GetFixedPointMultiplierShift16(double double_multiplier)
{
    int16_t significand, exponent;
    // 修改成pytorch的运行方式
    float scale = (float)double_multiplier;
    const uint32_t scale_bits = fp32_to_bits(scale); // 1bit符号位 + 8bit阶数 + 23bit尾数

    /* Multiplier is in [0x40000000, 0x7FFFFF80] range */
    const int16_t multiplier =
        (int16_t)(((scale_bits & UINT16_C(0x03FF)) | UINT16_C(0x4000))
                  << 0); // 取后10bit的值，并在16bit的第二个位置，置1——“01……(scale_bits的10位)”
    assert(multiplier >= INT16_C(0x4000));
    assert(multiplier <= INT16_C(0x7F80));

    /* Shift is in [0, 31] range */
    const int16_t shift =
        127 + 31 - 32 - (fp32_to_bits(scale) >> 23); // 右移23bit：取出阶数 "0 0111 1100"
    // assert(shift >= 0);
    // assert(shift < 32);
    return std::make_pair(multiplier, shift);
}

int32_t runuop(int32_t x, int32_t y, int32_t z)
{
    // std::cout<<"data="<<x<<" "<<"multiplier="<<y<<
    // x:data
    // y:multiplier
    // z:shift
    // z=1709103811;
    // 初始化量化参数
    // int8_t zero_point = 0;
    // int8_t qmin=-128;
    // int8_t qmax=127;
    int32_t multiplier = y;
    int32_t shift = z;
    const int64_t q31rounding = INT64_C(0x00000000);
    const int32_t remainder_mask = (int32_t)((UINT32_C(1) << shift) - UINT32_C(1));
    const int32_t threshold = (int32_t)((uint32_t)remainder_mask >> 1);
    // const int32_t smin = (int32_t)(uint32_t)qmin - (int32_t)(uint32_t)zero_point;
    // const int32_t smax = (int32_t)(uint32_t)qmax - (int32_t)(uint32_t)zero_point;
    const int64_t x_product = (int64_t)x * (int64_t)multiplier;
    const int32_t x_q31product = (int32_t)(uint32_t)((uint64_t)(x_product + q31rounding) >> 31);
    const int32_t x_remainder = (x_q31product & remainder_mask) - (int32_t)(x_q31product < 0);

    const int32_t x_scaled = asr_s32(x_q31product, shift) + (int32_t)(x_remainder > threshold);
    // const int32_t x_clamped =x_scaled < smin ? smin : x_scaled > smax ? smax : x_scaled;
    int32_t x_biased = x_scaled;
    // if(((asr_s32(x_q31product, shift) & 1)==0) and ((x_product>>31 & 1)==0)){  //原本是偶数就不进位
    //   x_biased=x_biased-1;
    // }
    return x_biased;
}

int32_t runuop_tvm_real(int32_t x, int32_t y, int32_t z)
{
    int32_t s = z;

    int32_t right_shift = s > 0 ? s : 0;
    int32_t left_shift = s > 0 ? 0 : -s;
    int32_t is_left_shift_required = (left_shift != 0);
    int64_t x1 = static_cast<int64_t>(x);
    int64_t y1 = static_cast<int64_t>(y);
    x1 = is_left_shift_required ? x1 << left_shift : x1;

    // 2) Perform the multiplication in higher precision.
    x1 = x1 * y1;

    // 3) Find the rounding scalar
    int32_t total_right_shift = right_shift + 31;
    int64_t pos_rounding_value = static_cast<int64_t>(1) << (total_right_shift - static_cast<int64_t>(1));
    bool is_ou = ((x1 >> total_right_shift) & 1) == 0;
    x1 = x1 + pos_rounding_value;

    // 4) Simply right shift the result to get the final output.
    bool is_ji = ((x1 >> total_right_shift) & 1) == 1;
    x1 = x1 >> total_right_shift;
    if (is_ou && is_ji)
    {
        x1 = x1 - 1;
    }
    return static_cast<int32_t>(x1);
}

int16_t runuop16(int16_t x, int16_t y, int16_t z)
{
    // x:data
    // y:multiplier
    // z:shift
    //  z=1709103811;
    // 初始化量化参数
    int8_t zero_point = 0;
    //   int8_t qmin=-128;
    //   int8_t qmax=127;
    int16_t multiplier = y;
    int16_t shift = z;
    const int32_t q31rounding = INT32_C(0x4000);
    const int16_t remainder_mask = (int16_t)((UINT16_C(1) << shift) - UINT16_C(1));
    const int16_t threshold = (int16_t)((uint16_t)remainder_mask >> 1);
    //   const int32_t smin = (int32_t)(uint32_t)qmin - (int32_t)(uint32_t)zero_point;
    //   const int32_t smax = (int32_t)(uint32_t)qmax - (int32_t)(uint32_t)zero_point;
    const int32_t x_product = (int32_t)x * (int32_t)multiplier;
    const int16_t x_q31product = (int16_t)(uint16_t)((uint32_t)(x_product + q31rounding) >> 15);
    const int16_t x_remainder = (x_q31product & remainder_mask) - (int16_t)(x_q31product < 0);

    const int16_t x_scaled = asr_s32(x_q31product, shift) + (int16_t)(x_remainder > threshold);
    //   const int32_t x_clamped =x_scaled < smin ? smin : x_scaled > smax ? smax : x_scaled;
    int16_t x_biased = x_scaled + zero_point;
    return x_biased;

    // int64_t temp = (int64_t)x * (int64_t)z;
    // temp = temp >> y;
    // return temp;
}

int main()
{
    size_t n = 4;
    int32_t *input = new int32_t[4]{12, -65, 4, 12};
    float scale = 0.125;
    int8_t zero_point = 0;
    int8_t qmin = -128;
    int8_t qmax = 127;
    int8_t *output = new int8_t[4];
    pytorch(n, input, scale, zero_point, qmin, qmax, output);
    cout << "原始数据:             ";
    for (int i = 0; i < 4; i++)
    {
        cout << (int32_t)input[i] << " ";
    }
    cout << endl;
    cout << "pytorch最初结果:      ";
    for (int i = 0; i < 4; i++)
    {
        cout << (int32_t)output[i] << " ";
    }
    cout << endl;
    int8_t *output2 = new int8_t[4];
    tvm(n, input, scale, zero_point, qmin, qmax, output2);
    cout << "TVM结果:              ";
    for (int i = 0; i < 4; i++)
    {
        cout << (int32_t)output2[i] << " ";
    }
    cout << endl;
    cout << "pytorch修改后:        ";
    auto [fixed_point_multiplier, shift] = GetFixedPointMultiplierShift(scale);
    for (int i = 0; i < 4; i++)
    {
        cout << runuop(input[i], fixed_point_multiplier, shift) << " ";
    }
    cout << endl;
    cout << "real tvm requant:        ";
    // auto [fixed_point_multiplier1, shift1] = GetFixedPointMultiplierShift(scale);
    for (int i = 0; i < 4; i++)
    {
        cout << runuop_tvm_real(input[i], fixed_point_multiplier, shift) << " ";
    }
    cout << endl;
    cout << "pytorch改成16bit结果: ";
    auto [fixed_point_multiplier16, shift16] = GetFixedPointMultiplierShift16(scale);
    // cout<<runuop16((int16_t)data,(int16_t)fixed_point_multiplier16,(int16_t)shift16)<<endl;
    for (int i = 0; i < 4; i++)
    {
        cout << runuop16((int16_t)input[i], (int16_t)fixed_point_multiplier16, (int16_t)shift16) << " ";
    }
    cout << endl;
    // [fixed_point_multiplier, shift] = GetFixedPointMultiplierShift(0.014443958);
    // cout << fixed_point_multiplier << " " << shift << endl;

    // //pytorch量化
    // x=[-65]

    return 0;
}