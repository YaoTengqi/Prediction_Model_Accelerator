# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name loop_num \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loop_num \
    op interface \
    ports { loop_num { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name data_out1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out1 \
    op interface \
    ports { data_out1_dout { I 256 vector } data_out1_num_data_valid { I 8 vector } data_out1_fifo_cap { I 8 vector } data_out1_empty_n { I 1 bit } data_out1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name zext_ln96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln96 \
    op interface \
    ports { zext_ln96 { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name outputs_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs_load \
    op interface \
    ports { outputs_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name concat_data \
    type other \
    dir O \
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
    id 21 \
    name count_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_count_out \
    op interface \
    ports { count_out { O 32 vector } count_out_ap_vld { O 1 bit } } \
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
set InstName concat_flow_control_loop_pipe_sequential_init_U
set CompName concat_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix concat_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


