# This script segment is generated automatically by AutoPilot

set id 126
set name reshape_add_32ns_32ns_32_3_1
set corename simcore_add
set op add
set stage_num 3
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 2 ALLOW_PRAGMA 1
}


set op add
set corename Adder
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub] == "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipeaddsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipeaddsub, check your platform lib"
}
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
    id 128 \
    name output_data_addr_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_data_addr_load \
    op interface \
    ports { output_data_addr_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name trunc_ln78_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln78_s \
    op interface \
    ports { trunc_ln78_s { I 27 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name data_out2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out2 \
    op interface \
    ports { data_out2_dout { I 256 vector } data_out2_num_data_valid { I 5 vector } data_out2_fifo_cap { I 5 vector } data_out2_empty_n { I 1 bit } data_out2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name add_ln75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln75 \
    op interface \
    ports { add_ln75 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name zext_ln78_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_1 \
    op interface \
    ports { zext_ln78_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name reshape_data \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_reshape_data \
    op interface \
    ports { m_axi_reshape_data_AWVALID { O 1 bit } m_axi_reshape_data_AWREADY { I 1 bit } m_axi_reshape_data_AWADDR { O 64 vector } m_axi_reshape_data_AWID { O 1 vector } m_axi_reshape_data_AWLEN { O 32 vector } m_axi_reshape_data_AWSIZE { O 3 vector } m_axi_reshape_data_AWBURST { O 2 vector } m_axi_reshape_data_AWLOCK { O 2 vector } m_axi_reshape_data_AWCACHE { O 4 vector } m_axi_reshape_data_AWPROT { O 3 vector } m_axi_reshape_data_AWQOS { O 4 vector } m_axi_reshape_data_AWREGION { O 4 vector } m_axi_reshape_data_AWUSER { O 1 vector } m_axi_reshape_data_WVALID { O 1 bit } m_axi_reshape_data_WREADY { I 1 bit } m_axi_reshape_data_WDATA { O 256 vector } m_axi_reshape_data_WSTRB { O 32 vector } m_axi_reshape_data_WLAST { O 1 bit } m_axi_reshape_data_WID { O 1 vector } m_axi_reshape_data_WUSER { O 1 vector } m_axi_reshape_data_ARVALID { O 1 bit } m_axi_reshape_data_ARREADY { I 1 bit } m_axi_reshape_data_ARADDR { O 64 vector } m_axi_reshape_data_ARID { O 1 vector } m_axi_reshape_data_ARLEN { O 32 vector } m_axi_reshape_data_ARSIZE { O 3 vector } m_axi_reshape_data_ARBURST { O 2 vector } m_axi_reshape_data_ARLOCK { O 2 vector } m_axi_reshape_data_ARCACHE { O 4 vector } m_axi_reshape_data_ARPROT { O 3 vector } m_axi_reshape_data_ARQOS { O 4 vector } m_axi_reshape_data_ARREGION { O 4 vector } m_axi_reshape_data_ARUSER { O 1 vector } m_axi_reshape_data_RVALID { I 1 bit } m_axi_reshape_data_RREADY { O 1 bit } m_axi_reshape_data_RDATA { I 256 vector } m_axi_reshape_data_RLAST { I 1 bit } m_axi_reshape_data_RID { I 1 vector } m_axi_reshape_data_RFIFONUM { I 9 vector } m_axi_reshape_data_RUSER { I 1 vector } m_axi_reshape_data_RRESP { I 2 vector } m_axi_reshape_data_BVALID { I 1 bit } m_axi_reshape_data_BREADY { O 1 bit } m_axi_reshape_data_BRESP { I 2 vector } m_axi_reshape_data_BID { I 1 vector } m_axi_reshape_data_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name shl_ln78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78 \
    op interface \
    ports { shl_ln78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name zext_ln78_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_3 \
    op interface \
    ports { zext_ln78_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name shl_ln78_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_2 \
    op interface \
    ports { shl_ln78_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name zext_ln78_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_5 \
    op interface \
    ports { zext_ln78_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name shl_ln78_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_4 \
    op interface \
    ports { shl_ln78_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name zext_ln78_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_7 \
    op interface \
    ports { zext_ln78_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name shl_ln78_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_6 \
    op interface \
    ports { shl_ln78_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name zext_ln78_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_9 \
    op interface \
    ports { zext_ln78_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name shl_ln78_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_8 \
    op interface \
    ports { shl_ln78_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name zext_ln78_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_11 \
    op interface \
    ports { zext_ln78_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name shl_ln78_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_10 \
    op interface \
    ports { shl_ln78_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name zext_ln78_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_13 \
    op interface \
    ports { zext_ln78_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name shl_ln78_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_11 \
    op interface \
    ports { shl_ln78_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name zext_ln78_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_15 \
    op interface \
    ports { zext_ln78_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name shl_ln78_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_13 \
    op interface \
    ports { shl_ln78_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name zext_ln78_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_17 \
    op interface \
    ports { zext_ln78_17 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name shl_ln78_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_15 \
    op interface \
    ports { shl_ln78_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name zext_ln78_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_19 \
    op interface \
    ports { zext_ln78_19 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name shl_ln78_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_17 \
    op interface \
    ports { shl_ln78_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name zext_ln78_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_21 \
    op interface \
    ports { zext_ln78_21 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name shl_ln78_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_19 \
    op interface \
    ports { shl_ln78_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name zext_ln78_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_23 \
    op interface \
    ports { zext_ln78_23 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name shl_ln78_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_21 \
    op interface \
    ports { shl_ln78_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name zext_ln78_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_25 \
    op interface \
    ports { zext_ln78_25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name shl_ln78_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_23 \
    op interface \
    ports { shl_ln78_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name zext_ln78_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_27 \
    op interface \
    ports { zext_ln78_27 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name shl_ln78_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_25 \
    op interface \
    ports { shl_ln78_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name zext_ln78_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_29 \
    op interface \
    ports { zext_ln78_29 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name shl_ln78_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_27 \
    op interface \
    ports { shl_ln78_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name zext_ln78_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_31 \
    op interface \
    ports { zext_ln78_31 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name shl_ln78_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_29 \
    op interface \
    ports { shl_ln78_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name zext_ln78_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_33 \
    op interface \
    ports { zext_ln78_33 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name shl_ln78_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_31 \
    op interface \
    ports { shl_ln78_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name zext_ln78_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_35 \
    op interface \
    ports { zext_ln78_35 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name shl_ln78_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_33 \
    op interface \
    ports { shl_ln78_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name zext_ln78_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_37 \
    op interface \
    ports { zext_ln78_37 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name shl_ln78_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_35 \
    op interface \
    ports { shl_ln78_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name zext_ln78_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_39 \
    op interface \
    ports { zext_ln78_39 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name shl_ln78_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_37 \
    op interface \
    ports { shl_ln78_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name zext_ln78_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_41 \
    op interface \
    ports { zext_ln78_41 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name shl_ln78_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_39 \
    op interface \
    ports { shl_ln78_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name zext_ln78_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_43 \
    op interface \
    ports { zext_ln78_43 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name shl_ln78_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_41 \
    op interface \
    ports { shl_ln78_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name zext_ln78_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_45 \
    op interface \
    ports { zext_ln78_45 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name shl_ln78_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_43 \
    op interface \
    ports { shl_ln78_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name zext_ln78_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_47 \
    op interface \
    ports { zext_ln78_47 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name shl_ln78_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_45 \
    op interface \
    ports { shl_ln78_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name zext_ln78_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_49 \
    op interface \
    ports { zext_ln78_49 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name shl_ln78_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_47 \
    op interface \
    ports { shl_ln78_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name zext_ln78_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_51 \
    op interface \
    ports { zext_ln78_51 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name shl_ln78_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_49 \
    op interface \
    ports { shl_ln78_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name zext_ln78_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_53 \
    op interface \
    ports { zext_ln78_53 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name shl_ln78_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_51 \
    op interface \
    ports { shl_ln78_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name zext_ln78_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_55 \
    op interface \
    ports { zext_ln78_55 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name shl_ln78_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_53 \
    op interface \
    ports { shl_ln78_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name zext_ln78_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_57 \
    op interface \
    ports { zext_ln78_57 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name shl_ln78_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_55 \
    op interface \
    ports { shl_ln78_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name zext_ln78_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_59 \
    op interface \
    ports { zext_ln78_59 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name shl_ln78_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_57 \
    op interface \
    ports { shl_ln78_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name zext_ln78_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln78_61 \
    op interface \
    ports { zext_ln78_61 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name shl_ln78_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_59 \
    op interface \
    ports { shl_ln78_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name zext_ln75_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln75_1 \
    op interface \
    ports { zext_ln75_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name shl_ln78_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln78_61 \
    op interface \
    ports { shl_ln78_61 { I 32 vector } } \
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
set InstName reshape_flow_control_loop_pipe_sequential_init_U
set CompName reshape_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix reshape_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


