// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layernorm_ama_submuladd_8s_8s_18s_18_4_1__HH__
#define __layernorm_ama_submuladd_8s_8s_18s_18_4_1__HH__
#include "layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(layernorm_ama_submuladd_8s_8s_18s_18_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1 layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U;

    SC_CTOR(layernorm_ama_submuladd_8s_8s_18s_18_4_1):  layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U ("layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U") {
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.clk(clk);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.rst(reset);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.ce(ce);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.in0(din0);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.in1(din1);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.in2(din2);
        layernorm_ama_submuladd_8s_8s_18s_18_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
