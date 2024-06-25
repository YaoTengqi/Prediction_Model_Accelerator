set moduleName p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {(anonymous namespace)Store<ap_int<8>, ap_uint<256>, 5u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ addr int 32 regular {fifo 0}  }
	{ ln_data int 256 regular {axi_master 1}  }
	{ outputs int 64 regular {fifo 0}  }
	{ done int 32 regular {pointer 1}  }
	{ store_temp10 int 256 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "addr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ln_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "ln_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "ln_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "outputs", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "done", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "store_temp10", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outputs_dout sc_in sc_lv 64 signal 2 } 
	{ outputs_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ outputs_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ outputs_empty_n sc_in sc_logic 1 signal 2 } 
	{ outputs_read sc_out sc_logic 1 signal 2 } 
	{ addr_dout sc_in sc_lv 32 signal 0 } 
	{ addr_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ addr_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ addr_empty_n sc_in sc_logic 1 signal 0 } 
	{ addr_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_ln_data_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ln_data_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_ln_data_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_data_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_data_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_data_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_data_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_ln_data_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_ln_data_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_ln_data_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_ln_data_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_data_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_data_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ln_data_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ln_data_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ln_data_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ln_data_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_ln_data_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_data_RFIFONUM sc_in sc_lv 13 signal 1 } 
	{ m_axi_ln_data_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_data_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ln_data_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ln_data_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ln_data_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ln_data_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ln_data_BUSER sc_in sc_lv 1 signal 1 } 
	{ store_temp10_dout sc_in sc_lv 256 signal 4 } 
	{ store_temp10_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ store_temp10_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ store_temp10_empty_n sc_in sc_logic 1 signal 4 } 
	{ store_temp10_read sc_out sc_logic 1 signal 4 } 
	{ done sc_out sc_lv 32 signal 3 } 
	{ done_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outputs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs", "role": "dout" }} , 
 	{ "name": "outputs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputs", "role": "num_data_valid" }} , 
 	{ "name": "outputs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outputs", "role": "fifo_cap" }} , 
 	{ "name": "outputs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs", "role": "empty_n" }} , 
 	{ "name": "outputs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs", "role": "read" }} , 
 	{ "name": "addr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "dout" }} , 
 	{ "name": "addr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr", "role": "num_data_valid" }} , 
 	{ "name": "addr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr", "role": "fifo_cap" }} , 
 	{ "name": "addr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "empty_n" }} , 
 	{ "name": "addr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "read" }} , 
 	{ "name": "m_axi_ln_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ln_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ln_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ln_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWID" }} , 
 	{ "name": "m_axi_ln_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ln_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ln_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ln_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ln_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ln_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ln_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ln_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ln_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ln_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_ln_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_ln_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_ln_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ln_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_ln_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WID" }} , 
 	{ "name": "m_axi_ln_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_ln_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ln_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ln_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ln_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ln_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARID" }} , 
 	{ "name": "m_axi_ln_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ln_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ln_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ln_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ln_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ln_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ln_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ln_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ln_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ln_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ln_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ln_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_ln_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_ln_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ln_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_ln_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_ln_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RID" }} , 
 	{ "name": "m_axi_ln_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "ln_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_ln_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_ln_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_ln_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_ln_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_ln_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ln_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_ln_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BID" }} , 
 	{ "name": "m_axi_ln_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ln_data", "role": "BUSER" }} , 
 	{ "name": "store_temp10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "store_temp10", "role": "dout" }} , 
 	{ "name": "store_temp10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "store_temp10", "role": "num_data_valid" }} , 
 	{ "name": "store_temp10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "store_temp10", "role": "fifo_cap" }} , 
 	{ "name": "store_temp10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store_temp10", "role": "empty_n" }} , 
 	{ "name": "store_temp10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "store_temp10", "role": "read" }} , 
 	{ "name": "done", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "done", "role": "default" }} , 
 	{ "name": "done_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "done", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "550", "EstimateLatencyMax" : "551",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "addr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ln_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ln_data_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ln_data_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ln_data_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "done", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "store_temp10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "store_temp10_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_293_1", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter39", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter39", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_Store_ap_int_8_ap_uint_256_5u_s {
		addr {Type I LastRead 2 FirstWrite -1}
		ln_data {Type O LastRead 5 FirstWrite 4}
		outputs {Type I LastRead 2 FirstWrite -1}
		done {Type O LastRead -1 FirstWrite 40}
		store_temp10 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "550", "Max" : "551"}
	, {"Name" : "Interval", "Min" : "512", "Max" : "512"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	addr { ap_fifo {  { addr_dout fifo_port_we 0 32 }  { addr_num_data_valid fifo_status_num_data_valid 0 4 }  { addr_fifo_cap fifo_update 0 4 }  { addr_empty_n fifo_status 0 1 }  { addr_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_ln_data_AWVALID VALID 1 1 }  { m_axi_ln_data_AWREADY READY 0 1 }  { m_axi_ln_data_AWADDR ADDR 1 64 }  { m_axi_ln_data_AWID ID 1 1 }  { m_axi_ln_data_AWLEN SIZE 1 32 }  { m_axi_ln_data_AWSIZE BURST 1 3 }  { m_axi_ln_data_AWBURST LOCK 1 2 }  { m_axi_ln_data_AWLOCK CACHE 1 2 }  { m_axi_ln_data_AWCACHE PROT 1 4 }  { m_axi_ln_data_AWPROT QOS 1 3 }  { m_axi_ln_data_AWQOS REGION 1 4 }  { m_axi_ln_data_AWREGION USER 1 4 }  { m_axi_ln_data_AWUSER DATA 1 1 }  { m_axi_ln_data_WVALID VALID 1 1 }  { m_axi_ln_data_WREADY READY 0 1 }  { m_axi_ln_data_WDATA FIFONUM 1 256 }  { m_axi_ln_data_WSTRB STRB 1 32 }  { m_axi_ln_data_WLAST LAST 1 1 }  { m_axi_ln_data_WID ID 1 1 }  { m_axi_ln_data_WUSER DATA 1 1 }  { m_axi_ln_data_ARVALID VALID 1 1 }  { m_axi_ln_data_ARREADY READY 0 1 }  { m_axi_ln_data_ARADDR ADDR 1 64 }  { m_axi_ln_data_ARID ID 1 1 }  { m_axi_ln_data_ARLEN SIZE 1 32 }  { m_axi_ln_data_ARSIZE BURST 1 3 }  { m_axi_ln_data_ARBURST LOCK 1 2 }  { m_axi_ln_data_ARLOCK CACHE 1 2 }  { m_axi_ln_data_ARCACHE PROT 1 4 }  { m_axi_ln_data_ARPROT QOS 1 3 }  { m_axi_ln_data_ARQOS REGION 1 4 }  { m_axi_ln_data_ARREGION USER 1 4 }  { m_axi_ln_data_ARUSER DATA 1 1 }  { m_axi_ln_data_RVALID VALID 0 1 }  { m_axi_ln_data_RREADY READY 1 1 }  { m_axi_ln_data_RDATA FIFONUM 0 256 }  { m_axi_ln_data_RLAST LAST 0 1 }  { m_axi_ln_data_RID ID 0 1 }  { m_axi_ln_data_RFIFONUM LEN 0 13 }  { m_axi_ln_data_RUSER DATA 0 1 }  { m_axi_ln_data_RRESP RESP 0 2 }  { m_axi_ln_data_BVALID VALID 0 1 }  { m_axi_ln_data_BREADY READY 1 1 }  { m_axi_ln_data_BRESP RESP 0 2 }  { m_axi_ln_data_BID ID 0 1 }  { m_axi_ln_data_BUSER DATA 0 1 } } }
	outputs { ap_fifo {  { outputs_dout fifo_port_we 0 64 }  { outputs_num_data_valid fifo_status_num_data_valid 0 4 }  { outputs_fifo_cap fifo_update 0 4 }  { outputs_empty_n fifo_status 0 1 }  { outputs_read fifo_data 1 1 } } }
	done { ap_vld {  { done out_data 1 32 }  { done_ap_vld out_vld 1 1 } } }
	store_temp10 { ap_fifo {  { store_temp10_dout fifo_port_we 0 256 }  { store_temp10_num_data_valid fifo_status_num_data_valid 0 5 }  { store_temp10_fifo_cap fifo_update 0 5 }  { store_temp10_empty_n fifo_status 0 1 }  { store_temp10_read fifo_data 1 1 } } }
}
