# This script segment is generated automatically by AutoPilot

set name sparse_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name idx_ram \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename idx_ram \
    op interface \
    ports { idx_ram_address0 { O 10 vector } idx_ram_ce0 { O 1 bit } idx_ram_we0 { O 1 bit } idx_ram_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'idx_ram'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name count_ram \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename count_ram \
    op interface \
    ports { count_ram_address0 { O 5 vector } count_ram_ce0 { O 1 bit } count_ram_we0 { O 1 bit } count_ram_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'count_ram'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name fm_ram \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename fm_ram \
    op interface \
    ports { fm_ram_address0 { O 9 vector } fm_ram_ce0 { O 1 bit } fm_ram_we0 { O 1 bit } fm_ram_d0 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_ram'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
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
    id 10 \
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
    id 11 \
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
    id 12 \
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
    id 13 \
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
    id 17 \
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
    id 18 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


