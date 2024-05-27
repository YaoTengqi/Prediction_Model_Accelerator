#include "hls_stream.h"
#include "ap_int.h"
#include "../include/types.hpp"

template <typename t_AXI_DataType, typename t_DataType_IN, unsigned int nPE>
void read_inputs(t_AXI_DataType *inputs,
				 uint32_t input_data_addr1,
				 uint32_t input_data_addr2,
				 unsigned int ROWS,
				 unsigned int COLS,
				 hls::stream<WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)>> &input_stream
				 )
{
#pragma HLS PIPELINE
	for (int i = 0; i < ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType); i++){
		WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)> firstBlockValue = inputs[input_data_addr1 + i];
		input_stream.write(firstBlockValue);
	}
#pragma HLS PIPELINE
	for (int i = 0; i < ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType); i++){
		WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)> secondBlockValue = inputs[input_data_addr2 + i];
		input_stream.write(secondBlockValue);
	}
}


template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void requant(hls::stream<WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)>> &input_stream,
			 unsigned int ROWS,
			 unsigned int COLS,
			 hls::stream<WideType<t_DataType_OUT, sizeof(t_AXI_DataType) / sizeof(t_DataType_OUT)>> &output_stream
			 ){
	// 第1块的因子
	int mul1 = 1595702528;
	int shift1 = -1;
	// 第2块的因子
	int mul2 = 1575568640;
	int shift2 = -1;
	int right_shift = shift1 > 0 ? shift1 : 0;
	int left_shift = shift1 > 0 ? 0 : (-shift1);

#pragma HLS PIPELINE
#pragma HLS UNROLL factor=2
	// Requant
	for (int i = 0; i < ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType); i++){
		WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)> firstBlockValue = input_stream.read();
		for(int j = 0; j < sizeof(t_AXI_DataType) / sizeof(t_DataType_IN); j++){
			int64_t temp = firstBlockValue[j];
			// 第1块输入
			if (left_shift > 0)
			{
				temp = temp << left_shift;
			}
			temp = temp * mul1;
			int total_right_shift = right_shift + 31;
			int64_t pos_rounding_value = (1 << (total_right_shift - 1));
			temp = temp + pos_rounding_value;
			temp = temp >> total_right_shift;
			// cilp到[-128:127]
			temp = temp > 127 ? 127 : temp;
			temp = temp < -128 ? -128 : temp;
			firstBlockValue[j] = temp;
		}
		output_stream.write(firstBlockValue);
	}

	// Requant
#pragma HLS PIPELINE
#pragma HLS UNROLL factor=2
	for (int i = 0; i < ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType); i++){
		WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)> secondBlockValue = input_stream.read();
		for(int j = 0; j < sizeof(t_AXI_DataType) / sizeof(t_DataType_IN); j++){
			int64_t temp = secondBlockValue[j];
			// 第2块输入
			right_shift = shift2 > 0 ? shift2 : 0;
			left_shift = shift2 > 0 ? 0 : (-shift2);
			if (left_shift > 0)
			{
				temp = temp << left_shift;
			}
			temp = temp * mul2;
			int total_right_shift = right_shift + 31;
			int64_t pos_rounding_value = (1 << (total_right_shift - 1));
			temp = temp + pos_rounding_value;
			temp = temp >> total_right_shift;
			// cilp到[-128:127]
			temp = temp > 127 ? 127 : temp;
			temp = temp < -128 ? -128 : temp;
			secondBlockValue[j] = temp;
		}
		output_stream.write(secondBlockValue);
	}
}

template <typename t_AXI_DataType, typename t_DataType_OUT, unsigned int nPE>
void store(  unsigned int ROWS,
			 unsigned int COLS,
			 uint32_t input_data_addr3,
			 hls::stream<WideType<t_DataType_OUT, sizeof(t_AXI_DataType) / sizeof(t_DataType_OUT)>> &output_stream,
			 t_AXI_DataType *outputs,
			 bool &done_flag
			 ){
	t_AXI_DataType result;
	int count = 0;
	for (int i = 0; i < ROWS * COLS * 2 * sizeof(t_DataType_OUT) / sizeof(t_AXI_DataType); i++){
#pragma HLS PIPELINE
		result = output_stream.read();
		outputs[input_data_addr3 + i] = result;
		count++;
	}
	if (count == ROWS * COLS * 2 * sizeof(t_DataType_OUT) / sizeof(t_AXI_DataType))
	{
		done_flag = true;
	}
}

