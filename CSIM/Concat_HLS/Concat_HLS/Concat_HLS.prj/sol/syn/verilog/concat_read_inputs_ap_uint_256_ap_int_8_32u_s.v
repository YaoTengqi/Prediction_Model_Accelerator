// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module concat_read_inputs_ap_uint_256_ap_int_8_32u_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
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
        m_axi_concat_data_RFIFONUM,
        m_axi_concat_data_RUSER,
        m_axi_concat_data_RRESP,
        m_axi_concat_data_BVALID,
        m_axi_concat_data_BREADY,
        m_axi_concat_data_BRESP,
        m_axi_concat_data_BID,
        m_axi_concat_data_BUSER,
        inputs,
        input_data_addr1,
        input_data_addr2,
        ROWS,
        COLS,
        input_stream_din,
        input_stream_num_data_valid,
        input_stream_fifo_cap,
        input_stream_full_n,
        input_stream_write,
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

parameter    ap_ST_fsm_state1 = 83'd1;
parameter    ap_ST_fsm_state2 = 83'd2;
parameter    ap_ST_fsm_state3 = 83'd4;
parameter    ap_ST_fsm_state4 = 83'd8;
parameter    ap_ST_fsm_state5 = 83'd16;
parameter    ap_ST_fsm_state6 = 83'd32;
parameter    ap_ST_fsm_state7 = 83'd64;
parameter    ap_ST_fsm_state8 = 83'd128;
parameter    ap_ST_fsm_state9 = 83'd256;
parameter    ap_ST_fsm_state10 = 83'd512;
parameter    ap_ST_fsm_state11 = 83'd1024;
parameter    ap_ST_fsm_state12 = 83'd2048;
parameter    ap_ST_fsm_state13 = 83'd4096;
parameter    ap_ST_fsm_state14 = 83'd8192;
parameter    ap_ST_fsm_state15 = 83'd16384;
parameter    ap_ST_fsm_state16 = 83'd32768;
parameter    ap_ST_fsm_state17 = 83'd65536;
parameter    ap_ST_fsm_state18 = 83'd131072;
parameter    ap_ST_fsm_state19 = 83'd262144;
parameter    ap_ST_fsm_state20 = 83'd524288;
parameter    ap_ST_fsm_state21 = 83'd1048576;
parameter    ap_ST_fsm_state22 = 83'd2097152;
parameter    ap_ST_fsm_state23 = 83'd4194304;
parameter    ap_ST_fsm_state24 = 83'd8388608;
parameter    ap_ST_fsm_state25 = 83'd16777216;
parameter    ap_ST_fsm_state26 = 83'd33554432;
parameter    ap_ST_fsm_state27 = 83'd67108864;
parameter    ap_ST_fsm_state28 = 83'd134217728;
parameter    ap_ST_fsm_state29 = 83'd268435456;
parameter    ap_ST_fsm_state30 = 83'd536870912;
parameter    ap_ST_fsm_state31 = 83'd1073741824;
parameter    ap_ST_fsm_state32 = 83'd2147483648;
parameter    ap_ST_fsm_state33 = 83'd4294967296;
parameter    ap_ST_fsm_state34 = 83'd8589934592;
parameter    ap_ST_fsm_state35 = 83'd17179869184;
parameter    ap_ST_fsm_state36 = 83'd34359738368;
parameter    ap_ST_fsm_state37 = 83'd68719476736;
parameter    ap_ST_fsm_state38 = 83'd137438953472;
parameter    ap_ST_fsm_state39 = 83'd274877906944;
parameter    ap_ST_fsm_state40 = 83'd549755813888;
parameter    ap_ST_fsm_state41 = 83'd1099511627776;
parameter    ap_ST_fsm_state42 = 83'd2199023255552;
parameter    ap_ST_fsm_state43 = 83'd4398046511104;
parameter    ap_ST_fsm_state44 = 83'd8796093022208;
parameter    ap_ST_fsm_state45 = 83'd17592186044416;
parameter    ap_ST_fsm_state46 = 83'd35184372088832;
parameter    ap_ST_fsm_state47 = 83'd70368744177664;
parameter    ap_ST_fsm_state48 = 83'd140737488355328;
parameter    ap_ST_fsm_state49 = 83'd281474976710656;
parameter    ap_ST_fsm_state50 = 83'd562949953421312;
parameter    ap_ST_fsm_state51 = 83'd1125899906842624;
parameter    ap_ST_fsm_state52 = 83'd2251799813685248;
parameter    ap_ST_fsm_state53 = 83'd4503599627370496;
parameter    ap_ST_fsm_state54 = 83'd9007199254740992;
parameter    ap_ST_fsm_state55 = 83'd18014398509481984;
parameter    ap_ST_fsm_state56 = 83'd36028797018963968;
parameter    ap_ST_fsm_state57 = 83'd72057594037927936;
parameter    ap_ST_fsm_state58 = 83'd144115188075855872;
parameter    ap_ST_fsm_state59 = 83'd288230376151711744;
parameter    ap_ST_fsm_state60 = 83'd576460752303423488;
parameter    ap_ST_fsm_state61 = 83'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 83'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 83'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 83'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 83'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 83'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 83'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 83'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 83'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 83'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 83'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 83'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 83'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 83'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 83'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 83'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 83'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 83'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 83'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 83'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 83'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 83'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 83'd4835703278458516698824704;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_concat_data_AWVALID;
input   m_axi_concat_data_AWREADY;
output  [63:0] m_axi_concat_data_AWADDR;
output  [0:0] m_axi_concat_data_AWID;
output  [31:0] m_axi_concat_data_AWLEN;
output  [2:0] m_axi_concat_data_AWSIZE;
output  [1:0] m_axi_concat_data_AWBURST;
output  [1:0] m_axi_concat_data_AWLOCK;
output  [3:0] m_axi_concat_data_AWCACHE;
output  [2:0] m_axi_concat_data_AWPROT;
output  [3:0] m_axi_concat_data_AWQOS;
output  [3:0] m_axi_concat_data_AWREGION;
output  [0:0] m_axi_concat_data_AWUSER;
output   m_axi_concat_data_WVALID;
input   m_axi_concat_data_WREADY;
output  [255:0] m_axi_concat_data_WDATA;
output  [31:0] m_axi_concat_data_WSTRB;
output   m_axi_concat_data_WLAST;
output  [0:0] m_axi_concat_data_WID;
output  [0:0] m_axi_concat_data_WUSER;
output   m_axi_concat_data_ARVALID;
input   m_axi_concat_data_ARREADY;
output  [63:0] m_axi_concat_data_ARADDR;
output  [0:0] m_axi_concat_data_ARID;
output  [31:0] m_axi_concat_data_ARLEN;
output  [2:0] m_axi_concat_data_ARSIZE;
output  [1:0] m_axi_concat_data_ARBURST;
output  [1:0] m_axi_concat_data_ARLOCK;
output  [3:0] m_axi_concat_data_ARCACHE;
output  [2:0] m_axi_concat_data_ARPROT;
output  [3:0] m_axi_concat_data_ARQOS;
output  [3:0] m_axi_concat_data_ARREGION;
output  [0:0] m_axi_concat_data_ARUSER;
input   m_axi_concat_data_RVALID;
output   m_axi_concat_data_RREADY;
input  [255:0] m_axi_concat_data_RDATA;
input   m_axi_concat_data_RLAST;
input  [0:0] m_axi_concat_data_RID;
input  [8:0] m_axi_concat_data_RFIFONUM;
input  [0:0] m_axi_concat_data_RUSER;
input  [1:0] m_axi_concat_data_RRESP;
input   m_axi_concat_data_BVALID;
output   m_axi_concat_data_BREADY;
input  [1:0] m_axi_concat_data_BRESP;
input  [0:0] m_axi_concat_data_BID;
input  [0:0] m_axi_concat_data_BUSER;
input  [63:0] inputs;
input  [31:0] input_data_addr1;
input  [31:0] input_data_addr2;
input  [31:0] ROWS;
input  [31:0] COLS;
output  [255:0] input_stream_din;
input  [6:0] input_stream_num_data_valid;
input  [6:0] input_stream_fifo_cap;
input   input_stream_full_n;
output   input_stream_write;
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
reg ap_ready;
reg m_axi_concat_data_ARVALID;
reg[63:0] m_axi_concat_data_ARADDR;
reg m_axi_concat_data_RREADY;
reg[255:0] input_stream_din;
reg input_stream_write;
reg ROWS_c9_write;
reg COLS_c10_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [82:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    concat_data_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    concat_data_blk_n_R;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state82;
reg    input_stream_blk_n;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state83;
reg    ROWS_c9_blk_n;
reg    COLS_c10_blk_n;
wire   [26:0] div_fu_183_p4;
reg   [26:0] div_reg_335;
wire   [31:0] div_cast_fu_193_p1;
reg   [31:0] div_cast_reg_341;
wire   [0:0] icmp_ln15_fu_197_p2;
reg   [0:0] icmp_ln15_reg_347;
reg   [58:0] trunc_ln15_1_reg_358;
reg   [58:0] trunc_ln3_reg_379;
wire    ap_CS_fsm_state40;
wire   [0:0] icmp_ln15_1_fu_249_p2;
reg   [255:0] p_Val2_s_reg_384;
reg   [255:0] p_Val2_1_reg_398;
wire  signed [63:0] sext_ln15_fu_236_p1;
wire  signed [63:0] sext_ln20_fu_296_p1;
reg   [26:0] i_fu_94;
wire   [26:0] add_ln15_1_fu_254_p2;
reg    ap_block_state1;
reg   [26:0] i_2_fu_98;
wire   [26:0] add_ln20_1_fu_314_p2;
wire    ap_CS_fsm_state81;
wire   [0:0] icmp_ln20_fu_309_p2;
wire   [31:0] mul_fu_177_p2;
wire   [36:0] shl_ln_fu_203_p3;
wire   [63:0] zext_ln15_fu_211_p1;
wire   [63:0] add_ln15_fu_215_p2;
wire   [36:0] shl_ln1_fu_265_p3;
wire   [63:0] zext_ln20_fu_272_p1;
wire   [63:0] add_ln20_fu_276_p2;
reg   [82:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
reg    ap_ST_fsm_state41_blk;
reg    ap_ST_fsm_state42_blk;
reg    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
wire    ap_ST_fsm_state72_blk;
wire    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
wire    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ST_fsm_state79_blk;
wire    ap_ST_fsm_state80_blk;
wire    ap_ST_fsm_state81_blk;
reg    ap_ST_fsm_state82_blk;
reg    ap_ST_fsm_state83_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 83'd1;
end

concat_mul_32s_32s_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U13(
    .din0(COLS),
    .din1(ROWS),
    .dout(mul_fu_177_p2)
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
        end else if (((1'b1 == ap_CS_fsm_state81) & ((icmp_ln20_fu_309_p2 == 1'd1) | (icmp_ln15_reg_347 == 1'd1)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_1_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state40))) begin
        i_2_fu_98 <= 27'd0;
    end else if (((icmp_ln20_fu_309_p2 == 1'd0) & (icmp_ln15_reg_347 == 1'd0) & (1'b1 == ap_CS_fsm_state81))) begin
        i_2_fu_98 <= add_ln20_1_fu_314_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n)) & (icmp_ln15_fu_197_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_94 <= 27'd0;
    end else if (((icmp_ln15_1_fu_249_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state40))) begin
        i_fu_94 <= add_ln15_1_fu_254_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        div_cast_reg_341[26 : 0] <= div_cast_fu_193_p1[26 : 0];
        div_reg_335 <= {{mul_fu_177_p2[31:5]}};
        icmp_ln15_reg_347 <= icmp_ln15_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        p_Val2_1_reg_398 <= m_axi_concat_data_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        p_Val2_s_reg_384 <= m_axi_concat_data_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_197_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        trunc_ln15_1_reg_358 <= {{add_ln15_fu_215_p2[63:5]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln15_1_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state40))) begin
        trunc_ln3_reg_379 <= {{add_ln20_fu_276_p2[63:5]}};
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        COLS_c10_blk_n = COLS_c10_full_n;
    end else begin
        COLS_c10_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n)) & (1'b1 == ap_CS_fsm_state1))) begin
        COLS_c10_write = 1'b1;
    end else begin
        COLS_c10_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ROWS_c9_blk_n = ROWS_c9_full_n;
    end else begin
        ROWS_c9_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n)) & (1'b1 == ap_CS_fsm_state1))) begin
        ROWS_c9_write = 1'b1;
    end else begin
        ROWS_c9_write = 1'b0;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

assign ap_ST_fsm_state19_blk = 1'b0;

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state20_blk = 1'b0;

assign ap_ST_fsm_state21_blk = 1'b0;

assign ap_ST_fsm_state22_blk = 1'b0;

assign ap_ST_fsm_state23_blk = 1'b0;

assign ap_ST_fsm_state24_blk = 1'b0;

assign ap_ST_fsm_state25_blk = 1'b0;

assign ap_ST_fsm_state26_blk = 1'b0;

assign ap_ST_fsm_state27_blk = 1'b0;

assign ap_ST_fsm_state28_blk = 1'b0;

assign ap_ST_fsm_state29_blk = 1'b0;

always @ (*) begin
    if ((m_axi_concat_data_ARREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state30_blk = 1'b0;

assign ap_ST_fsm_state31_blk = 1'b0;

assign ap_ST_fsm_state32_blk = 1'b0;

assign ap_ST_fsm_state33_blk = 1'b0;

assign ap_ST_fsm_state34_blk = 1'b0;

assign ap_ST_fsm_state35_blk = 1'b0;

assign ap_ST_fsm_state36_blk = 1'b0;

assign ap_ST_fsm_state37_blk = 1'b0;

assign ap_ST_fsm_state38_blk = 1'b0;

assign ap_ST_fsm_state39_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state40_blk = 1'b0;

always @ (*) begin
    if ((m_axi_concat_data_RVALID == 1'b0)) begin
        ap_ST_fsm_state41_blk = 1'b1;
    end else begin
        ap_ST_fsm_state41_blk = 1'b0;
    end
end

always @ (*) begin
    if ((input_stream_full_n == 1'b0)) begin
        ap_ST_fsm_state42_blk = 1'b1;
    end else begin
        ap_ST_fsm_state42_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_concat_data_ARREADY == 1'b0)) begin
        ap_ST_fsm_state43_blk = 1'b1;
    end else begin
        ap_ST_fsm_state43_blk = 1'b0;
    end
end

assign ap_ST_fsm_state44_blk = 1'b0;

assign ap_ST_fsm_state45_blk = 1'b0;

assign ap_ST_fsm_state46_blk = 1'b0;

assign ap_ST_fsm_state47_blk = 1'b0;

assign ap_ST_fsm_state48_blk = 1'b0;

assign ap_ST_fsm_state49_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state50_blk = 1'b0;

assign ap_ST_fsm_state51_blk = 1'b0;

assign ap_ST_fsm_state52_blk = 1'b0;

assign ap_ST_fsm_state53_blk = 1'b0;

assign ap_ST_fsm_state54_blk = 1'b0;

assign ap_ST_fsm_state55_blk = 1'b0;

assign ap_ST_fsm_state56_blk = 1'b0;

assign ap_ST_fsm_state57_blk = 1'b0;

assign ap_ST_fsm_state58_blk = 1'b0;

assign ap_ST_fsm_state59_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state60_blk = 1'b0;

assign ap_ST_fsm_state61_blk = 1'b0;

assign ap_ST_fsm_state62_blk = 1'b0;

assign ap_ST_fsm_state63_blk = 1'b0;

assign ap_ST_fsm_state64_blk = 1'b0;

assign ap_ST_fsm_state65_blk = 1'b0;

assign ap_ST_fsm_state66_blk = 1'b0;

assign ap_ST_fsm_state67_blk = 1'b0;

assign ap_ST_fsm_state68_blk = 1'b0;

assign ap_ST_fsm_state69_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state70_blk = 1'b0;

assign ap_ST_fsm_state71_blk = 1'b0;

assign ap_ST_fsm_state72_blk = 1'b0;

assign ap_ST_fsm_state73_blk = 1'b0;

assign ap_ST_fsm_state74_blk = 1'b0;

assign ap_ST_fsm_state75_blk = 1'b0;

assign ap_ST_fsm_state76_blk = 1'b0;

assign ap_ST_fsm_state77_blk = 1'b0;

assign ap_ST_fsm_state78_blk = 1'b0;

assign ap_ST_fsm_state79_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state80_blk = 1'b0;

assign ap_ST_fsm_state81_blk = 1'b0;

always @ (*) begin
    if ((m_axi_concat_data_RVALID == 1'b0)) begin
        ap_ST_fsm_state82_blk = 1'b1;
    end else begin
        ap_ST_fsm_state82_blk = 1'b0;
    end
end

always @ (*) begin
    if ((input_stream_full_n == 1'b0)) begin
        ap_ST_fsm_state83_blk = 1'b1;
    end else begin
        ap_ST_fsm_state83_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state81) & ((icmp_ln20_fu_309_p2 == 1'd1) | (icmp_ln15_reg_347 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state81) & ((icmp_ln20_fu_309_p2 == 1'd1) | (icmp_ln15_reg_347 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state2))) begin
        concat_data_blk_n_AR = m_axi_concat_data_ARREADY;
    end else begin
        concat_data_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state41))) begin
        concat_data_blk_n_R = m_axi_concat_data_RVALID;
    end else begin
        concat_data_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state42))) begin
        input_stream_blk_n = input_stream_full_n;
    end else begin
        input_stream_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((input_stream_full_n == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state83)) begin
            input_stream_din = p_Val2_1_reg_398;
        end else if ((1'b1 == ap_CS_fsm_state42)) begin
            input_stream_din = p_Val2_s_reg_384;
        end else begin
            input_stream_din = 'bx;
        end
    end else begin
        input_stream_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state83) & (input_stream_full_n == 1'b1)) | ((1'b1 == ap_CS_fsm_state42) & (input_stream_full_n == 1'b1)))) begin
        input_stream_write = 1'b1;
    end else begin
        input_stream_write = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_concat_data_ARREADY == 1'b1)) begin
        if ((1'b1 == ap_CS_fsm_state43)) begin
            m_axi_concat_data_ARADDR = sext_ln20_fu_296_p1;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            m_axi_concat_data_ARADDR = sext_ln15_fu_236_p1;
        end else begin
            m_axi_concat_data_ARADDR = 'bx;
        end
    end else begin
        m_axi_concat_data_ARADDR = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state43) & (m_axi_concat_data_ARREADY == 1'b1)) | ((1'b1 == ap_CS_fsm_state2) & (m_axi_concat_data_ARREADY == 1'b1)))) begin
        m_axi_concat_data_ARVALID = 1'b1;
    end else begin
        m_axi_concat_data_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state82) & (m_axi_concat_data_RVALID == 1'b1)) | ((1'b1 == ap_CS_fsm_state41) & (m_axi_concat_data_RVALID == 1'b1)))) begin
        m_axi_concat_data_RREADY = 1'b1;
    end else begin
        m_axi_concat_data_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n)) & (icmp_ln15_fu_197_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state81;
            end else if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n)) & (icmp_ln15_fu_197_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (m_axi_concat_data_ARREADY == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            if (((icmp_ln15_1_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state40))) begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state41 : begin
            if (((1'b1 == ap_CS_fsm_state41) & (m_axi_concat_data_RVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state41;
            end
        end
        ap_ST_fsm_state42 : begin
            if (((1'b1 == ap_CS_fsm_state42) & (input_stream_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end
        end
        ap_ST_fsm_state43 : begin
            if (((1'b1 == ap_CS_fsm_state43) & (m_axi_concat_data_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state43;
            end
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            if (((1'b1 == ap_CS_fsm_state81) & ((icmp_ln20_fu_309_p2 == 1'd1) | (icmp_ln15_reg_347 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state82;
            end
        end
        ap_ST_fsm_state82 : begin
            if (((1'b1 == ap_CS_fsm_state82) & (m_axi_concat_data_RVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state83;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state82;
            end
        end
        ap_ST_fsm_state83 : begin
            if (((1'b1 == ap_CS_fsm_state83) & (input_stream_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state81;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state83;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign COLS_c10_din = COLS;

assign ROWS_c9_din = ROWS;

assign add_ln15_1_fu_254_p2 = (i_fu_94 + 27'd1);

assign add_ln15_fu_215_p2 = (zext_ln15_fu_211_p1 + inputs);

assign add_ln20_1_fu_314_p2 = (i_2_fu_98 + 27'd1);

assign add_ln20_fu_276_p2 = (zext_ln20_fu_272_p1 + inputs);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];

assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];

assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];

assign ap_CS_fsm_state81 = ap_CS_fsm[32'd80];

assign ap_CS_fsm_state82 = ap_CS_fsm[32'd81];

assign ap_CS_fsm_state83 = ap_CS_fsm[32'd82];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0) | (1'b0 == COLS_c10_full_n) | (1'b0 == ROWS_c9_full_n));
end

assign div_cast_fu_193_p1 = div_fu_183_p4;

assign div_fu_183_p4 = {{mul_fu_177_p2[31:5]}};

assign icmp_ln15_1_fu_249_p2 = ((i_fu_94 == div_reg_335) ? 1'b1 : 1'b0);

assign icmp_ln15_fu_197_p2 = ((div_fu_183_p4 == 27'd0) ? 1'b1 : 1'b0);

assign icmp_ln20_fu_309_p2 = ((i_2_fu_98 == div_reg_335) ? 1'b1 : 1'b0);

assign m_axi_concat_data_ARBURST = 2'd0;

assign m_axi_concat_data_ARCACHE = 4'd0;

assign m_axi_concat_data_ARID = 1'd0;

assign m_axi_concat_data_ARLEN = div_cast_reg_341;

assign m_axi_concat_data_ARLOCK = 2'd0;

assign m_axi_concat_data_ARPROT = 3'd0;

assign m_axi_concat_data_ARQOS = 4'd0;

assign m_axi_concat_data_ARREGION = 4'd0;

assign m_axi_concat_data_ARSIZE = 3'd0;

assign m_axi_concat_data_ARUSER = 1'd0;

assign m_axi_concat_data_AWADDR = 64'd0;

assign m_axi_concat_data_AWBURST = 2'd0;

assign m_axi_concat_data_AWCACHE = 4'd0;

assign m_axi_concat_data_AWID = 1'd0;

assign m_axi_concat_data_AWLEN = 32'd0;

assign m_axi_concat_data_AWLOCK = 2'd0;

assign m_axi_concat_data_AWPROT = 3'd0;

assign m_axi_concat_data_AWQOS = 4'd0;

assign m_axi_concat_data_AWREGION = 4'd0;

assign m_axi_concat_data_AWSIZE = 3'd0;

assign m_axi_concat_data_AWUSER = 1'd0;

assign m_axi_concat_data_AWVALID = 1'b0;

assign m_axi_concat_data_BREADY = 1'b0;

assign m_axi_concat_data_WDATA = 256'd0;

assign m_axi_concat_data_WID = 1'd0;

assign m_axi_concat_data_WLAST = 1'b0;

assign m_axi_concat_data_WSTRB = 32'd0;

assign m_axi_concat_data_WUSER = 1'd0;

assign m_axi_concat_data_WVALID = 1'b0;

assign sext_ln15_fu_236_p1 = $signed(trunc_ln15_1_reg_358);

assign sext_ln20_fu_296_p1 = $signed(trunc_ln3_reg_379);

assign shl_ln1_fu_265_p3 = {{input_data_addr2}, {5'd0}};

assign shl_ln_fu_203_p3 = {{input_data_addr1}, {5'd0}};

assign zext_ln15_fu_211_p1 = shl_ln_fu_203_p3;

assign zext_ln20_fu_272_p1 = shl_ln1_fu_265_p3;

always @ (posedge ap_clk) begin
    div_cast_reg_341[31:27] <= 5'b00000;
end

endmodule //concat_read_inputs_ap_uint_256_ap_int_8_32u_s
