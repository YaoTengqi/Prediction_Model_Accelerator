set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME concat_entry_proc}
  {SRCNAME Block_entry4_proc MODELNAME Block_entry4_proc RTLNAME concat_Block_entry4_proc}
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_s RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_s
    SUBMODULES {
      {MODELNAME concat_mul_32s_32s_32_1_1 RTLNAME concat_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {store<ap_uint<256>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_115_1} MODELNAME store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_115_1 RTLNAME concat_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_115_1
    SUBMODULES {
      {MODELNAME concat_flow_control_loop_pipe_sequential_init RTLNAME concat_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME concat_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {store<ap_uint<256>, ap_int<8>, 32u>} MODELNAME store_ap_uint_256_ap_int_8_32u_s RTLNAME concat_store_ap_uint_256_ap_int_8_32u_s}
  {SRCNAME concat MODELNAME concat RTLNAME concat IS_TOP 1
    SUBMODULES {
      {MODELNAME concat_fifo_w64_d4_S RTLNAME concat_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME outputs_c_U}
      {MODELNAME concat_fifo_w27_d2_S RTLNAME concat_fifo_w27_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_data_addr1_assign_cast_loc_channel_U}
      {MODELNAME concat_fifo_w27_d2_S RTLNAME concat_fifo_w27_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_data_addr2_assign_cast_loc_channel_U}
      {MODELNAME concat_fifo_w27_d3_S RTLNAME concat_fifo_w27_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME output_data_addr3_assign_cast_loc_channel_U}
      {MODELNAME concat_fifo_w256_d64_A RTLNAME concat_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME input_stream_U}
      {MODELNAME concat_fifo_w32_d2_S RTLNAME concat_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ROWS_c_U}
      {MODELNAME concat_fifo_w32_d2_S RTLNAME concat_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME COLS_c_U}
      {MODELNAME concat_concat_data_m_axi RTLNAME concat_concat_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME concat_concat_addr_s_axi RTLNAME concat_concat_addr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
