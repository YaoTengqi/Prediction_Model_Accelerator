set moduleName p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s
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
set C_modelName {(anonymous namespace)Store_temp<ap_int<8>, ap_uint<256>, 5u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ cols_log int 32 regular {fifo 0}  }
	{ rows int 32 regular {fifo 0}  }
	{ norm9 int 256 regular {fifo 0 volatile }  }
	{ store_temp10 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cols_log", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "norm9", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "store_temp10", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cols_log_dout sc_in sc_lv 32 signal 0 } 
	{ cols_log_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ cols_log_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ cols_log_empty_n sc_in sc_logic 1 signal 0 } 
	{ cols_log_read sc_out sc_logic 1 signal 0 } 
	{ rows_dout sc_in sc_lv 32 signal 1 } 
	{ rows_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ rows_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ rows_empty_n sc_in sc_logic 1 signal 1 } 
	{ rows_read sc_out sc_logic 1 signal 1 } 
	{ norm9_dout sc_in sc_lv 256 signal 2 } 
	{ norm9_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ norm9_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ norm9_empty_n sc_in sc_logic 1 signal 2 } 
	{ norm9_read sc_out sc_logic 1 signal 2 } 
	{ store_temp10_din sc_out sc_lv 256 signal 3 } 
	{ store_temp10_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ store_temp10_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ store_temp10_full_n sc_in sc_logic 1 signal 3 } 
	{ store_temp10_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cols_log_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_log", "role": "dout" }} , 
 	{ "name": "cols_log_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log", "role": "num_data_valid" }} , 
 	{ "name": "cols_log_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log", "role": "fifo_cap" }} , 
 	{ "name": "cols_log_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log", "role": "empty_n" }} , 
 	{ "name": "cols_log_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log", "role": "read" }} , 
 	{ "name": "rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "dout" }} , 
 	{ "name": "rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows", "role": "num_data_valid" }} , 
 	{ "name": "rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows", "role": "fifo_cap" }} , 
 	{ "name": "rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "empty_n" }} , 
 	{ "name": "rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "read" }} , 
 	{ "name": "norm9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "norm9", "role": "dout" }} , 
 	{ "name": "norm9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "norm9", "role": "num_data_valid" }} , 
 	{ "name": "norm9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "norm9", "role": "fifo_cap" }} , 
 	{ "name": "norm9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm9", "role": "empty_n" }} , 
 	{ "name": "norm9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm9", "role": "read" }} , 
 	{ "name": "store_temp10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "store_temp10", "role": "din" }} , 
 	{ "name": "store_temp10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "store_temp10", "role": "num_data_valid" }} , 
 	{ "name": "store_temp10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "store_temp10", "role": "fifo_cap" }} , 
 	{ "name": "store_temp10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store_temp10", "role": "full_n" }} , 
 	{ "name": "store_temp10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store_temp10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
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
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "norm9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "store_temp10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157", "Port" : "store_temp10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_265_1_VITIS_LOOP_267_2", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state7"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ram_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_27ns_59_1_1_U264", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_9ns_9_4_1_U265", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_Store_temp_ap_int_8_ap_uint_256_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		norm9 {Type I LastRead 5 FirstWrite -1}
		store_temp10 {Type O LastRead -1 FirstWrite 1}}
	p_anonymous_namespace_Store_temp_ap_int_ap_uint_5u_Pipeline_VITIS_LOOP_275_3 {
		ram_V {Type I LastRead 0 FirstWrite -1}
		store_temp10 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "517", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "517", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cols_log { ap_fifo {  { cols_log_dout fifo_port_we 0 32 }  { cols_log_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_fifo_cap fifo_update 0 2 }  { cols_log_empty_n fifo_status 0 1 }  { cols_log_read fifo_data 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_port_we 0 32 }  { rows_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_fifo_cap fifo_update 0 2 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_data 1 1 } } }
	norm9 { ap_fifo {  { norm9_dout fifo_port_we 0 256 }  { norm9_num_data_valid fifo_status_num_data_valid 0 5 }  { norm9_fifo_cap fifo_update 0 5 }  { norm9_empty_n fifo_status 0 1 }  { norm9_read fifo_data 1 1 } } }
	store_temp10 { ap_fifo {  { store_temp10_din fifo_port_we 1 256 }  { store_temp10_num_data_valid fifo_status_num_data_valid 0 5 }  { store_temp10_fifo_cap fifo_update 0 5 }  { store_temp10_full_n fifo_status 0 1 }  { store_temp10_write fifo_data 1 1 } } }
}
