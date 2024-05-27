set moduleName concat
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {concat}
set C_modelType { void 0 }
set C_modelArgList {
	{ concat_data int 256 regular {axi_master 2}  }
	{ input_data_addr1 int 32 regular {axi_slave 0}  }
	{ input_data_addr2 int 32 regular {axi_slave 0}  }
	{ output_data_addr3 int 32 regular {axi_slave 0}  }
	{ ROWS int 32 regular {axi_slave 0}  }
	{ COLS int 32 regular {axi_slave 0}  }
	{ inputs int 64 regular {axi_slave 0}  }
	{ outputs int 64 regular {axi_slave 0}  }
	{ concat_flag int 1 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "concat_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "concat_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "concat_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_data_addr1", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "input_data_addr2", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "output_data_addr3", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "ROWS", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "COLS", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "inputs", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":67}} , 
 	{ "Name" : "outputs", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":79}} , 
 	{ "Name" : "concat_flag", "interface" : "axi_slave", "bundle":"concat_addr","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":80}, "offset_end" : {"out":87}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ s_axi_concat_addr_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_concat_addr_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_concat_addr_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_concat_addr_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_concat_addr_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_concat_addr_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_concat_addr_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_concat_addr_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_concat_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_concat_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_concat_data_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_concat_data_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_concat_data_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_concat_data_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_concat_data_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_concat_data_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_concat_data_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_concat_data_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_concat_data_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_concat_data_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_concat_data_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_concat_data_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_concat_data_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_concat_data_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_concat_data_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_concat_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_concat_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_concat_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_concat_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_concat_data_BUSER sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_concat_addr_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "concat_addr", "role": "AWADDR" },"address":[{"name":"concat","role":"start","value":"0","valid_bit":"0"},{"name":"concat","role":"continue","value":"0","valid_bit":"4"},{"name":"concat","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_data_addr1","role":"data","value":"16"},{"name":"input_data_addr2","role":"data","value":"24"},{"name":"output_data_addr3","role":"data","value":"32"},{"name":"ROWS","role":"data","value":"40"},{"name":"COLS","role":"data","value":"48"},{"name":"inputs","role":"data","value":"56"},{"name":"outputs","role":"data","value":"68"}] },
	{ "name": "s_axi_concat_addr_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "AWVALID" } },
	{ "name": "s_axi_concat_addr_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "AWREADY" } },
	{ "name": "s_axi_concat_addr_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "WVALID" } },
	{ "name": "s_axi_concat_addr_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "WREADY" } },
	{ "name": "s_axi_concat_addr_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_addr", "role": "WDATA" } },
	{ "name": "s_axi_concat_addr_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_addr", "role": "WSTRB" } },
	{ "name": "s_axi_concat_addr_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "concat_addr", "role": "ARADDR" },"address":[{"name":"concat","role":"start","value":"0","valid_bit":"0"},{"name":"concat","role":"done","value":"0","valid_bit":"1"},{"name":"concat","role":"idle","value":"0","valid_bit":"2"},{"name":"concat","role":"ready","value":"0","valid_bit":"3"},{"name":"concat","role":"auto_start","value":"0","valid_bit":"7"},{"name":"concat_flag","role":"data","value":"80"}, {"name":"concat_flag","role":"valid","value":"84","valid_bit":"0"}] },
	{ "name": "s_axi_concat_addr_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "ARVALID" } },
	{ "name": "s_axi_concat_addr_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "ARREADY" } },
	{ "name": "s_axi_concat_addr_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "RVALID" } },
	{ "name": "s_axi_concat_addr_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "RREADY" } },
	{ "name": "s_axi_concat_addr_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_addr", "role": "RDATA" } },
	{ "name": "s_axi_concat_addr_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_addr", "role": "RRESP" } },
	{ "name": "s_axi_concat_addr_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "BVALID" } },
	{ "name": "s_axi_concat_addr_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "BREADY" } },
	{ "name": "s_axi_concat_addr_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_addr", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_addr", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_concat_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_concat_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_concat_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "concat_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_concat_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWID" }} , 
 	{ "name": "m_axi_concat_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "concat_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_concat_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_concat_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_concat_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_concat_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_concat_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_concat_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_concat_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_concat_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_concat_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_concat_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_concat_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "concat_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_concat_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_concat_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_concat_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WID" }} , 
 	{ "name": "m_axi_concat_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_concat_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_concat_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_concat_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "concat_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_concat_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARID" }} , 
 	{ "name": "m_axi_concat_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "concat_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_concat_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_concat_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_concat_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_concat_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_concat_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_concat_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_concat_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_concat_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_concat_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_concat_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_concat_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "concat_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_concat_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_concat_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RID" }} , 
 	{ "name": "m_axi_concat_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_concat_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_concat_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_concat_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_concat_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_concat_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BID" }} , 
 	{ "name": "m_axi_concat_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "72", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85"],
		"CDFG" : "concat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "entry_proc_U0"},
			{"ID" : "4", "Name" : "read_inputs_ap_uint_256_ap_int_8_32u_U0"}],
		"OutputProcess" : [
			{"ID" : "72", "Name" : "store_ap_uint_256_ap_int_8_32u_U0"}],
		"Port" : [
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_inputs_ap_uint_256_ap_int_8_32u_U0", "Port" : "concat_data"},
					{"ID" : "72", "SubInstance" : "store_ap_uint_256_ap_int_8_32u_U0", "Port" : "concat_data"}]},
			{"Name" : "input_data_addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "concat_flag", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "store_ap_uint_256_ap_int_8_32u_U0", "Port" : "concat_flag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.concat_addr_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.concat_data_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_data_addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "76", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "77", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_inputs_ap_uint_256_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "read_inputs_ap_uint_256_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "concat_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "concat_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr2", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "78", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state39"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_20_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "83", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state81"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state80"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_ap_uint_256_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U5", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "requant_ap_uint_256_ap_int_8_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U",
		"Port" : [
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "78", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "81", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "output_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["72"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_70_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state1", "ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U16", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U17", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U18", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U19", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U20", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U21", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U22", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U23", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U24", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U25", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U26", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U27", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U28", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U29", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U30", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U31", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U32", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U33", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U34", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U35", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U36", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U37", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U38", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U39", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U40", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U41", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U42", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U43", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U44", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U45", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U46", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U47", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U48", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U49", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U50", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U51", "Parent" : "6"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U52", "Parent" : "6"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U53", "Parent" : "6"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U54", "Parent" : "6"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U55", "Parent" : "6"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U56", "Parent" : "6"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U57", "Parent" : "6"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U58", "Parent" : "6"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U59", "Parent" : "6"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U60", "Parent" : "6"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U61", "Parent" : "6"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U62", "Parent" : "6"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U63", "Parent" : "6"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U64", "Parent" : "6"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U65", "Parent" : "6"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U66", "Parent" : "6"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U67", "Parent" : "6"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U68", "Parent" : "6"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U69", "Parent" : "6"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U70", "Parent" : "6"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U71", "Parent" : "6"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U72", "Parent" : "6"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U73", "Parent" : "6"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U74", "Parent" : "6"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U75", "Parent" : "6"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U76", "Parent" : "6"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U77", "Parent" : "6"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U78", "Parent" : "6"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U79", "Parent" : "6"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_8s_33ns_40_1_1_U80", "Parent" : "6"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["73", "75"],
		"CDFG" : "store_ap_uint_256_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_store_ap_uint_256_ap_int_8_32u_U0_U",
		"Port" : [
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_data_addr3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "76", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_data_addr3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "81", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1_fu_126", "Port" : "output_stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "concat_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "concat_data_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1_fu_126", "Port" : "concat_data", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "77", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "concat_flag", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1_fu_126", "Parent" : "72", "Child" : ["74"],
		"CDFG" : "store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "concat_data_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln105", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "output_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U92", "Parent" : "72"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_data_addr3_c_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputs_c_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_stream_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ROWS_c9_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.COLS_c10_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_stream_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ROWS_c_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.COLS_c_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_store_ap_uint_256_ap_int_8_32u_U0_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_requant_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	concat {
		concat_data {Type IO LastRead 79 FirstWrite -1}
		input_data_addr1 {Type I LastRead 0 FirstWrite -1}
		input_data_addr2 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		outputs {Type I LastRead 0 FirstWrite -1}
		concat_flag {Type O LastRead -1 FirstWrite 39}}
	entry_proc {
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3_c {Type O LastRead -1 FirstWrite 0}
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}}
	read_inputs_ap_uint_256_ap_int_8_32u_s {
		concat_data {Type I LastRead 79 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		input_data_addr1 {Type I LastRead 0 FirstWrite -1}
		input_data_addr2 {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		input_stream {Type O LastRead -1 FirstWrite 41}
		ROWS_c9 {Type O LastRead -1 FirstWrite 0}
		COLS_c10 {Type O LastRead -1 FirstWrite 0}}
	requant_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		input_stream {Type I LastRead 2 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		output_stream {Type O LastRead -1 FirstWrite 3}
		ROWS_c {Type O LastRead -1 FirstWrite 0}
		COLS_c {Type O LastRead -1 FirstWrite 0}}
	store_ap_uint_256_ap_int_8_32u_s {
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		input_data_addr3 {Type I LastRead 0 FirstWrite -1}
		output_stream {Type I LastRead 1 FirstWrite -1}
		concat_data {Type O LastRead 4 FirstWrite 2}
		outputs {Type I LastRead 0 FirstWrite -1}
		concat_flag {Type O LastRead -1 FirstWrite 39}}
	store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_105_1 {
		concat_data {Type O LastRead -1 FirstWrite 2}
		sext_ln105 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		output_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "80", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	concat_data { m_axi {  { m_axi_concat_data_AWVALID VALID 1 1 }  { m_axi_concat_data_AWREADY READY 0 1 }  { m_axi_concat_data_AWADDR ADDR 1 64 }  { m_axi_concat_data_AWID ID 1 1 }  { m_axi_concat_data_AWLEN SIZE 1 8 }  { m_axi_concat_data_AWSIZE BURST 1 3 }  { m_axi_concat_data_AWBURST LOCK 1 2 }  { m_axi_concat_data_AWLOCK CACHE 1 2 }  { m_axi_concat_data_AWCACHE PROT 1 4 }  { m_axi_concat_data_AWPROT QOS 1 3 }  { m_axi_concat_data_AWQOS REGION 1 4 }  { m_axi_concat_data_AWREGION USER 1 4 }  { m_axi_concat_data_AWUSER DATA 1 1 }  { m_axi_concat_data_WVALID VALID 1 1 }  { m_axi_concat_data_WREADY READY 0 1 }  { m_axi_concat_data_WDATA FIFONUM 1 256 }  { m_axi_concat_data_WSTRB STRB 1 32 }  { m_axi_concat_data_WLAST LAST 1 1 }  { m_axi_concat_data_WID ID 1 1 }  { m_axi_concat_data_WUSER DATA 1 1 }  { m_axi_concat_data_ARVALID VALID 1 1 }  { m_axi_concat_data_ARREADY READY 0 1 }  { m_axi_concat_data_ARADDR ADDR 1 64 }  { m_axi_concat_data_ARID ID 1 1 }  { m_axi_concat_data_ARLEN SIZE 1 8 }  { m_axi_concat_data_ARSIZE BURST 1 3 }  { m_axi_concat_data_ARBURST LOCK 1 2 }  { m_axi_concat_data_ARLOCK CACHE 1 2 }  { m_axi_concat_data_ARCACHE PROT 1 4 }  { m_axi_concat_data_ARPROT QOS 1 3 }  { m_axi_concat_data_ARQOS REGION 1 4 }  { m_axi_concat_data_ARREGION USER 1 4 }  { m_axi_concat_data_ARUSER DATA 1 1 }  { m_axi_concat_data_RVALID VALID 0 1 }  { m_axi_concat_data_RREADY READY 1 1 }  { m_axi_concat_data_RDATA FIFONUM 0 256 }  { m_axi_concat_data_RLAST LAST 0 1 }  { m_axi_concat_data_RID ID 0 1 }  { m_axi_concat_data_RUSER DATA 0 1 }  { m_axi_concat_data_RRESP RESP 0 2 }  { m_axi_concat_data_BVALID VALID 0 1 }  { m_axi_concat_data_BREADY READY 1 1 }  { m_axi_concat_data_BRESP RESP 0 2 }  { m_axi_concat_data_BID ID 0 1 }  { m_axi_concat_data_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict concat_data {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ concat_data 32 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ concat_data 32 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
