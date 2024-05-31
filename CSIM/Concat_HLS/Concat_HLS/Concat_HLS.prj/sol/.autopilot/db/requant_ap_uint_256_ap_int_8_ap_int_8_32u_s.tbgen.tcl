set moduleName requant_ap_uint_256_ap_int_8_ap_int_8_32u_s
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
set C_modelName {requant<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream int 256 regular {fifo 0 volatile }  }
	{ ROWS int 32 regular {fifo 0}  }
	{ COLS int 32 regular {fifo 0}  }
	{ mul1 int 32 regular {fifo 0}  }
	{ shift1 int 32 regular {fifo 0}  }
	{ mul2 int 32 regular {fifo 0}  }
	{ shift2 int 32 regular {fifo 0}  }
	{ output_stream int 256 regular {fifo 1 volatile }  }
	{ ROWS_c int 32 regular {fifo 1}  }
	{ COLS_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ROWS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "COLS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shift1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shift2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ROWS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "COLS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream_dout sc_in sc_lv 256 signal 0 } 
	{ input_stream_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ input_stream_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_stream_read sc_out sc_logic 1 signal 0 } 
	{ ROWS_dout sc_in sc_lv 32 signal 1 } 
	{ ROWS_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ ROWS_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ ROWS_empty_n sc_in sc_logic 1 signal 1 } 
	{ ROWS_read sc_out sc_logic 1 signal 1 } 
	{ COLS_dout sc_in sc_lv 32 signal 2 } 
	{ COLS_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ COLS_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ COLS_empty_n sc_in sc_logic 1 signal 2 } 
	{ COLS_read sc_out sc_logic 1 signal 2 } 
	{ mul1_dout sc_in sc_lv 32 signal 3 } 
	{ mul1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ mul1_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ mul1_empty_n sc_in sc_logic 1 signal 3 } 
	{ mul1_read sc_out sc_logic 1 signal 3 } 
	{ shift1_dout sc_in sc_lv 32 signal 4 } 
	{ shift1_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ shift1_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ shift1_empty_n sc_in sc_logic 1 signal 4 } 
	{ shift1_read sc_out sc_logic 1 signal 4 } 
	{ mul2_dout sc_in sc_lv 32 signal 5 } 
	{ mul2_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ mul2_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ mul2_empty_n sc_in sc_logic 1 signal 5 } 
	{ mul2_read sc_out sc_logic 1 signal 5 } 
	{ shift2_dout sc_in sc_lv 32 signal 6 } 
	{ shift2_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ shift2_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ shift2_empty_n sc_in sc_logic 1 signal 6 } 
	{ shift2_read sc_out sc_logic 1 signal 6 } 
	{ output_stream_din sc_out sc_lv 256 signal 7 } 
	{ output_stream_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ output_stream_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ output_stream_full_n sc_in sc_logic 1 signal 7 } 
	{ output_stream_write sc_out sc_logic 1 signal 7 } 
	{ ROWS_c_din sc_out sc_lv 32 signal 8 } 
	{ ROWS_c_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ ROWS_c_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ ROWS_c_full_n sc_in sc_logic 1 signal 8 } 
	{ ROWS_c_write sc_out sc_logic 1 signal 8 } 
	{ COLS_c_din sc_out sc_lv 32 signal 9 } 
	{ COLS_c_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ COLS_c_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ COLS_c_full_n sc_in sc_logic 1 signal 9 } 
	{ COLS_c_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "num_data_valid" }} , 
 	{ "name": "input_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "fifo_cap" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
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
 	{ "name": "mul1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul1", "role": "dout" }} , 
 	{ "name": "mul1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul1", "role": "num_data_valid" }} , 
 	{ "name": "mul1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul1", "role": "fifo_cap" }} , 
 	{ "name": "mul1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul1", "role": "empty_n" }} , 
 	{ "name": "mul1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul1", "role": "read" }} , 
 	{ "name": "shift1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift1", "role": "dout" }} , 
 	{ "name": "shift1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift1", "role": "num_data_valid" }} , 
 	{ "name": "shift1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift1", "role": "fifo_cap" }} , 
 	{ "name": "shift1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift1", "role": "empty_n" }} , 
 	{ "name": "shift1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift1", "role": "read" }} , 
 	{ "name": "mul2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul2", "role": "dout" }} , 
 	{ "name": "mul2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul2", "role": "num_data_valid" }} , 
 	{ "name": "mul2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul2", "role": "fifo_cap" }} , 
 	{ "name": "mul2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul2", "role": "empty_n" }} , 
 	{ "name": "mul2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul2", "role": "read" }} , 
 	{ "name": "shift2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift2", "role": "dout" }} , 
 	{ "name": "shift2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift2", "role": "num_data_valid" }} , 
 	{ "name": "shift2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift2", "role": "fifo_cap" }} , 
 	{ "name": "shift2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift2", "role": "empty_n" }} , 
 	{ "name": "shift2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift2", "role": "read" }} , 
 	{ "name": "output_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "output_stream", "role": "din" }} , 
 	{ "name": "output_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "output_stream", "role": "num_data_valid" }} , 
 	{ "name": "output_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "output_stream", "role": "fifo_cap" }} , 
 	{ "name": "output_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream", "role": "full_n" }} , 
 	{ "name": "output_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "requant_ap_uint_256_ap_int_8_ap_int_8_32u_s",
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
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shift1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shift1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shift2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shift2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "output_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_68_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U24", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U25", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U26", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U27", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U28", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U29", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U30", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U31", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U32", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U33", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U34", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U35", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U36", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U37", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U38", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U39", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U40", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U41", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U42", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U43", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U44", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U45", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U46", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U47", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U48", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U49", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U50", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U51", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U52", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U53", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U54", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U55", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U56", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U57", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U58", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U59", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U60", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U61", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U62", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U63", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U64", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U65", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U66", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U67", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U68", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U69", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U70", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U71", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U72", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U73", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U74", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U75", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U76", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U77", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U78", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U79", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U80", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U81", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U82", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U83", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U84", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U85", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U86", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U87", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	requant_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		input_stream {Type I LastRead 2 FirstWrite -1}
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		mul1 {Type I LastRead 0 FirstWrite -1}
		shift1 {Type I LastRead 0 FirstWrite -1}
		mul2 {Type I LastRead 0 FirstWrite -1}
		shift2 {Type I LastRead 0 FirstWrite -1}
		output_stream {Type O LastRead -1 FirstWrite 3}
		ROWS_c {Type O LastRead -1 FirstWrite 0}
		COLS_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream { ap_fifo {  { input_stream_dout fifo_port_we 0 256 }  { input_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { input_stream_fifo_cap fifo_update 0 7 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_data 1 1 } } }
	ROWS { ap_fifo {  { ROWS_dout fifo_port_we 0 32 }  { ROWS_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_fifo_cap fifo_update 0 2 }  { ROWS_empty_n fifo_status 0 1 }  { ROWS_read fifo_data 1 1 } } }
	COLS { ap_fifo {  { COLS_dout fifo_port_we 0 32 }  { COLS_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_fifo_cap fifo_update 0 2 }  { COLS_empty_n fifo_status 0 1 }  { COLS_read fifo_data 1 1 } } }
	mul1 { ap_fifo {  { mul1_dout fifo_port_we 0 32 }  { mul1_num_data_valid fifo_status_num_data_valid 0 3 }  { mul1_fifo_cap fifo_update 0 3 }  { mul1_empty_n fifo_status 0 1 }  { mul1_read fifo_data 1 1 } } }
	shift1 { ap_fifo {  { shift1_dout fifo_port_we 0 32 }  { shift1_num_data_valid fifo_status_num_data_valid 0 3 }  { shift1_fifo_cap fifo_update 0 3 }  { shift1_empty_n fifo_status 0 1 }  { shift1_read fifo_data 1 1 } } }
	mul2 { ap_fifo {  { mul2_dout fifo_port_we 0 32 }  { mul2_num_data_valid fifo_status_num_data_valid 0 3 }  { mul2_fifo_cap fifo_update 0 3 }  { mul2_empty_n fifo_status 0 1 }  { mul2_read fifo_data 1 1 } } }
	shift2 { ap_fifo {  { shift2_dout fifo_port_we 0 32 }  { shift2_num_data_valid fifo_status_num_data_valid 0 3 }  { shift2_fifo_cap fifo_update 0 3 }  { shift2_empty_n fifo_status 0 1 }  { shift2_read fifo_data 1 1 } } }
	output_stream { ap_fifo {  { output_stream_din fifo_port_we 1 256 }  { output_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { output_stream_fifo_cap fifo_update 0 7 }  { output_stream_full_n fifo_status 0 1 }  { output_stream_write fifo_data 1 1 } } }
	ROWS_c { ap_fifo {  { ROWS_c_din fifo_port_we 1 32 }  { ROWS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_c_fifo_cap fifo_update 0 2 }  { ROWS_c_full_n fifo_status 0 1 }  { ROWS_c_write fifo_data 1 1 } } }
	COLS_c { ap_fifo {  { COLS_c_din fifo_port_we 1 32 }  { COLS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_c_fifo_cap fifo_update 0 2 }  { COLS_c_full_n fifo_status 0 1 }  { COLS_c_write fifo_data 1 1 } } }
}
