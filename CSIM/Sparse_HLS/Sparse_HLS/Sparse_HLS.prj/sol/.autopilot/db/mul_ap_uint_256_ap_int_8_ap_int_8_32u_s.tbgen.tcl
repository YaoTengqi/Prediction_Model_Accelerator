set moduleName mul_ap_uint_256_ap_int_8_ap_int_8_32u_s
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
set C_modelName {mul<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ fm_ram int 256 regular {array 512 { 1 3 } 1 1 }  }
	{ idx_ram int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ count_ram int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ data_out1 int 256 regular {fifo 1 volatile }  }
	{ am_ROWS_c int 32 regular {fifo 1}  }
	{ fm_COLS_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_ram", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "idx_ram", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "count_ram", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_out1", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "am_ROWS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_COLS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ fm_ram_address0 sc_out sc_lv 9 signal 2 } 
	{ fm_ram_ce0 sc_out sc_logic 1 signal 2 } 
	{ fm_ram_q0 sc_in sc_lv 256 signal 2 } 
	{ idx_ram_address0 sc_out sc_lv 10 signal 3 } 
	{ idx_ram_ce0 sc_out sc_logic 1 signal 3 } 
	{ idx_ram_q0 sc_in sc_lv 8 signal 3 } 
	{ count_ram_address0 sc_out sc_lv 5 signal 4 } 
	{ count_ram_ce0 sc_out sc_logic 1 signal 4 } 
	{ count_ram_q0 sc_in sc_lv 8 signal 4 } 
	{ data_out1_din sc_out sc_lv 256 signal 5 } 
	{ data_out1_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ data_out1_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ data_out1_full_n sc_in sc_logic 1 signal 5 } 
	{ data_out1_write sc_out sc_logic 1 signal 5 } 
	{ am_ROWS_c_din sc_out sc_lv 32 signal 6 } 
	{ am_ROWS_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ am_ROWS_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ am_ROWS_c_full_n sc_in sc_logic 1 signal 6 } 
	{ am_ROWS_c_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "fm_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fm_ram", "role": "address0" }} , 
 	{ "name": "fm_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ram", "role": "ce0" }} , 
 	{ "name": "fm_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fm_ram", "role": "q0" }} , 
 	{ "name": "idx_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "idx_ram", "role": "address0" }} , 
 	{ "name": "idx_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_ram", "role": "ce0" }} , 
 	{ "name": "idx_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_ram", "role": "q0" }} , 
 	{ "name": "count_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "count_ram", "role": "address0" }} , 
 	{ "name": "count_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_ram", "role": "ce0" }} , 
 	{ "name": "count_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "count_ram", "role": "q0" }} , 
 	{ "name": "data_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_out1", "role": "din" }} , 
 	{ "name": "data_out1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "num_data_valid" }} , 
 	{ "name": "data_out1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "fifo_cap" }} , 
 	{ "name": "data_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "full_n" }} , 
 	{ "name": "data_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "write" }} , 
 	{ "name": "am_ROWS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "din" }} , 
 	{ "name": "am_ROWS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "num_data_valid" }} , 
 	{ "name": "am_ROWS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "fifo_cap" }} , 
 	{ "name": "am_ROWS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "full_n" }} , 
 	{ "name": "am_ROWS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "write" }} , 
 	{ "name": "fm_COLS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "din" }} , 
 	{ "name": "fm_COLS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "full_n" }} , 
 	{ "name": "fm_COLS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mul_ap_uint_256_ap_int_8_ap_int_8_32u_s",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "fm_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "idx_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "count_ram", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "data_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "data_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "am_ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "am_ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	mul_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		fm_ram {Type I LastRead 5 FirstWrite -1}
		idx_ram {Type I LastRead 4 FirstWrite -1}
		count_ram {Type I LastRead 2 FirstWrite -1}
		data_out1 {Type O LastRead -1 FirstWrite 4}
		am_ROWS_c {Type O LastRead -1 FirstWrite 0}
		fm_COLS_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	fm_ram { ap_memory {  { fm_ram_address0 mem_address 1 9 }  { fm_ram_ce0 mem_ce 1 1 }  { fm_ram_q0 in_data 0 256 } } }
	idx_ram { ap_memory {  { idx_ram_address0 mem_address 1 10 }  { idx_ram_ce0 mem_ce 1 1 }  { idx_ram_q0 in_data 0 8 } } }
	count_ram { ap_memory {  { count_ram_address0 mem_address 1 5 }  { count_ram_ce0 mem_ce 1 1 }  { count_ram_q0 in_data 0 8 } } }
	data_out1 { ap_fifo {  { data_out1_din fifo_port_we 1 256 }  { data_out1_num_data_valid fifo_status_num_data_valid 0 7 }  { data_out1_fifo_cap fifo_update 0 7 }  { data_out1_full_n fifo_status 0 1 }  { data_out1_write fifo_data 1 1 } } }
	am_ROWS_c { ap_fifo {  { am_ROWS_c_din fifo_port_we 1 32 }  { am_ROWS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { am_ROWS_c_fifo_cap fifo_update 0 2 }  { am_ROWS_c_full_n fifo_status 0 1 }  { am_ROWS_c_write fifo_data 1 1 } } }
	fm_COLS_c { ap_fifo {  { fm_COLS_c_din fifo_port_we 1 32 }  { fm_COLS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_c_fifo_cap fifo_update 0 2 }  { fm_COLS_c_full_n fifo_status 0 1 }  { fm_COLS_c_write fifo_data 1 1 } } }
}
