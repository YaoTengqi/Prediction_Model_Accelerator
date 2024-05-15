set moduleName reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4
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
set C_modelName {reshape_stream<ap_int,ap_int<8>,32u>_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ mul_ln51 int 64 regular  }
	{ ROWS_load int 32 regular  }
	{ buffer_V int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_out2 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mul_ln51", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ROWS_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out2_din sc_out sc_lv 256 signal 3 } 
	{ data_out2_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ data_out2_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ data_out2_full_n sc_in sc_logic 1 signal 3 } 
	{ data_out2_write sc_out sc_logic 1 signal 3 } 
	{ mul_ln51 sc_in sc_lv 64 signal 0 } 
	{ ROWS_load sc_in sc_lv 32 signal 1 } 
	{ buffer_V_address0 sc_out sc_lv 10 signal 2 } 
	{ buffer_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_V_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_out2", "role": "din" }} , 
 	{ "name": "data_out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "num_data_valid" }} , 
 	{ "name": "data_out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "fifo_cap" }} , 
 	{ "name": "data_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "full_n" }} , 
 	{ "name": "data_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "write" }} , 
 	{ "name": "mul_ln51", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mul_ln51", "role": "default" }} , 
 	{ "name": "ROWS_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROWS_load", "role": "default" }} , 
 	{ "name": "buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer_V", "role": "address0" }} , 
 	{ "name": "buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_V", "role": "ce0" }} , 
 	{ "name": "buffer_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4 {
		mul_ln51 {Type I LastRead 0 FirstWrite -1}
		ROWS_load {Type I LastRead 0 FirstWrite -1}
		buffer_V {Type I LastRead 1 FirstWrite -1}
		data_out2 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mul_ln51 { ap_none {  { mul_ln51 in_data 0 64 } } }
	ROWS_load { ap_none {  { ROWS_load in_data 0 32 } } }
	buffer_V { ap_memory {  { buffer_V_address0 mem_address 1 10 }  { buffer_V_ce0 mem_ce 1 1 }  { buffer_V_q0 in_data 0 8 } } }
	data_out2 { ap_fifo {  { data_out2_din fifo_port_we 1 256 }  { data_out2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_out2_fifo_cap fifo_update 0 5 }  { data_out2_full_n fifo_status 0 1 }  { data_out2_write fifo_data 1 1 } } }
}
