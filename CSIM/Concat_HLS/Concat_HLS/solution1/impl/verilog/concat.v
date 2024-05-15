// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="concat_concat,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=15,HLS_SYN_DSP=0,HLS_SYN_FF=5495,HLS_SYN_LUT=9564,HLS_VERSION=2022_2}" *)

module concat (
        s_axi_concat_addr_AWVALID,
        s_axi_concat_addr_AWREADY,
        s_axi_concat_addr_AWADDR,
        s_axi_concat_addr_WVALID,
        s_axi_concat_addr_WREADY,
        s_axi_concat_addr_WDATA,
        s_axi_concat_addr_WSTRB,
        s_axi_concat_addr_ARVALID,
        s_axi_concat_addr_ARREADY,
        s_axi_concat_addr_ARADDR,
        s_axi_concat_addr_RVALID,
        s_axi_concat_addr_RREADY,
        s_axi_concat_addr_RDATA,
        s_axi_concat_addr_RRESP,
        s_axi_concat_addr_BVALID,
        s_axi_concat_addr_BREADY,
        s_axi_concat_addr_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        m_axi_concat_data_AWVALID,
        m_axi_concat_data_AWREADY,
        m_axi_concat_data_AWADDR,
        m_axi_concat_data_AWID,
        m_axi_concat_data_AWLEN,
        m_axi_concat_data_AWSIZE,
        m_axi_concat_data_AWBURST,
        m_axi_concat_data_AWLOCK,
        m_axi_concat_data_AWCACHE,
        m_axi_concat_data_AWPROT,
        m_axi_concat_data_AWQOS,
        m_axi_concat_data_AWREGION,
        m_axi_concat_data_AWUSER,
        m_axi_concat_data_WVALID,
        m_axi_concat_data_WREADY,
        m_axi_concat_data_WDATA,
        m_axi_concat_data_WSTRB,
        m_axi_concat_data_WLAST,
        m_axi_concat_data_WID,
        m_axi_concat_data_WUSER,
        m_axi_concat_data_ARVALID,
        m_axi_concat_data_ARREADY,
        m_axi_concat_data_ARADDR,
        m_axi_concat_data_ARID,
        m_axi_concat_data_ARLEN,
        m_axi_concat_data_ARSIZE,
        m_axi_concat_data_ARBURST,
        m_axi_concat_data_ARLOCK,
        m_axi_concat_data_ARCACHE,
        m_axi_concat_data_ARPROT,
        m_axi_concat_data_ARQOS,
        m_axi_concat_data_ARREGION,
        m_axi_concat_data_ARUSER,
        m_axi_concat_data_RVALID,
        m_axi_concat_data_RREADY,
        m_axi_concat_data_RDATA,
        m_axi_concat_data_RLAST,
        m_axi_concat_data_RID,
        m_axi_concat_data_RUSER,
        m_axi_concat_data_RRESP,
        m_axi_concat_data_BVALID,
        m_axi_concat_data_BREADY,
        m_axi_concat_data_BRESP,
        m_axi_concat_data_BID,
        m_axi_concat_data_BUSER
);

parameter    C_S_AXI_CONCAT_ADDR_DATA_WIDTH = 32;
parameter    C_S_AXI_CONCAT_ADDR_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_CONCAT_DATA_ID_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_ADDR_WIDTH = 64;
parameter    C_M_AXI_CONCAT_DATA_DATA_WIDTH = 256;
parameter    C_M_AXI_CONCAT_DATA_AWUSER_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_ARUSER_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_WUSER_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_RUSER_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_BUSER_WIDTH = 1;
parameter    C_M_AXI_CONCAT_DATA_USER_VALUE = 0;
parameter    C_M_AXI_CONCAT_DATA_PROT_VALUE = 0;
parameter    C_M_AXI_CONCAT_DATA_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONCAT_ADDR_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_CONCAT_DATA_WSTRB_WIDTH = (256 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_concat_addr_AWVALID;
output   s_axi_concat_addr_AWREADY;
input  [C_S_AXI_CONCAT_ADDR_ADDR_WIDTH - 1:0] s_axi_concat_addr_AWADDR;
input   s_axi_concat_addr_WVALID;
output   s_axi_concat_addr_WREADY;
input  [C_S_AXI_CONCAT_ADDR_DATA_WIDTH - 1:0] s_axi_concat_addr_WDATA;
input  [C_S_AXI_CONCAT_ADDR_WSTRB_WIDTH - 1:0] s_axi_concat_addr_WSTRB;
input   s_axi_concat_addr_ARVALID;
output   s_axi_concat_addr_ARREADY;
input  [C_S_AXI_CONCAT_ADDR_ADDR_WIDTH - 1:0] s_axi_concat_addr_ARADDR;
output   s_axi_concat_addr_RVALID;
input   s_axi_concat_addr_RREADY;
output  [C_S_AXI_CONCAT_ADDR_DATA_WIDTH - 1:0] s_axi_concat_addr_RDATA;
output  [1:0] s_axi_concat_addr_RRESP;
output   s_axi_concat_addr_BVALID;
input   s_axi_concat_addr_BREADY;
output  [1:0] s_axi_concat_addr_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output   m_axi_concat_data_AWVALID;
input   m_axi_concat_data_AWREADY;
output  [C_M_AXI_CONCAT_DATA_ADDR_WIDTH - 1:0] m_axi_concat_data_AWADDR;
output  [C_M_AXI_CONCAT_DATA_ID_WIDTH - 1:0] m_axi_concat_data_AWID;
output  [7:0] m_axi_concat_data_AWLEN;
output  [2:0] m_axi_concat_data_AWSIZE;
output  [1:0] m_axi_concat_data_AWBURST;
output  [1:0] m_axi_concat_data_AWLOCK;
output  [3:0] m_axi_concat_data_AWCACHE;
output  [2:0] m_axi_concat_data_AWPROT;
output  [3:0] m_axi_concat_data_AWQOS;
output  [3:0] m_axi_concat_data_AWREGION;
output  [C_M_AXI_CONCAT_DATA_AWUSER_WIDTH - 1:0] m_axi_concat_data_AWUSER;
output   m_axi_concat_data_WVALID;
input   m_axi_concat_data_WREADY;
output  [C_M_AXI_CONCAT_DATA_DATA_WIDTH - 1:0] m_axi_concat_data_WDATA;
output  [C_M_AXI_CONCAT_DATA_WSTRB_WIDTH - 1:0] m_axi_concat_data_WSTRB;
output   m_axi_concat_data_WLAST;
output  [C_M_AXI_CONCAT_DATA_ID_WIDTH - 1:0] m_axi_concat_data_WID;
output  [C_M_AXI_CONCAT_DATA_WUSER_WIDTH - 1:0] m_axi_concat_data_WUSER;
output   m_axi_concat_data_ARVALID;
input   m_axi_concat_data_ARREADY;
output  [C_M_AXI_CONCAT_DATA_ADDR_WIDTH - 1:0] m_axi_concat_data_ARADDR;
output  [C_M_AXI_CONCAT_DATA_ID_WIDTH - 1:0] m_axi_concat_data_ARID;
output  [7:0] m_axi_concat_data_ARLEN;
output  [2:0] m_axi_concat_data_ARSIZE;
output  [1:0] m_axi_concat_data_ARBURST;
output  [1:0] m_axi_concat_data_ARLOCK;
output  [3:0] m_axi_concat_data_ARCACHE;
output  [2:0] m_axi_concat_data_ARPROT;
output  [3:0] m_axi_concat_data_ARQOS;
output  [3:0] m_axi_concat_data_ARREGION;
output  [C_M_AXI_CONCAT_DATA_ARUSER_WIDTH - 1:0] m_axi_concat_data_ARUSER;
input   m_axi_concat_data_RVALID;
output   m_axi_concat_data_RREADY;
input  [C_M_AXI_CONCAT_DATA_DATA_WIDTH - 1:0] m_axi_concat_data_RDATA;
input   m_axi_concat_data_RLAST;
input  [C_M_AXI_CONCAT_DATA_ID_WIDTH - 1:0] m_axi_concat_data_RID;
input  [C_M_AXI_CONCAT_DATA_RUSER_WIDTH - 1:0] m_axi_concat_data_RUSER;
input  [1:0] m_axi_concat_data_RRESP;
input   m_axi_concat_data_BVALID;
output   m_axi_concat_data_BREADY;
input  [1:0] m_axi_concat_data_BRESP;
input  [C_M_AXI_CONCAT_DATA_ID_WIDTH - 1:0] m_axi_concat_data_BID;
input  [C_M_AXI_CONCAT_DATA_BUSER_WIDTH - 1:0] m_axi_concat_data_BUSER;

 reg    ap_rst_n_inv;
wire   [31:0] input_data_addr1;
wire   [31:0] input_data_addr2;
wire   [31:0] output_data_addr3;
wire   [31:0] ROWS;
wire   [31:0] COLS;
wire   [63:0] inputs;
wire   [63:0] outputs;
wire    concat_flag;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    concat_data_AWREADY;
wire    concat_data_WREADY;
wire    concat_data_ARREADY;
wire    concat_data_RVALID;
wire   [255:0] concat_data_RDATA;
wire    concat_data_RLAST;
wire   [0:0] concat_data_RID;
wire   [8:0] concat_data_RFIFONUM;
wire   [0:0] concat_data_RUSER;
wire   [1:0] concat_data_RRESP;
wire    concat_data_BVALID;
wire   [1:0] concat_data_BRESP;
wire   [0:0] concat_data_BID;
wire   [0:0] concat_data_BUSER;
wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire    entry_proc_U0_start_out;
wire    entry_proc_U0_start_write;
wire   [31:0] entry_proc_U0_output_data_addr3_c_din;
wire    entry_proc_U0_output_data_addr3_c_write;
wire   [63:0] entry_proc_U0_outputs_c_din;
wire    entry_proc_U0_outputs_c_write;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_start;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_done;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_continue;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_idle;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWVALID;
wire   [63:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWADDR;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWID;
wire   [31:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWLEN;
wire   [2:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWSIZE;
wire   [1:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWBURST;
wire   [1:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWLOCK;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWCACHE;
wire   [2:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWPROT;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWQOS;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWREGION;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWUSER;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WVALID;
wire   [255:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WDATA;
wire   [31:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WSTRB;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WLAST;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WID;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WUSER;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARVALID;
wire   [63:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARADDR;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARID;
wire   [31:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARLEN;
wire   [2:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARSIZE;
wire   [1:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARBURST;
wire   [1:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARLOCK;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARCACHE;
wire   [2:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARPROT;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARQOS;
wire   [3:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARREGION;
wire   [0:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARUSER;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_RREADY;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_BREADY;
wire   [255:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_din;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_write;
wire   [31:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_din;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_write;
wire   [31:0] read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_din;
wire    read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_write;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_start;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_done;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_continue;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_idle;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_ready;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_data_out1_read;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWVALID;
wire   [63:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWADDR;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWID;
wire   [31:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWLEN;
wire   [2:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWSIZE;
wire   [1:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWBURST;
wire   [1:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWLOCK;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWCACHE;
wire   [2:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWPROT;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWQOS;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWREGION;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWUSER;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WVALID;
wire   [255:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WDATA;
wire   [31:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WSTRB;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WLAST;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WID;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WUSER;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARVALID;
wire   [63:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARADDR;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARID;
wire   [31:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARLEN;
wire   [2:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARSIZE;
wire   [1:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARBURST;
wire   [1:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARLOCK;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARCACHE;
wire   [2:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARPROT;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARQOS;
wire   [3:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARREGION;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARUSER;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_RREADY;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_BREADY;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_outputs_read;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_output_data_addr3_read;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ROWS_read;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_COLS_read;
wire   [0:0] store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag;
wire    store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag_ap_vld;
wire    output_data_addr3_c_full_n;
wire   [31:0] output_data_addr3_c_dout;
wire   [2:0] output_data_addr3_c_num_data_valid;
wire   [2:0] output_data_addr3_c_fifo_cap;
wire    output_data_addr3_c_empty_n;
wire    outputs_c_full_n;
wire   [63:0] outputs_c_dout;
wire   [2:0] outputs_c_num_data_valid;
wire   [2:0] outputs_c_fifo_cap;
wire    outputs_c_empty_n;
wire    data_out_full_n;
wire   [255:0] data_out_dout;
wire   [7:0] data_out_num_data_valid;
wire   [7:0] data_out_fifo_cap;
wire    data_out_empty_n;
wire    ROWS_c_full_n;
wire   [31:0] ROWS_c_dout;
wire   [1:0] ROWS_c_num_data_valid;
wire   [1:0] ROWS_c_fifo_cap;
wire    ROWS_c_empty_n;
wire    COLS_c_full_n;
wire   [31:0] COLS_c_dout;
wire   [1:0] COLS_c_num_data_valid;
wire   [1:0] COLS_c_fifo_cap;
wire    COLS_c_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready;
wire    ap_sync_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready;
wire   [0:0] start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_din;
wire    start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_full_n;
wire   [0:0] start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_dout;
wire    start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready = 1'b0;
end

concat_concat_addr_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONCAT_ADDR_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONCAT_ADDR_DATA_WIDTH ))
concat_addr_s_axi_U(
    .AWVALID(s_axi_concat_addr_AWVALID),
    .AWREADY(s_axi_concat_addr_AWREADY),
    .AWADDR(s_axi_concat_addr_AWADDR),
    .WVALID(s_axi_concat_addr_WVALID),
    .WREADY(s_axi_concat_addr_WREADY),
    .WDATA(s_axi_concat_addr_WDATA),
    .WSTRB(s_axi_concat_addr_WSTRB),
    .ARVALID(s_axi_concat_addr_ARVALID),
    .ARREADY(s_axi_concat_addr_ARREADY),
    .ARADDR(s_axi_concat_addr_ARADDR),
    .RVALID(s_axi_concat_addr_RVALID),
    .RREADY(s_axi_concat_addr_RREADY),
    .RDATA(s_axi_concat_addr_RDATA),
    .RRESP(s_axi_concat_addr_RRESP),
    .BVALID(s_axi_concat_addr_BVALID),
    .BREADY(s_axi_concat_addr_BREADY),
    .BRESP(s_axi_concat_addr_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .input_data_addr1(input_data_addr1),
    .input_data_addr2(input_data_addr2),
    .output_data_addr3(output_data_addr3),
    .ROWS(ROWS),
    .COLS(COLS),
    .inputs(inputs),
    .outputs(outputs),
    .concat_flag(concat_flag),
    .concat_flag_ap_vld(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag_ap_vld),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

concat_concat_data_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 37 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_CONCAT_DATA_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_CONCAT_DATA_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_CONCAT_DATA_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_CONCAT_DATA_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_CONCAT_DATA_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_CONCAT_DATA_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_CONCAT_DATA_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_CONCAT_DATA_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_CONCAT_DATA_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_CONCAT_DATA_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_CONCAT_DATA_CACHE_VALUE ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .USER_DW( 256 ),
    .USER_AW( 64 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ))
concat_data_m_axi_U(
    .AWVALID(m_axi_concat_data_AWVALID),
    .AWREADY(m_axi_concat_data_AWREADY),
    .AWADDR(m_axi_concat_data_AWADDR),
    .AWID(m_axi_concat_data_AWID),
    .AWLEN(m_axi_concat_data_AWLEN),
    .AWSIZE(m_axi_concat_data_AWSIZE),
    .AWBURST(m_axi_concat_data_AWBURST),
    .AWLOCK(m_axi_concat_data_AWLOCK),
    .AWCACHE(m_axi_concat_data_AWCACHE),
    .AWPROT(m_axi_concat_data_AWPROT),
    .AWQOS(m_axi_concat_data_AWQOS),
    .AWREGION(m_axi_concat_data_AWREGION),
    .AWUSER(m_axi_concat_data_AWUSER),
    .WVALID(m_axi_concat_data_WVALID),
    .WREADY(m_axi_concat_data_WREADY),
    .WDATA(m_axi_concat_data_WDATA),
    .WSTRB(m_axi_concat_data_WSTRB),
    .WLAST(m_axi_concat_data_WLAST),
    .WID(m_axi_concat_data_WID),
    .WUSER(m_axi_concat_data_WUSER),
    .ARVALID(m_axi_concat_data_ARVALID),
    .ARREADY(m_axi_concat_data_ARREADY),
    .ARADDR(m_axi_concat_data_ARADDR),
    .ARID(m_axi_concat_data_ARID),
    .ARLEN(m_axi_concat_data_ARLEN),
    .ARSIZE(m_axi_concat_data_ARSIZE),
    .ARBURST(m_axi_concat_data_ARBURST),
    .ARLOCK(m_axi_concat_data_ARLOCK),
    .ARCACHE(m_axi_concat_data_ARCACHE),
    .ARPROT(m_axi_concat_data_ARPROT),
    .ARQOS(m_axi_concat_data_ARQOS),
    .ARREGION(m_axi_concat_data_ARREGION),
    .ARUSER(m_axi_concat_data_ARUSER),
    .RVALID(m_axi_concat_data_RVALID),
    .RREADY(m_axi_concat_data_RREADY),
    .RDATA(m_axi_concat_data_RDATA),
    .RLAST(m_axi_concat_data_RLAST),
    .RID(m_axi_concat_data_RID),
    .RUSER(m_axi_concat_data_RUSER),
    .RRESP(m_axi_concat_data_RRESP),
    .BVALID(m_axi_concat_data_BVALID),
    .BREADY(m_axi_concat_data_BREADY),
    .BRESP(m_axi_concat_data_BRESP),
    .BID(m_axi_concat_data_BID),
    .BUSER(m_axi_concat_data_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARVALID),
    .I_ARREADY(concat_data_ARREADY),
    .I_ARADDR(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARADDR),
    .I_ARLEN(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARLEN),
    .I_RVALID(concat_data_RVALID),
    .I_RREADY(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_RREADY),
    .I_RDATA(concat_data_RDATA),
    .I_RFIFONUM(concat_data_RFIFONUM),
    .I_AWVALID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWVALID),
    .I_AWREADY(concat_data_AWREADY),
    .I_AWADDR(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWADDR),
    .I_AWLEN(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWLEN),
    .I_WVALID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WVALID),
    .I_WREADY(concat_data_WREADY),
    .I_WDATA(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WDATA),
    .I_WSTRB(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WSTRB),
    .I_BVALID(concat_data_BVALID),
    .I_BREADY(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_BREADY)
);

concat_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(entry_proc_U0_ap_start),
    .start_full_n(start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_full_n),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .start_out(entry_proc_U0_start_out),
    .start_write(entry_proc_U0_start_write),
    .output_data_addr3(output_data_addr3),
    .output_data_addr3_c_din(entry_proc_U0_output_data_addr3_c_din),
    .output_data_addr3_c_num_data_valid(output_data_addr3_c_num_data_valid),
    .output_data_addr3_c_fifo_cap(output_data_addr3_c_fifo_cap),
    .output_data_addr3_c_full_n(output_data_addr3_c_full_n),
    .output_data_addr3_c_write(entry_proc_U0_output_data_addr3_c_write),
    .outputs(outputs),
    .outputs_c_din(entry_proc_U0_outputs_c_din),
    .outputs_c_num_data_valid(outputs_c_num_data_valid),
    .outputs_c_fifo_cap(outputs_c_fifo_cap),
    .outputs_c_full_n(outputs_c_full_n),
    .outputs_c_write(entry_proc_U0_outputs_c_write)
);

concat_read_inputs_ap_uint_256_ap_int_8_32u_s read_inputs_ap_uint_256_ap_int_8_32u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_start),
    .ap_done(read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_done),
    .ap_continue(read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_continue),
    .ap_idle(read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_idle),
    .ap_ready(read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready),
    .m_axi_concat_data_AWVALID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWVALID),
    .m_axi_concat_data_AWREADY(1'b0),
    .m_axi_concat_data_AWADDR(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWADDR),
    .m_axi_concat_data_AWID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWID),
    .m_axi_concat_data_AWLEN(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWLEN),
    .m_axi_concat_data_AWSIZE(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWSIZE),
    .m_axi_concat_data_AWBURST(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWBURST),
    .m_axi_concat_data_AWLOCK(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWLOCK),
    .m_axi_concat_data_AWCACHE(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWCACHE),
    .m_axi_concat_data_AWPROT(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWPROT),
    .m_axi_concat_data_AWQOS(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWQOS),
    .m_axi_concat_data_AWREGION(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWREGION),
    .m_axi_concat_data_AWUSER(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_AWUSER),
    .m_axi_concat_data_WVALID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WVALID),
    .m_axi_concat_data_WREADY(1'b0),
    .m_axi_concat_data_WDATA(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WDATA),
    .m_axi_concat_data_WSTRB(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WSTRB),
    .m_axi_concat_data_WLAST(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WLAST),
    .m_axi_concat_data_WID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WID),
    .m_axi_concat_data_WUSER(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_WUSER),
    .m_axi_concat_data_ARVALID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARVALID),
    .m_axi_concat_data_ARREADY(concat_data_ARREADY),
    .m_axi_concat_data_ARADDR(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARADDR),
    .m_axi_concat_data_ARID(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARID),
    .m_axi_concat_data_ARLEN(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARLEN),
    .m_axi_concat_data_ARSIZE(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARSIZE),
    .m_axi_concat_data_ARBURST(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARBURST),
    .m_axi_concat_data_ARLOCK(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARLOCK),
    .m_axi_concat_data_ARCACHE(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARCACHE),
    .m_axi_concat_data_ARPROT(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARPROT),
    .m_axi_concat_data_ARQOS(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARQOS),
    .m_axi_concat_data_ARREGION(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARREGION),
    .m_axi_concat_data_ARUSER(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_ARUSER),
    .m_axi_concat_data_RVALID(concat_data_RVALID),
    .m_axi_concat_data_RREADY(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_RREADY),
    .m_axi_concat_data_RDATA(concat_data_RDATA),
    .m_axi_concat_data_RLAST(concat_data_RLAST),
    .m_axi_concat_data_RID(concat_data_RID),
    .m_axi_concat_data_RFIFONUM(concat_data_RFIFONUM),
    .m_axi_concat_data_RUSER(concat_data_RUSER),
    .m_axi_concat_data_RRESP(concat_data_RRESP),
    .m_axi_concat_data_BVALID(1'b0),
    .m_axi_concat_data_BREADY(read_inputs_ap_uint_256_ap_int_8_32u_U0_m_axi_concat_data_BREADY),
    .m_axi_concat_data_BRESP(2'd0),
    .m_axi_concat_data_BID(1'd0),
    .m_axi_concat_data_BUSER(1'd0),
    .inputs(inputs),
    .data_out1_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_din),
    .data_out1_num_data_valid(data_out_num_data_valid),
    .data_out1_fifo_cap(data_out_fifo_cap),
    .data_out1_full_n(data_out_full_n),
    .data_out1_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_write),
    .input_data_addr1(input_data_addr1),
    .input_data_addr2(input_data_addr2),
    .ROWS(ROWS),
    .COLS(COLS),
    .ROWS_c_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_din),
    .ROWS_c_num_data_valid(ROWS_c_num_data_valid),
    .ROWS_c_fifo_cap(ROWS_c_fifo_cap),
    .ROWS_c_full_n(ROWS_c_full_n),
    .ROWS_c_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_write),
    .COLS_c_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_din),
    .COLS_c_num_data_valid(COLS_c_num_data_valid),
    .COLS_c_fifo_cap(COLS_c_fifo_cap),
    .COLS_c_full_n(COLS_c_full_n),
    .COLS_c_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_write)
);

concat_store_ap_uint_256_ap_int_8_ap_int_8_32u_s store_ap_uint_256_ap_int_8_ap_int_8_32u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_start),
    .ap_done(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_done),
    .ap_continue(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_continue),
    .ap_idle(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_idle),
    .ap_ready(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_ready),
    .data_out1_dout(data_out_dout),
    .data_out1_num_data_valid(data_out_num_data_valid),
    .data_out1_fifo_cap(data_out_fifo_cap),
    .data_out1_empty_n(data_out_empty_n),
    .data_out1_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_data_out1_read),
    .m_axi_concat_data_AWVALID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWVALID),
    .m_axi_concat_data_AWREADY(concat_data_AWREADY),
    .m_axi_concat_data_AWADDR(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWADDR),
    .m_axi_concat_data_AWID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWID),
    .m_axi_concat_data_AWLEN(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWLEN),
    .m_axi_concat_data_AWSIZE(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWSIZE),
    .m_axi_concat_data_AWBURST(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWBURST),
    .m_axi_concat_data_AWLOCK(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWLOCK),
    .m_axi_concat_data_AWCACHE(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWCACHE),
    .m_axi_concat_data_AWPROT(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWPROT),
    .m_axi_concat_data_AWQOS(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWQOS),
    .m_axi_concat_data_AWREGION(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWREGION),
    .m_axi_concat_data_AWUSER(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_AWUSER),
    .m_axi_concat_data_WVALID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WVALID),
    .m_axi_concat_data_WREADY(concat_data_WREADY),
    .m_axi_concat_data_WDATA(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WDATA),
    .m_axi_concat_data_WSTRB(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WSTRB),
    .m_axi_concat_data_WLAST(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WLAST),
    .m_axi_concat_data_WID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WID),
    .m_axi_concat_data_WUSER(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_WUSER),
    .m_axi_concat_data_ARVALID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARVALID),
    .m_axi_concat_data_ARREADY(1'b0),
    .m_axi_concat_data_ARADDR(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARADDR),
    .m_axi_concat_data_ARID(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARID),
    .m_axi_concat_data_ARLEN(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARLEN),
    .m_axi_concat_data_ARSIZE(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARSIZE),
    .m_axi_concat_data_ARBURST(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARBURST),
    .m_axi_concat_data_ARLOCK(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARLOCK),
    .m_axi_concat_data_ARCACHE(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARCACHE),
    .m_axi_concat_data_ARPROT(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARPROT),
    .m_axi_concat_data_ARQOS(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARQOS),
    .m_axi_concat_data_ARREGION(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARREGION),
    .m_axi_concat_data_ARUSER(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_ARUSER),
    .m_axi_concat_data_RVALID(1'b0),
    .m_axi_concat_data_RREADY(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_RREADY),
    .m_axi_concat_data_RDATA(256'd0),
    .m_axi_concat_data_RLAST(1'b0),
    .m_axi_concat_data_RID(1'd0),
    .m_axi_concat_data_RFIFONUM(9'd0),
    .m_axi_concat_data_RUSER(1'd0),
    .m_axi_concat_data_RRESP(2'd0),
    .m_axi_concat_data_BVALID(concat_data_BVALID),
    .m_axi_concat_data_BREADY(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_m_axi_concat_data_BREADY),
    .m_axi_concat_data_BRESP(concat_data_BRESP),
    .m_axi_concat_data_BID(concat_data_BID),
    .m_axi_concat_data_BUSER(concat_data_BUSER),
    .outputs_dout(outputs_c_dout),
    .outputs_num_data_valid(outputs_c_num_data_valid),
    .outputs_fifo_cap(outputs_c_fifo_cap),
    .outputs_empty_n(outputs_c_empty_n),
    .outputs_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_outputs_read),
    .output_data_addr3_dout(output_data_addr3_c_dout),
    .output_data_addr3_num_data_valid(output_data_addr3_c_num_data_valid),
    .output_data_addr3_fifo_cap(output_data_addr3_c_fifo_cap),
    .output_data_addr3_empty_n(output_data_addr3_c_empty_n),
    .output_data_addr3_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_output_data_addr3_read),
    .ROWS_dout(ROWS_c_dout),
    .ROWS_num_data_valid(ROWS_c_num_data_valid),
    .ROWS_fifo_cap(ROWS_c_fifo_cap),
    .ROWS_empty_n(ROWS_c_empty_n),
    .ROWS_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ROWS_read),
    .COLS_dout(COLS_c_dout),
    .COLS_num_data_valid(COLS_c_num_data_valid),
    .COLS_fifo_cap(COLS_c_fifo_cap),
    .COLS_empty_n(COLS_c_empty_n),
    .COLS_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_COLS_read),
    .concat_flag(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag),
    .concat_flag_ap_vld(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag_ap_vld)
);

concat_fifo_w32_d3_S output_data_addr3_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_output_data_addr3_c_din),
    .if_full_n(output_data_addr3_c_full_n),
    .if_write(entry_proc_U0_output_data_addr3_c_write),
    .if_dout(output_data_addr3_c_dout),
    .if_num_data_valid(output_data_addr3_c_num_data_valid),
    .if_fifo_cap(output_data_addr3_c_fifo_cap),
    .if_empty_n(output_data_addr3_c_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_output_data_addr3_read)
);

concat_fifo_w64_d3_S outputs_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_outputs_c_din),
    .if_full_n(outputs_c_full_n),
    .if_write(entry_proc_U0_outputs_c_write),
    .if_dout(outputs_c_dout),
    .if_num_data_valid(outputs_c_num_data_valid),
    .if_fifo_cap(outputs_c_fifo_cap),
    .if_empty_n(outputs_c_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_outputs_read)
);

concat_fifo_w256_d128_A data_out_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_din),
    .if_full_n(data_out_full_n),
    .if_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_data_out1_write),
    .if_dout(data_out_dout),
    .if_num_data_valid(data_out_num_data_valid),
    .if_fifo_cap(data_out_fifo_cap),
    .if_empty_n(data_out_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_data_out1_read)
);

concat_fifo_w32_d2_S ROWS_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_din),
    .if_full_n(ROWS_c_full_n),
    .if_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_ROWS_c_write),
    .if_dout(ROWS_c_dout),
    .if_num_data_valid(ROWS_c_num_data_valid),
    .if_fifo_cap(ROWS_c_fifo_cap),
    .if_empty_n(ROWS_c_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ROWS_read)
);

concat_fifo_w32_d2_S COLS_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_din),
    .if_full_n(COLS_c_full_n),
    .if_write(read_inputs_ap_uint_256_ap_int_8_32u_U0_COLS_c_write),
    .if_dout(COLS_c_dout),
    .if_num_data_valid(COLS_c_num_data_valid),
    .if_fifo_cap(COLS_c_fifo_cap),
    .if_empty_n(COLS_c_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_COLS_read)
);

concat_start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0 start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_din),
    .if_full_n(start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_full_n),
    .if_write(entry_proc_U0_start_write),
    .if_dout(start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_dout),
    .if_empty_n(start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_empty_n),
    .if_read(store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready <= ap_sync_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready;
        end
    end
end

assign ap_done = store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_done;

assign ap_idle = (store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_idle & read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_idle & entry_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready = (read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready | ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready);

assign ap_sync_ready = (ap_sync_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready & ap_sync_entry_proc_U0_ap_ready);

assign concat_data_BID = 1'd0;

assign concat_data_BRESP = 2'd0;

assign concat_data_BUSER = 1'd0;

assign concat_data_RID = 1'd0;

assign concat_data_RLAST = 1'b0;

assign concat_data_RRESP = 2'd0;

assign concat_data_RUSER = 1'd0;

assign concat_flag = store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_concat_flag;

assign entry_proc_U0_ap_continue = 1'b1;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_continue = 1'b1;

assign read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_start = ((ap_sync_reg_read_inputs_ap_uint_256_ap_int_8_32u_U0_ap_ready ^ 1'b1) & ap_start);

assign start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_din = 1'b1;

assign store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_continue = 1'b1;

assign store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_ap_start = start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_empty_n;

endmodule //concat
