set moduleName store_ap_uint_256_ap_int_8_32u_s
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
set C_modelName {store<ap_uint<256>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ ROWS int 32 regular {fifo 0}  }
	{ COLS int 32 regular {fifo 0}  }
	{ input_data_addr3 int 32 regular {fifo 0}  }
	{ input_stream int 256 regular {fifo 0 volatile }  }
	{ concat_data int 256 regular {axi_master 1}  }
	{ outputs int 64 regular {fifo 0}  }
	{ concat_flag int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ROWS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "COLS", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_data_addr3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "concat_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "concat_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "concat_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "outputs", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "concat_flag", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ROWS_dout sc_in sc_lv 32 signal 0 } 
	{ ROWS_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ ROWS_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ ROWS_empty_n sc_in sc_logic 1 signal 0 } 
	{ ROWS_read sc_out sc_logic 1 signal 0 } 
	{ COLS_dout sc_in sc_lv 32 signal 1 } 
	{ COLS_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ COLS_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ COLS_empty_n sc_in sc_logic 1 signal 1 } 
	{ COLS_read sc_out sc_logic 1 signal 1 } 
	{ input_data_addr3_dout sc_in sc_lv 32 signal 2 } 
	{ input_data_addr3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ input_data_addr3_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ input_data_addr3_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_data_addr3_read sc_out sc_logic 1 signal 2 } 
	{ input_stream_dout sc_in sc_lv 256 signal 3 } 
	{ input_stream_num_data_valid sc_in sc_lv 7 signal 3 } 
	{ input_stream_fifo_cap sc_in sc_lv 7 signal 3 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_stream_read sc_out sc_logic 1 signal 3 } 
	{ m_axi_concat_data_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_concat_data_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_concat_data_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_concat_data_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_concat_data_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_concat_data_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_concat_data_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_concat_data_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_concat_data_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_concat_data_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_concat_data_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_concat_data_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_concat_data_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_concat_data_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_concat_data_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_concat_data_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_concat_data_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_concat_data_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_concat_data_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_concat_data_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_concat_data_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_concat_data_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_concat_data_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_concat_data_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_concat_data_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_concat_data_BUSER sc_in sc_lv 1 signal 4 } 
	{ outputs_dout sc_in sc_lv 64 signal 5 } 
	{ outputs_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ outputs_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ outputs_empty_n sc_in sc_logic 1 signal 5 } 
	{ outputs_read sc_out sc_logic 1 signal 5 } 
	{ concat_flag sc_out sc_lv 1 signal 6 } 
	{ concat_flag_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "input_data_addr3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_addr3", "role": "dout" }} , 
 	{ "name": "input_data_addr3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_data_addr3", "role": "num_data_valid" }} , 
 	{ "name": "input_data_addr3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_data_addr3", "role": "fifo_cap" }} , 
 	{ "name": "input_data_addr3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_data_addr3", "role": "empty_n" }} , 
 	{ "name": "input_data_addr3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_data_addr3", "role": "read" }} , 
 	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "num_data_valid" }} , 
 	{ "name": "input_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_stream", "role": "fifo_cap" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
 	{ "name": "m_axi_concat_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_concat_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_concat_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "concat_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_concat_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWID" }} , 
 	{ "name": "m_axi_concat_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_concat_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_concat_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_concat_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_concat_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_concat_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_concat_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_concat_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_concat_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_concat_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_concat_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_concat_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "concat_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_concat_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_concat_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_concat_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WID" }} , 
 	{ "name": "m_axi_concat_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_concat_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_concat_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_concat_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "concat_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_concat_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARID" }} , 
 	{ "name": "m_axi_concat_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "concat_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_concat_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_concat_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_concat_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_concat_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_concat_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "concat_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_concat_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_concat_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "concat_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_concat_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_concat_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_concat_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_concat_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "concat_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_concat_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_concat_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RID" }} , 
 	{ "name": "m_axi_concat_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "concat_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_concat_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_concat_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_concat_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_concat_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_concat_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "concat_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_concat_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BID" }} , 
 	{ "name": "m_axi_concat_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_data", "role": "BUSER" }} , 
 	{ "name": "outputs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outputs", "role": "dout" }} , 
 	{ "name": "outputs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outputs", "role": "num_data_valid" }} , 
 	{ "name": "outputs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "outputs", "role": "fifo_cap" }} , 
 	{ "name": "outputs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs", "role": "empty_n" }} , 
 	{ "name": "outputs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputs", "role": "read" }} , 
 	{ "name": "concat_flag", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "concat_flag", "role": "default" }} , 
 	{ "name": "concat_flag_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "concat_flag", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "store_ap_uint_256_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ROWS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "ROWS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "COLS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "COLS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_data_addr3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_data_addr3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1_fu_126", "Port" : "input_stream", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "concat_data_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "concat_data_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1_fu_126", "Port" : "concat_data", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "outputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "outputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "concat_flag", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1_fu_126", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "concat_data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "concat_data_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln114", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_114_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	store_ap_uint_256_ap_int_8_32u_s {
		ROWS {Type I LastRead 0 FirstWrite -1}
		COLS {Type I LastRead 0 FirstWrite -1}
		input_data_addr3 {Type I LastRead 0 FirstWrite -1}
		input_stream {Type I LastRead 1 FirstWrite -1}
		concat_data {Type O LastRead 4 FirstWrite 2}
		outputs {Type I LastRead 0 FirstWrite -1}
		concat_flag {Type O LastRead -1 FirstWrite 39}}
	store_ap_uint_256_ap_int_8_32u_Pipeline_VITIS_LOOP_114_1 {
		concat_data {Type O LastRead -1 FirstWrite 2}
		sext_ln114 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		input_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ROWS { ap_fifo {  { ROWS_dout fifo_port_we 0 32 }  { ROWS_num_data_valid fifo_status_num_data_valid 0 2 }  { ROWS_fifo_cap fifo_update 0 2 }  { ROWS_empty_n fifo_status 0 1 }  { ROWS_read fifo_data 1 1 } } }
	COLS { ap_fifo {  { COLS_dout fifo_port_we 0 32 }  { COLS_num_data_valid fifo_status_num_data_valid 0 2 }  { COLS_fifo_cap fifo_update 0 2 }  { COLS_empty_n fifo_status 0 1 }  { COLS_read fifo_data 1 1 } } }
	input_data_addr3 { ap_fifo {  { input_data_addr3_dout fifo_port_we 0 32 }  { input_data_addr3_num_data_valid fifo_status_num_data_valid 0 3 }  { input_data_addr3_fifo_cap fifo_update 0 3 }  { input_data_addr3_empty_n fifo_status 0 1 }  { input_data_addr3_read fifo_data 1 1 } } }
	input_stream { ap_fifo {  { input_stream_dout fifo_port_we 0 256 }  { input_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { input_stream_fifo_cap fifo_update 0 7 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_concat_data_AWVALID VALID 1 1 }  { m_axi_concat_data_AWREADY READY 0 1 }  { m_axi_concat_data_AWADDR ADDR 1 64 }  { m_axi_concat_data_AWID ID 1 1 }  { m_axi_concat_data_AWLEN SIZE 1 32 }  { m_axi_concat_data_AWSIZE BURST 1 3 }  { m_axi_concat_data_AWBURST LOCK 1 2 }  { m_axi_concat_data_AWLOCK CACHE 1 2 }  { m_axi_concat_data_AWCACHE PROT 1 4 }  { m_axi_concat_data_AWPROT QOS 1 3 }  { m_axi_concat_data_AWQOS REGION 1 4 }  { m_axi_concat_data_AWREGION USER 1 4 }  { m_axi_concat_data_AWUSER DATA 1 1 }  { m_axi_concat_data_WVALID VALID 1 1 }  { m_axi_concat_data_WREADY READY 0 1 }  { m_axi_concat_data_WDATA FIFONUM 1 256 }  { m_axi_concat_data_WSTRB STRB 1 32 }  { m_axi_concat_data_WLAST LAST 1 1 }  { m_axi_concat_data_WID ID 1 1 }  { m_axi_concat_data_WUSER DATA 1 1 }  { m_axi_concat_data_ARVALID VALID 1 1 }  { m_axi_concat_data_ARREADY READY 0 1 }  { m_axi_concat_data_ARADDR ADDR 1 64 }  { m_axi_concat_data_ARID ID 1 1 }  { m_axi_concat_data_ARLEN SIZE 1 32 }  { m_axi_concat_data_ARSIZE BURST 1 3 }  { m_axi_concat_data_ARBURST LOCK 1 2 }  { m_axi_concat_data_ARLOCK CACHE 1 2 }  { m_axi_concat_data_ARCACHE PROT 1 4 }  { m_axi_concat_data_ARPROT QOS 1 3 }  { m_axi_concat_data_ARQOS REGION 1 4 }  { m_axi_concat_data_ARREGION USER 1 4 }  { m_axi_concat_data_ARUSER DATA 1 1 }  { m_axi_concat_data_RVALID VALID 0 1 }  { m_axi_concat_data_RREADY READY 1 1 }  { m_axi_concat_data_RDATA FIFONUM 0 256 }  { m_axi_concat_data_RLAST LAST 0 1 }  { m_axi_concat_data_RID ID 0 1 }  { m_axi_concat_data_RFIFONUM LEN 0 9 }  { m_axi_concat_data_RUSER DATA 0 1 }  { m_axi_concat_data_RRESP RESP 0 2 }  { m_axi_concat_data_BVALID VALID 0 1 }  { m_axi_concat_data_BREADY READY 1 1 }  { m_axi_concat_data_BRESP RESP 0 2 }  { m_axi_concat_data_BID ID 0 1 }  { m_axi_concat_data_BUSER DATA 0 1 } } }
	outputs { ap_fifo {  { outputs_dout fifo_port_we 0 64 }  { outputs_num_data_valid fifo_status_num_data_valid 0 3 }  { outputs_fifo_cap fifo_update 0 3 }  { outputs_empty_n fifo_status 0 1 }  { outputs_read fifo_data 1 1 } } }
	concat_flag { ap_vld {  { concat_flag out_data 1 1 }  { concat_flag_ap_vld out_vld 1 1 } } }
}
