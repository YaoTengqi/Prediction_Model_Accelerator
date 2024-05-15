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

#define COLS_LOG 9
#define ROWS 32
#define COLS (1 << COLS_LOG)
#define nPE_LOG 5
#define nPE (1 << nPE_LOG)
#define AXI_DATA_WIDTH 256
#define INP_DATA_WIDTH 8
#define OUT_DATA_WIDTH 8

#define MEAN_SUM_WIDTH (INP_DATA_WIDTH + COLS_LOG)
#define STD_DIFF_WIDTH (INP_DATA_WIDTH + 1)
#define STD_SUM_WIDTH (STD_DIFF_WIDTH + STD_DIFF_WIDTH + COLS_LOG)

#define t_ParaType float
#define t_InpDataType ap_int<INP_DATA_WIDTH>
#define t_OutDataType ap_int<OUT_DATA_WIDTH>
#define t_MeanSumType ap_int<MEAN_SUM_WIDTH>
#define t_StdDiffType ap_int<STD_DIFF_WIDTH>
#define t_StdSumType ap_int<STD_SUM_WIDTH>
#define t_AXI_DataType ap_uint<AXI_DATA_WIDTH>

#define M_AXI_DEPTH 32


