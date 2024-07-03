/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
#pragma once
#include <cmath> 

#define COLS_LOG 3
//#define ROWS 40
//#define COLS (1 << COLS_LOG)
#define nPE 32
#define bigPE 256
#define AXI_DATA_WIDTH 256
#define INP_DATA_WIDTH 8
#define INP_ROW_DATA_WIDTH COLS * INP_DATA_WIDTH	// 一行输入数据占的位宽
#define OUT_ROW_DATA_WIDTH INP_ROW_DATA_WIDTH * 2   // 一行输出数据占的位宽
//#define ROW_DATA_WIDTH AXI_DATA_WIDTH / INP_DATA_WIDTH // 一行数据占的位宽
#define QUANT_DATA_WIDTH 32
#define OUT_DATA_WIDTH 8
#define STD_DIFF_WIDTH (INP_DATA_WIDTH + 1)
#define STD_SUM_WIDTH (STD_DIFF_WIDTH + STD_DIFF_WIDTH + COLS_LOG)

#define t_ParaType float
#define t_DataType_IN ap_int<INP_DATA_WIDTH>
#define t_DataType_OUT ap_int<OUT_DATA_WIDTH>
#define t_DataType_C ap_int<STD_DIFF_WIDTH>
#define t_DataType_D ap_int<STD_SUM_WIDTH>
#define t_AXI_DataType ap_uint<AXI_DATA_WIDTH>
#define t_Quant_DataType ap_int<QUANT_DATA_WIDTH>


