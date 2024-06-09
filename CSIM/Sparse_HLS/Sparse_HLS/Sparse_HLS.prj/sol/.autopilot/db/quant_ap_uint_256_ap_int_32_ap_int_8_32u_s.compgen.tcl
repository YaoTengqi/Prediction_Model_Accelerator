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
    id 82 \
    name data_out1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out1 \
    op interface \
    ports { data_out1_dout { I 1024 vector } data_out1_num_data_valid { I 7 vector } data_out1_fifo_cap { I 7 vector } data_out1_empty_n { I 1 bit } data_out1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name fm_ROWS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_ROWS \
    op interface \
    ports { fm_ROWS_dout { I 32 vector } fm_ROWS_num_data_valid { I 3 vector } fm_ROWS_fifo_cap { I 3 vector } fm_ROWS_empty_n { I 1 bit } fm_ROWS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
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
    id 85 \
    name quant_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_out2 \
    op interface \
    ports { quant_out2_din { O 256 vector } quant_out2_num_data_valid { I 2 vector } quant_out2_fifo_cap { I 2 vector } quant_out2_full_n { I 1 bit } quant_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name quant_shift \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_shift \
    op interface \
    ports { quant_shift_dout { I 32 vector } quant_shift_num_data_valid { I 4 vector } quant_shift_fifo_cap { I 4 vector } quant_shift_empty_n { I 1 bit } quant_shift_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name quant_mul \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_mul \
    op interface \
    ports { quant_mul_dout { I 32 vector } quant_mul_num_data_valid { I 4 vector } quant_mul_fifo_cap { I 4 vector } quant_mul_empty_n { I 1 bit } quant_mul_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name fm_ROWS_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_ROWS_c \
    op interface \
    ports { fm_ROWS_c_din { O 32 vector } fm_ROWS_c_num_data_valid { I 2 vector } fm_ROWS_c_fifo_cap { I 2 vector } fm_ROWS_c_full_n { I 1 bit } fm_ROWS_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name fm_COLS_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fm_COLS_c \
    op interface \
    ports { fm_COLS_c_din { O 32 vector } fm_COLS_c_num_data_valid { I 2 vector } fm_COLS_c_fifo_cap { I 2 vector } fm_COLS_c_full_n { I 1 bit } fm_COLS_c_write { O 1 bit } } \
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


