#include "hls_stream.h"
#include "ap_int.h"
#include "../include/types.hpp"

template <typename t_AXI_DataType, typename t_DataType_IN, unsigned int nPE>
void load(
		unsigned int am_ROWS,
		unsigned int am_COLS,
		unsigned int fm_ROWS,
		unsigned int fm_COLS,
		t_AXI_DataType *inputs,
		uint8_t idx_ram[1024],
		uint8_t count_ram[32],
		typename WideType<t_DataType_IN, nPE>::t_TypeInt fm_ram[512],
		uint32_t input_data_addr1,
		uint32_t input_data_addr2)
{
	typename WideType<t_DataType_IN, nPE>::t_TypeInt am_ram[1024];
	int idx_count = 0, count_count = 0;
	int fm_loop_num = fm_ROWS * fm_COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	int am_loop_num = am_ROWS * am_COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	for(int i = 0; i < fm_loop_num; i++){
		fm_ram[i] = inputs[input_data_addr1 + i]; // load feature matrix
	}
	for(int j = 0; j < am_loop_num; j++){
		am_ram[j] = inputs[input_data_addr2 + j]; // load adjacency matrix
	}
#pragma HLS PIPELINE
	for(int row = 0; row < am_ROWS; row++){	// 获取idx和count
		int count = 0;
		WideType<t_DataType_IN, nPE> am_value = am_ram[row];
#pragma HLS UNROLL
		for(int col = 0; col < am_COLS; col++){
			if(am_value[col] != 0){
				count++;
				idx_ram[idx_count++] = col;
			}
		}
		count_ram[count_count++] = count;
	}
}


template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void mul(
		unsigned int am_ROWS,
		unsigned int am_COLS,
		unsigned int fm_ROWS,
		unsigned int fm_COLS,
		typename WideType<t_DataType_IN, nPE>::t_TypeInt fm_ram[512],
		uint8_t idx_ram[1024],
		uint8_t count_ram[32],
		hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out){
#pragma HLS PIPELINE II = 1
	for(int block = 0; block < (fm_COLS / nPE); block++){	//每次计算一块
		int idx_ram_base = 0;								//idx_ram的基地址，需要在此基础上增加
		for(int row = 0; row < am_ROWS; row++){				//一次计算一行，每块算ROWS行
			int idx_count = count_ram[row];
			t_DataType_OUT ZERO = 0;
			WideType<t_DataType_OUT, nPE> result = ZERO;
#pragma HLS UNROLL
			for(int count = 0; count < idx_count; count++){	//根据idx_stream取出对应行的fm_stream值
			uint8_t idx = idx_ram[idx_ram_base + count];
			WideType<t_DataType_IN, nPE> fm_value = fm_ram[block * nPE + idx];
				for(int pe = 0; pe < nPE; pe++){			//每次计算一个PE
					result[pe] = result[pe] + fm_value[pe];
				}
			}
			idx_ram_base = idx_ram_base + idx_count;
			data_stream_out.write(result);
		}
	}
}


template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void store(
	hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
	t_AXI_DataType *outputs,
	uint32_t output_data_addr3,
	unsigned int ROWS,
	unsigned int COLS,
	bool &done_flag)
{
	unsigned int dst_idx = output_data_addr3;
//	unsigned int dst_idx = 0;
	unsigned int loop_idx = nPE * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	unsigned int loop_num = ROWS * COLS / nPE;
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
		done_flag = true;
	}
}

