// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// ln_addr
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_data_addr
//        bit 31~0 - input_data_addr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of gama_addr
//        bit 31~0 - gama_addr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of beta_addr
//        bit 31~0 - beta_addr[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of output_data_addr
//        bit 31~0 - output_data_addr[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of cols_log
//        bit 31~0 - cols_log[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of q_value
//        bit 31~0 - q_value[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of shift_value
//        bit 31~0 - shift_value[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of done
//        bit 31~0 - done[31:0] (Read)
// 0x54 : Control signal of done
//        bit 0  - done_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x64 : Data signal of inputs
//        bit 31~0 - inputs[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of outputs
//        bit 31~0 - outputs[31:0] (Read/Write)
// 0x70 : Data signal of outputs
//        bit 31~0 - outputs[63:32] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of paras
//        bit 31~0 - paras[31:0] (Read/Write)
// 0x7c : Data signal of paras
//        bit 31~0 - paras[63:32] (Read/Write)
// 0x80 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLAYERNORM_LN_ADDR_ADDR_AP_CTRL               0x00
#define XLAYERNORM_LN_ADDR_ADDR_GIE                   0x04
#define XLAYERNORM_LN_ADDR_ADDR_IER                   0x08
#define XLAYERNORM_LN_ADDR_ADDR_ISR                   0x0c
#define XLAYERNORM_LN_ADDR_ADDR_INPUT_DATA_ADDR_DATA  0x10
#define XLAYERNORM_LN_ADDR_BITS_INPUT_DATA_ADDR_DATA  32
#define XLAYERNORM_LN_ADDR_ADDR_GAMA_ADDR_DATA        0x18
#define XLAYERNORM_LN_ADDR_BITS_GAMA_ADDR_DATA        32
#define XLAYERNORM_LN_ADDR_ADDR_BETA_ADDR_DATA        0x20
#define XLAYERNORM_LN_ADDR_BITS_BETA_ADDR_DATA        32
#define XLAYERNORM_LN_ADDR_ADDR_OUTPUT_DATA_ADDR_DATA 0x28
#define XLAYERNORM_LN_ADDR_BITS_OUTPUT_DATA_ADDR_DATA 32
#define XLAYERNORM_LN_ADDR_ADDR_ROWS_DATA             0x30
#define XLAYERNORM_LN_ADDR_BITS_ROWS_DATA             32
#define XLAYERNORM_LN_ADDR_ADDR_COLS_LOG_DATA         0x38
#define XLAYERNORM_LN_ADDR_BITS_COLS_LOG_DATA         32
#define XLAYERNORM_LN_ADDR_ADDR_Q_VALUE_DATA          0x40
#define XLAYERNORM_LN_ADDR_BITS_Q_VALUE_DATA          32
#define XLAYERNORM_LN_ADDR_ADDR_SHIFT_VALUE_DATA      0x48
#define XLAYERNORM_LN_ADDR_BITS_SHIFT_VALUE_DATA      32
#define XLAYERNORM_LN_ADDR_ADDR_DONE_DATA             0x50
#define XLAYERNORM_LN_ADDR_BITS_DONE_DATA             32
#define XLAYERNORM_LN_ADDR_ADDR_DONE_CTRL             0x54
#define XLAYERNORM_LN_ADDR_ADDR_INPUTS_DATA           0x60
#define XLAYERNORM_LN_ADDR_BITS_INPUTS_DATA           64
#define XLAYERNORM_LN_ADDR_ADDR_OUTPUTS_DATA          0x6c
#define XLAYERNORM_LN_ADDR_BITS_OUTPUTS_DATA          64
#define XLAYERNORM_LN_ADDR_ADDR_PARAS_DATA            0x78
#define XLAYERNORM_LN_ADDR_BITS_PARAS_DATA            64

