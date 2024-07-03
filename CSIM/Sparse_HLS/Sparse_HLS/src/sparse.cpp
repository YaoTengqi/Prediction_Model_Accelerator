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
	int quant_shift,
	int quant_mul,
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
#pragma HLS INTERFACE mode = s_axilite port = quant_shift bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = quant_mul bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = sparse_flag bundle = sparse_addr
#pragma HLS INTERFACE mode = s_axilite port = return bundle = sparse_addr // 开始信号
	// 输出矩阵
	hls::stream<WideType<t_Quant_DataType, nPE>::t_TypeInt> data_out;
#pragma HLS STREAM variable = data_out depth = 1024
	hls::stream<WideType<t_DataType_OUT, nPE>::t_TypeInt> quant_out;
#pragma HLS STREAM variable = quant_out depth = 4096
	hls::stream<WideType<t_DataType_IN, nPE>::t_TypeInt> am_value_stream;
#pragma HLS STREAM variable = am_value_stream depth = 2048
	hls::stream<WideType<t_DataType_IN, nPE>::t_TypeInt> fm_stream;
#pragma HLS STREAM variable = fm_stream depth = 2048
	hls::stream<uint8_t> idx_stream;
#pragma HLS STREAM variable = idx_stream depth = 4096
	hls::stream<uint8_t> count_stream;
#pragma HLS STREAM variable = count_stream depth = 1024
	hls::stream<int> idx_num_stream;
#pragma HLS STREAM variable = idx_num_stream depth = 16

	typename WideType<t_DataType_IN, nPE>::t_TypeInt fm_ram[4096];
	input_data_addr1 = input_data_addr1 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	input_data_addr2 = input_data_addr2 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	output_data_addr3 = output_data_addr3 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);

#pragma HLS DATAFLOW
	loadRAM<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE, bigPE>(am_ROWS, am_COLS, fm_ROWS, fm_COLS, inputs, am_value_stream, fm_ram, input_data_addr1, input_data_addr2);
	addCountStream<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE, bigPE>(am_ROWS, am_COLS, fm_ROWS, fm_COLS, am_value_stream, idx_stream, count_stream, input_data_addr1, input_data_addr2, idx_num_stream);
	loadFmStream<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE, bigPE>(am_ROWS, am_COLS, fm_ROWS, fm_COLS, idx_stream, fm_stream, fm_ram, input_data_addr1, input_data_addr2, idx_num_stream);
	mul<t_AXI_DataType, t_Quant_DataType, t_DataType_IN, t_DataType_OUT, nPE>(am_ROWS, am_COLS, fm_ROWS, fm_COLS, fm_stream, count_stream, data_out);
	quant<t_AXI_DataType, t_Quant_DataType, t_DataType_OUT, nPE>(data_out, fm_ROWS, fm_COLS, quant_out, quant_shift, quant_mul);
	store<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE, bigPE>(quant_out, outputs, output_data_addr3, fm_ROWS, fm_COLS, sparse_flag);
}
