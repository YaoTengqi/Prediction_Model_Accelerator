# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s_gamma_ram_RAM_1P_cud BINDTYPE {storage} TYPE {ram_1p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
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
    id 52 \
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
    id 53 \
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
    id 54 \
    name gamma_addr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gamma_addr \
    op interface \
    ports { gamma_addr { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name beta_addr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_beta_addr \
    op interface \
    ports { beta_addr { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name ln_paras \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ln_paras \
    op interface \
    ports { m_axi_ln_paras_AWVALID { O 1 bit } m_axi_ln_paras_AWREADY { I 1 bit } m_axi_ln_paras_AWADDR { O 64 vector } m_axi_ln_paras_AWID { O 1 vector } m_axi_ln_paras_AWLEN { O 32 vector } m_axi_ln_paras_AWSIZE { O 3 vector } m_axi_ln_paras_AWBURST { O 2 vector } m_axi_ln_paras_AWLOCK { O 2 vector } m_axi_ln_paras_AWCACHE { O 4 vector } m_axi_ln_paras_AWPROT { O 3 vector } m_axi_ln_paras_AWQOS { O 4 vector } m_axi_ln_paras_AWREGION { O 4 vector } m_axi_ln_paras_AWUSER { O 1 vector } m_axi_ln_paras_WVALID { O 1 bit } m_axi_ln_paras_WREADY { I 1 bit } m_axi_ln_paras_WDATA { O 256 vector } m_axi_ln_paras_WSTRB { O 32 vector } m_axi_ln_paras_WLAST { O 1 bit } m_axi_ln_paras_WID { O 1 vector } m_axi_ln_paras_WUSER { O 1 vector } m_axi_ln_paras_ARVALID { O 1 bit } m_axi_ln_paras_ARREADY { I 1 bit } m_axi_ln_paras_ARADDR { O 64 vector } m_axi_ln_paras_ARID { O 1 vector } m_axi_ln_paras_ARLEN { O 32 vector } m_axi_ln_paras_ARSIZE { O 3 vector } m_axi_ln_paras_ARBURST { O 2 vector } m_axi_ln_paras_ARLOCK { O 2 vector } m_axi_ln_paras_ARCACHE { O 4 vector } m_axi_ln_paras_ARPROT { O 3 vector } m_axi_ln_paras_ARQOS { O 4 vector } m_axi_ln_paras_ARREGION { O 4 vector } m_axi_ln_paras_ARUSER { O 1 vector } m_axi_ln_paras_RVALID { I 1 bit } m_axi_ln_paras_RREADY { O 1 bit } m_axi_ln_paras_RDATA { I 256 vector } m_axi_ln_paras_RLAST { I 1 bit } m_axi_ln_paras_RID { I 1 vector } m_axi_ln_paras_RFIFONUM { I 13 vector } m_axi_ln_paras_RUSER { I 1 vector } m_axi_ln_paras_RRESP { I 2 vector } m_axi_ln_paras_BVALID { I 1 bit } m_axi_ln_paras_BREADY { O 1 bit } m_axi_ln_paras_BRESP { I 2 vector } m_axi_ln_paras_BID { I 1 vector } m_axi_ln_paras_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
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
    id 58 \
    name gamma4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gamma4 \
    op interface \
    ports { gamma4_din { O 256 vector } gamma4_num_data_valid { I 5 vector } gamma4_fifo_cap { I 5 vector } gamma4_full_n { I 1 bit } gamma4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name beta5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_beta5 \
    op interface \
    ports { beta5_din { O 256 vector } beta5_num_data_valid { I 5 vector } beta5_fifo_cap { I 5 vector } beta5_full_n { I 1 bit } beta5_write { O 1 bit } } \
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


