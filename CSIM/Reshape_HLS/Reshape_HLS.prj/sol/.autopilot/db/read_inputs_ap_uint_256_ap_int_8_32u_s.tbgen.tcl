set moduleName read_inputs_ap_uint_256_ap_int_8_32u_s
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
set C_modelName {read_inputs<ap_uint<256>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ reshape_data int 256 regular {axi_master 0}  }
	{ inputs int 64 regular  }
	{ data_in1 int 256 regular {fifo 1 volatile }  }
	{ input_data_addr int 32 regular  }
	{ ROWS int 32 regular  }
	{ COLS int 32 regular  }
	{ input_data_addr_c int 32 regular {fifo 1}  }
	{ ROWS_c9 int 32 regular {fifo 1}  }
	{ COLS_c10 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reshape_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "reshape_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "reshape_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "inputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_data_addr", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ROWS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "COLS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_data_addr_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ROWS_c9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "COLS_c10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
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
	{ m_axi_reshape_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_reshape_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_reshape_data_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_reshape_data_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_reshape_data_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_reshape_data_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_reshape_data_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_reshape_data_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_reshape_data_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_reshape_data_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_reshape_data_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_reshape_data_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_reshape_data_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_reshape_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_BUSER sc_in sc_lv 1 signal 0 } 
	{ inputs sc_in sc_lv 64 signal 1 } 
	{ data_in1_din sc_out sc_lv 256 signal 2 } 
	{ data_in1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ data_in1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ data_in1_full_n sc_in sc_logic 1 signal 2 } 
	{ data_in1_write sc_out sc_logic 1 signal 2 } 
	{ input_data_addr sc_in sc_lv 32 signal 3 } 
	{ ROWS sc_in sc_lv 32 signal 4 } 
	{ COLS sc_in sc_lv 32 signal 5 } 
	{ input_data_addr_c_din sc_out sc_lv 32 signal 6 } 
	{ input_data_addr_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ input_data_addr_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ input_data_addr_c_full_n sc_in sc_logic 1 signal 6 } 
	{ input_data_addr_c_write sc_out sc_logic 1 signal 6 } 
	{ ROWS_c9_din sc_out sc_lv 32 signal 7 } 
	{ ROWS_c9_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ ROWS_c9_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ ROWS_c9_full_n sc_in sc_logic 1 signal 7 } 
	{ ROWS_c9_write sc_out sc_logic 1 signal 7 } 
	{ COLS_c10_din sc_out sc_lv 32 signal 8 } 
	{ COLS_c10_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ COLS_c10_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ COLS_c10_full_n sc_in sc_logic 1 signal 8 } 
	{ COLS_c10_write sc_out sc_logic 1 signal 8 } 
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
 	{ "name": "inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputs", "role": "default" }} , 
 	{ "name": "data_in1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_in1", "role": "din" }} , 
 	{ "name": "data_in1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in1", "role": "num_data_valid" }} , 
 	{ "name": "data_in1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in1", "role": "fifo_cap" }} , 
 	{ "name": "data_in1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in1", "role": "full_n" }} , 
 	{ "name": "data_in1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in1", "role": "write" }} , 
 	{ "name": "input_data_addr", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_addr", "role": "default" }} , 
 	{ "name": "ROWS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROWS", "role": "default" }} , 
 	{ "name": "COLS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "COLS", "role": "default" }} , 
 	{ "name": "input_data_addr_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_addr_c", "role": "din" }} , 
 	{ "name": "input_data_addr_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_data_addr_c", "role": "num_data_valid" }} , 
 	{ "name": "input_data_addr_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_data_addr_c", "role": "fifo_cap" }} , 
 	{ "name": "input_data_addr_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_data_addr_c", "role": "full_n" }} , 
 	{ "name": "input_data_addr_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_data_addr_c", "role": "write" }} , 
 	{ "name": "ROWS_c9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROWS_c9", "role": "din" }} , 
 	{ "name": "ROWS_c9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS_c9", "role": "num_data_valid" }} , 
 	{ "name": "ROWS_c9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS_c9", "role": "fifo_cap" }} , 
 	{ "name": "ROWS_c9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS_c9", "role": "full_n" }} , 
 	{ "name": "ROWS_c9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS_c9", "role": "write" }} , 
 	{ "name": "COLS_c10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "COLS_c10", "role": "din" }} , 
 	{ "name": "COLS_c10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS_c10", "role": "num_data_valid" }} , 
 	{ "name": "COLS_c10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS_c10", "role": "fifo_cap" }} , 
 	{ "name": "COLS_c10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS_c10", "role": "full_n" }} , 
 	{ "name": "COLS_c10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS_c10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "read_inputs_ap_uint_256_ap_int_8_32u_s",
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
			{"Name" : "reshape_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reshape_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "reshape_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_in1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_data_addr_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ram_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	read_inputs_ap_uint_256_ap_int_8_32u_s {
		reshape_data {Type I LastRead 17 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		data_in1 {Type O LastRead -1 FirstWrite 11}
		input_data_addr {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		input_data_addr_c {Type O LastRead -1 FirstWrite 0}
		ROWS_c9 {Type O LastRead -1 FirstWrite 0}
		COLS_c10 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_reshape_data_AWVALID VALID 1 1 }  { m_axi_reshape_data_AWREADY READY 0 1 }  { m_axi_reshape_data_AWADDR ADDR 1 64 }  { m_axi_reshape_data_AWID ID 1 1 }  { m_axi_reshape_data_AWLEN SIZE 1 32 }  { m_axi_reshape_data_AWSIZE BURST 1 3 }  { m_axi_reshape_data_AWBURST LOCK 1 2 }  { m_axi_reshape_data_AWLOCK CACHE 1 2 }  { m_axi_reshape_data_AWCACHE PROT 1 4 }  { m_axi_reshape_data_AWPROT QOS 1 3 }  { m_axi_reshape_data_AWQOS REGION 1 4 }  { m_axi_reshape_data_AWREGION USER 1 4 }  { m_axi_reshape_data_AWUSER DATA 1 1 }  { m_axi_reshape_data_WVALID VALID 1 1 }  { m_axi_reshape_data_WREADY READY 0 1 }  { m_axi_reshape_data_WDATA FIFONUM 1 256 }  { m_axi_reshape_data_WSTRB STRB 1 32 }  { m_axi_reshape_data_WLAST LAST 1 1 }  { m_axi_reshape_data_WID ID 1 1 }  { m_axi_reshape_data_WUSER DATA 1 1 }  { m_axi_reshape_data_ARVALID VALID 1 1 }  { m_axi_reshape_data_ARREADY READY 0 1 }  { m_axi_reshape_data_ARADDR ADDR 1 64 }  { m_axi_reshape_data_ARID ID 1 1 }  { m_axi_reshape_data_ARLEN SIZE 1 32 }  { m_axi_reshape_data_ARSIZE BURST 1 3 }  { m_axi_reshape_data_ARBURST LOCK 1 2 }  { m_axi_reshape_data_ARLOCK CACHE 1 2 }  { m_axi_reshape_data_ARCACHE PROT 1 4 }  { m_axi_reshape_data_ARPROT QOS 1 3 }  { m_axi_reshape_data_ARQOS REGION 1 4 }  { m_axi_reshape_data_ARREGION USER 1 4 }  { m_axi_reshape_data_ARUSER DATA 1 1 }  { m_axi_reshape_data_RVALID VALID 0 1 }  { m_axi_reshape_data_RREADY READY 1 1 }  { m_axi_reshape_data_RDATA FIFONUM 0 256 }  { m_axi_reshape_data_RLAST LAST 0 1 }  { m_axi_reshape_data_RID ID 0 1 }  { m_axi_reshape_data_RFIFONUM LEN 0 9 }  { m_axi_reshape_data_RUSER DATA 0 1 }  { m_axi_reshape_data_RRESP RESP 0 2 }  { m_axi_reshape_data_BVALID VALID 0 1 }  { m_axi_reshape_data_BREADY READY 1 1 }  { m_axi_reshape_data_BRESP RESP 0 2 }  { m_axi_reshape_data_BID ID 0 1 }  { m_axi_reshape_data_BUSER DATA 0 1 } } }
	inputs { ap_none {  { inputs in_data 0 64 } } }
	data_in1 { ap_fifo {  { data_in1_din fifo_port_we 1 256 }  { data_in1_num_data_valid fifo_status_num_data_valid 0 5 }  { data_in1_fifo_cap fifo_update 0 5 }  { data_in1_full_n fifo_status 0 1 }  { data_in1_write fifo_data 1 1 } } }
	input_data_addr { ap_none {  { input_data_addr in_data 0 32 } } }
	ROWS { ap_none {  { ROWS in_data 0 32 } } }
	COLS { ap_none {  { COLS in_data 0 32 } } }
	input_data_addr_c { ap_fifo {  { input_data_addr_c_din fifo_port_we 1 32 }  { input_data_addr_c_num_data_valid fifo_status_num_data_valid 0 3 }  { input_data_addr_c_fifo_cap fifo_update 0 3 }  { input_data_addr_c_full_n fifo_status 0 1 }  { input_data_addr_c_write fifo_data 1 1 } } }
	ROWS_c9 { ap_fifo {  { ROWS_c9_din fifo_port_we 1 32 }  { ROWS_c9_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_c9_fifo_cap fifo_update 0 2 }  { ROWS_c9_full_n fifo_status 0 1 }  { ROWS_c9_write fifo_data 1 1 } } }
	COLS_c10 { ap_fifo {  { COLS_c10_din fifo_port_we 1 32 }  { COLS_c10_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_c10_fifo_cap fifo_update 0 2 }  { COLS_c10_full_n fifo_status 0 1 }  { COLS_c10_write fifo_data 1 1 } } }
}
