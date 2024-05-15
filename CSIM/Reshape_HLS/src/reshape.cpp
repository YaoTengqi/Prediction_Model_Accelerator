#include "reshape.hpp"

void reshape(
		uint32_t input_data_addr,
		t_AXI_DataType *inputs,
		t_AXI_DataType *outputs,
		unsigned int ROWS,
		unsigned int COLS,
		bool &reshape_flag){
	// 硬件绑定
	#pragma HLS INTERFACE mode=m_axi port=inputs bundle=reshape_data
	#pragma HLS INTERFACE mode=m_axi port=outputs bundle=reshape_data
	#pragma HLS INTERFACE mode=s_axilite port=input_data_addr bundle=reshape_addr
	#pragma HLS INTERFACE mode=s_axilite port=ROWS bundle=reshape_addr
	#pragma HLS INTERFACE mode=s_axilite port=COLS bundle=reshape_addr
	#pragma HLS INTERFACE mode=s_axilite port=reshape_flag bundle=reshape_addr
	#pragma HLS INTERFACE mode=s_axilite port=return bundle=reshape_addr
	// HLS流设定
	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> data_in;
	#pragma HLS STREAM variable=data_in depth = 16
	hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> data_out;
	#pragma HLS STREAM variable=data_out depth = 16

	// 进行reshape处理
	/**
	 * 1. 从inputs中根据input_data_addr1获取data_a
	 * 2. 从inputs中根据input_data_addr2获取data_b
	 * 3. 进行concat(data_a, data_b, output_data)操作
	 */
#pragma HLS DATAFLOW
	read_inputs<t_AXI_DataType, t_DataType_IN, nPE>(inputs, data_in, input_data_addr, ROWS, COLS);
	reshape_stream<t_DataType_IN, t_DataType_OUT, nPE>(data_in, data_out, ROWS, COLS);
	store<t_AXI_DataType, t_DataType_IN, t_DataType_OUT, nPE>(data_out, outputs, input_data_addr, ROWS, COLS, reshape_flag);
}
