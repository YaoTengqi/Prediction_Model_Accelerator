set moduleName p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4
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
set C_modelName {(anonymous namespace)DataMover_B<ap_int<8>, ap_uint<256>, 5u>_Pipeline_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln96_3 int 14 regular  }
	{ sext_ln96 int 33 regular  }
	{ add_ln97 int 64 regular  }
	{ ln_paras int 256 regular {axi_master 0}  }
	{ sub_ln96_cast1 int 5 regular  }
	{ trunc_ln int 5 regular  }
	{ beta_ram int 256 regular {array 512 { 0 } 0 1 }  }
	{ trunc_ln96_1 int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln96_3", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln97", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ln_paras", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "paras","offset": { "type": "dynamic","port_name": "paras","bundle": "ln_addr"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sub_ln96_cast1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "beta_ram", "interface" : "memory", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "trunc_ln96_1", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ln_paras_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ln_paras_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_paras_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_paras_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_paras_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_WDATA sc_out sc_lv 256 signal 3 } 
	{ m_axi_ln_paras_WSTRB sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_paras_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_ln_paras_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_ln_paras_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_paras_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_ln_paras_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_ln_paras_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_RDATA sc_in sc_lv 256 signal 3 } 
	{ m_axi_ln_paras_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_RFIFONUM sc_in sc_lv 13 signal 3 } 
	{ m_axi_ln_paras_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_ln_paras_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_ln_paras_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_ln_paras_BUSER sc_in sc_lv 1 signal 3 } 
	{ trunc_ln96_3 sc_in sc_lv 14 signal 0 } 
	{ sext_ln96 sc_in sc_lv 33 signal 1 } 
	{ add_ln97 sc_in sc_lv 64 signal 2 } 
	{ sub_ln96_cast1 sc_in sc_lv 5 signal 4 } 
	{ trunc_ln sc_in sc_lv 5 signal 5 } 
	{ beta_ram_address0 sc_out sc_lv 9 signal 6 } 
	{ beta_ram_ce0 sc_out sc_logic 1 signal 6 } 
	{ beta_ram_we0 sc_out sc_lv 32 signal 6 } 
	{ beta_ram_d0 sc_out sc_lv 256 signal 6 } 
	{ trunc_ln96_1 sc_in sc_lv 5 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ln_paras_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ln_paras_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ln_paras_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ln_paras_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWID" }} , 
 	{ "name": "m_axi_ln_paras_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_paras", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_ln_paras_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_paras", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_ln_paras_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ln_paras", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ln_paras_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "RUSER" }} , 
 	{ "name": "m_axi_ln_paras_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "RRESP" }} , 
 	{ "name": "m_axi_ln_paras_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BVALID" }} , 
 	{ "name": "m_axi_ln_paras_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BREADY" }} , 
 	{ "name": "m_axi_ln_paras_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_paras", "role": "BRESP" }} , 
 	{ "name": "m_axi_ln_paras_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BID" }} , 
 	{ "name": "m_axi_ln_paras_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_paras", "role": "BUSER" }} , 
 	{ "name": "trunc_ln96_3", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln96_3", "role": "default" }} , 
 	{ "name": "sext_ln96", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "sext_ln96", "role": "default" }} , 
 	{ "name": "add_ln97", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln97", "role": "default" }} , 
 	{ "name": "sub_ln96_cast1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sub_ln96_cast1", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "beta_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "beta_ram", "role": "address0" }} , 
 	{ "name": "beta_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "beta_ram", "role": "ce0" }} , 
 	{ "name": "beta_ram_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "beta_ram", "role": "we0" }} , 
 	{ "name": "beta_ram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "beta_ram", "role": "d0" }} , 
 	{ "name": "trunc_ln96_1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "trunc_ln96_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_DataMover_B_ap_int_8_ap_uint_256_5u_Pipeline_4 {
		trunc_ln96_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}
		add_ln97 {Type I LastRead 0 FirstWrite -1}
		ln_paras {Type I LastRead 39 FirstWrite -1}
		sub_ln96_cast1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		beta_ram {Type O LastRead -1 FirstWrite 40}
		trunc_ln96_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43", "Max" : "73"}
	, {"Name" : "Interval", "Min" : "43", "Max" : "73"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln96_3 { ap_none {  { trunc_ln96_3 in_data 0 14 } } }
	sext_ln96 { ap_none {  { sext_ln96 in_data 0 33 } } }
	add_ln97 { ap_none {  { add_ln97 in_data 0 64 } } }
	 { m_axi {  { m_axi_ln_paras_AWVALID VALID 1 1 }  { m_axi_ln_paras_AWREADY READY 0 1 }  { m_axi_ln_paras_AWADDR ADDR 1 64 }  { m_axi_ln_paras_AWID ID 1 1 }  { m_axi_ln_paras_AWLEN SIZE 1 32 }  { m_axi_ln_paras_AWSIZE BURST 1 3 }  { m_axi_ln_paras_AWBURST LOCK 1 2 }  { m_axi_ln_paras_AWLOCK CACHE 1 2 }  { m_axi_ln_paras_AWCACHE PROT 1 4 }  { m_axi_ln_paras_AWPROT QOS 1 3 }  { m_axi_ln_paras_AWQOS REGION 1 4 }  { m_axi_ln_paras_AWREGION USER 1 4 }  { m_axi_ln_paras_AWUSER DATA 1 1 }  { m_axi_ln_paras_WVALID VALID 1 1 }  { m_axi_ln_paras_WREADY READY 0 1 }  { m_axi_ln_paras_WDATA FIFONUM 1 256 }  { m_axi_ln_paras_WSTRB STRB 1 32 }  { m_axi_ln_paras_WLAST LAST 1 1 }  { m_axi_ln_paras_WID ID 1 1 }  { m_axi_ln_paras_WUSER DATA 1 1 }  { m_axi_ln_paras_ARVALID VALID 1 1 }  { m_axi_ln_paras_ARREADY READY 0 1 }  { m_axi_ln_paras_ARADDR ADDR 1 64 }  { m_axi_ln_paras_ARID ID 1 1 }  { m_axi_ln_paras_ARLEN SIZE 1 32 }  { m_axi_ln_paras_ARSIZE BURST 1 3 }  { m_axi_ln_paras_ARBURST LOCK 1 2 }  { m_axi_ln_paras_ARLOCK CACHE 1 2 }  { m_axi_ln_paras_ARCACHE PROT 1 4 }  { m_axi_ln_paras_ARPROT QOS 1 3 }  { m_axi_ln_paras_ARQOS REGION 1 4 }  { m_axi_ln_paras_ARREGION USER 1 4 }  { m_axi_ln_paras_ARUSER DATA 1 1 }  { m_axi_ln_paras_RVALID VALID 0 1 }  { m_axi_ln_paras_RREADY READY 1 1 }  { m_axi_ln_paras_RDATA FIFONUM 0 256 }  { m_axi_ln_paras_RLAST LAST 0 1 }  { m_axi_ln_paras_RID ID 0 1 }  { m_axi_ln_paras_RFIFONUM LEN 0 13 }  { m_axi_ln_paras_RUSER DATA 0 1 }  { m_axi_ln_paras_RRESP RESP 0 2 }  { m_axi_ln_paras_BVALID VALID 0 1 }  { m_axi_ln_paras_BREADY READY 1 1 }  { m_axi_ln_paras_BRESP RESP 0 2 }  { m_axi_ln_paras_BID ID 0 1 }  { m_axi_ln_paras_BUSER DATA 0 1 } } }
	sub_ln96_cast1 { ap_none {  { sub_ln96_cast1 in_data 0 5 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 5 } } }
	beta_ram { ap_memory {  { beta_ram_address0 mem_address 1 9 }  { beta_ram_ce0 mem_ce 1 1 }  { beta_ram_we0 mem_we 1 32 }  { beta_ram_d0 mem_din 1 256 } } }
	trunc_ln96_1 { ap_none {  { trunc_ln96_1 in_data 0 5 } } }
}
