// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_data_addr1
//        bit 31~0 - input_data_addr1[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of input_data_addr2
//        bit 31~0 - input_data_addr2[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of output_data_addr3
//        bit 31~0 - output_data_addr3[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of am_ROWS
//        bit 31~0 - am_ROWS[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of am_COLS
//        bit 31~0 - am_COLS[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of fm_ROWS
//        bit 31~0 - fm_ROWS[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of fm_COLS
//        bit 31~0 - fm_COLS[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x4c : Data signal of inputs
//        bit 31~0 - inputs[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of outputs
//        bit 31~0 - outputs[31:0] (Read/Write)
// 0x58 : Data signal of outputs
//        bit 31~0 - outputs[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of quant_shift
//        bit 31~0 - quant_shift[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of quant_mul
//        bit 31~0 - quant_mul[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of sparse_flag
//        bit 0  - sparse_flag[0] (Read)
//        others - reserved
// 0x74 : Control signal of sparse_flag
//        bit 0  - sparse_flag_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define SPARSE_ADDR_ADDR_AP_CTRL                0x00
#define SPARSE_ADDR_ADDR_GIE                    0x04
#define SPARSE_ADDR_ADDR_IER                    0x08
#define SPARSE_ADDR_ADDR_ISR                    0x0c
#define SPARSE_ADDR_ADDR_INPUT_DATA_ADDR1_DATA  0x10
#define SPARSE_ADDR_BITS_INPUT_DATA_ADDR1_DATA  32
#define SPARSE_ADDR_ADDR_INPUT_DATA_ADDR2_DATA  0x18
#define SPARSE_ADDR_BITS_INPUT_DATA_ADDR2_DATA  32
#define SPARSE_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA 0x20
#define SPARSE_ADDR_BITS_OUTPUT_DATA_ADDR3_DATA 32
#define SPARSE_ADDR_ADDR_AM_ROWS_DATA           0x28
#define SPARSE_ADDR_BITS_AM_ROWS_DATA           32
#define SPARSE_ADDR_ADDR_AM_COLS_DATA           0x30
#define SPARSE_ADDR_BITS_AM_COLS_DATA           32
#define SPARSE_ADDR_ADDR_FM_ROWS_DATA           0x38
#define SPARSE_ADDR_BITS_FM_ROWS_DATA           32
#define SPARSE_ADDR_ADDR_FM_COLS_DATA           0x40
#define SPARSE_ADDR_BITS_FM_COLS_DATA           32
#define SPARSE_ADDR_ADDR_INPUTS_DATA            0x48
#define SPARSE_ADDR_BITS_INPUTS_DATA            64
#define SPARSE_ADDR_ADDR_OUTPUTS_DATA           0x54
#define SPARSE_ADDR_BITS_OUTPUTS_DATA           64
#define SPARSE_ADDR_ADDR_QUANT_SHIFT_DATA       0x60
#define SPARSE_ADDR_BITS_QUANT_SHIFT_DATA       32
#define SPARSE_ADDR_ADDR_QUANT_MUL_DATA         0x68
#define SPARSE_ADDR_BITS_QUANT_MUL_DATA         32
#define SPARSE_ADDR_ADDR_SPARSE_FLAG_DATA       0x70
#define SPARSE_ADDR_BITS_SPARSE_FLAG_DATA       1
#define SPARSE_ADDR_ADDR_SPARSE_FLAG_CTRL       0x74
