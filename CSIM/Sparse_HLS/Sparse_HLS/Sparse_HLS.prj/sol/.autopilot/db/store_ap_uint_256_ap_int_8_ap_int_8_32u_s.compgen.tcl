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
    id 38 \
    name data_out1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out1 \
    op interface \
    ports { data_out1_dout { I 256 vector } data_out1_num_data_valid { I 7 vector } data_out1_fifo_cap { I 7 vector } data_out1_empty_n { I 1 bit } data_out1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name sparse_data \
    type other \
    dir O \
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
    id 40 \
    name outputs \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs \
    op interface \
    ports { outputs_dout { I 64 vector } outputs_num_data_valid { I 3 vector } outputs_fifo_cap { I 3 vector } outputs_empty_n { I 1 bit } outputs_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name output_data_addr3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_data_addr3 \
    op interface \
    ports { output_data_addr3_dout { I 32 vector } output_data_addr3_num_data_valid { I 3 vector } output_data_addr3_fifo_cap { I 3 vector } output_data_addr3_empty_n { I 1 bit } output_data_addr3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name ROWS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROWS \
    op interface \
    ports { ROWS_dout { I 32 vector } ROWS_num_data_valid { I 3 vector } ROWS_fifo_cap { I 3 vector } ROWS_empty_n { I 1 bit } ROWS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name COLS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_COLS \
    op interface \
    ports { COLS_dout { I 32 vector } COLS_num_data_valid { I 2 vector } COLS_fifo_cap { I 2 vector } COLS_empty_n { I 1 bit } COLS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name sparse_flag \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sparse_flag \
    op interface \
    ports { sparse_flag { O 1 vector } sparse_flag_ap_vld { O 1 bit } } \
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


