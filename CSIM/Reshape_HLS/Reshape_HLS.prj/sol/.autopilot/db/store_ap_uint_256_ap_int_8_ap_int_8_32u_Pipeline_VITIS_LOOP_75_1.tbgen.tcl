set moduleName store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {store<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_75_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_data_addr_load int 32 regular  }
	{ trunc_ln78_s int 27 regular  }
	{ data_out2 int 256 regular {fifo 0 volatile }  }
	{ add_ln75 int 64 regular  }
	{ zext_ln78_1 int 8 regular  }
	{ reshape_data int 256 regular {axi_master 1}  }
	{ shl_ln78 int 32 regular  }
	{ zext_ln78_3 int 8 regular  }
	{ shl_ln78_2 int 32 regular  }
	{ zext_ln78_5 int 8 regular  }
	{ shl_ln78_4 int 32 regular  }
	{ zext_ln78_7 int 8 regular  }
	{ shl_ln78_6 int 32 regular  }
	{ zext_ln78_9 int 8 regular  }
	{ shl_ln78_8 int 32 regular  }
	{ zext_ln78_11 int 8 regular  }
	{ shl_ln78_10 int 32 regular  }
	{ zext_ln78_13 int 8 regular  }
	{ shl_ln78_11 int 32 regular  }
	{ zext_ln78_15 int 8 regular  }
	{ shl_ln78_13 int 32 regular  }
	{ zext_ln78_17 int 8 regular  }
	{ shl_ln78_15 int 32 regular  }
	{ zext_ln78_19 int 8 regular  }
	{ shl_ln78_17 int 32 regular  }
	{ zext_ln78_21 int 8 regular  }
	{ shl_ln78_19 int 32 regular  }
	{ zext_ln78_23 int 8 regular  }
	{ shl_ln78_21 int 32 regular  }
	{ zext_ln78_25 int 8 regular  }
	{ shl_ln78_23 int 32 regular  }
	{ zext_ln78_27 int 8 regular  }
	{ shl_ln78_25 int 32 regular  }
	{ zext_ln78_29 int 8 regular  }
	{ shl_ln78_27 int 32 regular  }
	{ zext_ln78_31 int 8 regular  }
	{ shl_ln78_29 int 32 regular  }
	{ zext_ln78_33 int 8 regular  }
	{ shl_ln78_31 int 32 regular  }
	{ zext_ln78_35 int 8 regular  }
	{ shl_ln78_33 int 32 regular  }
	{ zext_ln78_37 int 8 regular  }
	{ shl_ln78_35 int 32 regular  }
	{ zext_ln78_39 int 8 regular  }
	{ shl_ln78_37 int 32 regular  }
	{ zext_ln78_41 int 8 regular  }
	{ shl_ln78_39 int 32 regular  }
	{ zext_ln78_43 int 8 regular  }
	{ shl_ln78_41 int 32 regular  }
	{ zext_ln78_45 int 8 regular  }
	{ shl_ln78_43 int 32 regular  }
	{ zext_ln78_47 int 8 regular  }
	{ shl_ln78_45 int 32 regular  }
	{ zext_ln78_49 int 8 regular  }
	{ shl_ln78_47 int 32 regular  }
	{ zext_ln78_51 int 8 regular  }
	{ shl_ln78_49 int 32 regular  }
	{ zext_ln78_53 int 8 regular  }
	{ shl_ln78_51 int 32 regular  }
	{ zext_ln78_55 int 8 regular  }
	{ shl_ln78_53 int 32 regular  }
	{ zext_ln78_57 int 8 regular  }
	{ shl_ln78_55 int 32 regular  }
	{ zext_ln78_59 int 8 regular  }
	{ shl_ln78_57 int 32 regular  }
	{ zext_ln78_61 int 8 regular  }
	{ shl_ln78_59 int 32 regular  }
	{ zext_ln75_1 int 8 regular  }
	{ shl_ln78_61 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_data_addr_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln78_s", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "data_out2", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln75", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reshape_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "reshape_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "reshape_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "shl_ln78", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_31", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_41", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_43", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_45", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_47", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_51", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_55", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_57", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_59", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln78_61", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln75_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln78_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 124
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_reshape_data_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_reshape_data_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_reshape_data_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_reshape_data_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_reshape_data_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_WDATA sc_out sc_lv 256 signal 5 } 
	{ m_axi_reshape_data_WSTRB sc_out sc_lv 32 signal 5 } 
	{ m_axi_reshape_data_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_reshape_data_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_reshape_data_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_reshape_data_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_reshape_data_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_reshape_data_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_RDATA sc_in sc_lv 256 signal 5 } 
	{ m_axi_reshape_data_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_reshape_data_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_reshape_data_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_reshape_data_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_reshape_data_BUSER sc_in sc_lv 1 signal 5 } 
	{ output_data_addr_load sc_in sc_lv 32 signal 0 } 
	{ trunc_ln78_s sc_in sc_lv 27 signal 1 } 
	{ data_out2_dout sc_in sc_lv 256 signal 2 } 
	{ data_out2_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ data_out2_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ data_out2_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_out2_read sc_out sc_logic 1 signal 2 } 
	{ add_ln75 sc_in sc_lv 64 signal 3 } 
	{ zext_ln78_1 sc_in sc_lv 8 signal 4 } 
	{ shl_ln78 sc_in sc_lv 32 signal 6 } 
	{ zext_ln78_3 sc_in sc_lv 8 signal 7 } 
	{ shl_ln78_2 sc_in sc_lv 32 signal 8 } 
	{ zext_ln78_5 sc_in sc_lv 8 signal 9 } 
	{ shl_ln78_4 sc_in sc_lv 32 signal 10 } 
	{ zext_ln78_7 sc_in sc_lv 8 signal 11 } 
	{ shl_ln78_6 sc_in sc_lv 32 signal 12 } 
	{ zext_ln78_9 sc_in sc_lv 8 signal 13 } 
	{ shl_ln78_8 sc_in sc_lv 32 signal 14 } 
	{ zext_ln78_11 sc_in sc_lv 8 signal 15 } 
	{ shl_ln78_10 sc_in sc_lv 32 signal 16 } 
	{ zext_ln78_13 sc_in sc_lv 8 signal 17 } 
	{ shl_ln78_11 sc_in sc_lv 32 signal 18 } 
	{ zext_ln78_15 sc_in sc_lv 8 signal 19 } 
	{ shl_ln78_13 sc_in sc_lv 32 signal 20 } 
	{ zext_ln78_17 sc_in sc_lv 8 signal 21 } 
	{ shl_ln78_15 sc_in sc_lv 32 signal 22 } 
	{ zext_ln78_19 sc_in sc_lv 8 signal 23 } 
	{ shl_ln78_17 sc_in sc_lv 32 signal 24 } 
	{ zext_ln78_21 sc_in sc_lv 8 signal 25 } 
	{ shl_ln78_19 sc_in sc_lv 32 signal 26 } 
	{ zext_ln78_23 sc_in sc_lv 8 signal 27 } 
	{ shl_ln78_21 sc_in sc_lv 32 signal 28 } 
	{ zext_ln78_25 sc_in sc_lv 8 signal 29 } 
	{ shl_ln78_23 sc_in sc_lv 32 signal 30 } 
	{ zext_ln78_27 sc_in sc_lv 8 signal 31 } 
	{ shl_ln78_25 sc_in sc_lv 32 signal 32 } 
	{ zext_ln78_29 sc_in sc_lv 8 signal 33 } 
	{ shl_ln78_27 sc_in sc_lv 32 signal 34 } 
	{ zext_ln78_31 sc_in sc_lv 8 signal 35 } 
	{ shl_ln78_29 sc_in sc_lv 32 signal 36 } 
	{ zext_ln78_33 sc_in sc_lv 8 signal 37 } 
	{ shl_ln78_31 sc_in sc_lv 32 signal 38 } 
	{ zext_ln78_35 sc_in sc_lv 8 signal 39 } 
	{ shl_ln78_33 sc_in sc_lv 32 signal 40 } 
	{ zext_ln78_37 sc_in sc_lv 8 signal 41 } 
	{ shl_ln78_35 sc_in sc_lv 32 signal 42 } 
	{ zext_ln78_39 sc_in sc_lv 8 signal 43 } 
	{ shl_ln78_37 sc_in sc_lv 32 signal 44 } 
	{ zext_ln78_41 sc_in sc_lv 8 signal 45 } 
	{ shl_ln78_39 sc_in sc_lv 32 signal 46 } 
	{ zext_ln78_43 sc_in sc_lv 8 signal 47 } 
	{ shl_ln78_41 sc_in sc_lv 32 signal 48 } 
	{ zext_ln78_45 sc_in sc_lv 8 signal 49 } 
	{ shl_ln78_43 sc_in sc_lv 32 signal 50 } 
	{ zext_ln78_47 sc_in sc_lv 8 signal 51 } 
	{ shl_ln78_45 sc_in sc_lv 32 signal 52 } 
	{ zext_ln78_49 sc_in sc_lv 8 signal 53 } 
	{ shl_ln78_47 sc_in sc_lv 32 signal 54 } 
	{ zext_ln78_51 sc_in sc_lv 8 signal 55 } 
	{ shl_ln78_49 sc_in sc_lv 32 signal 56 } 
	{ zext_ln78_53 sc_in sc_lv 8 signal 57 } 
	{ shl_ln78_51 sc_in sc_lv 32 signal 58 } 
	{ zext_ln78_55 sc_in sc_lv 8 signal 59 } 
	{ shl_ln78_53 sc_in sc_lv 32 signal 60 } 
	{ zext_ln78_57 sc_in sc_lv 8 signal 61 } 
	{ shl_ln78_55 sc_in sc_lv 32 signal 62 } 
	{ zext_ln78_59 sc_in sc_lv 8 signal 63 } 
	{ shl_ln78_57 sc_in sc_lv 32 signal 64 } 
	{ zext_ln78_61 sc_in sc_lv 8 signal 65 } 
	{ shl_ln78_59 sc_in sc_lv 32 signal 66 } 
	{ zext_ln75_1 sc_in sc_lv 8 signal 67 } 
	{ shl_ln78_61 sc_in sc_lv 32 signal 68 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_reshape_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_reshape_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_reshape_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_reshape_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWID" }} , 
 	{ "name": "m_axi_reshape_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_reshape_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_reshape_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_reshape_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_reshape_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_reshape_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_reshape_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_reshape_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_reshape_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_reshape_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_reshape_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_reshape_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "reshape_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_reshape_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reshape_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_reshape_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_reshape_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "WID" }} , 
 	{ "name": "m_axi_reshape_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_reshape_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_reshape_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_reshape_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_reshape_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARID" }} , 
 	{ "name": "m_axi_reshape_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_reshape_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_reshape_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_reshape_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_reshape_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_reshape_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_reshape_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_reshape_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_reshape_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_reshape_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_reshape_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_reshape_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "reshape_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_reshape_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_reshape_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RID" }} , 
 	{ "name": "m_axi_reshape_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "reshape_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_reshape_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_reshape_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_reshape_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_reshape_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_reshape_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_reshape_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BID" }} , 
 	{ "name": "m_axi_reshape_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BUSER" }} , 
 	{ "name": "output_data_addr_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_data_addr_load", "role": "default" }} , 
 	{ "name": "trunc_ln78_s", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "trunc_ln78_s", "role": "default" }} , 
 	{ "name": "data_out2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_out2", "role": "dout" }} , 
 	{ "name": "data_out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "num_data_valid" }} , 
 	{ "name": "data_out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "fifo_cap" }} , 
 	{ "name": "data_out2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "empty_n" }} , 
 	{ "name": "data_out2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "read" }} , 
 	{ "name": "add_ln75", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln75", "role": "default" }} , 
 	{ "name": "zext_ln78_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_1", "role": "default" }} , 
 	{ "name": "shl_ln78", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78", "role": "default" }} , 
 	{ "name": "zext_ln78_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_3", "role": "default" }} , 
 	{ "name": "shl_ln78_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_2", "role": "default" }} , 
 	{ "name": "zext_ln78_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_5", "role": "default" }} , 
 	{ "name": "shl_ln78_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_4", "role": "default" }} , 
 	{ "name": "zext_ln78_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_7", "role": "default" }} , 
 	{ "name": "shl_ln78_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_6", "role": "default" }} , 
 	{ "name": "zext_ln78_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_9", "role": "default" }} , 
 	{ "name": "shl_ln78_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_8", "role": "default" }} , 
 	{ "name": "zext_ln78_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_11", "role": "default" }} , 
 	{ "name": "shl_ln78_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_10", "role": "default" }} , 
 	{ "name": "zext_ln78_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_13", "role": "default" }} , 
 	{ "name": "shl_ln78_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_11", "role": "default" }} , 
 	{ "name": "zext_ln78_15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_15", "role": "default" }} , 
 	{ "name": "shl_ln78_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_13", "role": "default" }} , 
 	{ "name": "zext_ln78_17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_17", "role": "default" }} , 
 	{ "name": "shl_ln78_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_15", "role": "default" }} , 
 	{ "name": "zext_ln78_19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_19", "role": "default" }} , 
 	{ "name": "shl_ln78_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_17", "role": "default" }} , 
 	{ "name": "zext_ln78_21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_21", "role": "default" }} , 
 	{ "name": "shl_ln78_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_19", "role": "default" }} , 
 	{ "name": "zext_ln78_23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_23", "role": "default" }} , 
 	{ "name": "shl_ln78_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_21", "role": "default" }} , 
 	{ "name": "zext_ln78_25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_25", "role": "default" }} , 
 	{ "name": "shl_ln78_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_23", "role": "default" }} , 
 	{ "name": "zext_ln78_27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_27", "role": "default" }} , 
 	{ "name": "shl_ln78_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_25", "role": "default" }} , 
 	{ "name": "zext_ln78_29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_29", "role": "default" }} , 
 	{ "name": "shl_ln78_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_27", "role": "default" }} , 
 	{ "name": "zext_ln78_31", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_31", "role": "default" }} , 
 	{ "name": "shl_ln78_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_29", "role": "default" }} , 
 	{ "name": "zext_ln78_33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_33", "role": "default" }} , 
 	{ "name": "shl_ln78_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_31", "role": "default" }} , 
 	{ "name": "zext_ln78_35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_35", "role": "default" }} , 
 	{ "name": "shl_ln78_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_33", "role": "default" }} , 
 	{ "name": "zext_ln78_37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_37", "role": "default" }} , 
 	{ "name": "shl_ln78_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_35", "role": "default" }} , 
 	{ "name": "zext_ln78_39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_39", "role": "default" }} , 
 	{ "name": "shl_ln78_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_37", "role": "default" }} , 
 	{ "name": "zext_ln78_41", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_41", "role": "default" }} , 
 	{ "name": "shl_ln78_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_39", "role": "default" }} , 
 	{ "name": "zext_ln78_43", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_43", "role": "default" }} , 
 	{ "name": "shl_ln78_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_41", "role": "default" }} , 
 	{ "name": "zext_ln78_45", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_45", "role": "default" }} , 
 	{ "name": "shl_ln78_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_43", "role": "default" }} , 
 	{ "name": "zext_ln78_47", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_47", "role": "default" }} , 
 	{ "name": "shl_ln78_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_45", "role": "default" }} , 
 	{ "name": "zext_ln78_49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_49", "role": "default" }} , 
 	{ "name": "shl_ln78_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_47", "role": "default" }} , 
 	{ "name": "zext_ln78_51", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_51", "role": "default" }} , 
 	{ "name": "shl_ln78_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_49", "role": "default" }} , 
 	{ "name": "zext_ln78_53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_53", "role": "default" }} , 
 	{ "name": "shl_ln78_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_51", "role": "default" }} , 
 	{ "name": "zext_ln78_55", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_55", "role": "default" }} , 
 	{ "name": "shl_ln78_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_53", "role": "default" }} , 
 	{ "name": "zext_ln78_57", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_57", "role": "default" }} , 
 	{ "name": "shl_ln78_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_55", "role": "default" }} , 
 	{ "name": "zext_ln78_59", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_59", "role": "default" }} , 
 	{ "name": "shl_ln78_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_57", "role": "default" }} , 
 	{ "name": "zext_ln78_61", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln78_61", "role": "default" }} , 
 	{ "name": "shl_ln78_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_59", "role": "default" }} , 
 	{ "name": "zext_ln75_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln75_1", "role": "default" }} , 
 	{ "name": "shl_ln78_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shl_ln78_61", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_data_addr_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln78_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln75", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "reshape_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "reshape_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "reshape_data_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "reshape_data_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "shl_ln78", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln78_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln75_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "shl_ln78_61", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_32ns_32ns_32_3_1_U126", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1 {
		output_data_addr_load {Type I LastRead 0 FirstWrite -1}
		trunc_ln78_s {Type I LastRead 0 FirstWrite -1}
		data_out2 {Type I LastRead 2 FirstWrite -1}
		add_ln75 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_1 {Type I LastRead 0 FirstWrite -1}
		reshape_data {Type O LastRead 35 FirstWrite 3}
		shl_ln78 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_3 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_5 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_7 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_9 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_11 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_13 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_15 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_17 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_19 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_21 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_23 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_25 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_27 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_29 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_27 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_31 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_29 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_33 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_31 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_35 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_33 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_37 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_35 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_39 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_41 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_39 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_43 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_41 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_45 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_43 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_47 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_45 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_49 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_47 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_51 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_49 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_53 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_51 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_55 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_53 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_57 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_55 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_59 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_57 {Type I LastRead 0 FirstWrite -1}
		zext_ln78_61 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_59 {Type I LastRead 0 FirstWrite -1}
		zext_ln75_1 {Type I LastRead 0 FirstWrite -1}
		shl_ln78_61 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_data_addr_load { ap_none {  { output_data_addr_load in_data 0 32 } } }
	trunc_ln78_s { ap_none {  { trunc_ln78_s in_data 0 27 } } }
	data_out2 { ap_fifo {  { data_out2_dout fifo_port_we 0 256 }  { data_out2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_out2_fifo_cap fifo_update 0 5 }  { data_out2_empty_n fifo_status 0 1 }  { data_out2_read fifo_data 1 1 } } }
	add_ln75 { ap_none {  { add_ln75 in_data 0 64 } } }
	zext_ln78_1 { ap_none {  { zext_ln78_1 in_data 0 8 } } }
	 { m_axi {  { m_axi_reshape_data_AWVALID VALID 1 1 }  { m_axi_reshape_data_AWREADY READY 0 1 }  { m_axi_reshape_data_AWADDR ADDR 1 64 }  { m_axi_reshape_data_AWID ID 1 1 }  { m_axi_reshape_data_AWLEN SIZE 1 32 }  { m_axi_reshape_data_AWSIZE BURST 1 3 }  { m_axi_reshape_data_AWBURST LOCK 1 2 }  { m_axi_reshape_data_AWLOCK CACHE 1 2 }  { m_axi_reshape_data_AWCACHE PROT 1 4 }  { m_axi_reshape_data_AWPROT QOS 1 3 }  { m_axi_reshape_data_AWQOS REGION 1 4 }  { m_axi_reshape_data_AWREGION USER 1 4 }  { m_axi_reshape_data_AWUSER DATA 1 1 }  { m_axi_reshape_data_WVALID VALID 1 1 }  { m_axi_reshape_data_WREADY READY 0 1 }  { m_axi_reshape_data_WDATA FIFONUM 1 256 }  { m_axi_reshape_data_WSTRB STRB 1 32 }  { m_axi_reshape_data_WLAST LAST 1 1 }  { m_axi_reshape_data_WID ID 1 1 }  { m_axi_reshape_data_WUSER DATA 1 1 }  { m_axi_reshape_data_ARVALID VALID 1 1 }  { m_axi_reshape_data_ARREADY READY 0 1 }  { m_axi_reshape_data_ARADDR ADDR 1 64 }  { m_axi_reshape_data_ARID ID 1 1 }  { m_axi_reshape_data_ARLEN SIZE 1 32 }  { m_axi_reshape_data_ARSIZE BURST 1 3 }  { m_axi_reshape_data_ARBURST LOCK 1 2 }  { m_axi_reshape_data_ARLOCK CACHE 1 2 }  { m_axi_reshape_data_ARCACHE PROT 1 4 }  { m_axi_reshape_data_ARPROT QOS 1 3 }  { m_axi_reshape_data_ARQOS REGION 1 4 }  { m_axi_reshape_data_ARREGION USER 1 4 }  { m_axi_reshape_data_ARUSER DATA 1 1 }  { m_axi_reshape_data_RVALID VALID 0 1 }  { m_axi_reshape_data_RREADY READY 1 1 }  { m_axi_reshape_data_RDATA FIFONUM 0 256 }  { m_axi_reshape_data_RLAST LAST 0 1 }  { m_axi_reshape_data_RID ID 0 1 }  { m_axi_reshape_data_RFIFONUM LEN 0 9 }  { m_axi_reshape_data_RUSER DATA 0 1 }  { m_axi_reshape_data_RRESP RESP 0 2 }  { m_axi_reshape_data_BVALID VALID 0 1 }  { m_axi_reshape_data_BREADY READY 1 1 }  { m_axi_reshape_data_BRESP RESP 0 2 }  { m_axi_reshape_data_BID ID 0 1 }  { m_axi_reshape_data_BUSER DATA 0 1 } } }
	shl_ln78 { ap_none {  { shl_ln78 in_data 0 32 } } }
	zext_ln78_3 { ap_none {  { zext_ln78_3 in_data 0 8 } } }
	shl_ln78_2 { ap_none {  { shl_ln78_2 in_data 0 32 } } }
	zext_ln78_5 { ap_none {  { zext_ln78_5 in_data 0 8 } } }
	shl_ln78_4 { ap_none {  { shl_ln78_4 in_data 0 32 } } }
	zext_ln78_7 { ap_none {  { zext_ln78_7 in_data 0 8 } } }
	shl_ln78_6 { ap_none {  { shl_ln78_6 in_data 0 32 } } }
	zext_ln78_9 { ap_none {  { zext_ln78_9 in_data 0 8 } } }
	shl_ln78_8 { ap_none {  { shl_ln78_8 in_data 0 32 } } }
	zext_ln78_11 { ap_none {  { zext_ln78_11 in_data 0 8 } } }
	shl_ln78_10 { ap_none {  { shl_ln78_10 in_data 0 32 } } }
	zext_ln78_13 { ap_none {  { zext_ln78_13 in_data 0 8 } } }
	shl_ln78_11 { ap_none {  { shl_ln78_11 in_data 0 32 } } }
	zext_ln78_15 { ap_none {  { zext_ln78_15 in_data 0 8 } } }
	shl_ln78_13 { ap_none {  { shl_ln78_13 in_data 0 32 } } }
	zext_ln78_17 { ap_none {  { zext_ln78_17 in_data 0 8 } } }
	shl_ln78_15 { ap_none {  { shl_ln78_15 in_data 0 32 } } }
	zext_ln78_19 { ap_none {  { zext_ln78_19 in_data 0 8 } } }
	shl_ln78_17 { ap_none {  { shl_ln78_17 in_data 0 32 } } }
	zext_ln78_21 { ap_none {  { zext_ln78_21 in_data 0 8 } } }
	shl_ln78_19 { ap_none {  { shl_ln78_19 in_data 0 32 } } }
	zext_ln78_23 { ap_none {  { zext_ln78_23 in_data 0 8 } } }
	shl_ln78_21 { ap_none {  { shl_ln78_21 in_data 0 32 } } }
	zext_ln78_25 { ap_none {  { zext_ln78_25 in_data 0 8 } } }
	shl_ln78_23 { ap_none {  { shl_ln78_23 in_data 0 32 } } }
	zext_ln78_27 { ap_none {  { zext_ln78_27 in_data 0 8 } } }
	shl_ln78_25 { ap_none {  { shl_ln78_25 in_data 0 32 } } }
	zext_ln78_29 { ap_none {  { zext_ln78_29 in_data 0 8 } } }
	shl_ln78_27 { ap_none {  { shl_ln78_27 in_data 0 32 } } }
	zext_ln78_31 { ap_none {  { zext_ln78_31 in_data 0 8 } } }
	shl_ln78_29 { ap_none {  { shl_ln78_29 in_data 0 32 } } }
	zext_ln78_33 { ap_none {  { zext_ln78_33 in_data 0 8 } } }
	shl_ln78_31 { ap_none {  { shl_ln78_31 in_data 0 32 } } }
	zext_ln78_35 { ap_none {  { zext_ln78_35 in_data 0 8 } } }
	shl_ln78_33 { ap_none {  { shl_ln78_33 in_data 0 32 } } }
	zext_ln78_37 { ap_none {  { zext_ln78_37 in_data 0 8 } } }
	shl_ln78_35 { ap_none {  { shl_ln78_35 in_data 0 32 } } }
	zext_ln78_39 { ap_none {  { zext_ln78_39 in_data 0 8 } } }
	shl_ln78_37 { ap_none {  { shl_ln78_37 in_data 0 32 } } }
	zext_ln78_41 { ap_none {  { zext_ln78_41 in_data 0 8 } } }
	shl_ln78_39 { ap_none {  { shl_ln78_39 in_data 0 32 } } }
	zext_ln78_43 { ap_none {  { zext_ln78_43 in_data 0 8 } } }
	shl_ln78_41 { ap_none {  { shl_ln78_41 in_data 0 32 } } }
	zext_ln78_45 { ap_none {  { zext_ln78_45 in_data 0 8 } } }
	shl_ln78_43 { ap_none {  { shl_ln78_43 in_data 0 32 } } }
	zext_ln78_47 { ap_none {  { zext_ln78_47 in_data 0 8 } } }
	shl_ln78_45 { ap_none {  { shl_ln78_45 in_data 0 32 } } }
	zext_ln78_49 { ap_none {  { zext_ln78_49 in_data 0 8 } } }
	shl_ln78_47 { ap_none {  { shl_ln78_47 in_data 0 32 } } }
	zext_ln78_51 { ap_none {  { zext_ln78_51 in_data 0 8 } } }
	shl_ln78_49 { ap_none {  { shl_ln78_49 in_data 0 32 } } }
	zext_ln78_53 { ap_none {  { zext_ln78_53 in_data 0 8 } } }
	shl_ln78_51 { ap_none {  { shl_ln78_51 in_data 0 32 } } }
	zext_ln78_55 { ap_none {  { zext_ln78_55 in_data 0 8 } } }
	shl_ln78_53 { ap_none {  { shl_ln78_53 in_data 0 32 } } }
	zext_ln78_57 { ap_none {  { zext_ln78_57 in_data 0 8 } } }
	shl_ln78_55 { ap_none {  { shl_ln78_55 in_data 0 32 } } }
	zext_ln78_59 { ap_none {  { zext_ln78_59 in_data 0 8 } } }
	shl_ln78_57 { ap_none {  { shl_ln78_57 in_data 0 32 } } }
	zext_ln78_61 { ap_none {  { zext_ln78_61 in_data 0 8 } } }
	shl_ln78_59 { ap_none {  { shl_ln78_59 in_data 0 32 } } }
	zext_ln75_1 { ap_none {  { zext_ln75_1 in_data 0 8 } } }
	shl_ln78_61 { ap_none {  { shl_ln78_61 in_data 0 32 } } }
}
