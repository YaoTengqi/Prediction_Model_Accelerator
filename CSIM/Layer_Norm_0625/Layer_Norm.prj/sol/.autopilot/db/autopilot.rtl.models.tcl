set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME layernorm_entry_proc}
  {SRCNAME {(anonymous namespace)DataMover_A<ap_int,ap_uint,5u>_Pipeline_VITIS_LOOP_35_2} MODELNAME p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2 RTLNAME layernorm_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2
    SUBMODULES {
      {MODELNAME layernorm_flow_control_loop_pipe_sequential_init RTLNAME layernorm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME layernorm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {(anonymous namespace)DataMover_A<ap_int,ap_uint,5u>_Pipeline_VITIS_LOOP_45_3} MODELNAME p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3 RTLNAME layernorm_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3}
  {SRCNAME {(anonymous namespace)DataMover_A<ap_int<8>, ap_uint<256>, 5u>} MODELNAME p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s RTLNAME layernorm_p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s
    SUBMODULES {
      {MODELNAME layernorm_p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s_ram_V_RAM_1P_BRAMbkb RTLNAME layernorm_p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s_ram_V_RAM_1P_BRAMbkb BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>_Pipeline_1} MODELNAME p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1 RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1}
  {SRCNAME {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>_Pipeline_2} MODELNAME p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2 RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2}
  {SRCNAME {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>_Pipeline_3} MODELNAME p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3 RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3}
  {SRCNAME {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>_Pipeline_4} MODELNAME p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4 RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4}
  {SRCNAME {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>} MODELNAME p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s
    SUBMODULES {
      {MODELNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s_gamma_ram_RAM_1P_cud RTLNAME layernorm_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s_gamma_ram_RAM_1P_cud BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {(anonymous namespace)Mean<ap_int<8>, 5u>} MODELNAME p_anonymous_namespace_Mean_ap_int_8_5u_s RTLNAME layernorm_p_anonymous_namespace_Mean_ap_int_8_5u_s}
  {SRCNAME {(anonymous namespace)StdDev<ap_int<8>, float, 5u>} MODELNAME p_anonymous_namespace_StdDev_ap_int_8_float_5u_s RTLNAME layernorm_p_anonymous_namespace_StdDev_ap_int_8_float_5u_s
    SUBMODULES {
      {MODELNAME layernorm_fptrunc_64ns_32_2_no_dsp_1 RTLNAME layernorm_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME layernorm_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME layernorm_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_uitodp_32ns_64_4_no_dsp_1 RTLNAME layernorm_uitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE uitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_sitodp_32ns_64_4_no_dsp_1 RTLNAME layernorm_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_dsqrt_64ns_64ns_64_21_no_dsp_1 RTLNAME layernorm_dsqrt_64ns_64ns_64_21_no_dsp_1 BINDTYPE op TYPE dsqrt IMPL fabric LATENCY 20 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_am_submul_8s_8s_18_4_1 RTLNAME layernorm_am_submul_8s_8s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_ama_submuladd_8s_8s_18s_18_4_1 RTLNAME layernorm_ama_submuladd_8s_8s_18s_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME __hls_fptosi_float_i32 MODELNAME p_hls_fptosi_float_i32 RTLNAME layernorm_p_hls_fptosi_float_i32}
  {SRCNAME {(anonymous namespace)Norm<ap_int<8>, float, 5u>} MODELNAME p_anonymous_namespace_Norm_ap_int_8_float_5u_s RTLNAME layernorm_p_anonymous_namespace_Norm_ap_int_8_float_5u_s
    SUBMODULES {
      {MODELNAME layernorm_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME layernorm_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME layernorm_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_sitofp_32s_32_4_no_dsp_1 RTLNAME layernorm_sitofp_32s_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {(anonymous namespace)Store_temp<ap_int,ap_uint,5u>_Pipeline_VITIS_LOOP_275_3} MODELNAME p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3 RTLNAME layernorm_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3}
  {SRCNAME {(anonymous namespace)Store_temp<ap_int<8>, ap_uint<256>, 5u>} MODELNAME p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s RTLNAME layernorm_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s
    SUBMODULES {
      {MODELNAME layernorm_mul_32ns_27ns_59_1_1 RTLNAME layernorm_mul_32ns_27ns_59_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_mac_muladd_9s_9s_9ns_9_4_1 RTLNAME layernorm_mac_muladd_9s_9s_9ns_9_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME layernorm_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s_ram_V_RAM_AUTO_1R1W RTLNAME layernorm_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s_ram_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {(anonymous namespace)Store<ap_int<8>, ap_uint<256>, 5u>} MODELNAME p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s RTLNAME layernorm_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s}
  {SRCNAME layernorm MODELNAME layernorm RTLNAME layernorm IS_TOP 1
    SUBMODULES {
      {MODELNAME layernorm_fifo_w32_d7_S RTLNAME layernorm_fifo_w32_d7_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME output_data_addr_c_U}
      {MODELNAME layernorm_fifo_w64_d7_S RTLNAME layernorm_fifo_w64_d7_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME outputs_c_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_copy_a_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_copy_b_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME data_copy_c_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c19_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_log_c22_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gamma_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME beta_U}
      {MODELNAME layernorm_fifo_w8_d32_S RTLNAME layernorm_fifo_w8_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mean_a_U}
      {MODELNAME layernorm_fifo_w8_d32_S RTLNAME layernorm_fifo_w8_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mean_b_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c18_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_log_c21_U}
      {MODELNAME layernorm_fifo_w32_d32_S RTLNAME layernorm_fifo_w32_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME stddev_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c17_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_log_c20_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME norm_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME layernorm_fifo_w32_d2_S RTLNAME layernorm_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_log_c_U}
      {MODELNAME layernorm_fifo_w256_d16_A RTLNAME layernorm_fifo_w256_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME store_temp_U}
      {MODELNAME layernorm_start_for_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0 RTLNAME layernorm_start_for_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0_U}
      {MODELNAME layernorm_start_for_p_anonymous_namespace_Mean_ap_int_8_5u_U0 RTLNAME layernorm_start_for_p_anonymous_namespace_Mean_ap_int_8_5u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_Mean_ap_int_8_5u_U0_U}
      {MODELNAME layernorm_start_for_p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0 RTLNAME layernorm_start_for_p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0_U}
      {MODELNAME layernorm_start_for_p_anonymous_namespace_Norm_ap_int_8_float_5u_U0 RTLNAME layernorm_start_for_p_anonymous_namespace_Norm_ap_int_8_float_5u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_Norm_ap_int_8_float_5u_U0_U}
      {MODELNAME layernorm_start_for_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0 RTLNAME layernorm_start_for_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0_U}
      {MODELNAME layernorm_ln_data_m_axi RTLNAME layernorm_ln_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layernorm_ln_paras_m_axi RTLNAME layernorm_ln_paras_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layernorm_ln_addr_s_axi RTLNAME layernorm_ln_addr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
