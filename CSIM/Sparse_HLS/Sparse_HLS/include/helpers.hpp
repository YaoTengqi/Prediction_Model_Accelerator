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
		hls::stream<uint8_t> &idx_stream,
		hls::stream<uint8_t> &count_stream,
		t_DataType_IN *fm_ram,
		uint32_t input_data_addr1,
		uint32_t input_data_addr2)
{
	t_DataType_IN am_ram[am_ROWS][am_COLS];
	memcpy(&am_ram[0], (const t_AXI_DataType *)&inputs[input_data_addr1], am_ROWS * am_COLS * sizeof(t_DataType_IN));
	memcpy(fm_ram, (const t_AXI_DataType *)&inputs[input_data_addr2], fm_ROWS * fm_COLS * sizeof(t_DataType_IN)); // load feature matrix
#pragma HLS PIPELINE
	for(int row = 0; row < am_ROWS; row++){	// 获取idx和count
		int count = 0;
		for(int col = 0; col < am_COLS; col++){
			if(am_ram[row][col] != 0){
				count++;
				idx_stream.write(col);
			}
		}
		count_stream.write(count);
	}
}


template <typename t_AXI_DataType, typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
void mul(
		unsigned int am_ROWS,
		unsigned int am_COLS,
		unsigned int fm_ROWS,
		unsigned int fm_COLS,
		t_DataType_IN *fm_ram,
		hls::stream<uint8_t> &idx_stream,
		hls::stream<uint8_t> &count_stream,
		hls::stream<typename WideType<t_DataType_OUT, nPE>::t_TypeInt> &data_stream_out,
		t_AXI_DataType *outputs,
		bool &done_flag){
	t_DataType_IN result_ram[am_ROWS][fm_COLS];
	for(int i = 0; i < am_ROWS; i++){
		for(int j = 0; j < fm_COLS; j++){
			result_ram[i][j] = 0;
		}
	}
	int row = 0;
	for(row = 0; row < am_ROWS; row++){
		int idx_count = count_stream.read();
		for(int count = 0; count < idx_count; count++){
			uint8_t idx = idx_stream.read();
			for(int block = 0; block < (fm_COLS / nPE); block++){
				for(int pe = 0; pe < nPE; pe++){
//					std::cout << result_ram[row][block * nPE + pe] << std::endl;
					result_ram[row][block * nPE + pe] = result_ram[row][block * nPE + pe] + *(fm_ram + idx * fm_COLS + block * nPE + pe);
				}
			}
		}
	}
	if(row == am_ROWS){
		memcpy(&outputs[0], &result_ram[0], am_ROWS * fm_COLS * sizeof(t_DataType_OUT));
		done_flag = true;
	}
}
