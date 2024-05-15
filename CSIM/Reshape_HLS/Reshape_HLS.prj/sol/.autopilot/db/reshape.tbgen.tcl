set moduleName reshape
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
set C_modelName {reshape}
set C_modelType { void 0 }
set C_modelArgList {
	{ reshape_data int 256 regular {axi_master 2}  }
	{ input_data_addr int 32 regular {axi_slave 0}  }
	{ inputs int 64 regular {axi_slave 0}  }
	{ outputs int 64 regular {axi_slave 0}  }
	{ ROWS int 32 regular {axi_slave 0}  }
	{ COLS int 32 regular {axi_slave 0}  }
	{ reshape_flag int 1 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reshape_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "reshape_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "reshape_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_data_addr", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "inputs", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":35}} , 
 	{ "Name" : "outputs", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":36}, "offset_end" : {"in":47}} , 
 	{ "Name" : "ROWS", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "COLS", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "reshape_flag", "interface" : "axi_slave", "bundle":"reshape_addr","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":64}, "offset_end" : {"out":71}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ s_axi_reshape_addr_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_reshape_addr_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_reshape_addr_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_reshape_addr_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_reshape_addr_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_reshape_addr_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_reshape_addr_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_reshape_addr_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_reshape_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_reshape_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_reshape_data_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_reshape_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_reshape_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_reshape_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_reshape_data_BUSER sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_reshape_addr_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "reshape_addr", "role": "AWADDR" },"address":[{"name":"reshape","role":"start","value":"0","valid_bit":"0"},{"name":"reshape","role":"continue","value":"0","valid_bit":"4"},{"name":"reshape","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_data_addr","role":"data","value":"16"},{"name":"inputs","role":"data","value":"24"},{"name":"outputs","role":"data","value":"36"},{"name":"ROWS","role":"data","value":"48"},{"name":"COLS","role":"data","value":"56"}] },
	{ "name": "s_axi_reshape_addr_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "AWVALID" } },
	{ "name": "s_axi_reshape_addr_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "AWREADY" } },
	{ "name": "s_axi_reshape_addr_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "WVALID" } },
	{ "name": "s_axi_reshape_addr_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "WREADY" } },
	{ "name": "s_axi_reshape_addr_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reshape_addr", "role": "WDATA" } },
	{ "name": "s_axi_reshape_addr_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "reshape_addr", "role": "WSTRB" } },
	{ "name": "s_axi_reshape_addr_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "reshape_addr", "role": "ARADDR" },"address":[{"name":"reshape","role":"start","value":"0","valid_bit":"0"},{"name":"reshape","role":"done","value":"0","valid_bit":"1"},{"name":"reshape","role":"idle","value":"0","valid_bit":"2"},{"name":"reshape","role":"ready","value":"0","valid_bit":"3"},{"name":"reshape","role":"auto_start","value":"0","valid_bit":"7"},{"name":"reshape_flag","role":"data","value":"64"}, {"name":"reshape_flag","role":"valid","value":"68","valid_bit":"0"}] },
	{ "name": "s_axi_reshape_addr_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "ARVALID" } },
	{ "name": "s_axi_reshape_addr_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "ARREADY" } },
	{ "name": "s_axi_reshape_addr_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "RVALID" } },
	{ "name": "s_axi_reshape_addr_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "RREADY" } },
	{ "name": "s_axi_reshape_addr_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reshape_addr", "role": "RDATA" } },
	{ "name": "s_axi_reshape_addr_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_addr", "role": "RRESP" } },
	{ "name": "s_axi_reshape_addr_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "BVALID" } },
	{ "name": "s_axi_reshape_addr_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "BREADY" } },
	{ "name": "s_axi_reshape_addr_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_addr", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_addr", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_reshape_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_reshape_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_reshape_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_reshape_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWID" }} , 
 	{ "name": "m_axi_reshape_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reshape_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_reshape_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reshape_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_reshape_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_reshape_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_reshape_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_reshape_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_reshape_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reshape_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_reshape_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BID" }} , 
 	{ "name": "m_axi_reshape_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "reshape_data", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "14", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "reshape",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
			{"ID" : "14", "Name" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0"}],
		"Port" : [
			{"Name" : "reshape_data", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Port" : "reshape_data"},
					{"ID" : "4", "SubInstance" : "read_inputs_ap_uint_256_ap_int_8_32u_U0", "Port" : "reshape_data"}]},
			{"Name" : "input_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "reshape_flag", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Port" : "reshape_flag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reshape_addr_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reshape_data_m_axi_U", "Parent" : "0"},
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
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_inputs_ap_uint_256_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["5", "6"],
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
			{"Name" : "data_in1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "20", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_in1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_data_addr_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Loop 2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state9"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state22", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state22"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_ap_uint_256_ap_int_8_32u_U0.ram_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_inputs_ap_uint_256_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U3", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["8", "9", "11", "13"],
		"CDFG" : "reshape_stream_ap_int_8_ap_int_8_32u_s",
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
		"StartSource" : "4",
		"StartFifo" : "start_for_reshape_stream_ap_int_8_ap_int_8_32u_U0_U",
		"Port" : [
			{"Name" : "data_in1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "20", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_in1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242", "Port" : "data_in1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "data_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "24", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345", "Port" : "data_out2", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.buffer_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242", "Parent" : "7", "Child" : ["10"],
		"CDFG" : "reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "l_val_V_125", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_124", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_123", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_122", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_120", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "l_val_V_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "icmp_ln38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln36_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln38_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345", "Parent" : "7", "Child" : ["12"],
		"CDFG" : "reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4",
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
			{"Name" : "mul_ln51", "Type" : "None", "Direction" : "I"},
			{"Name" : "ROWS_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_3_VITIS_LOOP_52_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reshape_stream_ap_int_8_ap_int_8_32u_U0.mul_32ns_32ns_64_1_1_U117", "Parent" : "7"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["15", "18"],
		"CDFG" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_s",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U",
		"Port" : [
			{"Name" : "data_out2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "24", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1_fu_162", "Port" : "data_out2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "reshape_data", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1_fu_162", "Port" : "reshape_data", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "19", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_data_addr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "reshape_flag", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1_fu_162", "Parent" : "14", "Child" : ["16", "17"],
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1_fu_162.add_32ns_32ns_32_3_1_U126", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_75_1_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U197", "Parent" : "14"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputs_c_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_in_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_data_addr_c_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ROWS_c9_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.COLS_c10_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ROWS_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.COLS_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_reshape_stream_ap_int_8_ap_int_8_32u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reshape {
		reshape_data {Type IO LastRead 35 FirstWrite -1}
		input_data_addr {Type I LastRead 0 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		outputs {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		reshape_flag {Type O LastRead -1 FirstWrite 2}}
	entry_proc {
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}}
	read_inputs_ap_uint_256_ap_int_8_32u_s {
		reshape_data {Type I LastRead 17 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		data_in1 {Type O LastRead -1 FirstWrite 11}
		input_data_addr {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		input_data_addr_c {Type O LastRead -1 FirstWrite 0}
		ROWS_c9 {Type O LastRead -1 FirstWrite 0}
		COLS_c10 {Type O LastRead -1 FirstWrite 0}}
	reshape_stream_ap_int_8_ap_int_8_32u_s {
		data_in1 {Type I LastRead 32 FirstWrite -1}
		data_out2 {Type O LastRead -1 FirstWrite 3}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		ROWS_c {Type O LastRead -1 FirstWrite 0}
		COLS_c {Type O LastRead -1 FirstWrite 0}}
	reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1 {
		l_val_V_125 {Type I LastRead 0 FirstWrite -1}
		l_val_V_124 {Type I LastRead 0 FirstWrite -1}
		l_val_V_123 {Type I LastRead 0 FirstWrite -1}
		l_val_V_122 {Type I LastRead 0 FirstWrite -1}
		l_val_V_121 {Type I LastRead 0 FirstWrite -1}
		l_val_V_120 {Type I LastRead 0 FirstWrite -1}
		l_val_V_119 {Type I LastRead 0 FirstWrite -1}
		l_val_V_118 {Type I LastRead 0 FirstWrite -1}
		l_val_V_117 {Type I LastRead 0 FirstWrite -1}
		l_val_V_116 {Type I LastRead 0 FirstWrite -1}
		l_val_V_115 {Type I LastRead 0 FirstWrite -1}
		l_val_V_114 {Type I LastRead 0 FirstWrite -1}
		l_val_V_113 {Type I LastRead 0 FirstWrite -1}
		l_val_V_112 {Type I LastRead 0 FirstWrite -1}
		l_val_V_111 {Type I LastRead 0 FirstWrite -1}
		l_val_V_110 {Type I LastRead 0 FirstWrite -1}
		l_val_V_109 {Type I LastRead 0 FirstWrite -1}
		l_val_V_108 {Type I LastRead 0 FirstWrite -1}
		l_val_V_107 {Type I LastRead 0 FirstWrite -1}
		l_val_V_106 {Type I LastRead 0 FirstWrite -1}
		l_val_V_105 {Type I LastRead 0 FirstWrite -1}
		l_val_V_104 {Type I LastRead 0 FirstWrite -1}
		l_val_V_103 {Type I LastRead 0 FirstWrite -1}
		l_val_V_102 {Type I LastRead 0 FirstWrite -1}
		l_val_V_101 {Type I LastRead 0 FirstWrite -1}
		l_val_V_100 {Type I LastRead 0 FirstWrite -1}
		l_val_V_99 {Type I LastRead 0 FirstWrite -1}
		l_val_V_98 {Type I LastRead 0 FirstWrite -1}
		l_val_V_97 {Type I LastRead 0 FirstWrite -1}
		l_val_V_96 {Type I LastRead 0 FirstWrite -1}
		l_val_V_95 {Type I LastRead 0 FirstWrite -1}
		l_val_V_94 {Type I LastRead 0 FirstWrite -1}
		ROWS_load {Type I LastRead 0 FirstWrite -1}
		buffer_V {Type O LastRead -1 FirstWrite 1}
		icmp_ln38 {Type I LastRead 0 FirstWrite -1}
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_3 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_4 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_5 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_6 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_8 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_9 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_10 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_11 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_12 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_13 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_14 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_15 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_18 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_16 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_19 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_18 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_21 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_22 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_20 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_23 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_24 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_22 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_25 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_26 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_24 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_27 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_28 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_26 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_29 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_27 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_30 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_28 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_31 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_29 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_32 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_30 {Type I LastRead 0 FirstWrite -1}
		zext_ln36_34 {Type I LastRead 0 FirstWrite -1}
		icmp_ln38_31 {Type I LastRead 0 FirstWrite -1}
		data_in1 {Type I LastRead 32 FirstWrite -1}}
	reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4 {
		mul_ln51 {Type I LastRead 0 FirstWrite -1}
		ROWS_load {Type I LastRead 0 FirstWrite -1}
		buffer_V {Type I LastRead 1 FirstWrite -1}
		data_out2 {Type O LastRead -1 FirstWrite 3}}
	store_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		data_out2 {Type I LastRead 2 FirstWrite -1}
		reshape_data {Type O LastRead 35 FirstWrite 3}
		outputs {Type I LastRead 0 FirstWrite -1}
		output_data_addr {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		reshape_flag {Type O LastRead -1 FirstWrite 2}}
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
]}

set Spec2ImplPortList { 
	reshape_data { m_axi {  { m_axi_reshape_data_AWVALID VALID 1 1 }  { m_axi_reshape_data_AWREADY READY 0 1 }  { m_axi_reshape_data_AWADDR ADDR 1 64 }  { m_axi_reshape_data_AWID ID 1 1 }  { m_axi_reshape_data_AWLEN SIZE 1 8 }  { m_axi_reshape_data_AWSIZE BURST 1 3 }  { m_axi_reshape_data_AWBURST LOCK 1 2 }  { m_axi_reshape_data_AWLOCK CACHE 1 2 }  { m_axi_reshape_data_AWCACHE PROT 1 4 }  { m_axi_reshape_data_AWPROT QOS 1 3 }  { m_axi_reshape_data_AWQOS REGION 1 4 }  { m_axi_reshape_data_AWREGION USER 1 4 }  { m_axi_reshape_data_AWUSER DATA 1 1 }  { m_axi_reshape_data_WVALID VALID 1 1 }  { m_axi_reshape_data_WREADY READY 0 1 }  { m_axi_reshape_data_WDATA FIFONUM 1 256 }  { m_axi_reshape_data_WSTRB STRB 1 32 }  { m_axi_reshape_data_WLAST LAST 1 1 }  { m_axi_reshape_data_WID ID 1 1 }  { m_axi_reshape_data_WUSER DATA 1 1 }  { m_axi_reshape_data_ARVALID VALID 1 1 }  { m_axi_reshape_data_ARREADY READY 0 1 }  { m_axi_reshape_data_ARADDR ADDR 1 64 }  { m_axi_reshape_data_ARID ID 1 1 }  { m_axi_reshape_data_ARLEN SIZE 1 8 }  { m_axi_reshape_data_ARSIZE BURST 1 3 }  { m_axi_reshape_data_ARBURST LOCK 1 2 }  { m_axi_reshape_data_ARLOCK CACHE 1 2 }  { m_axi_reshape_data_ARCACHE PROT 1 4 }  { m_axi_reshape_data_ARPROT QOS 1 3 }  { m_axi_reshape_data_ARQOS REGION 1 4 }  { m_axi_reshape_data_ARREGION USER 1 4 }  { m_axi_reshape_data_ARUSER DATA 1 1 }  { m_axi_reshape_data_RVALID VALID 0 1 }  { m_axi_reshape_data_RREADY READY 1 1 }  { m_axi_reshape_data_RDATA FIFONUM 0 256 }  { m_axi_reshape_data_RLAST LAST 0 1 }  { m_axi_reshape_data_RID ID 0 1 }  { m_axi_reshape_data_RUSER DATA 0 1 }  { m_axi_reshape_data_RRESP RESP 0 2 }  { m_axi_reshape_data_BVALID VALID 0 1 }  { m_axi_reshape_data_BREADY READY 1 1 }  { m_axi_reshape_data_BRESP RESP 0 2 }  { m_axi_reshape_data_BID ID 0 1 }  { m_axi_reshape_data_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict reshape_data {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ reshape_data 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ reshape_data 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
