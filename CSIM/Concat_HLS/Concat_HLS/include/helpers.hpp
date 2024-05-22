#include "hls_stream.h"
#include "ap_int.h"
#include "../include/types.hpp"

template <typename t_AXI_DataType, typename t_DataType_OUT, unsigned int nPE>
void read_inputs(t_AXI_DataType *inputs,
				 uint32_t input_data_addr1,
				 uint32_t input_data_addr2,
				 uint32_t input_data_addr3,
				 unsigned int ROWS,
				 unsigned int COLS,
				 t_AXI_DataType *outputs,
				 bool &concat_flag)
{
	unsigned int ram_depth = ROWS * COLS / nPE;
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt ram1[1024];
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt ram2[1024];
	int output_addr = ROWS * COLS * sizeof(t_DataType_OUT) / sizeof(t_AXI_DataType);
	memcpy(&outputs[input_data_addr3], (const t_AXI_DataType *)&inputs[input_data_addr1], ROWS * COLS * sizeof(t_DataType_OUT));
	memcpy(&outputs[input_data_addr3 + output_addr], (const t_AXI_DataType *)&inputs[input_data_addr2], ROWS * COLS * sizeof(t_DataType_OUT));
	concat_flag = true;
}
