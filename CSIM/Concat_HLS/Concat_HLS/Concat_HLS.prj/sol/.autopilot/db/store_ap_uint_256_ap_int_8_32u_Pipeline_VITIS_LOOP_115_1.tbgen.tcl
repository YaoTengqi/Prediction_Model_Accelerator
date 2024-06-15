set moduleName store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_115_1
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
set C_modelName {store<ap_uint<256>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_115_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ concat_data int 256 regular {axi_master 1}  }
	{ sext_ln115 int 59 regular  }
	{ trunc_ln int 27 regular  }
	{ input_stream int 256 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "concat_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "concat_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "concat_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln115", "interface" : "wire", "bitwidth" : 59, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream_dout sc_in sc_lv 256 signal 3 } 
	{ input_stream_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ input_stream_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_stream_read sc_out sc_logic 1 signal 3 } 
	{ m_axi_concat_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_concat_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_concat_data_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_concat_data_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_concat_data_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_concat_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_concat_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_concat_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_concat_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_concat_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_concat_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_concat_data_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln115 sc_in sc_lv 59 signal 1 } 
	{ trunc_ln sc_in sc_lv 27 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "num_data_valid" }} , 
 	{ "name": "input_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "fifo_cap" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
 	{ "name": "m_axi_concat_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_concat_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_concat_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "concat_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_concat_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWID" }} , 
 	{ "name": "m_axi_concat_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_concat_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_concat_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "concat_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_concat_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_concat_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_concat_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_concat_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_concat_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_concat_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BID" }} , 
 	{ "name": "m_axi_concat_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BUSER" }} , 
 	{ "name": "sext_ln115", "direction": "in", "datatype": "sc_lv", "bitwidth":59, "type": "signal", "bundle":{"name": "sext_ln115", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_115_1",
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
			{"Name" : "sext_ln115", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_115_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_115_1 {
		concat_data {Type O LastRead -1 FirstWrite 2}
		sext_ln115 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		input_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_concat_data_AWVALID VALID 1 1 }  { m_axi_concat_data_AWREADY READY 0 1 }  { m_axi_concat_data_AWADDR ADDR 1 64 }  { m_axi_concat_data_AWID ID 1 1 }  { m_axi_concat_data_AWLEN SIZE 1 32 }  { m_axi_concat_data_AWSIZE BURST 1 3 }  { m_axi_concat_data_AWBURST LOCK 1 2 }  { m_axi_concat_data_AWLOCK CACHE 1 2 }  { m_axi_concat_data_AWCACHE PROT 1 4 }  { m_axi_concat_data_AWPROT QOS 1 3 }  { m_axi_concat_data_AWQOS REGION 1 4 }  { m_axi_concat_data_AWREGION USER 1 4 }  { m_axi_concat_data_AWUSER DATA 1 1 }  { m_axi_concat_data_WVALID VALID 1 1 }  { m_axi_concat_data_WREADY READY 0 1 }  { m_axi_concat_data_WDATA FIFONUM 1 256 }  { m_axi_concat_data_WSTRB STRB 1 32 }  { m_axi_concat_data_WLAST LAST 1 1 }  { m_axi_concat_data_WID ID 1 1 }  { m_axi_concat_data_WUSER DATA 1 1 }  { m_axi_concat_data_ARVALID VALID 1 1 }  { m_axi_concat_data_ARREADY READY 0 1 }  { m_axi_concat_data_ARADDR ADDR 1 64 }  { m_axi_concat_data_ARID ID 1 1 }  { m_axi_concat_data_ARLEN SIZE 1 32 }  { m_axi_concat_data_ARSIZE BURST 1 3 }  { m_axi_concat_data_ARBURST LOCK 1 2 }  { m_axi_concat_data_ARLOCK CACHE 1 2 }  { m_axi_concat_data_ARCACHE PROT 1 4 }  { m_axi_concat_data_ARPROT QOS 1 3 }  { m_axi_concat_data_ARQOS REGION 1 4 }  { m_axi_concat_data_ARREGION USER 1 4 }  { m_axi_concat_data_ARUSER DATA 1 1 }  { m_axi_concat_data_RVALID VALID 0 1 }  { m_axi_concat_data_RREADY READY 1 1 }  { m_axi_concat_data_RDATA FIFONUM 0 256 }  { m_axi_concat_data_RLAST LAST 0 1 }  { m_axi_concat_data_RID ID 0 1 }  { m_axi_concat_data_RFIFONUM LEN 0 9 }  { m_axi_concat_data_RUSER DATA 0 1 }  { m_axi_concat_data_RRESP RESP 0 2 }  { m_axi_concat_data_BVALID VALID 0 1 }  { m_axi_concat_data_BREADY READY 1 1 }  { m_axi_concat_data_BRESP RESP 0 2 }  { m_axi_concat_data_BID ID 0 1 }  { m_axi_concat_data_BUSER DATA 0 1 } } }
	sext_ln115 { ap_none {  { sext_ln115 in_data 0 59 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 27 } } }
	input_stream { ap_fifo {  { input_stream_dout fifo_port_we 0 256 }  { input_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { input_stream_fifo_cap fifo_update 0 7 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_data 1 1 } } }
}
