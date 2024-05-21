#include "concat.hpp"

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

#pragma HLS DATAFLOW
	read_inputs<t_AXI_DataType, t_DataType_OUT, nPE>(inputs, input_data_addr1, input_data_addr2, ROWS, COLS, outputs, concat_flag);
}
