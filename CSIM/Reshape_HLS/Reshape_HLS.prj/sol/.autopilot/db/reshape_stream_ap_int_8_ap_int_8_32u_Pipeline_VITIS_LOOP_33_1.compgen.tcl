# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name buffer_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_V \
    op interface \
    ports { buffer_V_address0 { O 10 vector } buffer_V_ce0 { O 1 bit } buffer_V_we0 { O 1 bit } buffer_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name l_val_V_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_125 \
    op interface \
    ports { l_val_V_125 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name l_val_V_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_124 \
    op interface \
    ports { l_val_V_124 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name l_val_V_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_123 \
    op interface \
    ports { l_val_V_123 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name l_val_V_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_122 \
    op interface \
    ports { l_val_V_122 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name l_val_V_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_121 \
    op interface \
    ports { l_val_V_121 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name l_val_V_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_120 \
    op interface \
    ports { l_val_V_120 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name l_val_V_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_119 \
    op interface \
    ports { l_val_V_119 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name l_val_V_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_118 \
    op interface \
    ports { l_val_V_118 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name l_val_V_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_117 \
    op interface \
    ports { l_val_V_117 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name l_val_V_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_116 \
    op interface \
    ports { l_val_V_116 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name l_val_V_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_115 \
    op interface \
    ports { l_val_V_115 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name l_val_V_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_114 \
    op interface \
    ports { l_val_V_114 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name l_val_V_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_113 \
    op interface \
    ports { l_val_V_113 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name l_val_V_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_112 \
    op interface \
    ports { l_val_V_112 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name l_val_V_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_111 \
    op interface \
    ports { l_val_V_111 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name l_val_V_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_110 \
    op interface \
    ports { l_val_V_110 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name l_val_V_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_109 \
    op interface \
    ports { l_val_V_109 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name l_val_V_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_108 \
    op interface \
    ports { l_val_V_108 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name l_val_V_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_107 \
    op interface \
    ports { l_val_V_107 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name l_val_V_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_106 \
    op interface \
    ports { l_val_V_106 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name l_val_V_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_105 \
    op interface \
    ports { l_val_V_105 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name l_val_V_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_104 \
    op interface \
    ports { l_val_V_104 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name l_val_V_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_103 \
    op interface \
    ports { l_val_V_103 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name l_val_V_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_102 \
    op interface \
    ports { l_val_V_102 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name l_val_V_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_101 \
    op interface \
    ports { l_val_V_101 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name l_val_V_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_100 \
    op interface \
    ports { l_val_V_100 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name l_val_V_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_99 \
    op interface \
    ports { l_val_V_99 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name l_val_V_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_98 \
    op interface \
    ports { l_val_V_98 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name l_val_V_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_97 \
    op interface \
    ports { l_val_V_97 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name l_val_V_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_96 \
    op interface \
    ports { l_val_V_96 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name l_val_V_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_95 \
    op interface \
    ports { l_val_V_95 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name l_val_V_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_val_V_94 \
    op interface \
    ports { l_val_V_94 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name ROWS_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ROWS_load \
    op interface \
    ports { ROWS_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name icmp_ln38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38 \
    op interface \
    ports { icmp_ln38 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name zext_ln36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36 \
    op interface \
    ports { zext_ln36 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name icmp_ln38_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_1 \
    op interface \
    ports { icmp_ln38_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name zext_ln36_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_1 \
    op interface \
    ports { zext_ln36_1 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name icmp_ln38_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_2 \
    op interface \
    ports { icmp_ln38_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name zext_ln36_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_3 \
    op interface \
    ports { zext_ln36_3 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name icmp_ln38_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_3 \
    op interface \
    ports { icmp_ln38_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name zext_ln36_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_4 \
    op interface \
    ports { zext_ln36_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name icmp_ln38_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_4 \
    op interface \
    ports { icmp_ln38_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name zext_ln36_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_5 \
    op interface \
    ports { zext_ln36_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name icmp_ln38_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_5 \
    op interface \
    ports { icmp_ln38_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name zext_ln36_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_6 \
    op interface \
    ports { zext_ln36_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name icmp_ln38_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_6 \
    op interface \
    ports { icmp_ln38_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name zext_ln36_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_8 \
    op interface \
    ports { zext_ln36_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name icmp_ln38_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_7 \
    op interface \
    ports { icmp_ln38_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name zext_ln36_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_9 \
    op interface \
    ports { zext_ln36_9 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name icmp_ln38_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_8 \
    op interface \
    ports { icmp_ln38_8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name zext_ln36_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_10 \
    op interface \
    ports { zext_ln36_10 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name icmp_ln38_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_9 \
    op interface \
    ports { icmp_ln38_9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name zext_ln36_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_11 \
    op interface \
    ports { zext_ln36_11 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name icmp_ln38_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_10 \
    op interface \
    ports { icmp_ln38_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name zext_ln36_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_12 \
    op interface \
    ports { zext_ln36_12 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name icmp_ln38_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_11 \
    op interface \
    ports { icmp_ln38_11 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name zext_ln36_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_13 \
    op interface \
    ports { zext_ln36_13 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name icmp_ln38_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_12 \
    op interface \
    ports { icmp_ln38_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name zext_ln36_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_14 \
    op interface \
    ports { zext_ln36_14 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name icmp_ln38_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_13 \
    op interface \
    ports { icmp_ln38_13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name zext_ln36_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_15 \
    op interface \
    ports { zext_ln36_15 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name icmp_ln38_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_14 \
    op interface \
    ports { icmp_ln38_14 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name zext_ln36_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_17 \
    op interface \
    ports { zext_ln36_17 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name icmp_ln38_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_15 \
    op interface \
    ports { icmp_ln38_15 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name zext_ln36_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_18 \
    op interface \
    ports { zext_ln36_18 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name icmp_ln38_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_16 \
    op interface \
    ports { icmp_ln38_16 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name zext_ln36_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_19 \
    op interface \
    ports { zext_ln36_19 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name icmp_ln38_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_17 \
    op interface \
    ports { icmp_ln38_17 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name zext_ln36_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_20 \
    op interface \
    ports { zext_ln36_20 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name icmp_ln38_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_18 \
    op interface \
    ports { icmp_ln38_18 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name zext_ln36_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_21 \
    op interface \
    ports { zext_ln36_21 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name icmp_ln38_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_19 \
    op interface \
    ports { icmp_ln38_19 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name zext_ln36_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_22 \
    op interface \
    ports { zext_ln36_22 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name icmp_ln38_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_20 \
    op interface \
    ports { icmp_ln38_20 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name zext_ln36_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_23 \
    op interface \
    ports { zext_ln36_23 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name icmp_ln38_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_21 \
    op interface \
    ports { icmp_ln38_21 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name zext_ln36_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_24 \
    op interface \
    ports { zext_ln36_24 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name icmp_ln38_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_22 \
    op interface \
    ports { icmp_ln38_22 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name zext_ln36_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_25 \
    op interface \
    ports { zext_ln36_25 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name icmp_ln38_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_23 \
    op interface \
    ports { icmp_ln38_23 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name zext_ln36_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_26 \
    op interface \
    ports { zext_ln36_26 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name icmp_ln38_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_24 \
    op interface \
    ports { icmp_ln38_24 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name zext_ln36_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_27 \
    op interface \
    ports { zext_ln36_27 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name icmp_ln38_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_25 \
    op interface \
    ports { icmp_ln38_25 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name zext_ln36_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_28 \
    op interface \
    ports { zext_ln36_28 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name icmp_ln38_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_26 \
    op interface \
    ports { icmp_ln38_26 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name zext_ln36_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_29 \
    op interface \
    ports { zext_ln36_29 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name icmp_ln38_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_27 \
    op interface \
    ports { icmp_ln38_27 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name zext_ln36_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_30 \
    op interface \
    ports { zext_ln36_30 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name icmp_ln38_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_28 \
    op interface \
    ports { icmp_ln38_28 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name zext_ln36_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_31 \
    op interface \
    ports { zext_ln36_31 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name icmp_ln38_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_29 \
    op interface \
    ports { icmp_ln38_29 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name zext_ln36_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_32 \
    op interface \
    ports { zext_ln36_32 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name icmp_ln38_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_30 \
    op interface \
    ports { icmp_ln38_30 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name zext_ln36_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln36_34 \
    op interface \
    ports { zext_ln36_34 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name icmp_ln38_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln38_31 \
    op interface \
    ports { icmp_ln38_31 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
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


