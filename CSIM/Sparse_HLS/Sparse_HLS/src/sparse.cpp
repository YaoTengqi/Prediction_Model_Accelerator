#include "sparse.hpp"

void sparse(
	uint32_t input_data_addr1,
	uint32_t input_data_addr2,
	uint32_t output_data_addr3,
	unsigned int am_ROWS,
	unsigned int am_COLS,
	unsigned int fm_ROWS,
	unsigned int fm_COLS,
	t_AXI_DataType *inputs,
	t_AXI_DataType *outputs,
	bool &sparse_flag)
{
// 硬件绑定
#pragma HLS INTERFACE mode = m_axi port = inputs bundle = sparse_data latency = 32
#pragma HLS INTERFACE mode = m_axi port = outputs bundle = sparse_data latency = 32
#pragma HLS INTERFACE mode = s_axilite port = input_data_addr1 bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = input_data_addr2 bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = output_data_addr3 bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = am_ROWS bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = am_COLS bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = fm_ROWS bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = fm_COLS bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = sparse_flag bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = return bundle = sparse_addr // 开始信号

	// 输出矩阵
	hls::stream<WideType<t_DataType_OUT, nPE>::t_TypeInt> data_out;
#pragma HLS STREAM variable = data_out depth = 4
	// 特征矩阵的RAM
	t_DataType_IN fm_ram[fm_ROWS][fm_COLS];
	uint8_t idx_ram[1024];
	uint8_t count_ram[32];

#pragma HLS DATAFLOW
	load<t_AXI_DataType, t_DataType_OUT, nPE>(am_ROWS, am_COLS, fm_ROWS, fm_COLS, inputs, idx_ram, count_ram, *fm_ram, input_data_addr1, input_data_addr2);
	mul<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE>( am_ROWS, am_COLS, fm_ROWS, fm_COLS, *fm_ram, idx_ram, count_ram, data_out, outputs);
	store<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE>(data_out, outputs, output_data_addr3, am_ROWS, fm_COLS, sparse_flag);
}
