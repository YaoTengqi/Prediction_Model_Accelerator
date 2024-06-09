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
    id 33 \
    name am_ROWS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_am_ROWS \
    op interface \
    ports { am_ROWS_dout { I 32 vector } am_ROWS_num_data_valid { I 2 vector } am_ROWS_fifo_cap { I 2 vector } am_ROWS_empty_n { I 1 bit } am_ROWS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name fm_COLS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_COLS \
    op interface \
    ports { fm_COLS_dout { I 32 vector } fm_COLS_num_data_valid { I 2 vector } fm_COLS_fifo_cap { I 2 vector } fm_COLS_empty_n { I 1 bit } fm_COLS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name fm_stream3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_stream3 \
    op interface \
    ports { fm_stream3_dout { I 256 vector } fm_stream3_num_data_valid { I 8 vector } fm_stream3_fifo_cap { I 8 vector } fm_stream3_empty_n { I 1 bit } fm_stream3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name idx_stream4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx_stream4 \
    op interface \
    ports { idx_stream4_dout { I 8 vector } idx_stream4_num_data_valid { I 8 vector } idx_stream4_fifo_cap { I 8 vector } idx_stream4_empty_n { I 1 bit } idx_stream4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name count_stream5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_count_stream5 \
    op interface \
    ports { count_stream5_dout { I 8 vector } count_stream5_num_data_valid { I 7 vector } count_stream5_fifo_cap { I 7 vector } count_stream5_empty_n { I 1 bit } count_stream5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name data_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out1 \
    op interface \
    ports { data_out1_din { O 1024 vector } data_out1_num_data_valid { I 7 vector } data_out1_fifo_cap { I 7 vector } data_out1_full_n { I 1 bit } data_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name fm_COLS_c15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_COLS_c15 \
    op interface \
    ports { fm_COLS_c15_din { O 32 vector } fm_COLS_c15_num_data_valid { I 2 vector } fm_COLS_c15_fifo_cap { I 2 vector } fm_COLS_c15_full_n { I 1 bit } fm_COLS_c15_write { O 1 bit } } \
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


