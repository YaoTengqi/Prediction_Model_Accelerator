set moduleName quant_ap_uint_256_ap_int_32_ap_int_8_32u_s
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
set C_modelName {quant<ap_uint<256>, ap_int<32>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_out1 int 1024 regular {fifo 0 volatile }  }
	{ fm_ROWS int 32 regular {fifo 0}  }
	{ fm_COLS int 32 regular {fifo 0}  }
	{ quant_out2 int 256 regular {fifo 1 volatile }  }
	{ quant_shift int 32 regular {fifo 0}  }
	{ quant_mul int 16 regular {fifo 0}  }
	{ fm_ROWS_c int 32 regular {fifo 1}  }
	{ fm_COLS_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_out1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "fm_ROWS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_COLS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "quant_out2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "quant_shift", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "quant_mul", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fm_ROWS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_COLS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out1_dout sc_in sc_lv 1024 signal 0 } 
	{ data_out1_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ data_out1_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ data_out1_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_out1_read sc_out sc_logic 1 signal 0 } 
	{ fm_ROWS_dout sc_in sc_lv 32 signal 1 } 
	{ fm_ROWS_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ fm_ROWS_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ fm_ROWS_empty_n sc_in sc_logic 1 signal 1 } 
	{ fm_ROWS_read sc_out sc_logic 1 signal 1 } 
	{ fm_COLS_dout sc_in sc_lv 32 signal 2 } 
	{ fm_COLS_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ fm_COLS_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ fm_COLS_empty_n sc_in sc_logic 1 signal 2 } 
	{ fm_COLS_read sc_out sc_logic 1 signal 2 } 
	{ quant_out2_din sc_out sc_lv 256 signal 3 } 
	{ quant_out2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ quant_out2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ quant_out2_full_n sc_in sc_logic 1 signal 3 } 
	{ quant_out2_write sc_out sc_logic 1 signal 3 } 
	{ quant_shift_dout sc_in sc_lv 32 signal 4 } 
	{ quant_shift_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ quant_shift_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ quant_shift_empty_n sc_in sc_logic 1 signal 4 } 
	{ quant_shift_read sc_out sc_logic 1 signal 4 } 
	{ quant_mul_dout sc_in sc_lv 16 signal 5 } 
	{ quant_mul_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ quant_mul_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ quant_mul_empty_n sc_in sc_logic 1 signal 5 } 
	{ quant_mul_read sc_out sc_logic 1 signal 5 } 
	{ fm_ROWS_c_din sc_out sc_lv 32 signal 6 } 
	{ fm_ROWS_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ fm_ROWS_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ fm_ROWS_c_full_n sc_in sc_logic 1 signal 6 } 
	{ fm_ROWS_c_write sc_out sc_logic 1 signal 6 } 
	{ fm_COLS_c_din sc_out sc_lv 32 signal 7 } 
	{ fm_COLS_c_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ fm_COLS_c_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ fm_COLS_c_full_n sc_in sc_logic 1 signal 7 } 
	{ fm_COLS_c_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "data_out1", "role": "dout" }} , 
 	{ "name": "data_out1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "num_data_valid" }} , 
 	{ "name": "data_out1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "fifo_cap" }} , 
 	{ "name": "data_out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "empty_n" }} , 
 	{ "name": "data_out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "read" }} , 
 	{ "name": "fm_ROWS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "dout" }} , 
 	{ "name": "fm_ROWS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "num_data_valid" }} , 
 	{ "name": "fm_ROWS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "fifo_cap" }} , 
 	{ "name": "fm_ROWS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "empty_n" }} , 
 	{ "name": "fm_ROWS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "read" }} , 
 	{ "name": "fm_COLS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS", "role": "dout" }} , 
 	{ "name": "fm_COLS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS", "role": "empty_n" }} , 
 	{ "name": "fm_COLS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS", "role": "read" }} , 
 	{ "name": "quant_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "quant_out2", "role": "din" }} , 
 	{ "name": "quant_out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "quant_out2", "role": "num_data_valid" }} , 
 	{ "name": "quant_out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "quant_out2", "role": "fifo_cap" }} , 
 	{ "name": "quant_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out2", "role": "full_n" }} , 
 	{ "name": "quant_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out2", "role": "write" }} , 
 	{ "name": "quant_shift_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "quant_shift", "role": "dout" }} , 
 	{ "name": "quant_shift_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_shift", "role": "num_data_valid" }} , 
 	{ "name": "quant_shift_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_shift", "role": "fifo_cap" }} , 
 	{ "name": "quant_shift_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_shift", "role": "empty_n" }} , 
 	{ "name": "quant_shift_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_shift", "role": "read" }} , 
 	{ "name": "quant_mul_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "quant_mul", "role": "dout" }} , 
 	{ "name": "quant_mul_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_mul", "role": "num_data_valid" }} , 
 	{ "name": "quant_mul_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_mul", "role": "fifo_cap" }} , 
 	{ "name": "quant_mul_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_mul", "role": "empty_n" }} , 
 	{ "name": "quant_mul_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_mul", "role": "read" }} , 
 	{ "name": "fm_ROWS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_ROWS_c", "role": "din" }} , 
 	{ "name": "fm_ROWS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_ROWS_c", "role": "num_data_valid" }} , 
 	{ "name": "fm_ROWS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_ROWS_c", "role": "fifo_cap" }} , 
 	{ "name": "fm_ROWS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS_c", "role": "full_n" }} , 
 	{ "name": "fm_ROWS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS_c", "role": "write" }} , 
 	{ "name": "fm_COLS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "din" }} , 
 	{ "name": "fm_COLS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "full_n" }} , 
 	{ "name": "fm_COLS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "35"],
		"CDFG" : "quant_ap_uint_256_ap_int_32_ap_int_8_32u_s",
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
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96", "Port" : "data_out1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fm_ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96", "Port" : "quant_out2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "quant_shift", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_shift_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_mul", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_mul_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1",
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
			{"Name" : "div_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "left_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_rounding_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "total_right_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_out2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "quant_out2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_100_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U37", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U38", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U39", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U40", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U41", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U42", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U43", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U44", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U45", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U46", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U47", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U48", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U49", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U50", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U51", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U52", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U53", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U54", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U55", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U56", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U57", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U58", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U59", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U60", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U61", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U62", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U63", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U64", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U65", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U66", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U67", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.mul_32s_16s_32_1_1_U68", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	quant_ap_uint_256_ap_int_32_ap_int_8_32u_s {
		data_out1 {Type I LastRead 1 FirstWrite -1}
		fm_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		quant_out2 {Type O LastRead -1 FirstWrite 2}
		quant_shift {Type I LastRead 0 FirstWrite -1}
		quant_mul {Type I LastRead 0 FirstWrite -1}
		fm_ROWS_c {Type O LastRead -1 FirstWrite 0}
		fm_COLS_c {Type O LastRead -1 FirstWrite 0}}
	quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_100_1 {
		div_cast {Type I LastRead 0 FirstWrite -1}
		data_out1 {Type I LastRead 1 FirstWrite -1}
		left_shift {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		conv13 {Type I LastRead 0 FirstWrite -1}
		pos_rounding_value {Type I LastRead 0 FirstWrite -1}
		total_right_shift {Type I LastRead 0 FirstWrite -1}
		quant_out2 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_out1 { ap_fifo {  { data_out1_dout fifo_port_we 0 1024 }  { data_out1_num_data_valid fifo_status_num_data_valid 0 7 }  { data_out1_fifo_cap fifo_update 0 7 }  { data_out1_empty_n fifo_status 0 1 }  { data_out1_read fifo_data 1 1 } } }
	fm_ROWS { ap_fifo {  { fm_ROWS_dout fifo_port_we 0 32 }  { fm_ROWS_num_data_valid fifo_status_num_data_valid 0 3 }  { fm_ROWS_fifo_cap fifo_update 0 3 }  { fm_ROWS_empty_n fifo_status 0 1 }  { fm_ROWS_read fifo_data 1 1 } } }
	fm_COLS { ap_fifo {  { fm_COLS_dout fifo_port_we 0 32 }  { fm_COLS_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_fifo_cap fifo_update 0 2 }  { fm_COLS_empty_n fifo_status 0 1 }  { fm_COLS_read fifo_data 1 1 } } }
	quant_out2 { ap_fifo {  { quant_out2_din fifo_port_we 1 256 }  { quant_out2_num_data_valid fifo_status_num_data_valid 0 2 }  { quant_out2_fifo_cap fifo_update 0 2 }  { quant_out2_full_n fifo_status 0 1 }  { quant_out2_write fifo_data 1 1 } } }
	quant_shift { ap_fifo {  { quant_shift_dout fifo_port_we 0 32 }  { quant_shift_num_data_valid fifo_status_num_data_valid 0 3 }  { quant_shift_fifo_cap fifo_update 0 3 }  { quant_shift_empty_n fifo_status 0 1 }  { quant_shift_read fifo_data 1 1 } } }
	quant_mul { ap_fifo {  { quant_mul_dout fifo_port_we 0 16 }  { quant_mul_num_data_valid fifo_status_num_data_valid 0 3 }  { quant_mul_fifo_cap fifo_update 0 3 }  { quant_mul_empty_n fifo_status 0 1 }  { quant_mul_read fifo_data 1 1 } } }
	fm_ROWS_c { ap_fifo {  { fm_ROWS_c_din fifo_port_we 1 32 }  { fm_ROWS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_ROWS_c_fifo_cap fifo_update 0 2 }  { fm_ROWS_c_full_n fifo_status 0 1 }  { fm_ROWS_c_write fifo_data 1 1 } } }
	fm_COLS_c { ap_fifo {  { fm_COLS_c_din fifo_port_we 1 32 }  { fm_COLS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_c_fifo_cap fifo_update 0 2 }  { fm_COLS_c_full_n fifo_status 0 1 }  { fm_COLS_c_write fifo_data 1 1 } } }
}
