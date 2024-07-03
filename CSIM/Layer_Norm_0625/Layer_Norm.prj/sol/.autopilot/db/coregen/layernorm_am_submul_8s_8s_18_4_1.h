// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layernorm_am_submul_8s_8s_18_4_1__HH__
#define __layernorm_am_submul_8s_8s_18_4_1__HH__
#include "layernorm_am_submul_8s_8s_18_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(layernorm_am_submul_8s_8s_18_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    layernorm_am_submul_8s_8s_18_4_1_DSP48_0 layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U;

    SC_CTOR(layernorm_am_submul_8s_8s_18_4_1):  layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U ("layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U") {
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.clk(clk);
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.rst(reset);
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.ce(ce);
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.in0(din0);
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.in1(din1);
        layernorm_am_submul_8s_8s_18_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
