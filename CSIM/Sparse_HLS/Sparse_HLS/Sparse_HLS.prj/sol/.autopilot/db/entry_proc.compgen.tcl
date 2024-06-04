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
    ports { output_data_addr3_c_din { O 32 vector } output_data_addr3_c_num_data_valid { I 4 vector } output_data_addr3_c_fifo_cap { I 4 vector } output_data_addr3_c_full_n { I 1 bit } output_data_addr3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
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
    id 4 \
    name outputs_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outputs_c \
    op interface \
    ports { outputs_c_din { O 64 vector } outputs_c_num_data_valid { I 4 vector } outputs_c_fifo_cap { I 4 vector } outputs_c_full_n { I 1 bit } outputs_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name quant_shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_shift \
    op interface \
    ports { quant_shift { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name quant_shift_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_shift_c \
    op interface \
    ports { quant_shift_c_din { O 32 vector } quant_shift_c_num_data_valid { I 3 vector } quant_shift_c_fifo_cap { I 3 vector } quant_shift_c_full_n { I 1 bit } quant_shift_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name quant_mul \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_mul \
    op interface \
    ports { quant_mul { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name quant_mul_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_quant_mul_c \
    op interface \
    ports { quant_mul_c_din { O 16 vector } quant_mul_c_num_data_valid { I 3 vector } quant_mul_c_fifo_cap { I 3 vector } quant_mul_c_full_n { I 1 bit } quant_mul_c_write { O 1 bit } } \
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


