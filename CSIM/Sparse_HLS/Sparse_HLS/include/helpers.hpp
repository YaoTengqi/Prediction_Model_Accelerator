#include "hls_stream.h"
#include "ap_int.h"
#include "../include/types.hpp"

template <typename t_AXI_DataType, typename t_DataType_OUT, unsigned int nPE>
void read_inputs(t_AXI_DataType *inputs,
				 hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
				 uint32_t input_data_addr1,
				 uint32_t input_data_addr2,
				 unsigned int ROWS,
				 unsigned int COLS)
{
	unsigned int ram_depth = ROWS * COLS / nPE;
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt ram1[32];
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt ram2[32];
	memcpy(&ram1[0], (const t_AXI_DataType *)&inputs[input_data_addr1], ROWS * COLS * sizeof(t_DataType_OUT));
	memcpy(&ram2[0], (const t_AXI_DataType *)&inputs[input_data_addr2], ROWS * COLS * sizeof(t_DataType_OUT));
#pragma HLS PIPELINE
	for(int i = 0; i < ram_depth; i++){
		data_stream_out.write(ram1[i]);
		data_stream_out.write(ram2[i]);
	}
}

template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void store(
	hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
	t_AXI_DataType *outputs,
	uint32_t output_data_addr3,
	unsigned int ROWS,
	unsigned int COLS,
	bool &concat_flag)
{
	unsigned int dst_idx = output_data_addr3 / sizeof(t_AXI_DataType);
	unsigned int loop_idx = nPE * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	unsigned int loop_num = ROWS * COLS * 2 / nPE;
	WideType<t_DataType_IN, nPE> data;
	int count = 0;
	for(int i = 0; i < loop_num; i++)
	{
#pragma HLS PIPELINE
		data = data_stream_out.read();
		outputs[dst_idx + i] = data;
		count++;
	}
	if(count == loop_num){
		concat_flag = true;
	}
}
