# This script segment is generated automatically by AutoPilot

set name reshape_mul_32ns_32ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reshape_reshape_stream_ap_int_8_ap_int_8_32u_s_buffer_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 120 \
    name data_in1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_in1 \
    op interface \
    ports { data_in1_dout { I 256 vector } data_in1_num_data_valid { I 5 vector } data_in1_fifo_cap { I 5 vector } data_in1_empty_n { I 1 bit } data_in1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name data_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out2 \
    op interface \
    ports { data_out2_din { O 256 vector } data_out2_num_data_valid { I 5 vector } data_out2_fifo_cap { I 5 vector } data_out2_full_n { I 1 bit } data_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name ROWS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROWS \
    op interface \
    ports { ROWS_dout { I 32 vector } ROWS_num_data_valid { I 2 vector } ROWS_fifo_cap { I 2 vector } ROWS_empty_n { I 1 bit } ROWS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
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
    id 124 \
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
    id 125 \
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


