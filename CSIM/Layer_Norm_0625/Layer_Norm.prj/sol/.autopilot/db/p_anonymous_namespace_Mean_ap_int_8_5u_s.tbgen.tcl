set moduleName p_anonymous_namespace_Mean_ap_int_8_5u_s
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
set C_modelName {(anonymous namespace)Mean<ap_int<8>, 5u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ cols_log int 32 regular {fifo 0}  }
	{ rows int 32 regular {fifo 0}  }
	{ data_copy_a1 int 256 regular {fifo 0 volatile }  }
	{ mean_a6 int 8 regular {fifo 1 volatile }  }
	{ mean_b7 int 8 regular {fifo 1 volatile }  }
	{ rows_c18 int 32 regular {fifo 1}  }
	{ cols_log_c21 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cols_log", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_copy_a1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "mean_a6", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mean_b7", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows_c18", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_log_c21", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
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
	{ data_copy_a1_dout sc_in sc_lv 256 signal 2 } 
	{ data_copy_a1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ data_copy_a1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ data_copy_a1_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_copy_a1_read sc_out sc_logic 1 signal 2 } 
	{ mean_a6_din sc_out sc_lv 8 signal 3 } 
	{ mean_a6_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ mean_a6_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ mean_a6_full_n sc_in sc_logic 1 signal 3 } 
	{ mean_a6_write sc_out sc_logic 1 signal 3 } 
	{ mean_b7_din sc_out sc_lv 8 signal 4 } 
	{ mean_b7_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ mean_b7_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ mean_b7_full_n sc_in sc_logic 1 signal 4 } 
	{ mean_b7_write sc_out sc_logic 1 signal 4 } 
	{ rows_c18_din sc_out sc_lv 32 signal 5 } 
	{ rows_c18_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ rows_c18_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ rows_c18_full_n sc_in sc_logic 1 signal 5 } 
	{ rows_c18_write sc_out sc_logic 1 signal 5 } 
	{ cols_log_c21_din sc_out sc_lv 32 signal 6 } 
	{ cols_log_c21_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ cols_log_c21_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ cols_log_c21_full_n sc_in sc_logic 1 signal 6 } 
	{ cols_log_c21_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "data_copy_a1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "dout" }} , 
 	{ "name": "data_copy_a1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_a1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_a1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "empty_n" }} , 
 	{ "name": "data_copy_a1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_a1", "role": "read" }} , 
 	{ "name": "mean_a6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mean_a6", "role": "din" }} , 
 	{ "name": "mean_a6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_a6", "role": "num_data_valid" }} , 
 	{ "name": "mean_a6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_a6", "role": "fifo_cap" }} , 
 	{ "name": "mean_a6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_a6", "role": "full_n" }} , 
 	{ "name": "mean_a6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_a6", "role": "write" }} , 
 	{ "name": "mean_b7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mean_b7", "role": "din" }} , 
 	{ "name": "mean_b7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_b7", "role": "num_data_valid" }} , 
 	{ "name": "mean_b7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_b7", "role": "fifo_cap" }} , 
 	{ "name": "mean_b7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_b7", "role": "full_n" }} , 
 	{ "name": "mean_b7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_b7", "role": "write" }} , 
 	{ "name": "rows_c18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_c18", "role": "din" }} , 
 	{ "name": "rows_c18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c18", "role": "num_data_valid" }} , 
 	{ "name": "rows_c18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c18", "role": "fifo_cap" }} , 
 	{ "name": "rows_c18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c18", "role": "full_n" }} , 
 	{ "name": "rows_c18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c18", "role": "write" }} , 
 	{ "name": "cols_log_c21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_log_c21", "role": "din" }} , 
 	{ "name": "cols_log_c21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c21", "role": "num_data_valid" }} , 
 	{ "name": "cols_log_c21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c21", "role": "fifo_cap" }} , 
 	{ "name": "cols_log_c21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c21", "role": "full_n" }} , 
 	{ "name": "cols_log_c21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c21", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_a1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_copy_a1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_a6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_a6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_b7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_b7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c21_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Sum", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state3_blk"}},
			{"Name" : "VITIS_LOOP_124_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_Mean_ap_int_8_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		data_copy_a1 {Type I LastRead 2 FirstWrite -1}
		mean_a6 {Type O LastRead -1 FirstWrite 3}
		mean_b7 {Type O LastRead -1 FirstWrite 3}
		rows_c18 {Type O LastRead -1 FirstWrite 0}
		cols_log_c21 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cols_log { ap_fifo {  { cols_log_dout fifo_port_we 0 32 }  { cols_log_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_fifo_cap fifo_update 0 2 }  { cols_log_empty_n fifo_status 0 1 }  { cols_log_read fifo_data 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_port_we 0 32 }  { rows_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_fifo_cap fifo_update 0 2 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_data 1 1 } } }
	data_copy_a1 { ap_fifo {  { data_copy_a1_dout fifo_port_we 0 256 }  { data_copy_a1_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_a1_fifo_cap fifo_update 0 5 }  { data_copy_a1_empty_n fifo_status 0 1 }  { data_copy_a1_read fifo_data 1 1 } } }
	mean_a6 { ap_fifo {  { mean_a6_din fifo_port_we 1 8 }  { mean_a6_num_data_valid fifo_status_num_data_valid 0 6 }  { mean_a6_fifo_cap fifo_update 0 6 }  { mean_a6_full_n fifo_status 0 1 }  { mean_a6_write fifo_data 1 1 } } }
	mean_b7 { ap_fifo {  { mean_b7_din fifo_port_we 1 8 }  { mean_b7_num_data_valid fifo_status_num_data_valid 0 6 }  { mean_b7_fifo_cap fifo_update 0 6 }  { mean_b7_full_n fifo_status 0 1 }  { mean_b7_write fifo_data 1 1 } } }
	rows_c18 { ap_fifo {  { rows_c18_din fifo_port_we 1 32 }  { rows_c18_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_c18_fifo_cap fifo_update 0 2 }  { rows_c18_full_n fifo_status 0 1 }  { rows_c18_write fifo_data 1 1 } } }
	cols_log_c21 { ap_fifo {  { cols_log_c21_din fifo_port_we 1 32 }  { cols_log_c21_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_c21_fifo_cap fifo_update 0 2 }  { cols_log_c21_full_n fifo_status 0 1 }  { cols_log_c21_write fifo_data 1 1 } } }
}
