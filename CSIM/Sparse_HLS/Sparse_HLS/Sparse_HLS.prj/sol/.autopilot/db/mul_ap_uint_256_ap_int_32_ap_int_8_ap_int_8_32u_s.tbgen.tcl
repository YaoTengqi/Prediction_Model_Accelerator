set moduleName mul_ap_uint_256_ap_int_32_ap_int_8_ap_int_8_32u_s
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
set C_modelName {mul<ap_uint<256>, ap_int<32>, ap_int<8>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ am_ROWS int 32 regular {fifo 0}  }
	{ fm_COLS int 32 regular {fifo 0}  }
	{ fm_stream3 int 256 regular {fifo 0 volatile }  }
	{ idx_stream4 int 8 regular {fifo 0 volatile }  }
	{ count_stream5 int 8 regular {fifo 0 volatile }  }
	{ data_out1 int 1024 regular {fifo 1 volatile }  }
	{ fm_COLS_c12 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "am_ROWS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_COLS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_stream3", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "idx_stream4", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "count_stream5", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_COLS_c12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ am_ROWS_dout sc_in sc_lv 32 signal 0 } 
	{ am_ROWS_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ am_ROWS_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ am_ROWS_empty_n sc_in sc_logic 1 signal 0 } 
	{ am_ROWS_read sc_out sc_logic 1 signal 0 } 
	{ fm_COLS_dout sc_in sc_lv 32 signal 1 } 
	{ fm_COLS_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ fm_COLS_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ fm_COLS_empty_n sc_in sc_logic 1 signal 1 } 
	{ fm_COLS_read sc_out sc_logic 1 signal 1 } 
	{ fm_stream3_dout sc_in sc_lv 256 signal 2 } 
	{ fm_stream3_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ fm_stream3_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ fm_stream3_empty_n sc_in sc_logic 1 signal 2 } 
	{ fm_stream3_read sc_out sc_logic 1 signal 2 } 
	{ idx_stream4_dout sc_in sc_lv 8 signal 3 } 
	{ idx_stream4_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ idx_stream4_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ idx_stream4_empty_n sc_in sc_logic 1 signal 3 } 
	{ idx_stream4_read sc_out sc_logic 1 signal 3 } 
	{ count_stream5_dout sc_in sc_lv 8 signal 4 } 
	{ count_stream5_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ count_stream5_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ count_stream5_empty_n sc_in sc_logic 1 signal 4 } 
	{ count_stream5_read sc_out sc_logic 1 signal 4 } 
	{ data_out1_din sc_out sc_lv 1024 signal 5 } 
	{ data_out1_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ data_out1_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ data_out1_full_n sc_in sc_logic 1 signal 5 } 
	{ data_out1_write sc_out sc_logic 1 signal 5 } 
	{ fm_COLS_c12_din sc_out sc_lv 32 signal 6 } 
	{ fm_COLS_c12_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ fm_COLS_c12_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ fm_COLS_c12_full_n sc_in sc_logic 1 signal 6 } 
	{ fm_COLS_c12_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "am_ROWS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_ROWS", "role": "dout" }} , 
 	{ "name": "am_ROWS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS", "role": "num_data_valid" }} , 
 	{ "name": "am_ROWS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS", "role": "fifo_cap" }} , 
 	{ "name": "am_ROWS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS", "role": "empty_n" }} , 
 	{ "name": "am_ROWS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS", "role": "read" }} , 
 	{ "name": "fm_COLS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS", "role": "dout" }} , 
 	{ "name": "fm_COLS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS", "role": "empty_n" }} , 
 	{ "name": "fm_COLS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS", "role": "read" }} , 
 	{ "name": "fm_stream3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fm_stream3", "role": "dout" }} , 
 	{ "name": "fm_stream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm_stream3", "role": "num_data_valid" }} , 
 	{ "name": "fm_stream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm_stream3", "role": "fifo_cap" }} , 
 	{ "name": "fm_stream3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_stream3", "role": "empty_n" }} , 
 	{ "name": "fm_stream3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_stream3", "role": "read" }} , 
 	{ "name": "idx_stream4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream4", "role": "dout" }} , 
 	{ "name": "idx_stream4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream4", "role": "num_data_valid" }} , 
 	{ "name": "idx_stream4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream4", "role": "fifo_cap" }} , 
 	{ "name": "idx_stream4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_stream4", "role": "empty_n" }} , 
 	{ "name": "idx_stream4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_stream4", "role": "read" }} , 
 	{ "name": "count_stream5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "count_stream5", "role": "dout" }} , 
 	{ "name": "count_stream5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "count_stream5", "role": "num_data_valid" }} , 
 	{ "name": "count_stream5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "count_stream5", "role": "fifo_cap" }} , 
 	{ "name": "count_stream5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_stream5", "role": "empty_n" }} , 
 	{ "name": "count_stream5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_stream5", "role": "read" }} , 
 	{ "name": "data_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "data_out1", "role": "din" }} , 
 	{ "name": "data_out1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "num_data_valid" }} , 
 	{ "name": "data_out1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "fifo_cap" }} , 
 	{ "name": "data_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "full_n" }} , 
 	{ "name": "data_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "write" }} , 
 	{ "name": "fm_COLS_c12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS_c12", "role": "din" }} , 
 	{ "name": "fm_COLS_c12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c12", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_c12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c12", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_c12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c12", "role": "full_n" }} , 
 	{ "name": "fm_COLS_c12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c12", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mul_ap_uint_256_ap_int_32_ap_int_8_ap_int_8_32u_s",
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
			{"Name" : "am_ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "am_ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_stream3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fm_stream3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "idx_stream4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "idx_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "count_stream5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "count_stream5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_c12_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_66_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	mul_ap_uint_256_ap_int_32_ap_int_8_ap_int_8_32u_s {
		am_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		fm_stream3 {Type I LastRead 3 FirstWrite -1}
		idx_stream4 {Type I LastRead 3 FirstWrite -1}
		count_stream5 {Type I LastRead 2 FirstWrite -1}
		data_out1 {Type O LastRead -1 FirstWrite 3}
		fm_COLS_c12 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	am_ROWS { ap_fifo {  { am_ROWS_dout fifo_port_we 0 32 }  { am_ROWS_num_data_valid fifo_status_num_data_valid 0 2 }  { am_ROWS_fifo_cap fifo_update 0 2 }  { am_ROWS_empty_n fifo_status 0 1 }  { am_ROWS_read fifo_data 1 1 } } }
	fm_COLS { ap_fifo {  { fm_COLS_dout fifo_port_we 0 32 }  { fm_COLS_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_fifo_cap fifo_update 0 2 }  { fm_COLS_empty_n fifo_status 0 1 }  { fm_COLS_read fifo_data 1 1 } } }
	fm_stream3 { ap_fifo {  { fm_stream3_dout fifo_port_we 0 256 }  { fm_stream3_num_data_valid fifo_status_num_data_valid 0 8 }  { fm_stream3_fifo_cap fifo_update 0 8 }  { fm_stream3_empty_n fifo_status 0 1 }  { fm_stream3_read fifo_data 1 1 } } }
	idx_stream4 { ap_fifo {  { idx_stream4_dout fifo_port_we 0 8 }  { idx_stream4_num_data_valid fifo_status_num_data_valid 0 8 }  { idx_stream4_fifo_cap fifo_update 0 8 }  { idx_stream4_empty_n fifo_status 0 1 }  { idx_stream4_read fifo_data 1 1 } } }
	count_stream5 { ap_fifo {  { count_stream5_dout fifo_port_we 0 8 }  { count_stream5_num_data_valid fifo_status_num_data_valid 0 7 }  { count_stream5_fifo_cap fifo_update 0 7 }  { count_stream5_empty_n fifo_status 0 1 }  { count_stream5_read fifo_data 1 1 } } }
	data_out1 { ap_fifo {  { data_out1_din fifo_port_we 1 1024 }  { data_out1_num_data_valid fifo_status_num_data_valid 0 7 }  { data_out1_fifo_cap fifo_update 0 7 }  { data_out1_full_n fifo_status 0 1 }  { data_out1_write fifo_data 1 1 } } }
	fm_COLS_c12 { ap_fifo {  { fm_COLS_c12_din fifo_port_we 1 32 }  { fm_COLS_c12_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_c12_fifo_cap fifo_update 0 2 }  { fm_COLS_c12_full_n fifo_status 0 1 }  { fm_COLS_c12_write fifo_data 1 1 } } }
}
