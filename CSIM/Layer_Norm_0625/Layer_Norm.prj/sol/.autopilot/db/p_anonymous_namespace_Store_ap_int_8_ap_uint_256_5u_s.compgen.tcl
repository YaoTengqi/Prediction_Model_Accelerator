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
    id 273 \
    name addr \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr \
    op interface \
    ports { addr_dout { I 32 vector } addr_num_data_valid { I 4 vector } addr_fifo_cap { I 4 vector } addr_empty_n { I 1 bit } addr_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name ln_data \
    type other \
    dir O \
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
    id 275 \
    name outputs \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs \
    op interface \
    ports { outputs_dout { I 64 vector } outputs_num_data_valid { I 4 vector } outputs_fifo_cap { I 4 vector } outputs_empty_n { I 1 bit } outputs_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name done \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_done \
    op interface \
    ports { done { O 32 vector } done_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name store_temp10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_store_temp10 \
    op interface \
    ports { store_temp10_dout { I 256 vector } store_temp10_num_data_valid { I 5 vector } store_temp10_fifo_cap { I 5 vector } store_temp10_empty_n { I 1 bit } store_temp10_read { O 1 bit } } \
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


