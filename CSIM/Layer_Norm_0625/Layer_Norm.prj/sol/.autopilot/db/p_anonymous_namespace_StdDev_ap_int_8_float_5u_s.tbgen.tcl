set moduleName p_anonymous_namespace_StdDev_ap_int_8_float_5u_s
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
set C_modelName {(anonymous namespace)StdDev<ap_int<8>, float, 5u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ cols_log int 32 regular {fifo 0}  }
	{ rows int 32 regular {fifo 0}  }
	{ data_copy_b2 int 256 regular {fifo 0 volatile }  }
	{ mean_a6 int 8 regular {fifo 0 volatile }  }
	{ stddev8 int 32 regular {fifo 1 volatile }  }
	{ rows_c17 int 32 regular {fifo 1}  }
	{ cols_log_c20 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cols_log", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_copy_b2", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "mean_a6", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "stddev8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows_c17", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_log_c20", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ data_copy_b2_dout sc_in sc_lv 256 signal 2 } 
	{ data_copy_b2_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ data_copy_b2_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ data_copy_b2_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_copy_b2_read sc_out sc_logic 1 signal 2 } 
	{ mean_a6_dout sc_in sc_lv 8 signal 3 } 
	{ mean_a6_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ mean_a6_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ mean_a6_empty_n sc_in sc_logic 1 signal 3 } 
	{ mean_a6_read sc_out sc_logic 1 signal 3 } 
	{ stddev8_din sc_out sc_lv 32 signal 4 } 
	{ stddev8_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ stddev8_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ stddev8_full_n sc_in sc_logic 1 signal 4 } 
	{ stddev8_write sc_out sc_logic 1 signal 4 } 
	{ rows_c17_din sc_out sc_lv 32 signal 5 } 
	{ rows_c17_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ rows_c17_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ rows_c17_full_n sc_in sc_logic 1 signal 5 } 
	{ rows_c17_write sc_out sc_logic 1 signal 5 } 
	{ cols_log_c20_din sc_out sc_lv 32 signal 6 } 
	{ cols_log_c20_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ cols_log_c20_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ cols_log_c20_full_n sc_in sc_logic 1 signal 6 } 
	{ cols_log_c20_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "data_copy_b2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "dout" }} , 
 	{ "name": "data_copy_b2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "num_data_valid" }} , 
 	{ "name": "data_copy_b2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "fifo_cap" }} , 
 	{ "name": "data_copy_b2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "empty_n" }} , 
 	{ "name": "data_copy_b2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_copy_b2", "role": "read" }} , 
 	{ "name": "mean_a6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mean_a6", "role": "dout" }} , 
 	{ "name": "mean_a6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_a6", "role": "num_data_valid" }} , 
 	{ "name": "mean_a6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mean_a6", "role": "fifo_cap" }} , 
 	{ "name": "mean_a6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_a6", "role": "empty_n" }} , 
 	{ "name": "mean_a6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_a6", "role": "read" }} , 
 	{ "name": "stddev8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stddev8", "role": "din" }} , 
 	{ "name": "stddev8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stddev8", "role": "num_data_valid" }} , 
 	{ "name": "stddev8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "stddev8", "role": "fifo_cap" }} , 
 	{ "name": "stddev8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stddev8", "role": "full_n" }} , 
 	{ "name": "stddev8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stddev8", "role": "write" }} , 
 	{ "name": "rows_c17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_c17", "role": "din" }} , 
 	{ "name": "rows_c17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c17", "role": "num_data_valid" }} , 
 	{ "name": "rows_c17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "rows_c17", "role": "fifo_cap" }} , 
 	{ "name": "rows_c17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c17", "role": "full_n" }} , 
 	{ "name": "rows_c17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_c17", "role": "write" }} , 
 	{ "name": "cols_log_c20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_log_c20", "role": "din" }} , 
 	{ "name": "cols_log_c20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c20", "role": "num_data_valid" }} , 
 	{ "name": "cols_log_c20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cols_log_c20", "role": "fifo_cap" }} , 
 	{ "name": "cols_log_c20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c20", "role": "full_n" }} , 
 	{ "name": "cols_log_c20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_log_c20", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
		"Port" : [
			{"Name" : "cols_log", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_copy_b2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_copy_b2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_a6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mean_a6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stddev8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "stddev8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_log_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_log_c20_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "StdDev", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "61", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state6"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state12"]}},
			{"Name" : "VITIS_LOOP_160_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "61", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state65"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U67", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U68", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U69", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uitodp_32ns_64_4_no_dsp_1_U70", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U71", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U72", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U73", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U74", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U75", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U76", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U77", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U78", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U79", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U80", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U81", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U82", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U83", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U84", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U85", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U86", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U87", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_submul_8s_8s_18_4_1_U88", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U89", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U90", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U91", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U92", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U93", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U94", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U95", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U96", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U97", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U98", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U99", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U100", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U101", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U102", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U103", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_8s_8s_18s_18_4_1_U104", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_StdDev_ap_int_8_float_5u_s {
		cols_log {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		data_copy_b2 {Type I LastRead 6 FirstWrite -1}
		mean_a6 {Type I LastRead 5 FirstWrite -1}
		stddev8 {Type O LastRead -1 FirstWrite 64}
		rows_c17 {Type O LastRead -1 FirstWrite 0}
		cols_log_c20 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cols_log { ap_fifo {  { cols_log_dout fifo_port_we 0 32 }  { cols_log_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_fifo_cap fifo_update 0 2 }  { cols_log_empty_n fifo_status 0 1 }  { cols_log_read fifo_data 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_port_we 0 32 }  { rows_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_fifo_cap fifo_update 0 2 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_data 1 1 } } }
	data_copy_b2 { ap_fifo {  { data_copy_b2_dout fifo_port_we 0 256 }  { data_copy_b2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_copy_b2_fifo_cap fifo_update 0 5 }  { data_copy_b2_empty_n fifo_status 0 1 }  { data_copy_b2_read fifo_data 1 1 } } }
	mean_a6 { ap_fifo {  { mean_a6_dout fifo_port_we 0 8 }  { mean_a6_num_data_valid fifo_status_num_data_valid 0 6 }  { mean_a6_fifo_cap fifo_update 0 6 }  { mean_a6_empty_n fifo_status 0 1 }  { mean_a6_read fifo_data 1 1 } } }
	stddev8 { ap_fifo {  { stddev8_din fifo_port_we 1 32 }  { stddev8_num_data_valid fifo_status_num_data_valid 0 6 }  { stddev8_fifo_cap fifo_update 0 6 }  { stddev8_full_n fifo_status 0 1 }  { stddev8_write fifo_data 1 1 } } }
	rows_c17 { ap_fifo {  { rows_c17_din fifo_port_we 1 32 }  { rows_c17_num_data_valid fifo_status_num_data_valid 0 2 }  { rows_c17_fifo_cap fifo_update 0 2 }  { rows_c17_full_n fifo_status 0 1 }  { rows_c17_write fifo_data 1 1 } } }
	cols_log_c20 { ap_fifo {  { cols_log_c20_din fifo_port_we 1 32 }  { cols_log_c20_num_data_valid fifo_status_num_data_valid 0 2 }  { cols_log_c20_fifo_cap fifo_update 0 2 }  { cols_log_c20_full_n fifo_status 0 1 }  { cols_log_c20_write fifo_data 1 1 } } }
}
