// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module reshape_read_inputs_ap_uint_256_ap_int_8_32u_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_reshape_data_AWVALID,
        m_axi_reshape_data_AWREADY,
        m_axi_reshape_data_AWADDR,
        m_axi_reshape_data_AWID,
        m_axi_reshape_data_AWLEN,
        m_axi_reshape_data_AWSIZE,
        m_axi_reshape_data_AWBURST,
        m_axi_reshape_data_AWLOCK,
        m_axi_reshape_data_AWCACHE,
        m_axi_reshape_data_AWPROT,
        m_axi_reshape_data_AWQOS,
        m_axi_reshape_data_AWREGION,
        m_axi_reshape_data_AWUSER,
        m_axi_reshape_data_WVALID,
        m_axi_reshape_data_WREADY,
        m_axi_reshape_data_WDATA,
        m_axi_reshape_data_WSTRB,
        m_axi_reshape_data_WLAST,
        m_axi_reshape_data_WID,
        m_axi_reshape_data_WUSER,
        m_axi_reshape_data_ARVALID,
        m_axi_reshape_data_ARREADY,
        m_axi_reshape_data_ARADDR,
        m_axi_reshape_data_ARID,
        m_axi_reshape_data_ARLEN,
        m_axi_reshape_data_ARSIZE,
        m_axi_reshape_data_ARBURST,
        m_axi_reshape_data_ARLOCK,
        m_axi_reshape_data_ARCACHE,
        m_axi_reshape_data_ARPROT,
        m_axi_reshape_data_ARQOS,
        m_axi_reshape_data_ARREGION,
        m_axi_reshape_data_ARUSER,
        m_axi_reshape_data_RVALID,
        m_axi_reshape_data_RREADY,
        m_axi_reshape_data_RDATA,
        m_axi_reshape_data_RLAST,
        m_axi_reshape_data_RID,
        m_axi_reshape_data_RFIFONUM,
        m_axi_reshape_data_RUSER,
        m_axi_reshape_data_RRESP,
        m_axi_reshape_data_BVALID,
        m_axi_reshape_data_BREADY,
        m_axi_reshape_data_BRESP,
        m_axi_reshape_data_BID,
        m_axi_reshape_data_BUSER,
        inputs,
        data_in1_din,
        data_in1_num_data_valid,
        data_in1_fifo_cap,
        data_in1_full_n,
        data_in1_write,
        input_data_addr,
        ROWS,
        COLS,
        input_data_addr_c_din,
        input_data_addr_c_num_data_valid,
        input_data_addr_c_fifo_cap,
        input_data_addr_c_full_n,
        input_data_addr_c_write,
        ROWS_c9_din,
        ROWS_c9_num_data_valid,
        ROWS_c9_fifo_cap,
        ROWS_c9_full_n,
        ROWS_c9_write,
        COLS_c10_din,
        COLS_c10_num_data_valid,
        COLS_c10_fifo_cap,
        COLS_c10_full_n,
        COLS_c10_write
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_reshape_data_AWVALID;
input   m_axi_reshape_data_AWREADY;
output  [63:0] m_axi_reshape_data_AWADDR;
output  [0:0] m_axi_reshape_data_AWID;
output  [31:0] m_axi_reshape_data_AWLEN;
output  [2:0] m_axi_reshape_data_AWSIZE;
output  [1:0] m_axi_reshape_data_AWBURST;
output  [1:0] m_axi_reshape_data_AWLOCK;
output  [3:0] m_axi_reshape_data_AWCACHE;
output  [2:0] m_axi_reshape_data_AWPROT;
output  [3:0] m_axi_reshape_data_AWQOS;
output  [3:0] m_axi_reshape_data_AWREGION;
output  [0:0] m_axi_reshape_data_AWUSER;
output   m_axi_reshape_data_WVALID;
input   m_axi_reshape_data_WREADY;
output  [255:0] m_axi_reshape_data_WDATA;
output  [31:0] m_axi_reshape_data_WSTRB;
output   m_axi_reshape_data_WLAST;
output  [0:0] m_axi_reshape_data_WID;
output  [0:0] m_axi_reshape_data_WUSER;
output   m_axi_reshape_data_ARVALID;
input   m_axi_reshape_data_ARREADY;
output  [63:0] m_axi_reshape_data_ARADDR;
output  [0:0] m_axi_reshape_data_ARID;
output  [31:0] m_axi_reshape_data_ARLEN;
output  [2:0] m_axi_reshape_data_ARSIZE;
output  [1:0] m_axi_reshape_data_ARBURST;
output  [1:0] m_axi_reshape_data_ARLOCK;
output  [3:0] m_axi_reshape_data_ARCACHE;
output  [2:0] m_axi_reshape_data_ARPROT;
output  [3:0] m_axi_reshape_data_ARQOS;
output  [3:0] m_axi_reshape_data_ARREGION;
output  [0:0] m_axi_reshape_data_ARUSER;
input   m_axi_reshape_data_RVALID;
output   m_axi_reshape_data_RREADY;
input  [255:0] m_axi_reshape_data_RDATA;
input   m_axi_reshape_data_RLAST;
input  [0:0] m_axi_reshape_data_RID;
input  [8:0] m_axi_reshape_data_RFIFONUM;
input  [0:0] m_axi_reshape_data_RUSER;
input  [1:0] m_axi_reshape_data_RRESP;
input   m_axi_reshape_data_BVALID;
output   m_axi_reshape_data_BREADY;
input  [1:0] m_axi_reshape_data_BRESP;
input  [0:0] m_axi_reshape_data_BID;
input  [0:0] m_axi_reshape_data_BUSER;
input  [63:0] inputs;
output  [255:0] data_in1_din;
input  [4:0] data_in1_num_data_valid;
input  [4:0] data_in1_fifo_cap;
input   data_in1_full_n;
output   data_in1_write;
input  [31:0] input_data_addr;
input  [31:0] ROWS;
input  [31:0] COLS;
output  [31:0] input_data_addr_c_din;
input  [2:0] input_data_addr_c_num_data_valid;
input  [2:0] input_data_addr_c_fifo_cap;
input   input_data_addr_c_full_n;
output   input_data_addr_c_write;
output  [31:0] ROWS_c9_din;
input  [1:0] ROWS_c9_num_data_valid;
input  [1:0] ROWS_c9_fifo_cap;
input   ROWS_c9_full_n;
output   ROWS_c9_write;
output  [31:0] COLS_c10_din;
input  [1:0] COLS_c10_num_data_valid;
input  [1:0] COLS_c10_fifo_cap;
input   COLS_c10_full_n;
output   COLS_c10_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_reshape_data_ARVALID;
reg[63:0] m_axi_reshape_data_ARADDR;
reg[31:0] m_axi_reshape_data_ARLEN;
reg m_axi_reshape_data_RREADY;
reg data_in1_write;
reg input_data_addr_c_write;
reg ROWS_c9_write;
reg COLS_c10_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    reshape_data_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    reshape_data_blk_n_R;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state20;
reg    data_in1_blk_n;
wire    ap_CS_fsm_state23;
reg    input_data_addr_c_blk_n;
reg    ROWS_c9_blk_n;
reg    COLS_c10_blk_n;
wire   [31:0] mul_ln13_fu_229_p2;
reg   [31:0] mul_ln13_reg_534;
reg   [26:0] ram_depth_reg_539;
wire   [4:0] trunc_ln15_fu_257_p1;
reg   [4:0] trunc_ln15_reg_546;
wire   [63:0] add_ln15_fu_261_p2;
reg   [63:0] add_ln15_reg_551;
wire   [4:0] trunc_ln15_1_fu_267_p1;
reg   [4:0] trunc_ln15_1_reg_556;
reg   [58:0] p_cast_reg_562;
wire   [31:0] zext_ln13_fu_286_p1;
wire  signed [32:0] sub_ln15_fu_306_p2;
reg  signed [32:0] sub_ln15_reg_578;
wire    ap_CS_fsm_state8;
wire  signed [33:0] sub_ln15_cast5_fu_312_p1;
reg  signed [33:0] sub_ln15_cast5_reg_583;
wire   [9:0] empty_fu_316_p1;
reg   [9:0] empty_reg_588;
wire   [63:0] loop_index_cast_fu_323_p1;
reg   [63:0] loop_index_cast_reg_593;
wire    ap_CS_fsm_state9;
wire   [4:0] empty_111_fu_343_p1;
reg   [4:0] empty_111_reg_608;
wire   [0:0] exitcond6_fu_327_p2;
reg   [255:0] reshape_data_addr_read_reg_614;
reg   [58:0] p_cast4_reg_622;
wire    ap_CS_fsm_state12;
wire   [0:0] exitcond5_fu_362_p2;
wire   [4:0] empty_116_fu_407_p2;
reg   [4:0] empty_116_reg_627;
wire   [4:0] empty_119_fu_412_p2;
reg   [4:0] empty_119_reg_632;
reg   [4:0] tmp_32_reg_638;
reg   [255:0] reshape_data_addr_32_read_reg_656;
wire    ap_CS_fsm_state22;
wire   [0:0] icmp_ln17_fu_511_p2;
reg   [4:0] ram_address0;
reg    ram_ce0;
reg   [31:0] ram_we0;
reg   [255:0] ram_d0;
wire   [255:0] ram_q0;
wire    ap_CS_fsm_state11;
wire   [63:0] p_cast8_cast_fu_499_p1;
wire    ap_CS_fsm_state21;
wire   [63:0] zext_ln17_fu_506_p1;
wire  signed [63:0] p_cast_cast_fu_290_p1;
wire  signed [63:0] p_cast4_cast_fu_437_p1;
reg   [26:0] loop_index_fu_110;
wire   [26:0] empty_110_fu_332_p2;
reg    ap_block_state1;
reg   [4:0] residual_loop_index_fu_118;
wire   [4:0] empty_113_fu_367_p2;
reg   [26:0] i_fu_122;
wire   [26:0] add_ln17_fu_516_p2;
wire   [255:0] empty_121_fu_492_p2;
wire   [31:0] empty_120_fu_474_p2;
wire   [36:0] shl_ln_fu_245_p3;
wire   [63:0] zext_ln15_fu_253_p1;
wire   [32:0] zext_ln15_1_fu_300_p1;
wire   [32:0] zext_ln15_2_fu_303_p1;
wire   [9:0] residual_loop_index_cast_fu_358_p1;
wire   [33:0] residual_loop_index_cast6_fu_354_p1;
wire   [33:0] tmp_fu_378_p2;
wire  signed [63:0] tmp_cast_fu_383_p1;
wire   [63:0] empty_115_fu_387_p2;
wire   [4:0] tmp1_fu_402_p2;
wire   [9:0] empty_114_fu_373_p2;
wire   [7:0] tmp_s_fu_447_p3;
wire   [255:0] p_cast11_fu_454_p1;
wire   [255:0] empty_117_fu_458_p2;
wire   [7:0] empty_118_fu_463_p1;
wire   [31:0] p_cast12_fu_471_p1;
wire   [7:0] tmp_31_fu_481_p3;
wire   [255:0] p_cast6_cast_fu_467_p1;
wire   [255:0] p_cast13_fu_488_p1;
reg   [22:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
reg    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 23'd1;
end

reshape_read_inputs_ap_uint_256_ap_int_8_32u_s_ram_RAM_AUTO_1R1W #(
    .DataWidth( 256 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
ram_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ram_address0),
    .ce0(ram_ce0),
    .we0(ram_we0),
    .d0(ram_d0),
    .q0(ram_q0)
);

reshape_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U3(
    .din0(COLS),
    .din1(ROWS),
    .dout(mul_ln13_fu_229_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln17_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state22))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_362_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        i_fu_122 <= 27'd0;
    end else if (((icmp_ln17_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state22))) begin
        i_fu_122 <= add_ln17_fu_516_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        loop_index_fu_110 <= 27'd0;
    end else if (((exitcond6_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        loop_index_fu_110 <= empty_110_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        residual_loop_index_fu_118 <= 5'd0;
    end else if (((exitcond5_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        residual_loop_index_fu_118 <= empty_113_fu_367_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        add_ln15_reg_551 <= add_ln15_fu_261_p2;
        mul_ln13_reg_534 <= mul_ln13_fu_229_p2;
        p_cast_reg_562 <= {{add_ln15_fu_261_p2[63:5]}};
        ram_depth_reg_539 <= {{mul_ln13_fu_229_p2[31:5]}};
        trunc_ln15_1_reg_556 <= trunc_ln15_1_fu_267_p1;
        trunc_ln15_reg_546 <= trunc_ln15_fu_257_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        empty_111_reg_608 <= empty_111_fu_343_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        empty_116_reg_627 <= empty_116_fu_407_p2;
        empty_119_reg_632 <= empty_119_fu_412_p2;
        p_cast4_reg_622 <= {{empty_115_fu_387_p2[63:5]}};
        tmp_32_reg_638 <= {{empty_114_fu_373_p2[9:5]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_reg_588 <= empty_fu_316_p1;
        sub_ln15_cast5_reg_583 <= sub_ln15_cast5_fu_312_p1;
        sub_ln15_reg_578 <= sub_ln15_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        loop_index_cast_reg_593[26 : 0] <= loop_index_cast_fu_323_p1[26 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reshape_data_addr_32_read_reg_656 <= m_axi_reshape_data_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        reshape_data_addr_read_reg_614 <= m_axi_reshape_data_RDATA;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        COLS_c10_blk_n = COLS_c10_full_n;
    end else begin
        COLS_c10_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        COLS_c10_write = 1'b1;
    end else begin
        COLS_c10_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ROWS_c9_blk_n = ROWS_c9_full_n;
    end else begin
        ROWS_c9_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ROWS_c9_write = 1'b1;
    end else begin
        ROWS_c9_write = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_reshape_data_RVALID == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((m_axi_reshape_data_ARREADY == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_reshape_data_RVALID == 1'b0)) begin
        ap_ST_fsm_state20_blk = 1'b1;
    end else begin
        ap_ST_fsm_state20_blk = 1'b0;
    end
end

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

always @ (*) begin
    if ((data_in1_full_n == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_reshape_data_ARREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln17_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state22))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        data_in1_blk_n = data_in1_full_n;
    end else begin
        data_in1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) & (data_in1_full_n == 1'b1))) begin
        data_in1_write = 1'b1;
    end else begin
        data_in1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_data_addr_c_blk_n = input_data_addr_c_full_n;
    end else begin
        input_data_addr_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_data_addr_c_write = 1'b1;
    end else begin
        input_data_addr_c_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln17_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state22))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_reshape_data_ARREADY == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            m_axi_reshape_data_ARADDR = p_cast4_cast_fu_437_p1;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            m_axi_reshape_data_ARADDR = p_cast_cast_fu_290_p1;
        end else begin
            m_axi_reshape_data_ARADDR = 'bx;
        end
    end else begin
        m_axi_reshape_data_ARADDR = 'bx;
    end
end

always @ (*) begin
    if ((m_axi_reshape_data_ARREADY == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            m_axi_reshape_data_ARLEN = 32'd1;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            m_axi_reshape_data_ARLEN = zext_ln13_fu_286_p1;
        end else begin
            m_axi_reshape_data_ARLEN = 'bx;
        end
    end else begin
        m_axi_reshape_data_ARLEN = 'bx;
    end
end

always @ (*) begin
    if ((((m_axi_reshape_data_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((m_axi_reshape_data_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        m_axi_reshape_data_ARVALID = 1'b1;
    end else begin
        m_axi_reshape_data_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((m_axi_reshape_data_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state20)) | ((m_axi_reshape_data_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        m_axi_reshape_data_RREADY = 1'b1;
    end else begin
        m_axi_reshape_data_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        ram_address0 = zext_ln17_fu_506_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        ram_address0 = p_cast8_cast_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        ram_address0 = loop_index_cast_reg_593;
    end else begin
        ram_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22))) begin
        ram_ce0 = 1'b1;
    end else begin
        ram_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ram_d0 = empty_121_fu_492_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        ram_d0 = reshape_data_addr_read_reg_614;
    end else begin
        ram_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ram_we0 = empty_120_fu_474_p2;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        ram_we0 = 32'd4294967295;
    end else begin
        ram_we0 = 32'd0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state2))) begin
        reshape_data_blk_n_AR = m_axi_reshape_data_ARREADY;
    end else begin
        reshape_data_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10))) begin
        reshape_data_blk_n_R = m_axi_reshape_data_RVALID;
    end else begin
        reshape_data_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_reshape_data_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((exitcond6_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((m_axi_reshape_data_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state12 : begin
            if (((exitcond5_fu_362_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((m_axi_reshape_data_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            if (((m_axi_reshape_data_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state20))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state22 : begin
            if (((icmp_ln17_fu_511_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (data_in1_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign COLS_c10_din = COLS;

assign ROWS_c9_din = ROWS;

assign add_ln15_fu_261_p2 = (zext_ln15_fu_253_p1 + inputs);

assign add_ln17_fu_516_p2 = (i_fu_122 + 27'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n) | (real_start == 1'b0) | (input_data_addr_c_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign data_in1_din = ram_q0;

assign empty_110_fu_332_p2 = (loop_index_fu_110 + 27'd1);

assign empty_111_fu_343_p1 = sub_ln15_reg_578[4:0];

assign empty_113_fu_367_p2 = (residual_loop_index_fu_118 + 5'd1);

assign empty_114_fu_373_p2 = (empty_reg_588 + residual_loop_index_cast_fu_358_p1);

assign empty_115_fu_387_p2 = ($signed(tmp_cast_fu_383_p1) + $signed(add_ln15_reg_551));

assign empty_116_fu_407_p2 = (tmp1_fu_402_p2 + empty_111_reg_608);

assign empty_117_fu_458_p2 = reshape_data_addr_32_read_reg_656 >> p_cast11_fu_454_p1;

assign empty_118_fu_463_p1 = empty_117_fu_458_p2[7:0];

assign empty_119_fu_412_p2 = (residual_loop_index_fu_118 + empty_111_reg_608);

assign empty_120_fu_474_p2 = 32'd1 << p_cast12_fu_471_p1;

assign empty_121_fu_492_p2 = p_cast6_cast_fu_467_p1 << p_cast13_fu_488_p1;

assign empty_fu_316_p1 = sub_ln15_fu_306_p2[9:0];

assign exitcond5_fu_362_p2 = ((residual_loop_index_fu_118 == trunc_ln15_1_reg_556) ? 1'b1 : 1'b0);

assign exitcond6_fu_327_p2 = ((loop_index_fu_110 == ram_depth_reg_539) ? 1'b1 : 1'b0);

assign icmp_ln17_fu_511_p2 = ((i_fu_122 == ram_depth_reg_539) ? 1'b1 : 1'b0);

assign input_data_addr_c_din = input_data_addr;

assign loop_index_cast_fu_323_p1 = loop_index_fu_110;

assign m_axi_reshape_data_ARBURST = 2'd0;

assign m_axi_reshape_data_ARCACHE = 4'd0;

assign m_axi_reshape_data_ARID = 1'd0;

assign m_axi_reshape_data_ARLOCK = 2'd0;

assign m_axi_reshape_data_ARPROT = 3'd0;

assign m_axi_reshape_data_ARQOS = 4'd0;

assign m_axi_reshape_data_ARREGION = 4'd0;

assign m_axi_reshape_data_ARSIZE = 3'd0;

assign m_axi_reshape_data_ARUSER = 1'd0;

assign m_axi_reshape_data_AWADDR = 64'd0;

assign m_axi_reshape_data_AWBURST = 2'd0;

assign m_axi_reshape_data_AWCACHE = 4'd0;

assign m_axi_reshape_data_AWID = 1'd0;

assign m_axi_reshape_data_AWLEN = 32'd0;

assign m_axi_reshape_data_AWLOCK = 2'd0;

assign m_axi_reshape_data_AWPROT = 3'd0;

assign m_axi_reshape_data_AWQOS = 4'd0;

assign m_axi_reshape_data_AWREGION = 4'd0;

assign m_axi_reshape_data_AWSIZE = 3'd0;

assign m_axi_reshape_data_AWUSER = 1'd0;

assign m_axi_reshape_data_AWVALID = 1'b0;

assign m_axi_reshape_data_BREADY = 1'b0;

assign m_axi_reshape_data_WDATA = 256'd0;

assign m_axi_reshape_data_WID = 1'd0;

assign m_axi_reshape_data_WLAST = 1'b0;

assign m_axi_reshape_data_WSTRB = 32'd0;

assign m_axi_reshape_data_WUSER = 1'd0;

assign m_axi_reshape_data_WVALID = 1'b0;

assign p_cast11_fu_454_p1 = tmp_s_fu_447_p3;

assign p_cast12_fu_471_p1 = empty_119_reg_632;

assign p_cast13_fu_488_p1 = tmp_31_fu_481_p3;

assign p_cast4_cast_fu_437_p1 = $signed(p_cast4_reg_622);

assign p_cast6_cast_fu_467_p1 = empty_118_fu_463_p1;

assign p_cast8_cast_fu_499_p1 = tmp_32_reg_638;

assign p_cast_cast_fu_290_p1 = $signed(p_cast_reg_562);

assign residual_loop_index_cast6_fu_354_p1 = residual_loop_index_fu_118;

assign residual_loop_index_cast_fu_358_p1 = residual_loop_index_fu_118;

assign shl_ln_fu_245_p3 = {{input_data_addr}, {5'd0}};

assign start_out = real_start;

assign sub_ln15_cast5_fu_312_p1 = sub_ln15_fu_306_p2;

assign sub_ln15_fu_306_p2 = (zext_ln15_1_fu_300_p1 - zext_ln15_2_fu_303_p1);

assign tmp1_fu_402_p2 = (trunc_ln15_reg_546 + residual_loop_index_fu_118);

assign tmp_31_fu_481_p3 = {{empty_119_reg_632}, {3'd0}};

assign tmp_cast_fu_383_p1 = $signed(tmp_fu_378_p2);

assign tmp_fu_378_p2 = ($signed(sub_ln15_cast5_reg_583) + $signed(residual_loop_index_cast6_fu_354_p1));

assign tmp_s_fu_447_p3 = {{empty_116_reg_627}, {3'd0}};

assign trunc_ln15_1_fu_267_p1 = mul_ln13_fu_229_p2[4:0];

assign trunc_ln15_fu_257_p1 = inputs[4:0];

assign zext_ln13_fu_286_p1 = ram_depth_reg_539;

assign zext_ln15_1_fu_300_p1 = mul_ln13_reg_534;

assign zext_ln15_2_fu_303_p1 = trunc_ln15_1_reg_556;

assign zext_ln15_fu_253_p1 = shl_ln_fu_245_p3;

assign zext_ln17_fu_506_p1 = i_fu_122;

always @ (posedge ap_clk) begin
    loop_index_cast_reg_593[63:27] <= 37'b0000000000000000000000000000000000000;
end

endmodule //reshape_read_inputs_ap_uint_256_ap_int_8_32u_s
