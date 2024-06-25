set moduleName p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3
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
set C_modelName {(anonymous namespace)DataMover_A<ap_int,ap_uint,5u>_Pipeline_VITIS_LOOP_45_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_copy_c3 int 256 regular {fifo 1 volatile }  }
	{ data_copy_b2 int 256 regular {fifo 1 volatile }  }
	{ data_copy_a1 int 256 regular {fifo 1 volatile }  }
	{ ram_V int 256 regular {array 512 { 1 } 1 1 }  }
	{ ram_depth_1 int 27 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_copy_c3", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_copy_b2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_copy_a1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ram_V", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ram_depth_1", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_copy_a1_din sc_out sc_lv 256 signal 2 } 
	{ data_copy_a1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ data_copy_a1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ data_copy_a1_full_n sc_in sc_logic 1 signal 2 } 
	{ data_copy_a1_write sc_out sc_logic 1 signal 2 } 
	{ data_copy_c3_din sc_out sc_lv 256 signal 0 } 
	{ data_copy_c3_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ data_copy_c3_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ data_copy_c3_full_n sc_in sc_logic 1 signal 0 } 
	{ data_copy_c3_write sc_out sc_logic 1 signal 0 } 
	{ data_copy_b2_din sc_out sc_lv 256 signal 1 } 
	{ data_copy_b2_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ data_copy_b2_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ data_copy_b2_full_n sc_in sc_logic 1 signal 1 } 
	{ data_copy_b2_write sc_out sc_logic 1 signal 1 } 
	{ ram_V_address0 sc_out sc_lv 9 signal 3 } 
	{ ram_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ ram_V_q0 sc_in sc_lv 256 signal 3 } 
	{ ram_depth_1 sc_in sc_lv 27 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_copy_a1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "din" }} , 
 	{ "name": "data_copy_a1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_a1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_a1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "full_n" }} , 
 	{ "name": "data_copy_a1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "write" }} , 
 	{ "name": "data_copy_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "din" }} , 
 	{ "name": "data_copy_c3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_c3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "full_n" }} , 
 	{ "name": "data_copy_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_c3", "role": "write" }} , 
 	{ "name": "data_copy_b2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "din" }} , 
 	{ "name": "data_copy_b2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_b2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_b2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "full_n" }} , 
 	{ "name": "data_copy_b2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "write" }} , 
 	{ "name": "ram_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ram_V", "role": "address0" }} , 
 	{ "name": "ram_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ram_V", "role": "ce0" }} , 
 	{ "name": "ram_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ram_V", "role": "q0" }} , 
 	{ "name": "ram_depth_1", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "ram_depth_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_DataMover_A_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_45_3 {
		data_copy_c3 {Type O LastRead 2 FirstWrite 4}
		data_copy_b2 {Type O LastRead 1 FirstWrite 3}
		data_copy_a1 {Type O LastRead 1 FirstWrite 2}
		ram_V {Type I LastRead 3 FirstWrite -1}
		ram_depth_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_copy_c3 { ap_fifo {  { data_copy_c3_din fifo_port_we 1 256 }  { data_copy_c3_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_c3_fifo_cap fifo_update 0 5 }  { data_copy_c3_full_n fifo_status 0 1 }  { data_copy_c3_write fifo_data 1 1 } } }
	data_copy_b2 { ap_fifo {  { data_copy_b2_din fifo_port_we 1 256 }  { data_copy_b2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_b2_fifo_cap fifo_update 0 5 }  { data_copy_b2_full_n fifo_status 0 1 }  { data_copy_b2_write fifo_data 1 1 } } }
	data_copy_a1 { ap_fifo {  { data_copy_a1_din fifo_port_we 1 256 }  { data_copy_a1_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_a1_fifo_cap fifo_update 0 5 }  { data_copy_a1_full_n fifo_status 0 1 }  { data_copy_a1_write fifo_data 1 1 } } }
	ram_V { ap_memory {  { ram_V_address0 mem_address 1 9 }  { ram_V_ce0 mem_ce 1 1 }  { ram_V_q0 in_data 0 256 } } }
	ram_depth_1 { ap_none {  { ram_depth_1 in_data 0 27 } } }
}
