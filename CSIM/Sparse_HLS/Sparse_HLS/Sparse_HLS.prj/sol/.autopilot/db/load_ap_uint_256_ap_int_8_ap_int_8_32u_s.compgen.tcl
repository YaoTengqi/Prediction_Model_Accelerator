# This script segment is generated automatically by AutoPilot

set name sparse_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 12
set name sparse_mux_325_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 8
set din8_signed 0
set din9_width 8
set din9_signed 0
set din10_width 8
set din10_signed 0
set din11_width 8
set din11_signed 0
set din12_width 8
set din12_signed 0
set din13_width 8
set din13_signed 0
set din14_width 8
set din14_signed 0
set din15_width 8
set din15_signed 0
set din16_width 8
set din16_signed 0
set din17_width 8
set din17_signed 0
set din18_width 8
set din18_signed 0
set din19_width 8
set din19_signed 0
set din20_width 8
set din20_signed 0
set din21_width 8
set din21_signed 0
set din22_width 8
set din22_signed 0
set din23_width 8
set din23_signed 0
set din24_width 8
set din24_signed 0
set din25_width 8
set din25_signed 0
set din26_width 8
set din26_signed 0
set din27_width 8
set din27_signed 0
set din28_width 8
set din28_signed 0
set din29_width 8
set din29_signed 0
set din30_width 8
set din30_signed 0
set din31_width 8
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_am_ram_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_fm_ram_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_idx_ram_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_count_ram_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name am_ROWS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_am_ROWS \
    op interface \
    ports { am_ROWS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name am_COLS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_am_COLS \
    op interface \
    ports { am_COLS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name fm_ROWS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_ROWS \
    op interface \
    ports { fm_ROWS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name fm_COLS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_COLS \
    op interface \
    ports { fm_COLS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name sparse_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sparse_data \
    op interface \
    ports { m_axi_sparse_data_AWVALID { O 1 bit } m_axi_sparse_data_AWREADY { I 1 bit } m_axi_sparse_data_AWADDR { O 64 vector } m_axi_sparse_data_AWID { O 1 vector } m_axi_sparse_data_AWLEN { O 32 vector } m_axi_sparse_data_AWSIZE { O 3 vector } m_axi_sparse_data_AWBURST { O 2 vector } m_axi_sparse_data_AWLOCK { O 2 vector } m_axi_sparse_data_AWCACHE { O 4 vector } m_axi_sparse_data_AWPROT { O 3 vector } m_axi_sparse_data_AWQOS { O 4 vector } m_axi_sparse_data_AWREGION { O 4 vector } m_axi_sparse_data_AWUSER { O 1 vector } m_axi_sparse_data_WVALID { O 1 bit } m_axi_sparse_data_WREADY { I 1 bit } m_axi_sparse_data_WDATA { O 256 vector } m_axi_sparse_data_WSTRB { O 32 vector } m_axi_sparse_data_WLAST { O 1 bit } m_axi_sparse_data_WID { O 1 vector } m_axi_sparse_data_WUSER { O 1 vector } m_axi_sparse_data_ARVALID { O 1 bit } m_axi_sparse_data_ARREADY { I 1 bit } m_axi_sparse_data_ARADDR { O 64 vector } m_axi_sparse_data_ARID { O 1 vector } m_axi_sparse_data_ARLEN { O 32 vector } m_axi_sparse_data_ARSIZE { O 3 vector } m_axi_sparse_data_ARBURST { O 2 vector } m_axi_sparse_data_ARLOCK { O 2 vector } m_axi_sparse_data_ARCACHE { O 4 vector } m_axi_sparse_data_ARPROT { O 3 vector } m_axi_sparse_data_ARQOS { O 4 vector } m_axi_sparse_data_ARREGION { O 4 vector } m_axi_sparse_data_ARUSER { O 1 vector } m_axi_sparse_data_RVALID { I 1 bit } m_axi_sparse_data_RREADY { O 1 bit } m_axi_sparse_data_RDATA { I 256 vector } m_axi_sparse_data_RLAST { I 1 bit } m_axi_sparse_data_RID { I 1 vector } m_axi_sparse_data_RFIFONUM { I 9 vector } m_axi_sparse_data_RUSER { I 1 vector } m_axi_sparse_data_RRESP { I 2 vector } m_axi_sparse_data_BVALID { I 1 bit } m_axi_sparse_data_BREADY { O 1 bit } m_axi_sparse_data_BRESP { I 2 vector } m_axi_sparse_data_BID { I 1 vector } m_axi_sparse_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name inputs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inputs \
    op interface \
    ports { inputs { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name idx_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_idx_stream \
    op interface \
    ports { idx_stream_din { O 8 vector } idx_stream_num_data_valid { I 8 vector } idx_stream_fifo_cap { I 8 vector } idx_stream_full_n { I 1 bit } idx_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name count_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_count_stream \
    op interface \
    ports { count_stream_din { O 8 vector } count_stream_num_data_valid { I 7 vector } count_stream_fifo_cap { I 7 vector } count_stream_full_n { I 1 bit } count_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name fm_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_stream \
    op interface \
    ports { fm_stream_din { O 256 vector } fm_stream_num_data_valid { I 8 vector } fm_stream_fifo_cap { I 8 vector } fm_stream_full_n { I 1 bit } fm_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name am_ROWS_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_am_ROWS_c \
    op interface \
    ports { am_ROWS_c_din { O 32 vector } am_ROWS_c_num_data_valid { I 2 vector } am_ROWS_c_fifo_cap { I 2 vector } am_ROWS_c_full_n { I 1 bit } am_ROWS_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name fm_ROWS_c14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_ROWS_c14 \
    op interface \
    ports { fm_ROWS_c14_din { O 32 vector } fm_ROWS_c14_num_data_valid { I 3 vector } fm_ROWS_c14_fifo_cap { I 3 vector } fm_ROWS_c14_full_n { I 1 bit } fm_ROWS_c14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name fm_COLS_c16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_COLS_c16 \
    op interface \
    ports { fm_COLS_c16_din { O 32 vector } fm_COLS_c16_num_data_valid { I 2 vector } fm_COLS_c16_fifo_cap { I 2 vector } fm_COLS_c16_full_n { I 1 bit } fm_COLS_c16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


