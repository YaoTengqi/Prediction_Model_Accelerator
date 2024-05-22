set moduleName load_ap_uint_256_ap_int_8_32u_s
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
set C_modelName {load<ap_uint<256>, ap_int<8>, 32u>}
set C_modelType { int 64 }
set C_modelArgList {
	{ am_ROWS int 32 regular  }
	{ am_COLS int 32 regular  }
	{ fm_ROWS int 32 regular  }
	{ fm_COLS int 32 regular  }
	{ sparse_data int 256 regular {axi_master 0}  }
	{ inputs int 64 regular  }
	{ idx_ram int 8 regular {array 1024 { 0 3 } 0 1 }  }
	{ count_ram int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ fm_ram int 256 regular {array 512 { 0 3 } 0 1 }  }
	{ input_data_addr1 int 32 regular  }
	{ input_data_addr2 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "am_ROWS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "am_COLS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_ROWS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_COLS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sparse_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "sparse_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "sparse_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "inputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "idx_ram", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_ram", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_ram", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_data_addr1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_data_addr2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ am_ROWS sc_in sc_lv 32 signal 0 } 
	{ am_COLS sc_in sc_lv 32 signal 1 } 
	{ fm_ROWS sc_in sc_lv 32 signal 2 } 
	{ fm_COLS sc_in sc_lv 32 signal 3 } 
	{ m_axi_sparse_data_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sparse_data_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_sparse_data_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sparse_data_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_sparse_data_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_sparse_data_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_BUSER sc_in sc_lv 1 signal 4 } 
	{ inputs sc_in sc_lv 64 signal 5 } 
	{ idx_ram_address0 sc_out sc_lv 10 signal 6 } 
	{ idx_ram_ce0 sc_out sc_logic 1 signal 6 } 
	{ idx_ram_we0 sc_out sc_logic 1 signal 6 } 
	{ idx_ram_d0 sc_out sc_lv 8 signal 6 } 
	{ count_ram_address0 sc_out sc_lv 5 signal 7 } 
	{ count_ram_ce0 sc_out sc_logic 1 signal 7 } 
	{ count_ram_we0 sc_out sc_logic 1 signal 7 } 
	{ count_ram_d0 sc_out sc_lv 8 signal 7 } 
	{ fm_ram_address0 sc_out sc_lv 9 signal 8 } 
	{ fm_ram_ce0 sc_out sc_logic 1 signal 8 } 
	{ fm_ram_we0 sc_out sc_logic 1 signal 8 } 
	{ fm_ram_d0 sc_out sc_lv 256 signal 8 } 
	{ input_data_addr1 sc_in sc_lv 32 signal 9 } 
	{ input_data_addr2 sc_in sc_lv 32 signal 10 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "am_ROWS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_ROWS", "role": "default" }} , 
 	{ "name": "am_COLS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_COLS", "role": "default" }} , 
 	{ "name": "fm_ROWS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "default" }} , 
 	{ "name": "fm_COLS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS", "role": "default" }} , 
 	{ "name": "m_axi_sparse_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sparse_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sparse_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sparse_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWID" }} , 
 	{ "name": "m_axi_sparse_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sparse_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sparse_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sparse_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sparse_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sparse_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sparse_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sparse_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sparse_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sparse_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_sparse_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_sparse_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "sparse_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_sparse_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sparse_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_sparse_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WID" }} , 
 	{ "name": "m_axi_sparse_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_sparse_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sparse_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sparse_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sparse_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARID" }} , 
 	{ "name": "m_axi_sparse_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sparse_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sparse_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sparse_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sparse_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sparse_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sparse_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sparse_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sparse_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sparse_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_sparse_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_sparse_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "sparse_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_sparse_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_sparse_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RID" }} , 
 	{ "name": "m_axi_sparse_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sparse_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_sparse_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_sparse_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_sparse_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_sparse_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_sparse_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_sparse_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BID" }} , 
 	{ "name": "m_axi_sparse_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BUSER" }} , 
 	{ "name": "inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputs", "role": "default" }} , 
 	{ "name": "idx_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "idx_ram", "role": "address0" }} , 
 	{ "name": "idx_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_ram", "role": "ce0" }} , 
 	{ "name": "idx_ram_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_ram", "role": "we0" }} , 
 	{ "name": "idx_ram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_ram", "role": "d0" }} , 
 	{ "name": "count_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "count_ram", "role": "address0" }} , 
 	{ "name": "count_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_ram", "role": "ce0" }} , 
 	{ "name": "count_ram_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_ram", "role": "we0" }} , 
 	{ "name": "count_ram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "count_ram", "role": "d0" }} , 
 	{ "name": "fm_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fm_ram", "role": "address0" }} , 
 	{ "name": "fm_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ram", "role": "ce0" }} , 
 	{ "name": "fm_ram_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ram", "role": "we0" }} , 
 	{ "name": "fm_ram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fm_ram", "role": "d0" }} , 
 	{ "name": "input_data_addr1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_addr1", "role": "default" }} , 
 	{ "name": "input_data_addr2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_addr2", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_ap_uint_256_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "am_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "am_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "sparse_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sparse_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sparse_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "count_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "fm_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "input_data_addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state39"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state43", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state43"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_30_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state85", "LastState" : ["ap_ST_fsm_state86"], "QuitState" : ["ap_ST_fsm_state85"], "PreState" : ["ap_ST_fsm_state84"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state84", "LastState" : ["ap_ST_fsm_state85"], "QuitState" : ["ap_ST_fsm_state84"], "PreState" : ["ap_ST_fsm_state43"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_ap_uint_256_ap_int_8_32u_s {
		am_ROWS {Type I LastRead 38 FirstWrite -1}
		am_COLS {Type I LastRead 38 FirstWrite -1}
		fm_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		sparse_data {Type I LastRead 79 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		idx_ram {Type O LastRead -1 FirstWrite 42}
		count_ram {Type O LastRead -1 FirstWrite 42}
		fm_ram {Type O LastRead -1 FirstWrite 41}
		input_data_addr1 {Type I LastRead 0 FirstWrite -1}
		input_data_addr2 {Type I LastRead 38 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	am_ROWS { ap_none {  { am_ROWS in_data 0 32 } } }
	am_COLS { ap_none {  { am_COLS in_data 0 32 } } }
	fm_ROWS { ap_none {  { fm_ROWS in_data 0 32 } } }
	fm_COLS { ap_none {  { fm_COLS in_data 0 32 } } }
	 { m_axi {  { m_axi_sparse_data_AWVALID VALID 1 1 }  { m_axi_sparse_data_AWREADY READY 0 1 }  { m_axi_sparse_data_AWADDR ADDR 1 64 }  { m_axi_sparse_data_AWID ID 1 1 }  { m_axi_sparse_data_AWLEN SIZE 1 32 }  { m_axi_sparse_data_AWSIZE BURST 1 3 }  { m_axi_sparse_data_AWBURST LOCK 1 2 }  { m_axi_sparse_data_AWLOCK CACHE 1 2 }  { m_axi_sparse_data_AWCACHE PROT 1 4 }  { m_axi_sparse_data_AWPROT QOS 1 3 }  { m_axi_sparse_data_AWQOS REGION 1 4 }  { m_axi_sparse_data_AWREGION USER 1 4 }  { m_axi_sparse_data_AWUSER DATA 1 1 }  { m_axi_sparse_data_WVALID VALID 1 1 }  { m_axi_sparse_data_WREADY READY 0 1 }  { m_axi_sparse_data_WDATA FIFONUM 1 256 }  { m_axi_sparse_data_WSTRB STRB 1 32 }  { m_axi_sparse_data_WLAST LAST 1 1 }  { m_axi_sparse_data_WID ID 1 1 }  { m_axi_sparse_data_WUSER DATA 1 1 }  { m_axi_sparse_data_ARVALID VALID 1 1 }  { m_axi_sparse_data_ARREADY READY 0 1 }  { m_axi_sparse_data_ARADDR ADDR 1 64 }  { m_axi_sparse_data_ARID ID 1 1 }  { m_axi_sparse_data_ARLEN SIZE 1 32 }  { m_axi_sparse_data_ARSIZE BURST 1 3 }  { m_axi_sparse_data_ARBURST LOCK 1 2 }  { m_axi_sparse_data_ARLOCK CACHE 1 2 }  { m_axi_sparse_data_ARCACHE PROT 1 4 }  { m_axi_sparse_data_ARPROT QOS 1 3 }  { m_axi_sparse_data_ARQOS REGION 1 4 }  { m_axi_sparse_data_ARREGION USER 1 4 }  { m_axi_sparse_data_ARUSER DATA 1 1 }  { m_axi_sparse_data_RVALID VALID 0 1 }  { m_axi_sparse_data_RREADY READY 1 1 }  { m_axi_sparse_data_RDATA FIFONUM 0 256 }  { m_axi_sparse_data_RLAST LAST 0 1 }  { m_axi_sparse_data_RID ID 0 1 }  { m_axi_sparse_data_RFIFONUM LEN 0 9 }  { m_axi_sparse_data_RUSER DATA 0 1 }  { m_axi_sparse_data_RRESP RESP 0 2 }  { m_axi_sparse_data_BVALID VALID 0 1 }  { m_axi_sparse_data_BREADY READY 1 1 }  { m_axi_sparse_data_BRESP RESP 0 2 }  { m_axi_sparse_data_BID ID 0 1 }  { m_axi_sparse_data_BUSER DATA 0 1 } } }
	inputs { ap_none {  { inputs in_data 0 64 } } }
	idx_ram { ap_memory {  { idx_ram_address0 mem_address 1 10 }  { idx_ram_ce0 mem_ce 1 1 }  { idx_ram_we0 mem_we 1 1 }  { idx_ram_d0 mem_din 1 8 } } }
	count_ram { ap_memory {  { count_ram_address0 mem_address 1 5 }  { count_ram_ce0 mem_ce 1 1 }  { count_ram_we0 mem_we 1 1 }  { count_ram_d0 mem_din 1 8 } } }
	fm_ram { ap_memory {  { fm_ram_address0 mem_address 1 9 }  { fm_ram_ce0 mem_ce 1 1 }  { fm_ram_we0 mem_we 1 1 }  { fm_ram_d0 mem_din 1 256 } } }
	input_data_addr1 { ap_none {  { input_data_addr1 in_data 0 32 } } }
	input_data_addr2 { ap_none {  { input_data_addr2 in_data 0 32 } } }
}
