// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __reshape_add_32ns_32ns_32_3_1__HH__
#define __reshape_add_32ns_32ns_32_3_1__HH__
#include "reshape_add_32ns_32ns_32_3_1_Adder_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(reshape_add_32ns_32ns_32_3_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    reshape_add_32ns_32ns_32_3_1_Adder_0 reshape_add_32ns_32ns_32_3_1_Adder_0_U;

    SC_CTOR(reshape_add_32ns_32ns_32_3_1):  reshape_add_32ns_32ns_32_3_1_Adder_0_U ("reshape_add_32ns_32ns_32_3_1_Adder_0_U") {
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.clk(clk);
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.reset(reset);
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.ce(ce);
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.a(din0);
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.b(din1);
        reshape_add_32ns_32ns_32_3_1_Adder_0_U.s(dout);

    }

};

#endif //
