set moduleName layernorm
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
set C_modelName {layernorm}
set C_modelType { void 0 }
set C_modelArgList {
	{ ln_data int 256 regular {axi_master 2}  }
	{ ln_paras int 256 regular {axi_master 0}  }
	{ input_data_addr int 32 regular {axi_slave 0}  }
	{ gama_addr int 32 regular {axi_slave 0}  }
	{ beta_addr int 32 regular {axi_slave 0}  }
	{ output_data_addr int 32 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols_log int 32 regular {axi_slave 0}  }
	{ q_value int 32 unused {axi_slave 0}  }
	{ shift_value int 32 unused {axi_slave 0}  }
	{ done int 32 regular {axi_slave 1}  }
	{ inputs int 64 regular {axi_slave 0}  }
	{ outputs int 64 regular {axi_slave 0}  }
	{ paras int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ln_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "ln_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "ln_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "ln_paras", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "paras","offset": { "type": "dynamic","port_name": "paras","bundle": "ln_addr"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_data_addr", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "gama_addr", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "beta_addr", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "output_data_addr", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "cols_log", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "q_value", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "shift_value", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "done", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":80}, "offset_end" : {"out":87}} , 
 	{ "Name" : "inputs", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":107}} , 
 	{ "Name" : "outputs", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":108}, "offset_end" : {"in":119}} , 
 	{ "Name" : "paras", "interface" : "axi_slave", "bundle":"ln_addr","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":131}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_ln_addr_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_ln_addr_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ln_addr_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ln_addr_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_ln_addr_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ln_addr_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ln_addr_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ln_addr_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_ln_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ln_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ln_data_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ln_data_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ln_data_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ln_data_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ln_data_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_ln_data_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_ln_data_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_ln_data_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ln_data_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ln_data_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ln_data_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ln_data_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ln_data_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ln_data_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ln_data_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_ln_data_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ln_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ln_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ln_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ln_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ln_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ln_data_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ln_paras_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ln_paras_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ln_paras_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_paras_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_paras_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_ln_paras_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_ln_paras_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ln_paras_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ln_paras_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_paras_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_paras_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_paras_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_ln_paras_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_paras_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ln_paras_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_paras_BUSER sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ln_addr_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_addr", "role": "AWADDR" },"address":[{"name":"layernorm","role":"start","value":"0","valid_bit":"0"},{"name":"layernorm","role":"continue","value":"0","valid_bit":"4"},{"name":"layernorm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_data_addr","role":"data","value":"16"},{"name":"gama_addr","role":"data","value":"24"},{"name":"beta_addr","role":"data","value":"32"},{"name":"output_data_addr","role":"data","value":"40"},{"name":"rows","role":"data","value":"48"},{"name":"cols_log","role":"data","value":"56"},{"name":"q_value","role":"data","value":"64"},{"name":"shift_value","role":"data","value":"72"},{"name":"inputs","role":"data","value":"96"},{"name":"outputs","role":"data","value":"108"},{"name":"paras","role":"data","value":"120"}] },
	{ "name": "s_axi_ln_addr_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "AWVALID" } },
	{ "name": "s_axi_ln_addr_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "AWREADY" } },
	{ "name": "s_axi_ln_addr_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "WVALID" } },
	{ "name": "s_axi_ln_addr_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "WREADY" } },
	{ "name": "s_axi_ln_addr_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_addr", "role": "WDATA" } },
	{ "name": "s_axi_ln_addr_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_addr", "role": "WSTRB" } },
	{ "name": "s_axi_ln_addr_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_addr", "role": "ARADDR" },"address":[{"name":"layernorm","role":"start","value":"0","valid_bit":"0"},{"name":"layernorm","role":"done","value":"0","valid_bit":"1"},{"name":"layernorm","role":"idle","value":"0","valid_bit":"2"},{"name":"layernorm","role":"ready","value":"0","valid_bit":"3"},{"name":"layernorm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"done","role":"data","value":"80"}, {"name":"done","role":"valid","value":"84","valid_bit":"0"}] },
	{ "name": "s_axi_ln_addr_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "ARVALID" } },
	{ "name": "s_axi_ln_addr_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "ARREADY" } },
	{ "name": "s_axi_ln_addr_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "RVALID" } },
	{ "name": "s_axi_ln_addr_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "RREADY" } },
	{ "name": "s_axi_ln_addr_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_addr", "role": "RDATA" } },
	{ "name": "s_axi_ln_addr_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_addr", "role": "RRESP" } },
	{ "name": "s_axi_ln_addr_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "BVALID" } },
	{ "name": "s_axi_ln_addr_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "BREADY" } },
	{ "name": "s_axi_ln_addr_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_addr", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_addr", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_ln_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ln_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ln_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ln_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWID" }} , 
 	{ "name": "m_axi_ln_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ln_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ln_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_ln_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_ln_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_ln_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_ln_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_ln_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BID" }} , 
 	{ "name": "m_axi_ln_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BUSER" }} , 
 	{ "name": "m_axi_ln_paras_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ln_paras_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ln_paras_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ln_paras_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWID" }} , 
 	{ "name": "m_axi_ln_paras_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ln_paras_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ln_paras_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ln_paras_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ln_paras_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ln_paras_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ln_paras_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ln_paras_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ln_paras_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ln_paras_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "WVALID" }} , 
 	{ "name": "m_axi_ln_paras_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "WREADY" }} , 
 	{ "name": "m_axi_ln_paras_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_paras", "role": "WDATA" }} , 
 	{ "name": "m_axi_ln_paras_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_paras", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ln_paras_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "WLAST" }} , 
 	{ "name": "m_axi_ln_paras_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "WID" }} , 
 	{ "name": "m_axi_ln_paras_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "WUSER" }} , 
 	{ "name": "m_axi_ln_paras_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ln_paras_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ln_paras_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ln_paras_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARID" }} , 
 	{ "name": "m_axi_ln_paras_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ln_paras_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ln_paras_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ln_paras_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ln_paras_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ln_paras_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ln_paras_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ln_paras_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ln_paras_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ln_paras_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RVALID" }} , 
 	{ "name": "m_axi_ln_paras_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RREADY" }} , 
 	{ "name": "m_axi_ln_paras_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_paras", "role": "RDATA" }} , 
 	{ "name": "m_axi_ln_paras_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RLAST" }} , 
 	{ "name": "m_axi_ln_paras_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RID" }} , 
 	{ "name": "m_axi_ln_paras_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RUSER" }} , 
 	{ "name": "m_axi_ln_paras_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "RRESP" }} , 
 	{ "name": "m_axi_ln_paras_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BVALID" }} , 
 	{ "name": "m_axi_ln_paras_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BREADY" }} , 
 	{ "name": "m_axi_ln_paras_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "BRESP" }} , 
 	{ "name": "m_axi_ln_paras_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BID" }} , 
 	{ "name": "m_axi_ln_paras_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "11", "22", "23", "62", "223", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254"],
		"CDFG" : "layernorm",
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
			{"ID" : "4", "Name" : "entry_proc_U0"},
			{"ID" : "5", "Name" : "p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0"},
			{"ID" : "11", "Name" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0"}],
		"OutputProcess" : [
			{"ID" : "229", "Name" : "p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0"}],
		"Port" : [
			{"Name" : "ln_data", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0", "Port" : "ln_data"},
					{"ID" : "229", "SubInstance" : "p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0", "Port" : "ln_data"}]},
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0", "Port" : "ln_paras"}]},
			{"Name" : "input_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "gama_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_log", "Type" : "None", "Direction" : "I"},
			{"Name" : "q_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "done", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0", "Port" : "done"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "paras", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ln_addr_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ln_data_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ln_paras_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "output_data_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["229"], "DependentChan" : "230", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["229"], "DependentChan" : "231", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0", "Parent" : "0", "Child" : ["6", "7", "9"],
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
					{"ID" : "9", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174", "Port" : "ln_data", "Inst_start_state" : "41", "Inst_end_state" : "42"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_copy_a1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "232", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_a1", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "data_copy_b2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "233", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_b2", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "data_copy_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "234", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Port" : "data_copy_c3", "Inst_start_state" : "2", "Inst_end_state" : "43"}]},
			{"Name" : "rows_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c22_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "43", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0.ram_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162", "Parent" : "5", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174", "Parent" : "5", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_A_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_35_2_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0", "Parent" : "0", "Child" : ["12", "13", "14", "16", "18", "20"],
		"CDFG" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s",
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
			{"Name" : "cols_log", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta_addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_paras_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2_fu_219", "Port" : "ln_paras", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "20", "SubInstance" : "grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4_fu_241", "Port" : "ln_paras", "Inst_start_state" : "84", "Inst_end_state" : "85"},
					{"ID" : "14", "SubInstance" : "grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1_fu_210", "Port" : "ln_paras", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "18", "SubInstance" : "grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3_fu_232", "Port" : "ln_paras", "Inst_start_state" : "82", "Inst_end_state" : "83"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "237", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gamma4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "beta5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "238", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "beta5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "88", "FirstState" : "ap_ST_fsm_state87", "LastState" : ["ap_ST_fsm_state88"], "QuitState" : ["ap_ST_fsm_state87"], "PreState" : ["ap_ST_fsm_state85", "ap_ST_fsm_state86"], "PostState" : ["ap_ST_fsm_state86"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "88", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state87"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.gamma_ram_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.beta_ram_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1_fu_210", "Parent" : "11", "Child" : ["15"],
		"CDFG" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1",
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
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_paras_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma_ram", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lshr_ln", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2_fu_219", "Parent" : "11", "Child" : ["17"],
		"CDFG" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln96_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln96", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln96", "Type" : "None", "Direction" : "I"},
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_paras_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ln_paras_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln96_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "gamma_ram", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln96_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter40", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter40", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3_fu_232", "Parent" : "11", "Child" : ["19"],
		"CDFG" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3",
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
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_paras_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta_ram", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lshr_ln", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3_fu_232.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4_fu_241", "Parent" : "11", "Child" : ["21"],
		"CDFG" : "p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln96_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln96", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln97", "Type" : "None", "Direction" : "I"},
			{"Name" : "ln_paras", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ln_paras_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ln_paras_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sub_ln96_cast1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "beta_ram", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "trunc_ln96_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter40", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter40", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Mean_ap_int_8_5u_U0", "Parent" : "0",
		"CDFG" : "p_anonymous_namespace_Mean_ap_int_8_5u_s",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_p_anonymous_namespace_Mean_ap_int_8_5u_U0_U",
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_a1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "232", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_copy_a1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_a6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "239", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_a6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_b7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "240", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_b7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Sum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_124_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "p_anonymous_namespace_StdDev_ap_int_8_float_5u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0_U",
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_b2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "233", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_copy_b2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_a6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "239", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_a6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stddev8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "243", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stddev8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c20_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "StdDev", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "61", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state6"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state12"]}},
			{"Name" : "VITIS_LOOP_160_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "61", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state65"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.fptrunc_64ns_32_2_no_dsp_1_U67", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.dadd_64ns_64ns_64_5_full_dsp_1_U68", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ddiv_64ns_64ns_64_22_no_dsp_1_U69", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.uitodp_32ns_64_4_no_dsp_1_U70", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.sitodp_32ns_64_4_no_dsp_1_U71", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.dsqrt_64ns_64ns_64_21_no_dsp_1_U72", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U73", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U74", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U75", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U76", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U77", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U78", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U79", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U80", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U81", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U82", "Parent" : "23"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U83", "Parent" : "23"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U84", "Parent" : "23"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U85", "Parent" : "23"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U86", "Parent" : "23"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U87", "Parent" : "23"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.am_submul_8s_8s_18_4_1_U88", "Parent" : "23"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U89", "Parent" : "23"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U90", "Parent" : "23"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U91", "Parent" : "23"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U92", "Parent" : "23"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U93", "Parent" : "23"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U94", "Parent" : "23"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U95", "Parent" : "23"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U96", "Parent" : "23"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U97", "Parent" : "23"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U98", "Parent" : "23"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U99", "Parent" : "23"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U100", "Parent" : "23"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U101", "Parent" : "23"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U102", "Parent" : "23"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U103", "Parent" : "23"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0.ama_submuladd_8s_8s_18s_18_4_1_U104", "Parent" : "23"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222"],
		"CDFG" : "p_anonymous_namespace_Norm_ap_int_8_float_5u_s",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_p_anonymous_namespace_Norm_ap_int_8_float_5u_U0_U",
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_c3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "234", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_copy_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_b7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "240", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_b7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stddev8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "243", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stddev8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gamma4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "237", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gamma4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "beta5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "238", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "beta5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["223"], "DependentChan" : "246", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["223"], "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["223"], "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "norm", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state22"]}},
			{"Name" : "VITIS_LOOP_208_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state22"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_1_p_hls_fptosi_float_i32_fu_305", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_3_p_hls_fptosi_float_i32_fu_310", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_5_p_hls_fptosi_float_i32_fu_315", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_7_p_hls_fptosi_float_i32_fu_320", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_9_p_hls_fptosi_float_i32_fu_325", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_10_p_hls_fptosi_float_i32_fu_330", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_12_p_hls_fptosi_float_i32_fu_335", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_14_p_hls_fptosi_float_i32_fu_340", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_16_p_hls_fptosi_float_i32_fu_345", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_18_p_hls_fptosi_float_i32_fu_350", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_20_p_hls_fptosi_float_i32_fu_355", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_22_p_hls_fptosi_float_i32_fu_360", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_24_p_hls_fptosi_float_i32_fu_365", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_26_p_hls_fptosi_float_i32_fu_370", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_28_p_hls_fptosi_float_i32_fu_375", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_30_p_hls_fptosi_float_i32_fu_380", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_32_p_hls_fptosi_float_i32_fu_385", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_34_p_hls_fptosi_float_i32_fu_390", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_36_p_hls_fptosi_float_i32_fu_395", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_38_p_hls_fptosi_float_i32_fu_400", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_40_p_hls_fptosi_float_i32_fu_405", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_42_p_hls_fptosi_float_i32_fu_410", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_44_p_hls_fptosi_float_i32_fu_415", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_46_p_hls_fptosi_float_i32_fu_420", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_48_p_hls_fptosi_float_i32_fu_425", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_50_p_hls_fptosi_float_i32_fu_430", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_52_p_hls_fptosi_float_i32_fu_435", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_54_p_hls_fptosi_float_i32_fu_440", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_56_p_hls_fptosi_float_i32_fu_445", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_58_p_hls_fptosi_float_i32_fu_450", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_60_p_hls_fptosi_float_i32_fu_455", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.i_op_assign_62_p_hls_fptosi_float_i32_fu_460", "Parent" : "62",
		"CDFG" : "p_hls_fptosi_float_i32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U121", "Parent" : "62"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U122", "Parent" : "62"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U123", "Parent" : "62"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U124", "Parent" : "62"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U125", "Parent" : "62"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U126", "Parent" : "62"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U127", "Parent" : "62"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U128", "Parent" : "62"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U129", "Parent" : "62"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U130", "Parent" : "62"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U131", "Parent" : "62"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U132", "Parent" : "62"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U133", "Parent" : "62"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U134", "Parent" : "62"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U135", "Parent" : "62"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U136", "Parent" : "62"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U137", "Parent" : "62"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U138", "Parent" : "62"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U139", "Parent" : "62"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U140", "Parent" : "62"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U141", "Parent" : "62"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U142", "Parent" : "62"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U143", "Parent" : "62"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U144", "Parent" : "62"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U145", "Parent" : "62"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U146", "Parent" : "62"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U147", "Parent" : "62"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U148", "Parent" : "62"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U149", "Parent" : "62"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U150", "Parent" : "62"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U151", "Parent" : "62"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fmul_32ns_32ns_32_3_max_dsp_1_U152", "Parent" : "62"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U153", "Parent" : "62"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U154", "Parent" : "62"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U155", "Parent" : "62"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U156", "Parent" : "62"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U157", "Parent" : "62"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U158", "Parent" : "62"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U159", "Parent" : "62"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U160", "Parent" : "62"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U161", "Parent" : "62"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U162", "Parent" : "62"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U163", "Parent" : "62"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U164", "Parent" : "62"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U165", "Parent" : "62"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U166", "Parent" : "62"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U167", "Parent" : "62"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U168", "Parent" : "62"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U169", "Parent" : "62"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U170", "Parent" : "62"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U171", "Parent" : "62"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U172", "Parent" : "62"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U173", "Parent" : "62"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U174", "Parent" : "62"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U175", "Parent" : "62"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U176", "Parent" : "62"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U177", "Parent" : "62"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U178", "Parent" : "62"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U179", "Parent" : "62"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U180", "Parent" : "62"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U181", "Parent" : "62"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U182", "Parent" : "62"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U183", "Parent" : "62"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.fdiv_32ns_32ns_32_9_no_dsp_1_U184", "Parent" : "62"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U185", "Parent" : "62"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U186", "Parent" : "62"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U187", "Parent" : "62"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U188", "Parent" : "62"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U189", "Parent" : "62"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U190", "Parent" : "62"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U191", "Parent" : "62"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U192", "Parent" : "62"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U193", "Parent" : "62"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U194", "Parent" : "62"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U195", "Parent" : "62"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U196", "Parent" : "62"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U197", "Parent" : "62"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U198", "Parent" : "62"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U199", "Parent" : "62"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U200", "Parent" : "62"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U201", "Parent" : "62"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U202", "Parent" : "62"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U203", "Parent" : "62"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U204", "Parent" : "62"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U205", "Parent" : "62"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U206", "Parent" : "62"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U207", "Parent" : "62"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U208", "Parent" : "62"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U209", "Parent" : "62"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U210", "Parent" : "62"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U211", "Parent" : "62"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U212", "Parent" : "62"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U213", "Parent" : "62"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U214", "Parent" : "62"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U215", "Parent" : "62"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U216", "Parent" : "62"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U217", "Parent" : "62"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U218", "Parent" : "62"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U219", "Parent" : "62"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U220", "Parent" : "62"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U221", "Parent" : "62"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U222", "Parent" : "62"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U223", "Parent" : "62"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U224", "Parent" : "62"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U225", "Parent" : "62"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U226", "Parent" : "62"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U227", "Parent" : "62"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U228", "Parent" : "62"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U229", "Parent" : "62"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U230", "Parent" : "62"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U231", "Parent" : "62"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U232", "Parent" : "62"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U233", "Parent" : "62"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U234", "Parent" : "62"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U235", "Parent" : "62"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U236", "Parent" : "62"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U237", "Parent" : "62"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U238", "Parent" : "62"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U239", "Parent" : "62"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U240", "Parent" : "62"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U241", "Parent" : "62"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U242", "Parent" : "62"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U243", "Parent" : "62"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U244", "Parent" : "62"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U245", "Parent" : "62"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U246", "Parent" : "62"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U247", "Parent" : "62"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Norm_ap_int_8_float_5u_U0.sitofp_32s_32_4_no_dsp_1_U248", "Parent" : "62"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0", "Parent" : "0", "Child" : ["224", "225", "227", "228"],
		"CDFG" : "p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "517", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0_U",
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "246", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "store_temp10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["229"], "DependentChan" : "249", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157", "Port" : "store_temp10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_265_1_VITIS_LOOP_267_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0.ram_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157", "Parent" : "223", "Child" : ["226"],
		"CDFG" : "p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ram_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "store_temp10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "store_temp10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_275_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0.grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0.mul_32ns_27ns_59_1_1_U264", "Parent" : "223"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0.mac_muladd_9s_9s_9ns_9_4_1_U265", "Parent" : "223"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0", "Parent" : "0",
		"CDFG" : "p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "550", "EstimateLatencyMax" : "551",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0_U",
		"Port" : [
			{"Name" : "addr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "230", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ln_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ln_data_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ln_data_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ln_data_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "231", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "store_temp10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["223"], "DependentChan" : "249", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "store_temp10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_293_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter39", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter39", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_data_addr_c_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputs_c_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_copy_a_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_copy_b_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_copy_c_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_c19_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_log_c22_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gamma_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.beta_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_a_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_b_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_c18_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_log_c21_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stddev_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_c17_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_log_c20_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_c_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_log_c_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_temp_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_U0_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_Mean_ap_int_8_5u_U0_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_StdDev_ap_int_8_float_5u_U0_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_Norm_ap_int_8_float_5u_U0_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	layernorm {
		ln_data {Type IO LastRead 5 FirstWrite -1}
		ln_paras {Type I LastRead 43 FirstWrite -1}
		input_data_addr {Type I LastRead 0 FirstWrite -1}
		gama_addr {Type I LastRead 0 FirstWrite -1}
		beta_addr {Type I LastRead 0 FirstWrite -1}
		output_data_addr {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_log {Type I LastRead 0 FirstWrite -1}
		q_value {Type I LastRead -1 FirstWrite -1}
		shift_value {Type I LastRead -1 FirstWrite -1}
		done {Type O LastRead -1 FirstWrite 40}
		inputs {Type I LastRead 0 FirstWrite -1}
		outputs {Type I LastRead 0 FirstWrite -1}
		paras {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		output_data_addr {Type I LastRead 0 FirstWrite -1}
		output_data_addr_c {Type O LastRead -1 FirstWrite 0}
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}}
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
		ram_V {Type O LastRead -1 FirstWrite 2}}
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 1 FirstWrite -1}
		gamma_addr {Type I LastRead 0 FirstWrite -1}
		beta_addr {Type I LastRead 1 FirstWrite -1}
		ln_paras {Type I LastRead 43 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		gamma4 {Type O LastRead -1 FirstWrite 87}
		beta5 {Type O LastRead -1 FirstWrite 87}}
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_1 {
		ln_paras {Type I LastRead 0 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		gamma_ram {Type O LastRead -1 FirstWrite 1}
		lshr_ln {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_2 {
		trunc_ln96_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}
		add_ln96 {Type I LastRead 0 FirstWrite -1}
		ln_paras {Type I LastRead 39 FirstWrite -1}
		sub_ln96_cast {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		gamma_ram {Type O LastRead -1 FirstWrite 40}
		trunc_ln96_1 {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_3 {
		ln_paras {Type I LastRead 0 FirstWrite -1}
		p_cast9_cast {Type I LastRead 0 FirstWrite -1}
		beta_ram {Type O LastRead -1 FirstWrite 1}
		lshr_ln {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4 {
		trunc_ln96_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}
		add_ln97 {Type I LastRead 0 FirstWrite -1}
		ln_paras {Type I LastRead 39 FirstWrite -1}
		sub_ln96_cast1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		beta_ram {Type O LastRead -1 FirstWrite 40}
		trunc_ln96_1 {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_Mean_ap_int_8_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		data_copy_a1 {Type I LastRead 2 FirstWrite -1}
		mean_a6 {Type O LastRead -1 FirstWrite 3}
		mean_b7 {Type O LastRead -1 FirstWrite 3}
		rows_c18 {Type O LastRead -1 FirstWrite 0}
		cols_log_c21 {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_StdDev_ap_int_8_float_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		data_copy_b2 {Type I LastRead 6 FirstWrite -1}
		mean_a6 {Type I LastRead 5 FirstWrite -1}
		stddev8 {Type O LastRead -1 FirstWrite 64}
		rows_c17 {Type O LastRead -1 FirstWrite 0}
		cols_log_c20 {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_Norm_ap_int_8_float_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		data_copy_c3 {Type I LastRead 2 FirstWrite -1}
		mean_b7 {Type I LastRead 1 FirstWrite -1}
		stddev8 {Type I LastRead 1 FirstWrite -1}
		gamma4 {Type I LastRead 2 FirstWrite -1}
		beta5 {Type I LastRead 2 FirstWrite -1}
		norm9 {Type O LastRead -1 FirstWrite 20}
		rows_c {Type O LastRead -1 FirstWrite 0}
		cols_log_c {Type O LastRead -1 FirstWrite 0}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i32 {
		x {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		norm9 {Type I LastRead 5 FirstWrite -1}
		store_temp10 {Type O LastRead -1 FirstWrite 1}}
	p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3 {
		ram_V {Type I LastRead 0 FirstWrite -1}
		store_temp10 {Type O LastRead -1 FirstWrite 1}}
	p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s {
		addr {Type I LastRead 2 FirstWrite -1}
		ln_data {Type O LastRead 5 FirstWrite 4}
		outputs {Type I LastRead 2 FirstWrite -1}
		done {Type O LastRead -1 FirstWrite 40}
		store_temp10 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ln_data { m_axi {  { m_axi_ln_data_AWVALID VALID 1 1 }  { m_axi_ln_data_AWREADY READY 0 1 }  { m_axi_ln_data_AWADDR ADDR 1 64 }  { m_axi_ln_data_AWID ID 1 1 }  { m_axi_ln_data_AWLEN SIZE 1 8 }  { m_axi_ln_data_AWSIZE BURST 1 3 }  { m_axi_ln_data_AWBURST LOCK 1 2 }  { m_axi_ln_data_AWLOCK CACHE 1 2 }  { m_axi_ln_data_AWCACHE PROT 1 4 }  { m_axi_ln_data_AWPROT QOS 1 3 }  { m_axi_ln_data_AWQOS REGION 1 4 }  { m_axi_ln_data_AWREGION USER 1 4 }  { m_axi_ln_data_AWUSER DATA 1 1 }  { m_axi_ln_data_WVALID VALID 1 1 }  { m_axi_ln_data_WREADY READY 0 1 }  { m_axi_ln_data_WDATA FIFONUM 1 256 }  { m_axi_ln_data_WSTRB STRB 1 32 }  { m_axi_ln_data_WLAST LAST 1 1 }  { m_axi_ln_data_WID ID 1 1 }  { m_axi_ln_data_WUSER DATA 1 1 }  { m_axi_ln_data_ARVALID VALID 1 1 }  { m_axi_ln_data_ARREADY READY 0 1 }  { m_axi_ln_data_ARADDR ADDR 1 64 }  { m_axi_ln_data_ARID ID 1 1 }  { m_axi_ln_data_ARLEN SIZE 1 8 }  { m_axi_ln_data_ARSIZE BURST 1 3 }  { m_axi_ln_data_ARBURST LOCK 1 2 }  { m_axi_ln_data_ARLOCK CACHE 1 2 }  { m_axi_ln_data_ARCACHE PROT 1 4 }  { m_axi_ln_data_ARPROT QOS 1 3 }  { m_axi_ln_data_ARQOS REGION 1 4 }  { m_axi_ln_data_ARREGION USER 1 4 }  { m_axi_ln_data_ARUSER DATA 1 1 }  { m_axi_ln_data_RVALID VALID 0 1 }  { m_axi_ln_data_RREADY READY 1 1 }  { m_axi_ln_data_RDATA FIFONUM 0 256 }  { m_axi_ln_data_RLAST LAST 0 1 }  { m_axi_ln_data_RID ID 0 1 }  { m_axi_ln_data_RUSER DATA 0 1 }  { m_axi_ln_data_RRESP RESP 0 2 }  { m_axi_ln_data_BVALID VALID 0 1 }  { m_axi_ln_data_BREADY READY 1 1 }  { m_axi_ln_data_BRESP RESP 0 2 }  { m_axi_ln_data_BID ID 0 1 }  { m_axi_ln_data_BUSER DATA 0 1 } } }
	ln_paras { m_axi {  { m_axi_ln_paras_AWVALID VALID 1 1 }  { m_axi_ln_paras_AWREADY READY 0 1 }  { m_axi_ln_paras_AWADDR ADDR 1 64 }  { m_axi_ln_paras_AWID ID 1 1 }  { m_axi_ln_paras_AWLEN SIZE 1 8 }  { m_axi_ln_paras_AWSIZE BURST 1 3 }  { m_axi_ln_paras_AWBURST LOCK 1 2 }  { m_axi_ln_paras_AWLOCK CACHE 1 2 }  { m_axi_ln_paras_AWCACHE PROT 1 4 }  { m_axi_ln_paras_AWPROT QOS 1 3 }  { m_axi_ln_paras_AWQOS REGION 1 4 }  { m_axi_ln_paras_AWREGION USER 1 4 }  { m_axi_ln_paras_AWUSER DATA 1 1 }  { m_axi_ln_paras_WVALID VALID 1 1 }  { m_axi_ln_paras_WREADY READY 0 1 }  { m_axi_ln_paras_WDATA FIFONUM 1 256 }  { m_axi_ln_paras_WSTRB STRB 1 32 }  { m_axi_ln_paras_WLAST LAST 1 1 }  { m_axi_ln_paras_WID ID 1 1 }  { m_axi_ln_paras_WUSER DATA 1 1 }  { m_axi_ln_paras_ARVALID VALID 1 1 }  { m_axi_ln_paras_ARREADY READY 0 1 }  { m_axi_ln_paras_ARADDR ADDR 1 64 }  { m_axi_ln_paras_ARID ID 1 1 }  { m_axi_ln_paras_ARLEN SIZE 1 8 }  { m_axi_ln_paras_ARSIZE BURST 1 3 }  { m_axi_ln_paras_ARBURST LOCK 1 2 }  { m_axi_ln_paras_ARLOCK CACHE 1 2 }  { m_axi_ln_paras_ARCACHE PROT 1 4 }  { m_axi_ln_paras_ARPROT QOS 1 3 }  { m_axi_ln_paras_ARQOS REGION 1 4 }  { m_axi_ln_paras_ARREGION USER 1 4 }  { m_axi_ln_paras_ARUSER DATA 1 1 }  { m_axi_ln_paras_RVALID VALID 0 1 }  { m_axi_ln_paras_RREADY READY 1 1 }  { m_axi_ln_paras_RDATA FIFONUM 0 256 }  { m_axi_ln_paras_RLAST LAST 0 1 }  { m_axi_ln_paras_RID ID 0 1 }  { m_axi_ln_paras_RUSER DATA 0 1 }  { m_axi_ln_paras_RRESP RESP 0 2 }  { m_axi_ln_paras_BVALID VALID 0 1 }  { m_axi_ln_paras_BREADY READY 1 1 }  { m_axi_ln_paras_BRESP RESP 0 2 }  { m_axi_ln_paras_BID ID 0 1 }  { m_axi_ln_paras_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict ln_data {NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict ln_paras {NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 1 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ln_data 32 }
	{ ln_paras 32 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ln_data 32 }
	{ ln_paras 32 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
