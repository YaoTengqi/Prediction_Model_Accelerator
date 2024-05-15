// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// reshape_addr
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
// 0x18 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x1c : Data signal of inputs
//        bit 31~0 - inputs[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of outputs
//        bit 31~0 - outputs[31:0] (Read/Write)
// 0x28 : Data signal of outputs
//        bit 31~0 - outputs[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of ROWS
//        bit 31~0 - ROWS[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of COLS
//        bit 31~0 - COLS[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of reshape_flag
//        bit 0  - reshape_flag[0] (Read)
//        others - reserved
// 0x44 : Control signal of reshape_flag
//        bit 0  - reshape_flag_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL              0x00
#define XRESHAPE_RESHAPE_ADDR_ADDR_GIE                  0x04
#define XRESHAPE_RESHAPE_ADDR_ADDR_IER                  0x08
#define XRESHAPE_RESHAPE_ADDR_ADDR_ISR                  0x0c
#define XRESHAPE_RESHAPE_ADDR_ADDR_INPUT_DATA_ADDR_DATA 0x10
#define XRESHAPE_RESHAPE_ADDR_BITS_INPUT_DATA_ADDR_DATA 32
#define XRESHAPE_RESHAPE_ADDR_ADDR_INPUTS_DATA          0x18
#define XRESHAPE_RESHAPE_ADDR_BITS_INPUTS_DATA          64
#define XRESHAPE_RESHAPE_ADDR_ADDR_OUTPUTS_DATA         0x24
#define XRESHAPE_RESHAPE_ADDR_BITS_OUTPUTS_DATA         64
#define XRESHAPE_RESHAPE_ADDR_ADDR_ROWS_DATA            0x30
#define XRESHAPE_RESHAPE_ADDR_BITS_ROWS_DATA            32
#define XRESHAPE_RESHAPE_ADDR_ADDR_COLS_DATA            0x38
#define XRESHAPE_RESHAPE_ADDR_BITS_COLS_DATA            32
#define XRESHAPE_RESHAPE_ADDR_ADDR_RESHAPE_FLAG_DATA    0x40
#define XRESHAPE_RESHAPE_ADDR_BITS_RESHAPE_FLAG_DATA    1
#define XRESHAPE_RESHAPE_ADDR_ADDR_RESHAPE_FLAG_CTRL    0x44

