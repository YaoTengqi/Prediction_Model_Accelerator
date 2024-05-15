#include "types.hpp"
#include "../include/transpose.hpp"
#include "hls_stream.h"
#include "ap_int.h"

template<typename t_AXI_DataType, typename t_DataType_IN, unsigned int nPE>
void read_inputs(t_AXI_DataType *inputs, 
		hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &data_stream,
		unsigned int input_data_addr,
		unsigned int ROWS,
		unsigned int COLS
	){
	unsigned int ram_depth = ROWS * COLS / nPE;
	typename WideType<t_DataType_IN, nPE>::t_TypeInt ram[32];
	memcpy(&ram[0], (const t_AXI_DataType *)&inputs[input_data_addr], ROWS * COLS * sizeof(t_DataType_IN));
#pragma HLS PIPELINE
	for(int i =0; i < ram_depth; i ++){
        data_stream.write(ram[i]);
    }
}

template<typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void reshape_stream(
		hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &data_stream_in,
		hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
		unsigned int ROWS,
		unsigned int COLS
	){
	unsigned int ram_depth = ROWS * COLS / nPE;
	t_DataType_IN buffer[32][32];
	WideType<t_DataType_IN, nPE> data = data_stream_in.read();
	//将数据存入buffer中
	for(int col = 0; col < ROWS;){
		int row = 0;
		for(int j = 0; j < nPE; j++){
			buffer[row][col] = data[j];
			row++;
			if(row == COLS){
				row = 0;
				col++;
			}
		}
		if(!data_stream_in.empty()){
			data = data_stream_in.read();
		}
	}

	//将数据从buffer写入stream流中
	WideType<t_DataType_IN, nPE> data_out;
	int out_addr = 0;
	for(int i = 0; i < COLS; i++){
		for(int j = 0; j < ROWS; j++){
			data_out[out_addr] = buffer[i][j];
			out_addr++;
			if(out_addr == nPE){
				data_stream_out.write(data_out);
				out_addr = 0;
			}
		}
	}
}
	
template<typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void store(
		hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
		t_AXI_DataType *outputs,
		uint32_t output_data_addr,
		unsigned int ROWS,
		unsigned int COLS,
		bool &reshape_flag
		){
    unsigned int dst_idx = output_data_addr;
    unsigned int loop_idx = nPE * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
    unsigned int loop_num = ROWS * COLS / nPE;
    for (int i = 0; i < loop_num; i++) {
#pragma HLS PIPELINE
        WideType<t_DataType_IN, nPE> data = data_stream_out.read();
        memcpy(const_cast<t_AXI_DataType *> (&outputs[dst_idx]), &data[0], nPE * sizeof(t_DataType_IN));
        dst_idx = dst_idx + loop_idx;
#pragma HLS BIND_OP variable=dst_idx op=add impl=fabric latency=2
	}
    reshape_flag = true;
}
