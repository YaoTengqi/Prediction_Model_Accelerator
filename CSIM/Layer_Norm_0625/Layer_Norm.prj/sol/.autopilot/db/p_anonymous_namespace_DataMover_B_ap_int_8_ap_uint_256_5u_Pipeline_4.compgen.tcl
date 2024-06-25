# This script segment is generated automatically by AutoPilot

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
    id 49 \
    name beta_ram \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename beta_ram \
    op interface \
    ports { beta_ram_address0 { O 9 vector } beta_ram_ce0 { O 1 bit } beta_ram_we0 { O 32 vector } beta_ram_d0 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'beta_ram'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name trunc_ln96_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln96_3 \
    op interface \
    ports { trunc_ln96_3 { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name sext_ln96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96 \
    op interface \
    ports { sext_ln96 { I 33 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name add_ln97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln97 \
    op interface \
    ports { add_ln97 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
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
    id 47 \
    name sub_ln96_cast1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub_ln96_cast1 \
    op interface \
    ports { sub_ln96_cast1 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name trunc_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln \
    op interface \
    ports { trunc_ln { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name trunc_ln96_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln96_1 \
    op interface \
    ports { trunc_ln96_1 { I 5 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName layernorm_flow_control_loop_pipe_sequential_init_U
set CompName layernorm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix layernorm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


