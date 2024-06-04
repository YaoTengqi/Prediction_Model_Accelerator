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
    id 1 \
    name output_data_addr3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_data_addr3 \
    op interface \
    ports { output_data_addr3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name output_data_addr3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_data_addr3_c \
    op interface \
    ports { output_data_addr3_c_din { O 32 vector } output_data_addr3_c_num_data_valid { I 3 vector } output_data_addr3_c_fifo_cap { I 3 vector } output_data_addr3_c_full_n { I 1 bit } output_data_addr3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name mul1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul1 \
    op interface \
    ports { mul1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name mul1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul1_c \
    op interface \
    ports { mul1_c_din { O 16 vector } mul1_c_num_data_valid { I 3 vector } mul1_c_fifo_cap { I 3 vector } mul1_c_full_n { I 1 bit } mul1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name shift1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shift1 \
    op interface \
    ports { shift1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name shift1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shift1_c \
    op interface \
    ports { shift1_c_din { O 32 vector } shift1_c_num_data_valid { I 3 vector } shift1_c_fifo_cap { I 3 vector } shift1_c_full_n { I 1 bit } shift1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name mul2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul2 \
    op interface \
    ports { mul2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name mul2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mul2_c \
    op interface \
    ports { mul2_c_din { O 16 vector } mul2_c_num_data_valid { I 3 vector } mul2_c_fifo_cap { I 3 vector } mul2_c_full_n { I 1 bit } mul2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name shift2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shift2 \
    op interface \
    ports { shift2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name shift2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_shift2_c \
    op interface \
    ports { shift2_c_din { O 32 vector } shift2_c_num_data_valid { I 3 vector } shift2_c_fifo_cap { I 3 vector } shift2_c_full_n { I 1 bit } shift2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name outputs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs \
    op interface \
    ports { outputs { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name outputs_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs_c \
    op interface \
    ports { outputs_c_din { O 64 vector } outputs_c_num_data_valid { I 3 vector } outputs_c_fifo_cap { I 3 vector } outputs_c_full_n { I 1 bit } outputs_c_write { O 1 bit } } \
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


