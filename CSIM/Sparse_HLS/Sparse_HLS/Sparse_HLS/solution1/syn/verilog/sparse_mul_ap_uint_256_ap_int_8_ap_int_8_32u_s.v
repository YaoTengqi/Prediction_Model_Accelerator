// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sparse_mul_ap_uint_256_ap_int_8_ap_int_8_32u_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        fm_ram_address0,
        fm_ram_ce0,
        fm_ram_q0,
        idx_ram_address0,
        idx_ram_ce0,
        idx_ram_q0,
        count_ram_address0,
        count_ram_ce0,
        count_ram_q0,
        data_out1_din,
        data_out1_num_data_valid,
        data_out1_fifo_cap,
        data_out1_full_n,
        data_out1_write,
        am_ROWS_c_din,
        am_ROWS_c_num_data_valid,
        am_ROWS_c_fifo_cap,
        am_ROWS_c_full_n,
        am_ROWS_c_write,
        fm_COLS_c_din,
        fm_COLS_c_num_data_valid,
        fm_COLS_c_fifo_cap,
        fm_COLS_c_full_n,
        fm_COLS_c_write
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
output  [8:0] fm_ram_address0;
output   fm_ram_ce0;
input  [255:0] fm_ram_q0;
output  [9:0] idx_ram_address0;
output   idx_ram_ce0;
input  [7:0] idx_ram_q0;
output  [4:0] count_ram_address0;
output   count_ram_ce0;
input  [7:0] count_ram_q0;
output  [255:0] data_out1_din;
input  [6:0] data_out1_num_data_valid;
input  [6:0] data_out1_fifo_cap;
input   data_out1_full_n;
output   data_out1_write;
output  [31:0] am_ROWS_c_din;
input  [1:0] am_ROWS_c_num_data_valid;
input  [1:0] am_ROWS_c_fifo_cap;
input   am_ROWS_c_full_n;
output   am_ROWS_c_write;
output  [31:0] fm_COLS_c_din;
input  [1:0] fm_COLS_c_num_data_valid;
input  [1:0] fm_COLS_c_fifo_cap;
input   fm_COLS_c_full_n;
output   fm_COLS_c_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fm_ram_ce0;
reg idx_ram_ce0;
reg count_ram_ce0;
reg data_out1_write;
reg am_ROWS_c_write;
reg fm_COLS_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    data_out1_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln59_fu_771_p2;
reg    am_ROWS_c_blk_n;
reg    fm_COLS_c_blk_n;
reg   [26:0] trunc_ln_reg_1398;
wire   [26:0] block_2_fu_721_p2;
reg   [26:0] block_2_reg_1406;
wire    ap_CS_fsm_state2;
wire   [8:0] mul_fu_731_p3;
reg   [8:0] mul_reg_1411;
wire   [0:0] icmp_ln52_fu_716_p2;
wire   [31:0] add_ln54_fu_749_p2;
reg   [31:0] add_ln54_reg_1419;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln54_fu_744_p2;
reg   [7:0] idx_count_reg_1429;
wire    ap_CS_fsm_state4;
wire   [31:0] zext_ln55_fu_759_p1;
reg   [31:0] zext_ln55_reg_1434;
wire   [9:0] trunc_ln59_fu_763_p1;
reg   [9:0] trunc_ln59_reg_1439;
wire   [7:0] add_ln59_fu_776_p2;
reg   [7:0] add_ln59_reg_1447;
reg    ap_block_state5;
wire   [31:0] idx_ram_base_1_fu_792_p2;
wire    ap_CS_fsm_state6;
wire   [7:0] add_ln63_fu_1194_p2;
wire    ap_CS_fsm_state7;
wire   [7:0] add_ln63_1_fu_1200_p2;
wire   [7:0] add_ln63_2_fu_1206_p2;
wire   [7:0] add_ln63_3_fu_1212_p2;
wire   [7:0] add_ln63_4_fu_1218_p2;
wire   [7:0] add_ln63_5_fu_1224_p2;
wire   [7:0] add_ln63_6_fu_1230_p2;
wire   [7:0] add_ln63_7_fu_1236_p2;
wire   [7:0] add_ln63_8_fu_1242_p2;
wire   [7:0] add_ln63_9_fu_1248_p2;
wire   [7:0] add_ln63_10_fu_1254_p2;
wire   [7:0] add_ln63_11_fu_1260_p2;
wire   [7:0] add_ln63_12_fu_1266_p2;
wire   [7:0] add_ln63_13_fu_1272_p2;
wire   [7:0] add_ln63_14_fu_1278_p2;
wire   [7:0] add_ln63_15_fu_1284_p2;
wire   [7:0] add_ln63_16_fu_1290_p2;
wire   [7:0] add_ln63_17_fu_1296_p2;
wire   [7:0] add_ln63_18_fu_1302_p2;
wire   [7:0] add_ln63_19_fu_1308_p2;
wire   [7:0] add_ln63_20_fu_1314_p2;
wire   [7:0] add_ln63_21_fu_1320_p2;
wire   [7:0] add_ln63_22_fu_1326_p2;
wire   [7:0] add_ln63_23_fu_1332_p2;
wire   [7:0] add_ln63_24_fu_1338_p2;
wire   [7:0] add_ln63_25_fu_1344_p2;
wire   [7:0] add_ln63_26_fu_1350_p2;
wire   [7:0] add_ln63_27_fu_1356_p2;
wire   [7:0] add_ln63_28_fu_1362_p2;
wire   [7:0] add_ln63_29_fu_1368_p2;
wire   [7:0] add_ln63_30_fu_1374_p2;
wire   [7:0] add_ln63_31_fu_1380_p2;
reg   [31:0] row_reg_280;
reg   [31:0] idx_ram_base_reg_291;
reg   [7:0] count_reg_303;
reg   [7:0] result_m_Val_V_62_reg_314;
reg   [7:0] result_m_Val_V_61_reg_326;
reg   [7:0] result_m_Val_V_60_reg_338;
reg   [7:0] result_m_Val_V_59_reg_350;
reg   [7:0] result_m_Val_V_58_reg_362;
reg   [7:0] result_m_Val_V_57_reg_374;
reg   [7:0] result_m_Val_V_56_reg_386;
reg   [7:0] result_m_Val_V_55_reg_398;
reg   [7:0] result_m_Val_V_54_reg_410;
reg   [7:0] result_m_Val_V_53_reg_422;
reg   [7:0] result_m_Val_V_52_reg_434;
reg   [7:0] result_m_Val_V_51_reg_446;
reg   [7:0] result_m_Val_V_50_reg_458;
reg   [7:0] result_m_Val_V_49_reg_470;
reg   [7:0] result_m_Val_V_48_reg_482;
reg   [7:0] result_m_Val_V_47_reg_494;
reg   [7:0] result_m_Val_V_46_reg_506;
reg   [7:0] result_m_Val_V_45_reg_518;
reg   [7:0] result_m_Val_V_44_reg_530;
reg   [7:0] result_m_Val_V_43_reg_542;
reg   [7:0] result_m_Val_V_42_reg_554;
reg   [7:0] result_m_Val_V_41_reg_566;
reg   [7:0] result_m_Val_V_40_reg_578;
reg   [7:0] result_m_Val_V_39_reg_590;
reg   [7:0] result_m_Val_V_38_reg_602;
reg   [7:0] result_m_Val_V_37_reg_614;
reg   [7:0] result_m_Val_V_36_reg_626;
reg   [7:0] result_m_Val_V_35_reg_638;
reg   [7:0] result_m_Val_V_34_reg_650;
reg   [7:0] result_m_Val_V_33_reg_662;
reg   [7:0] result_m_Val_V_32_reg_674;
reg   [7:0] result_m_Val_V_reg_686;
wire   [63:0] zext_ln54_fu_739_p1;
wire   [63:0] zext_ln60_fu_787_p1;
wire   [63:0] zext_ln61_1_fu_875_p1;
reg   [26:0] block_fu_202;
reg    ap_block_state1;
wire   [3:0] empty_fu_727_p1;
wire   [9:0] zext_ln59_fu_767_p1;
wire   [9:0] add_ln60_fu_782_p2;
wire   [8:0] zext_ln61_fu_866_p1;
wire   [8:0] add_ln61_fu_870_p2;
wire   [7:0] l_val_V_32_fu_880_p1;
wire   [7:0] l_val_V_33_fu_884_p4;
wire   [7:0] l_val_V_34_fu_894_p4;
wire   [7:0] l_val_V_35_fu_904_p4;
wire   [7:0] l_val_V_36_fu_914_p4;
wire   [7:0] l_val_V_37_fu_924_p4;
wire   [7:0] l_val_V_38_fu_934_p4;
wire   [7:0] l_val_V_39_fu_944_p4;
wire   [7:0] l_val_V_40_fu_954_p4;
wire   [7:0] l_val_V_41_fu_964_p4;
wire   [7:0] l_val_V_42_fu_974_p4;
wire   [7:0] l_val_V_43_fu_984_p4;
wire   [7:0] l_val_V_44_fu_994_p4;
wire   [7:0] l_val_V_45_fu_1004_p4;
wire   [7:0] l_val_V_46_fu_1014_p4;
wire   [7:0] l_val_V_47_fu_1024_p4;
wire   [7:0] l_val_V_48_fu_1034_p4;
wire   [7:0] l_val_V_49_fu_1044_p4;
wire   [7:0] l_val_V_50_fu_1054_p4;
wire   [7:0] l_val_V_51_fu_1064_p4;
wire   [7:0] l_val_V_52_fu_1074_p4;
wire   [7:0] l_val_V_53_fu_1084_p4;
wire   [7:0] l_val_V_54_fu_1094_p4;
wire   [7:0] l_val_V_55_fu_1104_p4;
wire   [7:0] l_val_V_56_fu_1114_p4;
wire   [7:0] l_val_V_57_fu_1124_p4;
wire   [7:0] l_val_V_58_fu_1134_p4;
wire   [7:0] l_val_V_59_fu_1144_p4;
wire   [7:0] l_val_V_60_fu_1154_p4;
wire   [7:0] l_val_V_61_fu_1164_p4;
wire   [7:0] l_val_V_62_fu_1174_p4;
wire   [7:0] l_val_V_63_fu_1184_p4;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
end

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
        end else if (((icmp_ln52_fu_716_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        block_fu_202 <= 27'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln54_fu_744_p2 == 1'd1))) begin
        block_fu_202 <= block_2_reg_1406;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        count_reg_303 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        count_reg_303 <= add_ln59_reg_1447;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (icmp_ln59_fu_771_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        idx_ram_base_reg_291 <= idx_ram_base_1_fu_792_p2;
    end else if (((icmp_ln52_fu_716_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_ram_base_reg_291 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_32_reg_674 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_32_reg_674 <= add_ln63_1_fu_1200_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_33_reg_662 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_33_reg_662 <= add_ln63_2_fu_1206_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_34_reg_650 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_34_reg_650 <= add_ln63_3_fu_1212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_35_reg_638 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_35_reg_638 <= add_ln63_4_fu_1218_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_36_reg_626 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_36_reg_626 <= add_ln63_5_fu_1224_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_37_reg_614 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_37_reg_614 <= add_ln63_6_fu_1230_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_38_reg_602 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_38_reg_602 <= add_ln63_7_fu_1236_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_39_reg_590 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_39_reg_590 <= add_ln63_8_fu_1242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_40_reg_578 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_40_reg_578 <= add_ln63_9_fu_1248_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_41_reg_566 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_41_reg_566 <= add_ln63_10_fu_1254_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_42_reg_554 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_42_reg_554 <= add_ln63_11_fu_1260_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_43_reg_542 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_43_reg_542 <= add_ln63_12_fu_1266_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_44_reg_530 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_44_reg_530 <= add_ln63_13_fu_1272_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_45_reg_518 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_45_reg_518 <= add_ln63_14_fu_1278_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_46_reg_506 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_46_reg_506 <= add_ln63_15_fu_1284_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_47_reg_494 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_47_reg_494 <= add_ln63_16_fu_1290_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_48_reg_482 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_48_reg_482 <= add_ln63_17_fu_1296_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_49_reg_470 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_49_reg_470 <= add_ln63_18_fu_1302_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_50_reg_458 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_50_reg_458 <= add_ln63_19_fu_1308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_51_reg_446 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_51_reg_446 <= add_ln63_20_fu_1314_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_52_reg_434 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_52_reg_434 <= add_ln63_21_fu_1320_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_53_reg_422 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_53_reg_422 <= add_ln63_22_fu_1326_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_54_reg_410 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_54_reg_410 <= add_ln63_23_fu_1332_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_55_reg_398 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_55_reg_398 <= add_ln63_24_fu_1338_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_56_reg_386 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_56_reg_386 <= add_ln63_25_fu_1344_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_57_reg_374 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_57_reg_374 <= add_ln63_26_fu_1350_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_58_reg_362 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_58_reg_362 <= add_ln63_27_fu_1356_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_59_reg_350 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_59_reg_350 <= add_ln63_28_fu_1362_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_60_reg_338 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_60_reg_338 <= add_ln63_29_fu_1368_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_61_reg_326 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_61_reg_326 <= add_ln63_30_fu_1374_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_62_reg_314 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_62_reg_314 <= add_ln63_31_fu_1380_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        result_m_Val_V_reg_686 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        result_m_Val_V_reg_686 <= add_ln63_fu_1194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (icmp_ln59_fu_771_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        row_reg_280 <= add_ln54_reg_1419;
    end else if (((icmp_ln52_fu_716_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        row_reg_280 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln54_reg_1419 <= add_ln54_fu_749_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln59_reg_1447 <= add_ln59_fu_776_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        block_2_reg_1406 <= block_2_fu_721_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        idx_count_reg_1429 <= count_ram_q0;
        trunc_ln59_reg_1439 <= trunc_ln59_fu_763_p1;
        zext_ln55_reg_1434[7 : 0] <= zext_ln55_fu_759_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln52_fu_716_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        mul_reg_1411[8 : 5] <= mul_fu_731_p3[8 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_1398 <= {{p_read1[31:5]}};
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        am_ROWS_c_blk_n = am_ROWS_c_full_n;
    end else begin
        am_ROWS_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        am_ROWS_c_write = 1'b1;
    end else begin
        am_ROWS_c_write = 1'b0;
    end
end

always @ (*) begin
    if (((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0))) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln52_fu_716_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln52_fu_716_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        count_ram_ce0 = 1'b1;
    end else begin
        count_ram_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln59_fu_771_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        data_out1_blk_n = data_out1_full_n;
    end else begin
        data_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (icmp_ln59_fu_771_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        data_out1_write = 1'b1;
    end else begin
        data_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        fm_COLS_c_blk_n = fm_COLS_c_full_n;
    end else begin
        fm_COLS_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        fm_COLS_c_write = 1'b1;
    end else begin
        fm_COLS_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fm_ram_ce0 = 1'b1;
    end else begin
        fm_ram_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        idx_ram_ce0 = 1'b1;
    end else begin
        idx_ram_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln52_fu_716_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln54_fu_744_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (icmp_ln59_fu_771_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0)) & (icmp_ln59_fu_771_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln54_fu_749_p2 = (row_reg_280 + 32'd1);

assign add_ln59_fu_776_p2 = (count_reg_303 + 8'd1);

assign add_ln60_fu_782_p2 = (trunc_ln59_reg_1439 + zext_ln59_fu_767_p1);

assign add_ln61_fu_870_p2 = (mul_reg_1411 + zext_ln61_fu_866_p1);

assign add_ln63_10_fu_1254_p2 = (l_val_V_42_fu_974_p4 + result_m_Val_V_41_reg_566);

assign add_ln63_11_fu_1260_p2 = (l_val_V_43_fu_984_p4 + result_m_Val_V_42_reg_554);

assign add_ln63_12_fu_1266_p2 = (l_val_V_44_fu_994_p4 + result_m_Val_V_43_reg_542);

assign add_ln63_13_fu_1272_p2 = (l_val_V_45_fu_1004_p4 + result_m_Val_V_44_reg_530);

assign add_ln63_14_fu_1278_p2 = (l_val_V_46_fu_1014_p4 + result_m_Val_V_45_reg_518);

assign add_ln63_15_fu_1284_p2 = (l_val_V_47_fu_1024_p4 + result_m_Val_V_46_reg_506);

assign add_ln63_16_fu_1290_p2 = (l_val_V_48_fu_1034_p4 + result_m_Val_V_47_reg_494);

assign add_ln63_17_fu_1296_p2 = (l_val_V_49_fu_1044_p4 + result_m_Val_V_48_reg_482);

assign add_ln63_18_fu_1302_p2 = (l_val_V_50_fu_1054_p4 + result_m_Val_V_49_reg_470);

assign add_ln63_19_fu_1308_p2 = (l_val_V_51_fu_1064_p4 + result_m_Val_V_50_reg_458);

assign add_ln63_1_fu_1200_p2 = (l_val_V_33_fu_884_p4 + result_m_Val_V_32_reg_674);

assign add_ln63_20_fu_1314_p2 = (l_val_V_52_fu_1074_p4 + result_m_Val_V_51_reg_446);

assign add_ln63_21_fu_1320_p2 = (l_val_V_53_fu_1084_p4 + result_m_Val_V_52_reg_434);

assign add_ln63_22_fu_1326_p2 = (l_val_V_54_fu_1094_p4 + result_m_Val_V_53_reg_422);

assign add_ln63_23_fu_1332_p2 = (l_val_V_55_fu_1104_p4 + result_m_Val_V_54_reg_410);

assign add_ln63_24_fu_1338_p2 = (l_val_V_56_fu_1114_p4 + result_m_Val_V_55_reg_398);

assign add_ln63_25_fu_1344_p2 = (l_val_V_57_fu_1124_p4 + result_m_Val_V_56_reg_386);

assign add_ln63_26_fu_1350_p2 = (l_val_V_58_fu_1134_p4 + result_m_Val_V_57_reg_374);

assign add_ln63_27_fu_1356_p2 = (l_val_V_59_fu_1144_p4 + result_m_Val_V_58_reg_362);

assign add_ln63_28_fu_1362_p2 = (l_val_V_60_fu_1154_p4 + result_m_Val_V_59_reg_350);

assign add_ln63_29_fu_1368_p2 = (l_val_V_61_fu_1164_p4 + result_m_Val_V_60_reg_338);

assign add_ln63_2_fu_1206_p2 = (l_val_V_34_fu_894_p4 + result_m_Val_V_33_reg_662);

assign add_ln63_30_fu_1374_p2 = (l_val_V_62_fu_1174_p4 + result_m_Val_V_61_reg_326);

assign add_ln63_31_fu_1380_p2 = (l_val_V_63_fu_1184_p4 + result_m_Val_V_62_reg_314);

assign add_ln63_3_fu_1212_p2 = (l_val_V_35_fu_904_p4 + result_m_Val_V_34_reg_650);

assign add_ln63_4_fu_1218_p2 = (l_val_V_36_fu_914_p4 + result_m_Val_V_35_reg_638);

assign add_ln63_5_fu_1224_p2 = (l_val_V_37_fu_924_p4 + result_m_Val_V_36_reg_626);

assign add_ln63_6_fu_1230_p2 = (l_val_V_38_fu_934_p4 + result_m_Val_V_37_reg_614);

assign add_ln63_7_fu_1236_p2 = (l_val_V_39_fu_944_p4 + result_m_Val_V_38_reg_602);

assign add_ln63_8_fu_1242_p2 = (l_val_V_40_fu_954_p4 + result_m_Val_V_39_reg_590);

assign add_ln63_9_fu_1248_p2 = (l_val_V_41_fu_964_p4 + result_m_Val_V_40_reg_578);

assign add_ln63_fu_1194_p2 = (l_val_V_32_fu_880_p1 + result_m_Val_V_reg_686);

assign am_ROWS_c_din = p_read;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((fm_COLS_c_full_n == 1'b0) | (1'b0 == am_ROWS_c_full_n) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state5 = ((icmp_ln59_fu_771_p2 == 1'd1) & (data_out1_full_n == 1'b0));
end

assign block_2_fu_721_p2 = (block_fu_202 + 27'd1);

assign count_ram_address0 = zext_ln54_fu_739_p1;

assign data_out1_din = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{result_m_Val_V_62_reg_314}, {result_m_Val_V_61_reg_326}}, {result_m_Val_V_60_reg_338}}, {result_m_Val_V_59_reg_350}}, {result_m_Val_V_58_reg_362}}, {result_m_Val_V_57_reg_374}}, {result_m_Val_V_56_reg_386}}, {result_m_Val_V_55_reg_398}}, {result_m_Val_V_54_reg_410}}, {result_m_Val_V_53_reg_422}}, {result_m_Val_V_52_reg_434}}, {result_m_Val_V_51_reg_446}}, {result_m_Val_V_50_reg_458}}, {result_m_Val_V_49_reg_470}}, {result_m_Val_V_48_reg_482}}, {result_m_Val_V_47_reg_494}}, {result_m_Val_V_46_reg_506}}, {result_m_Val_V_45_reg_518}}, {result_m_Val_V_44_reg_530}}, {result_m_Val_V_43_reg_542}}, {result_m_Val_V_42_reg_554}}, {result_m_Val_V_41_reg_566}}, {result_m_Val_V_40_reg_578}}, {result_m_Val_V_39_reg_590}}, {result_m_Val_V_38_reg_602}}, {result_m_Val_V_37_reg_614}}, {result_m_Val_V_36_reg_626}}, {result_m_Val_V_35_reg_638}}, {result_m_Val_V_34_reg_650}}, {result_m_Val_V_33_reg_662}}, {result_m_Val_V_32_reg_674}}, {result_m_Val_V_reg_686}};

assign empty_fu_727_p1 = block_fu_202[3:0];

assign fm_COLS_c_din = p_read1;

assign fm_ram_address0 = zext_ln61_1_fu_875_p1;

assign icmp_ln52_fu_716_p2 = ((block_fu_202 == trunc_ln_reg_1398) ? 1'b1 : 1'b0);

assign icmp_ln54_fu_744_p2 = ((row_reg_280 == p_read) ? 1'b1 : 1'b0);

assign icmp_ln59_fu_771_p2 = ((count_reg_303 == idx_count_reg_1429) ? 1'b1 : 1'b0);

assign idx_ram_address0 = zext_ln60_fu_787_p1;

assign idx_ram_base_1_fu_792_p2 = (zext_ln55_reg_1434 + idx_ram_base_reg_291);

assign l_val_V_32_fu_880_p1 = fm_ram_q0[7:0];

assign l_val_V_33_fu_884_p4 = {{fm_ram_q0[15:8]}};

assign l_val_V_34_fu_894_p4 = {{fm_ram_q0[23:16]}};

assign l_val_V_35_fu_904_p4 = {{fm_ram_q0[31:24]}};

assign l_val_V_36_fu_914_p4 = {{fm_ram_q0[39:32]}};

assign l_val_V_37_fu_924_p4 = {{fm_ram_q0[47:40]}};

assign l_val_V_38_fu_934_p4 = {{fm_ram_q0[55:48]}};

assign l_val_V_39_fu_944_p4 = {{fm_ram_q0[63:56]}};

assign l_val_V_40_fu_954_p4 = {{fm_ram_q0[71:64]}};

assign l_val_V_41_fu_964_p4 = {{fm_ram_q0[79:72]}};

assign l_val_V_42_fu_974_p4 = {{fm_ram_q0[87:80]}};

assign l_val_V_43_fu_984_p4 = {{fm_ram_q0[95:88]}};

assign l_val_V_44_fu_994_p4 = {{fm_ram_q0[103:96]}};

assign l_val_V_45_fu_1004_p4 = {{fm_ram_q0[111:104]}};

assign l_val_V_46_fu_1014_p4 = {{fm_ram_q0[119:112]}};

assign l_val_V_47_fu_1024_p4 = {{fm_ram_q0[127:120]}};

assign l_val_V_48_fu_1034_p4 = {{fm_ram_q0[135:128]}};

assign l_val_V_49_fu_1044_p4 = {{fm_ram_q0[143:136]}};

assign l_val_V_50_fu_1054_p4 = {{fm_ram_q0[151:144]}};

assign l_val_V_51_fu_1064_p4 = {{fm_ram_q0[159:152]}};

assign l_val_V_52_fu_1074_p4 = {{fm_ram_q0[167:160]}};

assign l_val_V_53_fu_1084_p4 = {{fm_ram_q0[175:168]}};

assign l_val_V_54_fu_1094_p4 = {{fm_ram_q0[183:176]}};

assign l_val_V_55_fu_1104_p4 = {{fm_ram_q0[191:184]}};

assign l_val_V_56_fu_1114_p4 = {{fm_ram_q0[199:192]}};

assign l_val_V_57_fu_1124_p4 = {{fm_ram_q0[207:200]}};

assign l_val_V_58_fu_1134_p4 = {{fm_ram_q0[215:208]}};

assign l_val_V_59_fu_1144_p4 = {{fm_ram_q0[223:216]}};

assign l_val_V_60_fu_1154_p4 = {{fm_ram_q0[231:224]}};

assign l_val_V_61_fu_1164_p4 = {{fm_ram_q0[239:232]}};

assign l_val_V_62_fu_1174_p4 = {{fm_ram_q0[247:240]}};

assign l_val_V_63_fu_1184_p4 = {{fm_ram_q0[255:248]}};

assign mul_fu_731_p3 = {{empty_fu_727_p1}, {5'd0}};

assign trunc_ln59_fu_763_p1 = idx_ram_base_reg_291[9:0];

assign zext_ln54_fu_739_p1 = row_reg_280;

assign zext_ln55_fu_759_p1 = count_ram_q0;

assign zext_ln59_fu_767_p1 = count_reg_303;

assign zext_ln60_fu_787_p1 = add_ln60_fu_782_p2;

assign zext_ln61_1_fu_875_p1 = add_ln61_fu_870_p2;

assign zext_ln61_fu_866_p1 = idx_ram_q0;

always @ (posedge ap_clk) begin
    mul_reg_1411[4:0] <= 5'b00000;
    zext_ln55_reg_1434[31:8] <= 24'b000000000000000000000000;
end

endmodule //sparse_mul_ap_uint_256_ap_int_8_ap_int_8_32u_s