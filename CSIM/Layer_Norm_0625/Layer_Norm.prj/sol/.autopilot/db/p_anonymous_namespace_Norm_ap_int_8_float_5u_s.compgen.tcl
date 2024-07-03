# This script segment is generated automatically by AutoPilot

set name layernorm_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name layernorm_fdiv_32ns_32ns_32_9_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 8 ALLOW_PRAGMA 1
}


set name layernorm_sitofp_32s_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sitofp} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
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
    id 252 \
    name cols_log \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_log \
    op interface \
    ports { cols_log_dout { I 32 vector } cols_log_num_data_valid { I 2 vector } cols_log_fifo_cap { I 2 vector } cols_log_empty_n { I 1 bit } cols_log_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name rows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows_dout { I 32 vector } rows_num_data_valid { I 2 vector } rows_fifo_cap { I 2 vector } rows_empty_n { I 1 bit } rows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name data_copy_c3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_copy_c3 \
    op interface \
    ports { data_copy_c3_dout { I 256 vector } data_copy_c3_num_data_valid { I 5 vector } data_copy_c3_fifo_cap { I 5 vector } data_copy_c3_empty_n { I 1 bit } data_copy_c3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name mean_b7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mean_b7 \
    op interface \
    ports { mean_b7_dout { I 8 vector } mean_b7_num_data_valid { I 6 vector } mean_b7_fifo_cap { I 6 vector } mean_b7_empty_n { I 1 bit } mean_b7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name stddev8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stddev8 \
    op interface \
    ports { stddev8_dout { I 32 vector } stddev8_num_data_valid { I 6 vector } stddev8_fifo_cap { I 6 vector } stddev8_empty_n { I 1 bit } stddev8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name gamma4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gamma4 \
    op interface \
    ports { gamma4_dout { I 256 vector } gamma4_num_data_valid { I 5 vector } gamma4_fifo_cap { I 5 vector } gamma4_empty_n { I 1 bit } gamma4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name beta5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_beta5 \
    op interface \
    ports { beta5_dout { I 256 vector } beta5_num_data_valid { I 5 vector } beta5_fifo_cap { I 5 vector } beta5_empty_n { I 1 bit } beta5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name norm9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_norm9 \
    op interface \
    ports { norm9_din { O 256 vector } norm9_num_data_valid { I 5 vector } norm9_fifo_cap { I 5 vector } norm9_full_n { I 1 bit } norm9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name rows_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rows_c \
    op interface \
    ports { rows_c_din { O 32 vector } rows_c_num_data_valid { I 2 vector } rows_c_fifo_cap { I 2 vector } rows_c_full_n { I 1 bit } rows_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name cols_log_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_log_c \
    op interface \
    ports { cols_log_c_din { O 32 vector } cols_log_c_num_data_valid { I 2 vector } cols_log_c_fifo_cap { I 2 vector } cols_log_c_full_n { I 1 bit } cols_log_c_write { O 1 bit } } \
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


