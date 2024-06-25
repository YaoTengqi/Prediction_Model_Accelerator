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
    id 60 \
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
    id 61 \
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
    id 62 \
    name data_copy_a1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_copy_a1 \
    op interface \
    ports { data_copy_a1_dout { I 256 vector } data_copy_a1_num_data_valid { I 5 vector } data_copy_a1_fifo_cap { I 5 vector } data_copy_a1_empty_n { I 1 bit } data_copy_a1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name mean_a6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mean_a6 \
    op interface \
    ports { mean_a6_din { O 8 vector } mean_a6_num_data_valid { I 6 vector } mean_a6_fifo_cap { I 6 vector } mean_a6_full_n { I 1 bit } mean_a6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name mean_b7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mean_b7 \
    op interface \
    ports { mean_b7_din { O 8 vector } mean_b7_num_data_valid { I 6 vector } mean_b7_fifo_cap { I 6 vector } mean_b7_full_n { I 1 bit } mean_b7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name rows_c18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rows_c18 \
    op interface \
    ports { rows_c18_din { O 32 vector } rows_c18_num_data_valid { I 2 vector } rows_c18_fifo_cap { I 2 vector } rows_c18_full_n { I 1 bit } rows_c18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name cols_log_c21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cols_log_c21 \
    op interface \
    ports { cols_log_c21_din { O 32 vector } cols_log_c21_num_data_valid { I 2 vector } cols_log_c21_fifo_cap { I 2 vector } cols_log_c21_full_n { I 1 bit } cols_log_c21_write { O 1 bit } } \
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


