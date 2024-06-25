set moduleName p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {(anonymous namespace)DataMover_A<ap_int<8>, ap_uint<256>, 5u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ cols_log int 32 regular  }
	{ rows int 32 regular  }
	{ addr int 32 regular  }
	{ ln_data int 256 regular {axi_master 0}  }
	{ inputs int 64 regular  }
	{ data_copy_a1 int 256 regular {fifo 1 volatile }  }
	{ data_copy_b2 int 256 regular {fifo 1 volatile }  }
	{ data_copy_c3 int 256 regular {fifo 1 volatile }  }
	{ rows_c19 int 32 regular {fifo 1}  }
	{ cols_log_c22 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cols_log", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "addr", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ln_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "ln_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "ln_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "inputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_copy_a1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_copy_b2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_copy_c3", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows_c19", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_log_c22", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ cols_log sc_in sc_lv 32 signal 0 } 
	{ rows sc_in sc_lv 32 signal 1 } 
	{ addr sc_in sc_lv 32 signal 2 } 
	{ m_axi_ln_data_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ln_data_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_data_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_data_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_data_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_data_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_data_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_WDATA sc_out sc_lv 256 signal 3 } 
	{ m_axi_ln_data_WSTRB sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_data_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ln_data_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_data_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_data_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_data_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_data_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_data_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_data_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_data_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_RDATA sc_in sc_lv 256 signal 3 } 
	{ m_axi_ln_data_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_data_RFIFONUM sc_in sc_lv 13 signal 3 } 
	{ m_axi_ln_data_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_data_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ln_data_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_data_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_data_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ln_data_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_data_BUSER sc_in sc_lv 1 signal 3 } 
	{ inputs sc_in sc_lv 64 signal 4 } 
	{ data_copy_a1_din sc_out sc_lv 256 signal 5 } 
	{ data_copy_a1_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ data_copy_a1_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ data_copy_a1_full_n sc_in sc_logic 1 signal 5 } 
	{ data_copy_a1_write sc_out sc_logic 1 signal 5 } 
	{ data_copy_b2_din sc_out sc_lv 256 signal 6 } 
	{ data_copy_b2_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ data_copy_b2_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ data_copy_b2_full_n sc_in sc_logic 1 signal 6 } 
	{ data_copy_b2_write sc_out sc_logic 1 signal 6 } 
	{ data_copy_c3_din sc_out sc_lv 256 signal 7 } 
	{ data_copy_c3_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ data_copy_c3_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ data_copy_c3_full_n sc_in sc_logic 1 signal 7 } 
	{ data_copy_c3_write sc_out sc_logic 1 signal 7 } 
	{ rows_c19_din sc_out sc_lv 32 signal 8 } 
	{ rows_c19_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ rows_c19_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ rows_c19_full_n sc_in sc_logic 1 signal 8 } 
	{ rows_c19_write sc_out sc_logic 1 signal 8 } 
	{ cols_log_c22_din sc_out sc_lv 32 signal 9 } 
	{ cols_log_c22_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ cols_log_c22_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ cols_log_c22_full_n sc_in sc_logic 1 signal 9 } 
	{ cols_log_c22_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "cols_log", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_log", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "addr", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "default" }} , 
 	{ "name": "m_axi_ln_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ln_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ln_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ln_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWID" }} , 
 	{ "name": "m_axi_ln_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ln_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ln_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ln_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ln_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ln_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ln_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ln_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ln_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ln_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_ln_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_ln_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_ln_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ln_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_ln_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WID" }} , 
 	{ "name": "m_axi_ln_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_ln_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ln_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ln_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ln_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARID" }} , 
 	{ "name": "m_axi_ln_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ln_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ln_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ln_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ln_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ln_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ln_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ln_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ln_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ln_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_ln_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_ln_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_ln_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_ln_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RID" }} , 
 	{ "name": "m_axi_ln_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ln_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ln_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_ln_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_ln_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_ln_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_ln_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_ln_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BID" }} , 
 	{ "name": "m_axi_ln_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BUSER" }} , 
 	{ "name": "inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputs", "role": "default" }} , 
 	{ "name": "data_copy_a1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "din" }} , 
 	{ "name": "data_copy_a1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_a1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_a1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "full_n" }} , 
 	{ "name": "data_copy_a1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "write" }} , 
 	{ "name": "data_copy_b2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "din" }} , 
 	{ "name": "data_copy_b2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_b2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_b2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "full_n" }} , 
 	{ "name": "data_copy_b2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "write" }} , 
 	{ "name": "data_copy_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "din" }} , 
 	{ "name": "data_copy_c3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_c3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "full_n" }} , 
 	{ "name": "data_copy_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "write" }} , 
 	{ "name": "rows_c19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_c19", "role": "din" }} , 
 	{ "name": "rows_c19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c19", "role": "num_data_valid" }} , 
 	{ "name": "rows_c19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c19", "role": "fifo_cap" }} , 
 	{ "name": "rows_c19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c19", "role": "full_n" }} , 
 	{ "name": "rows_c19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c19", "role": "write" }} , 
 	{ "name": "cols_log_c22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_log_c22", "role": "din" }} , 
 	{ "name": "cols_log_c22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c22", "role": "num_data_valid" }} , 
 	{ "name": "cols_log_c22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c22", "role": "fifo_cap" }} , 
 	{ "name": "cols_log_c22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c22", "role": "full_n" }} , 
 	{ "name": "cols_log_c22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c22", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cols_log", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ln_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_data_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174", "Port" : "ln_data", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_copy_a1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_a1", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "data_copy_b2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_b2", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "data_copy_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_c3", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "rows_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "43", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ram_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_copy_c3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_copy_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_b2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_copy_b2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_a1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_copy_a1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ram_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ram_depth_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2",
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
			{"Name" : "ln_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln35", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln4", "Type" : "None", "Direction" : "I"},
			{"Name" : "ram_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		addr {Type I LastRead 0 FirstWrite -1}
		ln_data {Type I LastRead 2 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		data_copy_a1 {Type O LastRead 1 FirstWrite 2}
		data_copy_b2 {Type O LastRead 1 FirstWrite 3}
		data_copy_c3 {Type O LastRead 2 FirstWrite 4}
		rows_c19 {Type O LastRead -1 FirstWrite 0}
		cols_log_c22 {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3 {
		data_copy_c3 {Type O LastRead 2 FirstWrite 4}
		data_copy_b2 {Type O LastRead 1 FirstWrite 3}
		data_copy_a1 {Type O LastRead 1 FirstWrite 2}
		ram_V {Type I LastRead 3 FirstWrite -1}
		ram_depth_1 {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2 {
		ln_data {Type I LastRead 1 FirstWrite -1}
		sext_ln35 {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		trunc_ln4 {Type I LastRead 0 FirstWrite -1}
		ram_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cols_log { ap_none {  { cols_log in_data 0 32 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	addr { ap_none {  { addr in_data 0 32 } } }
	 { m_axi {  { m_axi_ln_data_AWVALID VALID 1 1 }  { m_axi_ln_data_AWREADY READY 0 1 }  { m_axi_ln_data_AWADDR ADDR 1 64 }  { m_axi_ln_data_AWID ID 1 1 }  { m_axi_ln_data_AWLEN SIZE 1 32 }  { m_axi_ln_data_AWSIZE BURST 1 3 }  { m_axi_ln_data_AWBURST LOCK 1 2 }  { m_axi_ln_data_AWLOCK CACHE 1 2 }  { m_axi_ln_data_AWCACHE PROT 1 4 }  { m_axi_ln_data_AWPROT QOS 1 3 }  { m_axi_ln_data_AWQOS REGION 1 4 }  { m_axi_ln_data_AWREGION USER 1 4 }  { m_axi_ln_data_AWUSER DATA 1 1 }  { m_axi_ln_data_WVALID VALID 1 1 }  { m_axi_ln_data_WREADY READY 0 1 }  { m_axi_ln_data_WDATA FIFONUM 1 256 }  { m_axi_ln_data_WSTRB STRB 1 32 }  { m_axi_ln_data_WLAST LAST 1 1 }  { m_axi_ln_data_WID ID 1 1 }  { m_axi_ln_data_WUSER DATA 1 1 }  { m_axi_ln_data_ARVALID VALID 1 1 }  { m_axi_ln_data_ARREADY READY 0 1 }  { m_axi_ln_data_ARADDR ADDR 1 64 }  { m_axi_ln_data_ARID ID 1 1 }  { m_axi_ln_data_ARLEN SIZE 1 32 }  { m_axi_ln_data_ARSIZE BURST 1 3 }  { m_axi_ln_data_ARBURST LOCK 1 2 }  { m_axi_ln_data_ARLOCK CACHE 1 2 }  { m_axi_ln_data_ARCACHE PROT 1 4 }  { m_axi_ln_data_ARPROT QOS 1 3 }  { m_axi_ln_data_ARQOS REGION 1 4 }  { m_axi_ln_data_ARREGION USER 1 4 }  { m_axi_ln_data_ARUSER DATA 1 1 }  { m_axi_ln_data_RVALID VALID 0 1 }  { m_axi_ln_data_RREADY READY 1 1 }  { m_axi_ln_data_RDATA FIFONUM 0 256 }  { m_axi_ln_data_RLAST LAST 0 1 }  { m_axi_ln_data_RID ID 0 1 }  { m_axi_ln_data_RFIFONUM LEN 0 13 }  { m_axi_ln_data_RUSER DATA 0 1 }  { m_axi_ln_data_RRESP RESP 0 2 }  { m_axi_ln_data_BVALID VALID 0 1 }  { m_axi_ln_data_BREADY READY 1 1 }  { m_axi_ln_data_BRESP RESP 0 2 }  { m_axi_ln_data_BID ID 0 1 }  { m_axi_ln_data_BUSER DATA 0 1 } } }
	inputs { ap_none {  { inputs in_data 0 64 } } }
	data_copy_a1 { ap_fifo {  { data_copy_a1_din fifo_port_we 1 256 }  { data_copy_a1_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_a1_fifo_cap fifo_update 0 5 }  { data_copy_a1_full_n fifo_status 0 1 }  { data_copy_a1_write fifo_data 1 1 } } }
	data_copy_b2 { ap_fifo {  { data_copy_b2_din fifo_port_we 1 256 }  { data_copy_b2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_b2_fifo_cap fifo_update 0 5 }  { data_copy_b2_full_n fifo_status 0 1 }  { data_copy_b2_write fifo_data 1 1 } } }
	data_copy_c3 { ap_fifo {  { data_copy_c3_din fifo_port_we 1 256 }  { data_copy_c3_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_c3_fifo_cap fifo_update 0 5 }  { data_copy_c3_full_n fifo_status 0 1 }  { data_copy_c3_write fifo_data 1 1 } } }
	rows_c19 { ap_fifo {  { rows_c19_din fifo_port_we 1 32 }  { rows_c19_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_c19_fifo_cap fifo_update 0 2 }  { rows_c19_full_n fifo_status 0 1 }  { rows_c19_write fifo_data 1 1 } } }
	cols_log_c22 { ap_fifo {  { cols_log_c22_din fifo_port_we 1 32 }  { cols_log_c22_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_c22_fifo_cap fifo_update 0 2 }  { cols_log_c22_full_n fifo_status 0 1 }  { cols_log_c22_write fifo_data 1 1 } } }
}
