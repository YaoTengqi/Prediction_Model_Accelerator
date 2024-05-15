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
#include "../include/types.hpp"
#include "../include/params.hpp"
using namespace xf::blas;

void layernorm(
    uint32_t input_data_addr, 
    uint32_t gama_addr, 
    uint32_t beta_addr, 
    uint32_t output_data_addr, 
    uint32_t rows,
    uint32_t cols_log,
	t_AXI_DataType *inputs,
	t_AXI_DataType *outputs,
	t_AXI_DataType *paras);
