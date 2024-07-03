#include "hls_stream.h"
#include "ap_int.h"
#include "../include/types.hpp"

template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE, unsigned int bigPE>
void loadRAM(
	unsigned int am_ROWS,
	unsigned int am_COLS,
	unsigned int fm_ROWS,
	unsigned int fm_COLS,
	t_AXI_DataType *inputs,
	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &am_value_stream,
	typename WideType<t_DataType_IN, nPE>::t_TypeInt fm_ram[4096],
	uint32_t input_data_addr1,
	uint32_t input_data_addr2)
{
	typename WideType<t_DataType_IN, nPE>::t_TypeInt am_ram[4096];
	int fm_loop_num = fm_ROWS * fm_COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	int am_loop_num = am_ROWS * am_COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	for (int j = 0; j < am_loop_num; j++)
	{
		am_ram[j] = inputs[input_data_addr2 + j]; // load adjacency matrix
	}
	for (int row = 0; row < am_ROWS; row++){
			for (int col = 0; col < am_COLS / nPE; col++){
				int blocks = am_COLS / nPE;
				WideType<t_DataType_IN, nPE> am_value = am_ram[row * blocks + col];
				am_value_stream.write(am_value);
		}
	}
	for (int i = 0; i < fm_loop_num; i++)
	{
		fm_ram[i] = inputs[input_data_addr1 + i]; // load feature matrix
	}
}

template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE, unsigned int bigPE>
void addCountStream(
	unsigned int am_ROWS,
	unsigned int am_COLS,
	unsigned int fm_ROWS,
	unsigned int fm_COLS,
	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &am_value_stream,
	hls::stream<uint8_t> &idx_stream,
	hls::stream<uint8_t> &count_stream,
	uint32_t input_data_addr1,
	uint32_t input_data_addr2,
	hls::stream<int> &idx_num_stream)
{
	int idx_count = 0, count_count = 0;
	int idx_num = 0;
	uint8_t idx_ram[4096];
	uint8_t count_ram[2048];
#pragma HLS PIPELINE
//	int idx_num = 0;
	int count_num = 0;
	for (int row = 0; row < am_ROWS; row++)
	{ // 获取idx和count
		int count = 0;
		for (int col = 0; col < am_COLS / nPE; col++){
			int blocks = am_COLS / nPE;
			WideType<t_DataType_IN, nPE> am_value = am_value_stream.read();
#pragma HLS UNROLL
			for (int col_inner = 0; col_inner < nPE; col_inner++)
			{
				if (am_value[col_inner] != 0)
				{
					count++;
					int idx = col * nPE + col_inner;
					idx_ram[idx_num++] = idx;	// col_inner是某一块的offest，col * nPE就是第col块的索引起始
//					idx_stream.write(idx);
				}
			}
		}
		count_ram[count_num++] = count;
//		count_stream.write(count);	// 让count_stream先有值，可以快启动mul计算
	}
	idx_num_stream.write(idx_num);
#pragma HLS PIPELINE
	for (int block = 0; block < (fm_COLS / nPE); block++)
	{
		for(int i = 0; i < idx_num; i++){
			int idx = idx_ram[i];
			idx_stream.write(idx);
		}
		for (int j = 0; j < count_num; j++)
		{
			int count = count_ram[j];
			count_stream.write(count);
		}
	}
}

template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE, unsigned int bigPE>
void loadFmStream(
	unsigned int am_ROWS,
	unsigned int am_COLS,
	unsigned int fm_ROWS,
	unsigned int fm_COLS,
	hls::stream<uint8_t> &idx_stream,
	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &fm_stream,
	typename WideType<t_DataType_IN, nPE>::t_TypeInt fm_ram[4096],
	uint32_t input_data_addr1,
	uint32_t input_data_addr2,
	hls::stream<int> &idx_num_stream)
{
	int idx_num = idx_num_stream.read();
#pragma HLS PIPELINE
	for (int block = 0; block < (fm_COLS / nPE); block++)
	{
		for (int i = 0; i < idx_num; i++)
		{
			int col = idx_stream.read();
			WideType<t_DataType_IN, nPE> fm_value = fm_ram[block * bigPE + col];
			fm_stream.write(fm_value);
		}
	}
}

template <typename t_AXI_DataType, typename t_Quant_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void mul(
	unsigned int am_ROWS,
	unsigned int am_COLS,
	unsigned int fm_ROWS,
	unsigned int fm_COLS,
	hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &fm_stream,
	hls::stream<uint8_t> &count_stream,
	hls::stream<typename WideType<t_Quant_DataType, nPE>::t_TypeInt> &data_stream_out)
{
#pragma HLS PIPELINE II = 1
	for (int block = 0; block < (fm_COLS / nPE); block++)
	{ // 每次计算一块
		for (int row = 0; row < am_ROWS; row++)
		{ // 一次计算一行，每块算ROWS行
			int idx_count = count_stream.read();
			t_Quant_DataType ZERO = 0;
			WideType<t_Quant_DataType, nPE> result = ZERO;
#pragma HLS UNROLL
			for (int count = 0; count < idx_count; count++)
			{ // 根据idx_stream取出对应行的fm_stream值
//				uint8_t idx = idx_stream.read();
				//			WideType<t_DataType_IN, nPE> fm_value = fm_ram[block * nPE + idx];
				WideType<t_DataType_IN, nPE> fm_value = fm_stream.read();
				for (int pe = 0; pe < nPE; pe++)
				{ // 每次计算一个PE
					result[pe] = result[pe] + static_cast<t_Quant_DataType>(fm_value[pe] * 127);
				}
			}
			data_stream_out.write(result);
		}
	}
}

template <typename t_AXI_DataType, typename t_Quant_DataType, typename t_DataType_OUT, unsigned int nPE>
void quant(hls::stream<typename WideType<t_Quant_DataType, nPE>::t_TypeInt> &data_stream_out,
		   unsigned int fm_ROWS,
		   unsigned int fm_COLS,
		   hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &requant_stream_out,
		   int quant_shift,
		   int quant_mul)
{
	// 量化赋值操作
	int64_t ONE = static_cast<int64_t>(1);
	// Requant
	for (int i = 0; i < fm_ROWS * fm_COLS / nPE; i++)
	{
		WideType<t_Quant_DataType, nPE> dataValue = data_stream_out.read();
		WideType<t_DataType_OUT, nPE> outValue;
		for (int j = 0; j < nPE; j++)
		{
			int64_t temp = static_cast<int64_t>(dataValue[j]);
			int right_shift = quant_shift > 0 ? quant_shift : 0;
			int left_shift = quant_shift > 0 ? 0 : (-quant_shift);
			if (left_shift > 0)
			{
				temp = temp << left_shift;
			}
			temp = temp * quant_mul;
			int total_right_shift = right_shift + 31;
			int64_t pos_rounding_value = (ONE << (total_right_shift - ONE));
			temp = temp + pos_rounding_value;
			temp = temp >> total_right_shift;
			// cilp到[-128:127]
			temp = temp > 127 ? 127 : temp;
			temp = temp < -128 ? -128 : temp;
			//		    dataValue[j] = temp;
			outValue[j] = static_cast<t_DataType_OUT>(temp);
		}
		requant_stream_out.write(outValue);
	}
}

template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE, unsigned int bigPE>
void store(
	hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
	t_AXI_DataType *outputs,
	uint32_t output_data_addr3,
	unsigned int ROWS,
	unsigned int COLS,
	bool &done_flag)
{
	done_flag = false;

	unsigned int dst_idx = output_data_addr3;
	//	unsigned int dst_idx = 0;
	unsigned int loop_idx = bigPE * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	unsigned int loop_num = ROWS * COLS / nPE;
	WideType<t_DataType_IN, nPE> data;
	int count = 0;
	for (int i = 0; i < loop_num; i++)
	{
#pragma HLS PIPELINE
		data = data_stream_out.read();
		outputs[dst_idx + i] = data;
		count++;
	}
	if (count == loop_num)
	{
		done_flag = true;
	}
}
