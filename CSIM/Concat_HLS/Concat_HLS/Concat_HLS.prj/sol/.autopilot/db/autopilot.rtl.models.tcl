set SynModuleInfo {
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>_Pipeline_1} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_1 RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_1
    SUBMODULES {
      {MODELNAME concat_flow_control_loop_pipe_sequential_init RTLNAME concat_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME concat_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>_Pipeline_2} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_2 RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_2}
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>_Pipeline_3} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_3 RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_3}
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>_Pipeline_4} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_4 RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_4}
  {SRCNAME {read_inputs<ap_uint<256>, ap_int<8>, 32u>} MODELNAME read_inputs_ap_uint_256_ap_int_8_32u_s RTLNAME concat_read_inputs_ap_uint_256_ap_int_8_32u_s
    SUBMODULES {
      {MODELNAME concat_mul_32s_32s_32_1_1 RTLNAME concat_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME concat MODELNAME concat RTLNAME concat IS_TOP 1
    SUBMODULES {
      {MODELNAME concat_concat_data_m_axi RTLNAME concat_concat_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME concat_concat_addr_s_axi RTLNAME concat_concat_addr_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
