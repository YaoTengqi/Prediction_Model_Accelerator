set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME sparse_entry_proc}
  {SRCNAME {load<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>} MODELNAME load_ap_uint_256_ap_int_8_ap_int_8_32u_s RTLNAME sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s
    SUBMODULES {
      {MODELNAME sparse_mul_32s_32s_32_1_1 RTLNAME sparse_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sparse_mux_325_8_1_1 RTLNAME sparse_mux_325_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_am_ram_V_RAM_AUTO_1R1W RTLNAME sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_am_ram_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_fm_ram_V_RAM_AUTO_1R1W RTLNAME sparse_load_ap_uint_256_ap_int_8_ap_int_8_32u_s_fm_ram_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {mul<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>} MODELNAME mul_ap_uint_256_ap_int_8_ap_int_8_32u_s RTLNAME sparse_mul_ap_uint_256_ap_int_8_ap_int_8_32u_s}
  {SRCNAME {store<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_95_1} MODELNAME store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_95_1 RTLNAME sparse_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_95_1
    SUBMODULES {
      {MODELNAME sparse_flow_control_loop_pipe_sequential_init RTLNAME sparse_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sparse_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {store<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>} MODELNAME store_ap_uint_256_ap_int_8_ap_int_8_32u_s RTLNAME sparse_store_ap_uint_256_ap_int_8_ap_int_8_32u_s}
  {SRCNAME sparse MODELNAME sparse RTLNAME sparse IS_TOP 1
    SUBMODULES {
      {MODELNAME sparse_fifo_w32_d4_S RTLNAME sparse_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME output_data_addr3_c_U}
      {MODELNAME sparse_fifo_w64_d4_S RTLNAME sparse_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME outputs_c_U}
      {MODELNAME sparse_fifo_w8_d128_S RTLNAME sparse_fifo_w8_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME idx_stream_U}
      {MODELNAME sparse_fifo_w8_d64_S RTLNAME sparse_fifo_w8_d64_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME count_stream_U}
      {MODELNAME sparse_fifo_w256_d128_A RTLNAME sparse_fifo_w256_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME fm_stream_U}
      {MODELNAME sparse_fifo_w32_d2_S RTLNAME sparse_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME am_ROWS_c_U}
      {MODELNAME sparse_fifo_w32_d3_S RTLNAME sparse_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fm_ROWS_c_U}
      {MODELNAME sparse_fifo_w32_d2_S RTLNAME sparse_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fm_COLS_c9_U}
      {MODELNAME sparse_fifo_w256_d64_A RTLNAME sparse_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_out_U}
      {MODELNAME sparse_fifo_w32_d2_S RTLNAME sparse_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fm_COLS_c_U}
      {MODELNAME sparse_start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0 RTLNAME sparse_start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U}
      {MODELNAME sparse_start_for_mul_ap_uint_256_ap_int_8_ap_int_8_32u_U0 RTLNAME sparse_start_for_mul_ap_uint_256_ap_int_8_ap_int_8_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_mul_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U}
      {MODELNAME sparse_sparse_data_m_axi RTLNAME sparse_sparse_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sparse_sparse_addr_s_axi RTLNAME sparse_sparse_addr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
