set moduleName sparse
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
set C_modelName {sparse}
set C_modelType { void 0 }
set C_modelArgList {
	{ sparse_data int 256 regular {axi_master 2}  }
	{ input_data_addr1 int 32 regular {axi_slave 0}  }
	{ input_data_addr2 int 32 regular {axi_slave 0}  }
	{ output_data_addr3 int 32 regular {axi_slave 0}  }
	{ am_ROWS int 32 regular {axi_slave 0}  }
	{ am_COLS int 32 regular {axi_slave 0}  }
	{ fm_ROWS int 32 regular {axi_slave 0}  }
	{ fm_COLS int 32 regular {axi_slave 0}  }
	{ inputs int 64 regular {axi_slave 0}  }
	{ outputs int 64 regular {axi_slave 0}  }
	{ sparse_flag int 1 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sparse_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "sparse_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "sparse_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_data_addr1", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "input_data_addr2", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "output_data_addr3", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "am_ROWS", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "am_COLS", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "fm_ROWS", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "fm_COLS", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "inputs", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":83}} , 
 	{ "Name" : "outputs", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":84}, "offset_end" : {"in":95}} , 
 	{ "Name" : "sparse_flag", "interface" : "axi_slave", "bundle":"sparse_addr","type":"ap_vld","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":96}, "offset_end" : {"out":103}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_sparse_addr_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_sparse_addr_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_sparse_addr_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_sparse_addr_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_sparse_addr_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_sparse_addr_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_sparse_addr_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_sparse_addr_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_sparse_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_sparse_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_sparse_data_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_sparse_data_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_sparse_data_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_sparse_data_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_sparse_data_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_sparse_data_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_sparse_data_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_sparse_data_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_sparse_data_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_sparse_data_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_sparse_data_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_sparse_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_sparse_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_sparse_data_BUSER sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_sparse_addr_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sparse_addr", "role": "AWADDR" },"address":[{"name":"sparse","role":"start","value":"0","valid_bit":"0"},{"name":"sparse","role":"continue","value":"0","valid_bit":"4"},{"name":"sparse","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_data_addr1","role":"data","value":"16"},{"name":"input_data_addr2","role":"data","value":"24"},{"name":"output_data_addr3","role":"data","value":"32"},{"name":"am_ROWS","role":"data","value":"40"},{"name":"am_COLS","role":"data","value":"48"},{"name":"fm_ROWS","role":"data","value":"56"},{"name":"fm_COLS","role":"data","value":"64"},{"name":"inputs","role":"data","value":"72"},{"name":"outputs","role":"data","value":"84"}] },
	{ "name": "s_axi_sparse_addr_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "AWVALID" } },
	{ "name": "s_axi_sparse_addr_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "AWREADY" } },
	{ "name": "s_axi_sparse_addr_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "WVALID" } },
	{ "name": "s_axi_sparse_addr_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "WREADY" } },
	{ "name": "s_axi_sparse_addr_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_addr", "role": "WDATA" } },
	{ "name": "s_axi_sparse_addr_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_addr", "role": "WSTRB" } },
	{ "name": "s_axi_sparse_addr_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sparse_addr", "role": "ARADDR" },"address":[{"name":"sparse","role":"start","value":"0","valid_bit":"0"},{"name":"sparse","role":"done","value":"0","valid_bit":"1"},{"name":"sparse","role":"idle","value":"0","valid_bit":"2"},{"name":"sparse","role":"ready","value":"0","valid_bit":"3"},{"name":"sparse","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sparse_flag","role":"data","value":"96"}, {"name":"sparse_flag","role":"valid","value":"100","valid_bit":"0"}] },
	{ "name": "s_axi_sparse_addr_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "ARVALID" } },
	{ "name": "s_axi_sparse_addr_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "ARREADY" } },
	{ "name": "s_axi_sparse_addr_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "RVALID" } },
	{ "name": "s_axi_sparse_addr_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "RREADY" } },
	{ "name": "s_axi_sparse_addr_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_addr", "role": "RDATA" } },
	{ "name": "s_axi_sparse_addr_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_addr", "role": "RRESP" } },
	{ "name": "s_axi_sparse_addr_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "BVALID" } },
	{ "name": "s_axi_sparse_addr_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "BREADY" } },
	{ "name": "s_axi_sparse_addr_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_addr", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_addr", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_sparse_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sparse_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sparse_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sparse_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWID" }} , 
 	{ "name": "m_axi_sparse_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_sparse_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_sparse_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_sparse_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_sparse_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_sparse_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_sparse_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_sparse_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BID" }} , 
 	{ "name": "m_axi_sparse_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "12", "13", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "sparse",
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
			{"ID" : "6", "Name" : "entry_proc_U0"},
			{"ID" : "7", "Name" : "load_ap_uint_256_ap_int_8_32u_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0"}],
		"Port" : [
			{"Name" : "sparse_data", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Port" : "sparse_data"},
					{"ID" : "7", "SubInstance" : "load_ap_uint_256_ap_int_8_32u_U0", "Port" : "sparse_data"}]},
			{"Name" : "input_data_addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "am_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "am_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "sparse_flag", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Port" : "sparse_flag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_ram_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.idx_ram_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_ram_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparse_addr_s_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparse_data_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "output_data_addr3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "17", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "18", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_ap_uint_256_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11"],
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
			{"Name" : "idx_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "2"},
			{"Name" : "count_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "3"},
			{"Name" : "fm_ram", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "1"},
			{"Name" : "input_data_addr1", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_data_addr2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state39"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_25_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state81"], "PreState" : ["ap_ST_fsm_state80"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_33_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state86"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state86_blk"}},
			{"Name" : "VITIS_LOOP_29_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "86", "FirstState" : "ap_ST_fsm_state84", "LastState" : ["ap_ST_fsm_state86"], "QuitState" : ["ap_ST_fsm_state84"], "PreState" : ["ap_ST_fsm_state81"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_ap_uint_256_ap_int_8_32u_U0.am_ram_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_ap_uint_256_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U5", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_ap_uint_256_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U6", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.load_ap_uint_256_ap_int_8_32u_U0.mux_325_8_1_1_U7", "Parent" : "7"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Parent" : "0",
		"CDFG" : "mul_ap_uint_256_ap_int_8_ap_int_8_32u_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "fm_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "1"},
			{"Name" : "idx_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "2"},
			{"Name" : "count_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "3"},
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "21", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "am_ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "am_ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0", "Parent" : "0", "Child" : ["14", "16"],
		"CDFG" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_s",
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
		"StartSource" : "6",
		"StartFifo" : "start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U",
		"Port" : [
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "21", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1_fu_124", "Port" : "data_out1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sparse_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sparse_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "sparse_data_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1_fu_124", "Port" : "sparse_data", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "18", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_data_addr3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "17", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sparse_flag", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1_fu_124", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "sparse_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sparse_data_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "loop_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_out1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.grp_store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.store_ap_uint_256_ap_int_8_ap_int_8_32u_U0.mul_32s_32s_32_1_1_U34", "Parent" : "13"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_data_addr3_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputs_c_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_ROWS_c9_channel_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_COLS_c10_channel_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_ROWS_c_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_COLS_c_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_store_ap_uint_256_ap_int_8_ap_int_8_32u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse {
		sparse_data {Type IO LastRead 79 FirstWrite -1}
		input_data_addr1 {Type I LastRead 0 FirstWrite -1}
		input_data_addr2 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		am_ROWS {Type I LastRead 0 FirstWrite -1}
		am_COLS {Type I LastRead 0 FirstWrite -1}
		fm_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		outputs {Type I LastRead 0 FirstWrite -1}
		sparse_flag {Type O LastRead -1 FirstWrite 39}}
	entry_proc {
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3_c {Type O LastRead -1 FirstWrite 0}
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}}
	load_ap_uint_256_ap_int_8_32u_s {
		am_ROWS {Type I LastRead 38 FirstWrite -1}
		am_COLS {Type I LastRead 38 FirstWrite -1}
		fm_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		sparse_data {Type I LastRead 79 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		idx_ram {Type O LastRead -1 FirstWrite 81}
		count_ram {Type O LastRead -1 FirstWrite 81}
		fm_ram {Type O LastRead -1 FirstWrite 41}
		input_data_addr1 {Type I LastRead 0 FirstWrite -1}
		input_data_addr2 {Type I LastRead 38 FirstWrite -1}}
	mul_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		fm_ram {Type I LastRead 5 FirstWrite -1}
		idx_ram {Type I LastRead 4 FirstWrite -1}
		count_ram {Type I LastRead 2 FirstWrite -1}
		data_out1 {Type O LastRead -1 FirstWrite 4}
		am_ROWS_c {Type O LastRead -1 FirstWrite 0}
		fm_COLS_c {Type O LastRead -1 FirstWrite 0}}
	store_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		data_out1 {Type I LastRead 1 FirstWrite -1}
		sparse_data {Type O LastRead 4 FirstWrite 2}
		outputs {Type I LastRead 0 FirstWrite -1}
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		sparse_flag {Type O LastRead -1 FirstWrite 39}}
	store_ap_uint_256_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_91_1 {
		sparse_data {Type O LastRead -1 FirstWrite 2}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
		loop_num {Type I LastRead 0 FirstWrite -1}
		data_out1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sparse_data { m_axi {  { m_axi_sparse_data_AWVALID VALID 1 1 }  { m_axi_sparse_data_AWREADY READY 0 1 }  { m_axi_sparse_data_AWADDR ADDR 1 64 }  { m_axi_sparse_data_AWID ID 1 1 }  { m_axi_sparse_data_AWLEN SIZE 1 8 }  { m_axi_sparse_data_AWSIZE BURST 1 3 }  { m_axi_sparse_data_AWBURST LOCK 1 2 }  { m_axi_sparse_data_AWLOCK CACHE 1 2 }  { m_axi_sparse_data_AWCACHE PROT 1 4 }  { m_axi_sparse_data_AWPROT QOS 1 3 }  { m_axi_sparse_data_AWQOS REGION 1 4 }  { m_axi_sparse_data_AWREGION USER 1 4 }  { m_axi_sparse_data_AWUSER DATA 1 1 }  { m_axi_sparse_data_WVALID VALID 1 1 }  { m_axi_sparse_data_WREADY READY 0 1 }  { m_axi_sparse_data_WDATA FIFONUM 1 256 }  { m_axi_sparse_data_WSTRB STRB 1 32 }  { m_axi_sparse_data_WLAST LAST 1 1 }  { m_axi_sparse_data_WID ID 1 1 }  { m_axi_sparse_data_WUSER DATA 1 1 }  { m_axi_sparse_data_ARVALID VALID 1 1 }  { m_axi_sparse_data_ARREADY READY 0 1 }  { m_axi_sparse_data_ARADDR ADDR 1 64 }  { m_axi_sparse_data_ARID ID 1 1 }  { m_axi_sparse_data_ARLEN SIZE 1 8 }  { m_axi_sparse_data_ARSIZE BURST 1 3 }  { m_axi_sparse_data_ARBURST LOCK 1 2 }  { m_axi_sparse_data_ARLOCK CACHE 1 2 }  { m_axi_sparse_data_ARCACHE PROT 1 4 }  { m_axi_sparse_data_ARPROT QOS 1 3 }  { m_axi_sparse_data_ARQOS REGION 1 4 }  { m_axi_sparse_data_ARREGION USER 1 4 }  { m_axi_sparse_data_ARUSER DATA 1 1 }  { m_axi_sparse_data_RVALID VALID 0 1 }  { m_axi_sparse_data_RREADY READY 1 1 }  { m_axi_sparse_data_RDATA FIFONUM 0 256 }  { m_axi_sparse_data_RLAST LAST 0 1 }  { m_axi_sparse_data_RID ID 0 1 }  { m_axi_sparse_data_RUSER DATA 0 1 }  { m_axi_sparse_data_RRESP RESP 0 2 }  { m_axi_sparse_data_BVALID VALID 0 1 }  { m_axi_sparse_data_BREADY READY 1 1 }  { m_axi_sparse_data_BRESP RESP 0 2 }  { m_axi_sparse_data_BID ID 0 1 }  { m_axi_sparse_data_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict sparse_data {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ sparse_data 32 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ sparse_data 32 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
