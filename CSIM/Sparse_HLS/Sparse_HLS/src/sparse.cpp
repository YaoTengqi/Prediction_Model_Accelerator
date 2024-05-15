#include "sparse.hpp"

void concat(
	uint32_t input_data_addr1,
	uint32_t input_data_addr2,
	uint32_t output_data_addr3,
	unsigned int ROWS,
	unsigned int COLS,
	t_AXI_DataType *inputs,
	t_AXI_DataType *outputs,
	bool &concat_flag)
{
// 硬件绑定
#pragma HLS INTERFACE mode = m_axi port = inputs bundle = concat_data latency = 32
#pragma HLS INTERFACE mode = m_axi port = outputs bundle = concat_data latency = 32
#pragma HLS INTERFACE mode = s_axilite port = input_data_addr1 bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = input_data_addr2 bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = output_data_addr3 bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = ROWS bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = COLS bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = concat_flag bundle = concat_addr
#pragma HLS INTERFACE mode = s_axilite port = return bundle = concat_addr // 开始信号

	// HLS流设定
	// 	hls::stream<WideType<t_DataType_IN, nPE>::t_TypeInt> data_concat1;
	// #pragma HLS STREAM variable = data_concat1 depth = 4
	// 	hls::stream<WideType<t_DataType_IN, nPE>::t_TypeInt> data_concat2;
	// #pragma HLS STREAM variable = data_concat2 depth = 4
	hls::stream<WideType<t_DataType_OUT, nPE>::t_TypeInt> data_out;
#pragma HLS STREAM variable = data_out depth = 4

	// 进行concat处理
	/**
	 * 1. 从inputs中根据input_data_addr1获取data_a
	 * 2. 从inputs中根据input_data_addr2获取data_b
	 * 3. 进行concat(data_a, data_b, output_data)操作
	 */
#pragma HLS DATAFLOW
	read_inputs<t_AXI_DataType, t_DataType_OUT, nPE>(inputs, data_out, input_data_addr1, input_data_addr2, ROWS, COLS);
	//	concatenate<t_DataType_IN, t_DataType_OUT, nPE>(data_concat1, data_concat2, data_out, ROWS, COLS);
	store<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE>(data_out, outputs, 0, ROWS, COLS, concat_flag);
}
