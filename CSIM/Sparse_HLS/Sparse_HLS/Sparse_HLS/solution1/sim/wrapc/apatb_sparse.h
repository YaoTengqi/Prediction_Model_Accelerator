// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_sparse (
int input_data_addr1,
int input_data_addr2,
int output_data_addr3,
int am_ROWS,
int am_COLS,
int fm_ROWS,
int fm_COLS,
volatile void* inputs,
volatile void* outputs,
volatile void* sparse_flag);
