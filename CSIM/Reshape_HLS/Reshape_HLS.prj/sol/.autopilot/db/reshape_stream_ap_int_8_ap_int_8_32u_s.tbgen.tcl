set moduleName reshape_stream_ap_int_8_ap_int_8_32u_s
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
set C_modelName {reshape_stream<ap_int<8>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in1 int 256 regular {fifo 0 volatile }  }
	{ data_out2 int 256 regular {fifo 1 volatile }  }
	{ ROWS int 32 regular {fifo 0}  }
	{ COLS int 32 regular {fifo 0}  }
	{ ROWS_c int 32 regular {fifo 1}  }
	{ COLS_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in1", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "data_out2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ROWS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "COLS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ROWS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "COLS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in1_dout sc_in sc_lv 256 signal 0 } 
	{ data_in1_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ data_in1_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ data_in1_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_in1_read sc_out sc_logic 1 signal 0 } 
	{ data_out2_din sc_out sc_lv 256 signal 1 } 
	{ data_out2_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ data_out2_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ data_out2_full_n sc_in sc_logic 1 signal 1 } 
	{ data_out2_write sc_out sc_logic 1 signal 1 } 
	{ ROWS_dout sc_in sc_lv 32 signal 2 } 
	{ ROWS_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ ROWS_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ ROWS_empty_n sc_in sc_logic 1 signal 2 } 
	{ ROWS_read sc_out sc_logic 1 signal 2 } 
	{ COLS_dout sc_in sc_lv 32 signal 3 } 
	{ COLS_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ COLS_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ COLS_empty_n sc_in sc_logic 1 signal 3 } 
	{ COLS_read sc_out sc_logic 1 signal 3 } 
	{ ROWS_c_din sc_out sc_lv 32 signal 4 } 
	{ ROWS_c_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ ROWS_c_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ ROWS_c_full_n sc_in sc_logic 1 signal 4 } 
	{ ROWS_c_write sc_out sc_logic 1 signal 4 } 
	{ COLS_c_din sc_out sc_lv 32 signal 5 } 
	{ COLS_c_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ COLS_c_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ COLS_c_full_n sc_in sc_logic 1 signal 5 } 
	{ COLS_c_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_in1", "role": "dout" }} , 
 	{ "name": "data_in1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in1", "role": "num_data_valid" }} , 
 	{ "name": "data_in1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in1", "role": "fifo_cap" }} , 
 	{ "name": "data_in1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in1", "role": "empty_n" }} , 
 	{ "name": "data_in1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in1", "role": "read" }} , 
 	{ "name": "data_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_out2", "role": "din" }} , 
 	{ "name": "data_out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "num_data_valid" }} , 
 	{ "name": "data_out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out2", "role": "fifo_cap" }} , 
 	{ "name": "data_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "full_n" }} , 
 	{ "name": "data_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out2", "role": "write" }} , 
 	{ "name": "ROWS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROWS", "role": "dout" }} , 
 	{ "name": "ROWS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS", "role": "num_data_valid" }} , 
 	{ "name": "ROWS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS", "role": "fifo_cap" }} , 
 	{ "name": "ROWS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS", "role": "empty_n" }} , 
 	{ "name": "ROWS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS", "role": "read" }} , 
 	{ "name": "COLS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "COLS", "role": "dout" }} , 
 	{ "name": "COLS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS", "role": "num_data_valid" }} , 
 	{ "name": "COLS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS", "role": "fifo_cap" }} , 
 	{ "name": "COLS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS", "role": "empty_n" }} , 
 	{ "name": "COLS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS", "role": "read" }} , 
 	{ "name": "ROWS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ROWS_c", "role": "din" }} , 
 	{ "name": "ROWS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS_c", "role": "num_data_valid" }} , 
 	{ "name": "ROWS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ROWS_c", "role": "fifo_cap" }} , 
 	{ "name": "ROWS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS_c", "role": "full_n" }} , 
 	{ "name": "ROWS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ROWS_c", "role": "write" }} , 
 	{ "name": "COLS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "COLS_c", "role": "din" }} , 
 	{ "name": "COLS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS_c", "role": "num_data_valid" }} , 
 	{ "name": "COLS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "COLS_c", "role": "fifo_cap" }} , 
 	{ "name": "COLS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS_c", "role": "full_n" }} , 
 	{ "name": "COLS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "COLS_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6"],
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
		"Port" : [
			{"Name" : "data_in1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_in1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242", "Port" : "data_in1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "data_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345", "Port" : "data_out2", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reshape_stream_ap_int_8_ap_int_8_32u_Pipeline_VITIS_LOOP_33_1_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reshape_stream_ap_int_ap_int_8_32u_Pipeline_VITIS_LOOP_51_3_VITIS_LOOP_52_4_fu_345.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U117", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		data_out2 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in1 { ap_fifo {  { data_in1_dout fifo_port_we 0 256 }  { data_in1_num_data_valid fifo_status_num_data_valid 0 5 }  { data_in1_fifo_cap fifo_update 0 5 }  { data_in1_empty_n fifo_status 0 1 }  { data_in1_read fifo_data 1 1 } } }
	data_out2 { ap_fifo {  { data_out2_din fifo_port_we 1 256 }  { data_out2_num_data_valid fifo_status_num_data_valid 0 5 }  { data_out2_fifo_cap fifo_update 0 5 }  { data_out2_full_n fifo_status 0 1 }  { data_out2_write fifo_data 1 1 } } }
	ROWS { ap_fifo {  { ROWS_dout fifo_port_we 0 32 }  { ROWS_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_fifo_cap fifo_update 0 2 }  { ROWS_empty_n fifo_status 0 1 }  { ROWS_read fifo_data 1 1 } } }
	COLS { ap_fifo {  { COLS_dout fifo_port_we 0 32 }  { COLS_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_fifo_cap fifo_update 0 2 }  { COLS_empty_n fifo_status 0 1 }  { COLS_read fifo_data 1 1 } } }
	ROWS_c { ap_fifo {  { ROWS_c_din fifo_port_we 1 32 }  { ROWS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_c_fifo_cap fifo_update 0 2 }  { ROWS_c_full_n fifo_status 0 1 }  { ROWS_c_write fifo_data 1 1 } } }
	COLS_c { ap_fifo {  { COLS_c_din fifo_port_we 1 32 }  { COLS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_c_fifo_cap fifo_update 0 2 }  { COLS_c_full_n fifo_status 0 1 }  { COLS_c_write fifo_data 1 1 } } }
}
