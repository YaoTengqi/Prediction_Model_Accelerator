set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_data_addr3 int 32 regular  }
	{ output_data_addr3_c int 32 regular {fifo 1}  }
	{ outputs int 64 regular  }
	{ outputs_c int 64 regular {fifo 1}  }
	{ quant_shift int 32 regular  }
	{ quant_shift_c int 32 regular {fifo 1}  }
	{ quant_mul int 16 regular  }
	{ quant_mul_c int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_data_addr3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_data_addr3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outputs_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "quant_shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "quant_shift_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "quant_mul", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "quant_mul_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ output_data_addr3 sc_in sc_lv 32 signal 0 } 
	{ output_data_addr3_c_din sc_out sc_lv 32 signal 1 } 
	{ output_data_addr3_c_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ output_data_addr3_c_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ output_data_addr3_c_full_n sc_in sc_logic 1 signal 1 } 
	{ output_data_addr3_c_write sc_out sc_logic 1 signal 1 } 
	{ outputs sc_in sc_lv 64 signal 2 } 
	{ outputs_c_din sc_out sc_lv 64 signal 3 } 
	{ outputs_c_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ outputs_c_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ outputs_c_full_n sc_in sc_logic 1 signal 3 } 
	{ outputs_c_write sc_out sc_logic 1 signal 3 } 
	{ quant_shift sc_in sc_lv 32 signal 4 } 
	{ quant_shift_c_din sc_out sc_lv 32 signal 5 } 
	{ quant_shift_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ quant_shift_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ quant_shift_c_full_n sc_in sc_logic 1 signal 5 } 
	{ quant_shift_c_write sc_out sc_logic 1 signal 5 } 
	{ quant_mul sc_in sc_lv 16 signal 6 } 
	{ quant_mul_c_din sc_out sc_lv 16 signal 7 } 
	{ quant_mul_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ quant_mul_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ quant_mul_c_full_n sc_in sc_logic 1 signal 7 } 
	{ quant_mul_c_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "output_data_addr3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_data_addr3", "role": "default" }} , 
 	{ "name": "output_data_addr3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "din" }} , 
 	{ "name": "output_data_addr3_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "num_data_valid" }} , 
 	{ "name": "output_data_addr3_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "fifo_cap" }} , 
 	{ "name": "output_data_addr3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "full_n" }} , 
 	{ "name": "output_data_addr3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "write" }} , 
 	{ "name": "outputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs", "role": "default" }} , 
 	{ "name": "outputs_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs_c", "role": "din" }} , 
 	{ "name": "outputs_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputs_c", "role": "num_data_valid" }} , 
 	{ "name": "outputs_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputs_c", "role": "fifo_cap" }} , 
 	{ "name": "outputs_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_c", "role": "full_n" }} , 
 	{ "name": "outputs_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_c", "role": "write" }} , 
 	{ "name": "quant_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "quant_shift", "role": "default" }} , 
 	{ "name": "quant_shift_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "quant_shift_c", "role": "din" }} , 
 	{ "name": "quant_shift_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_shift_c", "role": "num_data_valid" }} , 
 	{ "name": "quant_shift_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_shift_c", "role": "fifo_cap" }} , 
 	{ "name": "quant_shift_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_shift_c", "role": "full_n" }} , 
 	{ "name": "quant_shift_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_shift_c", "role": "write" }} , 
 	{ "name": "quant_mul", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "quant_mul", "role": "default" }} , 
 	{ "name": "quant_mul_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "quant_mul_c", "role": "din" }} , 
 	{ "name": "quant_mul_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_mul_c", "role": "num_data_valid" }} , 
 	{ "name": "quant_mul_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "quant_mul_c", "role": "fifo_cap" }} , 
 	{ "name": "quant_mul_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_mul_c", "role": "full_n" }} , 
 	{ "name": "quant_mul_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "quant_mul_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_data_addr3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_addr3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_shift_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_shift_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "quant_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_mul_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "quant_mul_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3_c {Type O LastRead -1 FirstWrite 0}
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}
		quant_shift {Type I LastRead 0 FirstWrite -1}
		quant_shift_c {Type O LastRead -1 FirstWrite 0}
		quant_mul {Type I LastRead 0 FirstWrite -1}
		quant_mul_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_data_addr3 { ap_none {  { output_data_addr3 in_data 0 32 } } }
	output_data_addr3_c { ap_fifo {  { output_data_addr3_c_din fifo_port_we 1 32 }  { output_data_addr3_c_num_data_valid fifo_status_num_data_valid 0 4 }  { output_data_addr3_c_fifo_cap fifo_update 0 4 }  { output_data_addr3_c_full_n fifo_status 0 1 }  { output_data_addr3_c_write fifo_data 1 1 } } }
	outputs { ap_none {  { outputs in_data 0 64 } } }
	outputs_c { ap_fifo {  { outputs_c_din fifo_port_we 1 64 }  { outputs_c_num_data_valid fifo_status_num_data_valid 0 4 }  { outputs_c_fifo_cap fifo_update 0 4 }  { outputs_c_full_n fifo_status 0 1 }  { outputs_c_write fifo_data 1 1 } } }
	quant_shift { ap_none {  { quant_shift in_data 0 32 } } }
	quant_shift_c { ap_fifo {  { quant_shift_c_din fifo_port_we 1 32 }  { quant_shift_c_num_data_valid fifo_status_num_data_valid 0 3 }  { quant_shift_c_fifo_cap fifo_update 0 3 }  { quant_shift_c_full_n fifo_status 0 1 }  { quant_shift_c_write fifo_data 1 1 } } }
	quant_mul { ap_none {  { quant_mul in_data 0 16 } } }
	quant_mul_c { ap_fifo {  { quant_mul_c_din fifo_port_we 1 16 }  { quant_mul_c_num_data_valid fifo_status_num_data_valid 0 3 }  { quant_mul_c_fifo_cap fifo_update 0 3 }  { quant_mul_c_full_n fifo_status 0 1 }  { quant_mul_c_write fifo_data 1 1 } } }
}
