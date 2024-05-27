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

	hls::stream<WideType<t_DataType_IN, sizeof(t_AXI_DataType) / sizeof(t_DataType_IN)>> input_stream;
#pragma HLS STREAM variable = input_stream depth = 64
	hls::stream<WideType<t_DataType_OUT, sizeof(t_AXI_DataType) / sizeof(t_DataType_OUT)>> output_stream;
#pragma HLS STREAM variable = output_stream depth = 64

#pragma HLS DATAFLOW
	read_inputs<t_AXI_DataType, t_DataType_IN, nPE>(inputs, input_data_addr1, input_data_addr2, ROWS, COLS, input_stream);
	requant<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE>(input_stream, ROWS, COLS, output_stream);
	store<t_AXI_DataType, t_DataType_OUT, nPE>(ROWS, COLS, output_data_addr3, output_stream, outputs, concat_flag);
}


