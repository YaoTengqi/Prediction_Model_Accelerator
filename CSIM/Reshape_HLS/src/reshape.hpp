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

void reshape(
		uint32_t input_data_addr,
		t_AXI_DataType *inputs,
		t_AXI_DataType *outputs,
		unsigned int ROWS,
		unsigned int COLS,
		bool &reshape);
