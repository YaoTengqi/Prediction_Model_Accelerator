// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_concat (
int input_data_addr1,
int input_data_addr2,
int output_data_addr3,
int ROWS,
int COLS,
volatile void* inputs,
volatile void* outputs,
volatile void* concat_flag);
