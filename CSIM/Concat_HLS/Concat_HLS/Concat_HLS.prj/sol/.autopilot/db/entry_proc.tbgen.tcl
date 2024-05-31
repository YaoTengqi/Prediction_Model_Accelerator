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
	{ mul1 int 32 regular  }
	{ mul1_c int 32 regular {fifo 1}  }
	{ shift1 int 32 regular  }
	{ shift1_c int 32 regular {fifo 1}  }
	{ mul2 int 32 regular  }
	{ mul2_c int 32 regular {fifo 1}  }
	{ shift2 int 32 regular  }
	{ shift2_c int 32 regular {fifo 1}  }
	{ outputs int 64 regular  }
	{ outputs_c int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_data_addr3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_data_addr3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shift1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shift1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mul2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "shift2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "shift2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "outputs_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
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
	{ output_data_addr3_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ output_data_addr3_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ output_data_addr3_c_full_n sc_in sc_logic 1 signal 1 } 
	{ output_data_addr3_c_write sc_out sc_logic 1 signal 1 } 
	{ mul1 sc_in sc_lv 32 signal 2 } 
	{ mul1_c_din sc_out sc_lv 32 signal 3 } 
	{ mul1_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ mul1_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ mul1_c_full_n sc_in sc_logic 1 signal 3 } 
	{ mul1_c_write sc_out sc_logic 1 signal 3 } 
	{ shift1 sc_in sc_lv 32 signal 4 } 
	{ shift1_c_din sc_out sc_lv 32 signal 5 } 
	{ shift1_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ shift1_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ shift1_c_full_n sc_in sc_logic 1 signal 5 } 
	{ shift1_c_write sc_out sc_logic 1 signal 5 } 
	{ mul2 sc_in sc_lv 32 signal 6 } 
	{ mul2_c_din sc_out sc_lv 32 signal 7 } 
	{ mul2_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ mul2_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ mul2_c_full_n sc_in sc_logic 1 signal 7 } 
	{ mul2_c_write sc_out sc_logic 1 signal 7 } 
	{ shift2 sc_in sc_lv 32 signal 8 } 
	{ shift2_c_din sc_out sc_lv 32 signal 9 } 
	{ shift2_c_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ shift2_c_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ shift2_c_full_n sc_in sc_logic 1 signal 9 } 
	{ shift2_c_write sc_out sc_logic 1 signal 9 } 
	{ outputs sc_in sc_lv 64 signal 10 } 
	{ outputs_c_din sc_out sc_lv 64 signal 11 } 
	{ outputs_c_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ outputs_c_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ outputs_c_full_n sc_in sc_logic 1 signal 11 } 
	{ outputs_c_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "output_data_addr3_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "num_data_valid" }} , 
 	{ "name": "output_data_addr3_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "fifo_cap" }} , 
 	{ "name": "output_data_addr3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "full_n" }} , 
 	{ "name": "output_data_addr3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_data_addr3_c", "role": "write" }} , 
 	{ "name": "mul1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul1", "role": "default" }} , 
 	{ "name": "mul1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul1_c", "role": "din" }} , 
 	{ "name": "mul1_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul1_c", "role": "num_data_valid" }} , 
 	{ "name": "mul1_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul1_c", "role": "fifo_cap" }} , 
 	{ "name": "mul1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul1_c", "role": "full_n" }} , 
 	{ "name": "mul1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul1_c", "role": "write" }} , 
 	{ "name": "shift1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift1", "role": "default" }} , 
 	{ "name": "shift1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift1_c", "role": "din" }} , 
 	{ "name": "shift1_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift1_c", "role": "num_data_valid" }} , 
 	{ "name": "shift1_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift1_c", "role": "fifo_cap" }} , 
 	{ "name": "shift1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift1_c", "role": "full_n" }} , 
 	{ "name": "shift1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift1_c", "role": "write" }} , 
 	{ "name": "mul2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul2", "role": "default" }} , 
 	{ "name": "mul2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul2_c", "role": "din" }} , 
 	{ "name": "mul2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul2_c", "role": "num_data_valid" }} , 
 	{ "name": "mul2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mul2_c", "role": "fifo_cap" }} , 
 	{ "name": "mul2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul2_c", "role": "full_n" }} , 
 	{ "name": "mul2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mul2_c", "role": "write" }} , 
 	{ "name": "shift2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift2", "role": "default" }} , 
 	{ "name": "shift2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift2_c", "role": "din" }} , 
 	{ "name": "shift2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift2_c", "role": "num_data_valid" }} , 
 	{ "name": "shift2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shift2_c", "role": "fifo_cap" }} , 
 	{ "name": "shift2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift2_c", "role": "full_n" }} , 
 	{ "name": "shift2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "shift2_c", "role": "write" }} , 
 	{ "name": "outputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs", "role": "default" }} , 
 	{ "name": "outputs_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs_c", "role": "din" }} , 
 	{ "name": "outputs_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outputs_c", "role": "num_data_valid" }} , 
 	{ "name": "outputs_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outputs_c", "role": "fifo_cap" }} , 
 	{ "name": "outputs_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_c", "role": "full_n" }} , 
 	{ "name": "outputs_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs_c", "role": "write" }}  ]}

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
			{"Name" : "output_data_addr3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_data_addr3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shift1", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shift1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mul2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mul2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "shift2", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "shift2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		output_data_addr3 {Type I LastRead 0 FirstWrite -1}
		output_data_addr3_c {Type O LastRead -1 FirstWrite 0}
		mul1 {Type I LastRead 0 FirstWrite -1}
		mul1_c {Type O LastRead -1 FirstWrite 0}
		shift1 {Type I LastRead 0 FirstWrite -1}
		shift1_c {Type O LastRead -1 FirstWrite 0}
		mul2 {Type I LastRead 0 FirstWrite -1}
		mul2_c {Type O LastRead -1 FirstWrite 0}
		shift2 {Type I LastRead 0 FirstWrite -1}
		shift2_c {Type O LastRead -1 FirstWrite 0}
		outputs {Type I LastRead 0 FirstWrite -1}
		outputs_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_data_addr3 { ap_none {  { output_data_addr3 in_data 0 32 } } }
	output_data_addr3_c { ap_fifo {  { output_data_addr3_c_din fifo_port_we 1 32 }  { output_data_addr3_c_num_data_valid fifo_status_num_data_valid 0 3 }  { output_data_addr3_c_fifo_cap fifo_update 0 3 }  { output_data_addr3_c_full_n fifo_status 0 1 }  { output_data_addr3_c_write fifo_data 1 1 } } }
	mul1 { ap_none {  { mul1 in_data 0 32 } } }
	mul1_c { ap_fifo {  { mul1_c_din fifo_port_we 1 32 }  { mul1_c_num_data_valid fifo_status_num_data_valid 0 3 }  { mul1_c_fifo_cap fifo_update 0 3 }  { mul1_c_full_n fifo_status 0 1 }  { mul1_c_write fifo_data 1 1 } } }
	shift1 { ap_none {  { shift1 in_data 0 32 } } }
	shift1_c { ap_fifo {  { shift1_c_din fifo_port_we 1 32 }  { shift1_c_num_data_valid fifo_status_num_data_valid 0 3 }  { shift1_c_fifo_cap fifo_update 0 3 }  { shift1_c_full_n fifo_status 0 1 }  { shift1_c_write fifo_data 1 1 } } }
	mul2 { ap_none {  { mul2 in_data 0 32 } } }
	mul2_c { ap_fifo {  { mul2_c_din fifo_port_we 1 32 }  { mul2_c_num_data_valid fifo_status_num_data_valid 0 3 }  { mul2_c_fifo_cap fifo_update 0 3 }  { mul2_c_full_n fifo_status 0 1 }  { mul2_c_write fifo_data 1 1 } } }
	shift2 { ap_none {  { shift2 in_data 0 32 } } }
	shift2_c { ap_fifo {  { shift2_c_din fifo_port_we 1 32 }  { shift2_c_num_data_valid fifo_status_num_data_valid 0 3 }  { shift2_c_fifo_cap fifo_update 0 3 }  { shift2_c_full_n fifo_status 0 1 }  { shift2_c_write fifo_data 1 1 } } }
	outputs { ap_none {  { outputs in_data 0 64 } } }
	outputs_c { ap_fifo {  { outputs_c_din fifo_port_we 1 64 }  { outputs_c_num_data_valid fifo_status_num_data_valid 0 3 }  { outputs_c_fifo_cap fifo_update 0 3 }  { outputs_c_full_n fifo_status 0 1 }  { outputs_c_write fifo_data 1 1 } } }
}
