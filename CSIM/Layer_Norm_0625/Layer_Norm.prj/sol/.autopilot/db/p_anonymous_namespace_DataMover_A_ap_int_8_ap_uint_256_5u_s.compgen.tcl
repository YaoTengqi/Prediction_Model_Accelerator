# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler layernorm_p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s_ram_V_RAM_1P_BRAMbkb BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 17 \
    name cols_log \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_log \
    op interface \
    ports { cols_log { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name addr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr \
    op interface \
    ports { addr { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name ln_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ln_data \
    op interface \
    ports { m_axi_ln_data_AWVALID { O 1 bit } m_axi_ln_data_AWREADY { I 1 bit } m_axi_ln_data_AWADDR { O 64 vector } m_axi_ln_data_AWID { O 1 vector } m_axi_ln_data_AWLEN { O 32 vector } m_axi_ln_data_AWSIZE { O 3 vector } m_axi_ln_data_AWBURST { O 2 vector } m_axi_ln_data_AWLOCK { O 2 vector } m_axi_ln_data_AWCACHE { O 4 vector } m_axi_ln_data_AWPROT { O 3 vector } m_axi_ln_data_AWQOS { O 4 vector } m_axi_ln_data_AWREGION { O 4 vector } m_axi_ln_data_AWUSER { O 1 vector } m_axi_ln_data_WVALID { O 1 bit } m_axi_ln_data_WREADY { I 1 bit } m_axi_ln_data_WDATA { O 256 vector } m_axi_ln_data_WSTRB { O 32 vector } m_axi_ln_data_WLAST { O 1 bit } m_axi_ln_data_WID { O 1 vector } m_axi_ln_data_WUSER { O 1 vector } m_axi_ln_data_ARVALID { O 1 bit } m_axi_ln_data_ARREADY { I 1 bit } m_axi_ln_data_ARADDR { O 64 vector } m_axi_ln_data_ARID { O 1 vector } m_axi_ln_data_ARLEN { O 32 vector } m_axi_ln_data_ARSIZE { O 3 vector } m_axi_ln_data_ARBURST { O 2 vector } m_axi_ln_data_ARLOCK { O 2 vector } m_axi_ln_data_ARCACHE { O 4 vector } m_axi_ln_data_ARPROT { O 3 vector } m_axi_ln_data_ARQOS { O 4 vector } m_axi_ln_data_ARREGION { O 4 vector } m_axi_ln_data_ARUSER { O 1 vector } m_axi_ln_data_RVALID { I 1 bit } m_axi_ln_data_RREADY { O 1 bit } m_axi_ln_data_RDATA { I 256 vector } m_axi_ln_data_RLAST { I 1 bit } m_axi_ln_data_RID { I 1 vector } m_axi_ln_data_RFIFONUM { I 13 vector } m_axi_ln_data_RUSER { I 1 vector } m_axi_ln_data_RRESP { I 2 vector } m_axi_ln_data_BVALID { I 1 bit } m_axi_ln_data_BREADY { O 1 bit } m_axi_ln_data_BRESP { I 2 vector } m_axi_ln_data_BID { I 1 vector } m_axi_ln_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
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
    id 22 \
    name data_copy_a1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_copy_a1 \
    op interface \
    ports { data_copy_a1_din { O 256 vector } data_copy_a1_num_data_valid { I 5 vector } data_copy_a1_fifo_cap { I 5 vector } data_copy_a1_full_n { I 1 bit } data_copy_a1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name data_copy_b2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_copy_b2 \
    op interface \
    ports { data_copy_b2_din { O 256 vector } data_copy_b2_num_data_valid { I 5 vector } data_copy_b2_fifo_cap { I 5 vector } data_copy_b2_full_n { I 1 bit } data_copy_b2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name data_copy_c3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_copy_c3 \
    op interface \
    ports { data_copy_c3_din { O 256 vector } data_copy_c3_num_data_valid { I 5 vector } data_copy_c3_fifo_cap { I 5 vector } data_copy_c3_full_n { I 1 bit } data_copy_c3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name rows_c19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rows_c19 \
    op interface \
    ports { rows_c19_din { O 32 vector } rows_c19_num_data_valid { I 2 vector } rows_c19_fifo_cap { I 2 vector } rows_c19_full_n { I 1 bit } rows_c19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name cols_log_c22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_log_c22 \
    op interface \
    ports { cols_log_c22_din { O 32 vector } cols_log_c22_num_data_valid { I 2 vector } cols_log_c22_fifo_cap { I 2 vector } cols_log_c22_full_n { I 1 bit } cols_log_c22_write { O 1 bit } } \
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


