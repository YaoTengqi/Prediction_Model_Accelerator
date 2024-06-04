# This script segment is generated automatically by AutoPilot

set name concat_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 7 \
    name concat_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_concat_data \
    op interface \
    ports { m_axi_concat_data_AWVALID { O 1 bit } m_axi_concat_data_AWREADY { I 1 bit } m_axi_concat_data_AWADDR { O 64 vector } m_axi_concat_data_AWID { O 1 vector } m_axi_concat_data_AWLEN { O 32 vector } m_axi_concat_data_AWSIZE { O 3 vector } m_axi_concat_data_AWBURST { O 2 vector } m_axi_concat_data_AWLOCK { O 2 vector } m_axi_concat_data_AWCACHE { O 4 vector } m_axi_concat_data_AWPROT { O 3 vector } m_axi_concat_data_AWQOS { O 4 vector } m_axi_concat_data_AWREGION { O 4 vector } m_axi_concat_data_AWUSER { O 1 vector } m_axi_concat_data_WVALID { O 1 bit } m_axi_concat_data_WREADY { I 1 bit } m_axi_concat_data_WDATA { O 256 vector } m_axi_concat_data_WSTRB { O 32 vector } m_axi_concat_data_WLAST { O 1 bit } m_axi_concat_data_WID { O 1 vector } m_axi_concat_data_WUSER { O 1 vector } m_axi_concat_data_ARVALID { O 1 bit } m_axi_concat_data_ARREADY { I 1 bit } m_axi_concat_data_ARADDR { O 64 vector } m_axi_concat_data_ARID { O 1 vector } m_axi_concat_data_ARLEN { O 32 vector } m_axi_concat_data_ARSIZE { O 3 vector } m_axi_concat_data_ARBURST { O 2 vector } m_axi_concat_data_ARLOCK { O 2 vector } m_axi_concat_data_ARCACHE { O 4 vector } m_axi_concat_data_ARPROT { O 3 vector } m_axi_concat_data_ARQOS { O 4 vector } m_axi_concat_data_ARREGION { O 4 vector } m_axi_concat_data_ARUSER { O 1 vector } m_axi_concat_data_RVALID { I 1 bit } m_axi_concat_data_RREADY { O 1 bit } m_axi_concat_data_RDATA { I 256 vector } m_axi_concat_data_RLAST { I 1 bit } m_axi_concat_data_RID { I 1 vector } m_axi_concat_data_RFIFONUM { I 9 vector } m_axi_concat_data_RUSER { I 1 vector } m_axi_concat_data_RRESP { I 2 vector } m_axi_concat_data_BVALID { I 1 bit } m_axi_concat_data_BREADY { O 1 bit } m_axi_concat_data_BRESP { I 2 vector } m_axi_concat_data_BID { I 1 vector } m_axi_concat_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
    name input_data_addr1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_data_addr1 \
    op interface \
    ports { input_data_addr1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name input_data_addr2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_data_addr2 \
    op interface \
    ports { input_data_addr2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name ROWS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROWS \
    op interface \
    ports { ROWS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name COLS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_COLS \
    op interface \
    ports { COLS { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name input_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input_stream \
    op interface \
    ports { input_stream_din { O 256 vector } input_stream_num_data_valid { I 7 vector } input_stream_fifo_cap { I 7 vector } input_stream_full_n { I 1 bit } input_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name ROWS_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ROWS_c \
    op interface \
    ports { ROWS_c_din { O 32 vector } ROWS_c_num_data_valid { I 2 vector } ROWS_c_fifo_cap { I 2 vector } ROWS_c_full_n { I 1 bit } ROWS_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name COLS_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_COLS_c \
    op interface \
    ports { COLS_c_din { O 32 vector } COLS_c_num_data_valid { I 2 vector } COLS_c_fifo_cap { I 2 vector } COLS_c_full_n { I 1 bit } COLS_c_write { O 1 bit } } \
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


