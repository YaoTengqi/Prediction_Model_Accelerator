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

//template <typename t_DataType_IN, typename t_DataType_OUT, unsigned int nPE>
//void concatenate(
//	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &data_stream1,
//	hls::stream<typename WideType<t_DataType_IN, nPE>::t_TypeInt> &data_stream2,
//	unsigned int ROWS,
//	unsigned int COLS)
//{
//	unsigned int stream1_addr = 0, stream2_addr = 0, out_addr = 0; // 三个流各自的地址
//	unsigned int stream1_num = 0, stream2_num = 0, out_num = 0;	   // 三个流各自的计数，当num == COLS时重置
//	unsigned int loop_num = ROWS * COLS * 2 / nPE;
//	bool stream_flag = false; // 0 为 stream1, 1 为 stream2
//	WideType<t_DataType_OUT, nPE> data_1 = data_stream1.read();
//	WideType<t_DataType_OUT, nPE> data_2 = data_stream2.read();
//	WideType<t_DataType_OUT, nPE> concat_data;
//	for (int i = 0; i < loop_num; i++){
//#pragma HLS UNROLL
//		for(int j = 0; j < nPE; j++){
//			if (!stream_flag){
//				concat_data[j] = data_1[stream1_addr];
//				stream1_addr++;
//				stream1_num++;
//				if (stream1_addr == nPE && i < loop_num - 1)
//				{ // 取完一块PE数据
//					stream1_addr = 0;
//					data_1 = data_stream1.read(); // 再取一块数据
//				}
//				if (stream1_num == COLS)
//				{ // 取完一整行tesnor1的数据
//					stream_flag = true;
//					stream1_num = 0;
//				}
//			}else if (stream_flag){
//				concat_data[j] = data_2[stream2_addr];
//				stream2_addr++;
//				stream2_num++;
//				if (stream2_addr == nPE && i < loop_num - 1)
//				{ // 取完一块PE数据
//					stream2_addr = 0;
//					data_2 = data_stream2.read(); // 再取一块数据
//				}
//				if (stream2_num == COLS)
//				{ // 取完一整行tesnor1的数据
//					stream_flag = false;
//					stream2_num = 0;
//				}
//			}
//		}
//		// 完成一个out_data的数据拼接
//		data_stream_out.write(concat_data); // 阻塞式写入
//	}
//}

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
