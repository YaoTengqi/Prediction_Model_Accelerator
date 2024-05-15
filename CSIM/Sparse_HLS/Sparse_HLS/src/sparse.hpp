#include <ap_fixed.h>
#include <cmath>
#include <ap_int.h>
#include <stdint.h>
#include <vector>
#include <iostream>
#include <string.h>
#include <fstream>
#include <hls_math.h>
#include "hls_stream.h"
#include "../include/helpers.hpp"
#include "../include/params.hpp"
#include "../include/types.hpp"

void sparse(
		uint32_t input_data_addr1,
		uint32_t input_data_addr2,
		uint32_t output_data_addr3,
		unsigned int ROWS,
		unsigned int COLS,
		t_AXI_DataType *inputs,
		t_AXI_DataType *outputs,
		bool &concat_flag);
