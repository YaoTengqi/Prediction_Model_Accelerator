set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME reshape_entry_proc}
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_s RTLNAME reshape_read_inputs_ap_uint_256_ap_int_8_32u_s
    SUBMODULES {
      {MODELNAME reshape_mul_32s_32s_32_1_1 RTLNAME reshape_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME reshape_read_inputs_ap_uint_256_ap_int_8_32u_s_ram_RAM_AUTO_1R1W RTLNAME reshape_read_inputs_ap_uint_256_ap_int_8_32u_s_ram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {reshape_stream<ap_int<8>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_33_1} MODELNAME reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1 RTLNAME reshape_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1
    SUBMODULES {
      {MODELNAME reshape_flow_control_loop_pipe_sequential_init RTLNAME reshape_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME reshape_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME reshape_stream<ap_int,ap_int<8>,32u>_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4 MODELNAME reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4 RTLNAME reshape_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4}
  {SRCNAME {reshape_stream<ap_int<8>, ap_int<8>, 32u>} MODELNAME reshape_stream_ap_int_8_ap_int_8_32u_s RTLNAME reshape_reshape_stream_ap_int_8_ap_int_8_32u_s
    SUBMODULES {
      {MODELNAME reshape_mul_32ns_32ns_64_1_1 RTLNAME reshape_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME reshape_reshape_stream_ap_int_8_ap_int_8_32u_s_buffer_V_RAM_AUTO_1R1W RTLNAME reshape_reshape_stream_ap_int_8_ap_int_8_32u_s_buffer_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {store<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_75_1} MODELNAME store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1 RTLNAME reshape_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1
    SUBMODULES {
      {MODELNAME reshape_add_32ns_32ns_32_3_1 RTLNAME reshape_add_32ns_32ns_32_3_1 BINDTYPE op TYPE add IMPL fabric LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {store<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>} MODELNAME store_ap_uint_256_ap_int_8_ap_int_8_32u_s RTLNAME reshape_store_ap_uint_256_ap_int_8_ap_int_8_32u_s}
  {SRCNAME reshape MODELNAME reshape RTLNAME reshape IS_TOP 1
    SUBMODULES {
      {MODELNAME reshape_fifo_w64_d4_S RTLNAME reshape_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME outputs_c_U}
      {MODELNAME reshape_fifo_w256_d16_A RTLNAME reshape_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_in_U}
      {MODELNAME reshape_fifo_w32_d3_S RTLNAME reshape_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_data_addr_c_U}
      {MODELNAME reshape_fifo_w32_d2_S RTLNAME reshape_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ROWS_c9_U}
      {MODELNAME reshape_fifo_w32_d2_S RTLNAME reshape_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME COLS_c10_U}
      {MODELNAME reshape_fifo_w256_d16_A RTLNAME reshape_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_out_U}
      {MODELNAME reshape_fifo_w32_d2_S RTLNAME reshape_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ROWS_c_U}
      {MODELNAME reshape_fifo_w32_d2_S RTLNAME reshape_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME COLS_c_U}
      {MODELNAME reshape_start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0 RTLNAME reshape_start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U}
      {MODELNAME reshape_start_for_reshape_stream_ap_int_8_ap_int_8_32u_U0 RTLNAME reshape_start_for_reshape_stream_ap_int_8_ap_int_8_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_reshape_stream_ap_int_8_ap_int_8_32u_U0_U}
      {MODELNAME reshape_reshape_data_m_axi RTLNAME reshape_reshape_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reshape_reshape_addr_s_axi RTLNAME reshape_reshape_addr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
