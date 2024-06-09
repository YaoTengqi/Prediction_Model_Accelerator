set moduleName quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_113_1
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
set C_modelName {quant<ap_uint<256>, ap_int<32>, ap_int<8>, 32u>_Pipeline_VITIS_LOOP_113_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ div_cast int 27 regular  }
	{ data_out1 int 1024 regular {fifo 0 volatile }  }
	{ sh_prom int 32 regular  }
	{ cmp12 int 1 regular  }
	{ conv int 32 regular  }
	{ pos_rounding_value int 64 regular  }
	{ sh_prom18 int 32 regular  }
	{ quant_out2 int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "div_cast", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "data_out1", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "sh_prom", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cmp12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pos_rounding_value", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sh_prom18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "quant_out2", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out1_dout sc_in sc_lv 1024 signal 1 } 
	{ data_out1_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ data_out1_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ data_out1_empty_n sc_in sc_logic 1 signal 1 } 
	{ data_out1_read sc_out sc_logic 1 signal 1 } 
	{ quant_out2_din sc_out sc_lv 256 signal 7 } 
	{ quant_out2_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ quant_out2_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ quant_out2_full_n sc_in sc_logic 1 signal 7 } 
	{ quant_out2_write sc_out sc_logic 1 signal 7 } 
	{ div_cast sc_in sc_lv 27 signal 0 } 
	{ sh_prom sc_in sc_lv 32 signal 2 } 
	{ cmp12 sc_in sc_lv 1 signal 3 } 
	{ conv sc_in sc_lv 32 signal 4 } 
	{ pos_rounding_value sc_in sc_lv 64 signal 5 } 
	{ sh_prom18 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "data_out1", "role": "dout" }} , 
 	{ "name": "data_out1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "num_data_valid" }} , 
 	{ "name": "data_out1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data_out1", "role": "fifo_cap" }} , 
 	{ "name": "data_out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "empty_n" }} , 
 	{ "name": "data_out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out1", "role": "read" }} , 
 	{ "name": "quant_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "quant_out2", "role": "din" }} , 
 	{ "name": "quant_out2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "quant_out2", "role": "num_data_valid" }} , 
 	{ "name": "quant_out2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "quant_out2", "role": "fifo_cap" }} , 
 	{ "name": "quant_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out2", "role": "full_n" }} , 
 	{ "name": "quant_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_out2", "role": "write" }} , 
 	{ "name": "div_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "div_cast", "role": "default" }} , 
 	{ "name": "sh_prom", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sh_prom", "role": "default" }} , 
 	{ "name": "cmp12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp12", "role": "default" }} , 
 	{ "name": "conv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv", "role": "default" }} , 
 	{ "name": "pos_rounding_value", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pos_rounding_value", "role": "default" }} , 
 	{ "name": "sh_prom18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sh_prom18", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_113_1",
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
			{"Name" : "sh_prom", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_rounding_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "sh_prom18", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_out2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "quant_out2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U40", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U41", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U42", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U43", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U44", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U45", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U46", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U47", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U48", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U49", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U50", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U51", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U52", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U53", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U54", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U55", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U56", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U57", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U58", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U59", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U60", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U61", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U62", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U63", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U64", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U65", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U66", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U67", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U68", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U69", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U70", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_32s_64_1_1_U71", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	quant_ap_uint_256_ap_int_32_ap_int_8_32u_Pipeline_VITIS_LOOP_113_1 {
		div_cast {Type I LastRead 0 FirstWrite -1}
		data_out1 {Type I LastRead 1 FirstWrite -1}
		sh_prom {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		pos_rounding_value {Type I LastRead 0 FirstWrite -1}
		sh_prom18 {Type I LastRead 0 FirstWrite -1}
		quant_out2 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	div_cast { ap_none {  { div_cast in_data 0 27 } } }
	data_out1 { ap_fifo {  { data_out1_dout fifo_port_we 0 1024 }  { data_out1_num_data_valid fifo_status_num_data_valid 0 7 }  { data_out1_fifo_cap fifo_update 0 7 }  { data_out1_empty_n fifo_status 0 1 }  { data_out1_read fifo_data 1 1 } } }
	sh_prom { ap_none {  { sh_prom in_data 0 32 } } }
	cmp12 { ap_none {  { cmp12 in_data 0 1 } } }
	conv { ap_none {  { conv in_data 0 32 } } }
	pos_rounding_value { ap_none {  { pos_rounding_value in_data 0 64 } } }
	sh_prom18 { ap_none {  { sh_prom18 in_data 0 32 } } }
	quant_out2 { ap_fifo {  { quant_out2_din fifo_port_we 1 256 }  { quant_out2_num_data_valid fifo_status_num_data_valid 0 2 }  { quant_out2_fifo_cap fifo_update 0 2 }  { quant_out2_full_n fifo_status 0 1 }  { quant_out2_write fifo_data 1 1 } } }
}
