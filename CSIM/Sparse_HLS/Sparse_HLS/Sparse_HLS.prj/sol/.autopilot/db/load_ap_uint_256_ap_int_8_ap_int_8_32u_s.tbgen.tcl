set moduleName load_ap_uint_256_ap_int_8_ap_int_8_32u_s
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
set C_modelName {load<ap_uint<256>, ap_int<8>, ap_int<8>, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ am_ROWS int 32 regular  }
	{ am_COLS int 32 regular  }
	{ fm_ROWS int 32 regular  }
	{ fm_COLS int 32 regular  }
	{ sparse_data int 256 regular {axi_master 0}  }
	{ inputs int 64 regular  }
	{ idx_stream int 8 regular {fifo 1 volatile }  }
	{ count_stream int 8 regular {fifo 1 volatile }  }
	{ fm_stream int 256 regular {fifo 1 volatile }  }
	{ p_read int 27 regular  }
	{ p_read1 int 27 regular  }
	{ am_ROWS_c int 32 regular {fifo 1}  }
	{ fm_ROWS_c14 int 32 regular {fifo 1}  }
	{ fm_COLS_c16 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "am_ROWS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "am_COLS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_ROWS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fm_COLS", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sparse_data", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputs","offset": { "type": "dynamic","port_name": "inputs","bundle": "sparse_addr"},"direction": "READONLY"},{"cName": "outputs","offset": { "type": "dynamic","port_name": "outputs","bundle": "sparse_addr"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "inputs", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "idx_stream", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "count_stream", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "am_ROWS_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_ROWS_c14", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fm_COLS_c16", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 93
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
	{ am_ROWS sc_in sc_lv 32 signal 0 } 
	{ am_COLS sc_in sc_lv 32 signal 1 } 
	{ fm_ROWS sc_in sc_lv 32 signal 2 } 
	{ fm_COLS sc_in sc_lv 32 signal 3 } 
	{ m_axi_sparse_data_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sparse_data_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_sparse_data_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_sparse_data_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_sparse_data_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_sparse_data_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_sparse_data_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_sparse_data_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_sparse_data_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_sparse_data_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_sparse_data_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_sparse_data_BUSER sc_in sc_lv 1 signal 4 } 
	{ inputs sc_in sc_lv 64 signal 5 } 
	{ idx_stream_din sc_out sc_lv 8 signal 6 } 
	{ idx_stream_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ idx_stream_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ idx_stream_full_n sc_in sc_logic 1 signal 6 } 
	{ idx_stream_write sc_out sc_logic 1 signal 6 } 
	{ count_stream_din sc_out sc_lv 8 signal 7 } 
	{ count_stream_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ count_stream_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ count_stream_full_n sc_in sc_logic 1 signal 7 } 
	{ count_stream_write sc_out sc_logic 1 signal 7 } 
	{ fm_stream_din sc_out sc_lv 256 signal 8 } 
	{ fm_stream_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ fm_stream_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ fm_stream_full_n sc_in sc_logic 1 signal 8 } 
	{ fm_stream_write sc_out sc_logic 1 signal 8 } 
	{ p_read sc_in sc_lv 27 signal 9 } 
	{ p_read1 sc_in sc_lv 27 signal 10 } 
	{ am_ROWS_c_din sc_out sc_lv 32 signal 11 } 
	{ am_ROWS_c_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ am_ROWS_c_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ am_ROWS_c_full_n sc_in sc_logic 1 signal 11 } 
	{ am_ROWS_c_write sc_out sc_logic 1 signal 11 } 
	{ fm_ROWS_c14_din sc_out sc_lv 32 signal 12 } 
	{ fm_ROWS_c14_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ fm_ROWS_c14_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ fm_ROWS_c14_full_n sc_in sc_logic 1 signal 12 } 
	{ fm_ROWS_c14_write sc_out sc_logic 1 signal 12 } 
	{ fm_COLS_c16_din sc_out sc_lv 32 signal 13 } 
	{ fm_COLS_c16_num_data_valid sc_in sc_lv 2 signal 13 } 
	{ fm_COLS_c16_fifo_cap sc_in sc_lv 2 signal 13 } 
	{ fm_COLS_c16_full_n sc_in sc_logic 1 signal 13 } 
	{ fm_COLS_c16_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "am_ROWS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_ROWS", "role": "default" }} , 
 	{ "name": "am_COLS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_COLS", "role": "default" }} , 
 	{ "name": "fm_ROWS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_ROWS", "role": "default" }} , 
 	{ "name": "fm_COLS", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS", "role": "default" }} , 
 	{ "name": "m_axi_sparse_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_sparse_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_sparse_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_sparse_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWID" }} , 
 	{ "name": "m_axi_sparse_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_sparse_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_sparse_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_sparse_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_sparse_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_sparse_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_sparse_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_sparse_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_sparse_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_sparse_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WVALID" }} , 
 	{ "name": "m_axi_sparse_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WREADY" }} , 
 	{ "name": "m_axi_sparse_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "sparse_data", "role": "WDATA" }} , 
 	{ "name": "m_axi_sparse_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_sparse_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WLAST" }} , 
 	{ "name": "m_axi_sparse_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WID" }} , 
 	{ "name": "m_axi_sparse_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "WUSER" }} , 
 	{ "name": "m_axi_sparse_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_sparse_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_sparse_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_sparse_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARID" }} , 
 	{ "name": "m_axi_sparse_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_sparse_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_sparse_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_sparse_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_sparse_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_sparse_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_sparse_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_sparse_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_sparse_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_sparse_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RVALID" }} , 
 	{ "name": "m_axi_sparse_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RREADY" }} , 
 	{ "name": "m_axi_sparse_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "sparse_data", "role": "RDATA" }} , 
 	{ "name": "m_axi_sparse_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RLAST" }} , 
 	{ "name": "m_axi_sparse_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RID" }} , 
 	{ "name": "m_axi_sparse_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sparse_data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_sparse_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "RUSER" }} , 
 	{ "name": "m_axi_sparse_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "RRESP" }} , 
 	{ "name": "m_axi_sparse_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BVALID" }} , 
 	{ "name": "m_axi_sparse_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BREADY" }} , 
 	{ "name": "m_axi_sparse_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sparse_data", "role": "BRESP" }} , 
 	{ "name": "m_axi_sparse_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BID" }} , 
 	{ "name": "m_axi_sparse_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sparse_data", "role": "BUSER" }} , 
 	{ "name": "inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inputs", "role": "default" }} , 
 	{ "name": "idx_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream", "role": "din" }} , 
 	{ "name": "idx_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream", "role": "num_data_valid" }} , 
 	{ "name": "idx_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx_stream", "role": "fifo_cap" }} , 
 	{ "name": "idx_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_stream", "role": "full_n" }} , 
 	{ "name": "idx_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idx_stream", "role": "write" }} , 
 	{ "name": "count_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "count_stream", "role": "din" }} , 
 	{ "name": "count_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "count_stream", "role": "num_data_valid" }} , 
 	{ "name": "count_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "count_stream", "role": "fifo_cap" }} , 
 	{ "name": "count_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_stream", "role": "full_n" }} , 
 	{ "name": "count_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "count_stream", "role": "write" }} , 
 	{ "name": "fm_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fm_stream", "role": "din" }} , 
 	{ "name": "fm_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm_stream", "role": "num_data_valid" }} , 
 	{ "name": "fm_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm_stream", "role": "fifo_cap" }} , 
 	{ "name": "fm_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_stream", "role": "full_n" }} , 
 	{ "name": "fm_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_stream", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "am_ROWS_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "din" }} , 
 	{ "name": "am_ROWS_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "num_data_valid" }} , 
 	{ "name": "am_ROWS_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "fifo_cap" }} , 
 	{ "name": "am_ROWS_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "full_n" }} , 
 	{ "name": "am_ROWS_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "am_ROWS_c", "role": "write" }} , 
 	{ "name": "fm_ROWS_c14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_ROWS_c14", "role": "din" }} , 
 	{ "name": "fm_ROWS_c14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm_ROWS_c14", "role": "num_data_valid" }} , 
 	{ "name": "fm_ROWS_c14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm_ROWS_c14", "role": "fifo_cap" }} , 
 	{ "name": "fm_ROWS_c14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS_c14", "role": "full_n" }} , 
 	{ "name": "fm_ROWS_c14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_ROWS_c14", "role": "write" }} , 
 	{ "name": "fm_COLS_c16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm_COLS_c16", "role": "din" }} , 
 	{ "name": "fm_COLS_c16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c16", "role": "num_data_valid" }} , 
 	{ "name": "fm_COLS_c16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm_COLS_c16", "role": "fifo_cap" }} , 
 	{ "name": "fm_COLS_c16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c16", "role": "full_n" }} , 
 	{ "name": "fm_COLS_c16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_COLS_c16", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "load_ap_uint_256_ap_int_8_ap_int_8_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "am_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "am_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_ROWS", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_COLS", "Type" : "None", "Direction" : "I"},
			{"Name" : "sparse_data", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sparse_data_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "sparse_data_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "idx_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "count_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "count_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fm_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "am_ROWS_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "am_ROWS_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_ROWS_c14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_ROWS_c14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_COLS_c16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "fm_COLS_c16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state40", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state40"], "PreState" : ["ap_ST_fsm_state39"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state81", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state81"], "PreState" : ["ap_ST_fsm_state80"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_41_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state87"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state84"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_36_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state84", "LastState" : ["ap_ST_fsm_state86"], "QuitState" : ["ap_ST_fsm_state84"], "PreState" : ["ap_ST_fsm_state81"], "PostState" : ["ap_ST_fsm_state88"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_54_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state89", "LastState" : ["ap_ST_fsm_state91"], "QuitState" : ["ap_ST_fsm_state89"], "PreState" : ["ap_ST_fsm_state88"], "PostState" : ["ap_ST_fsm_state92"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_61_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state92", "LastState" : ["ap_ST_fsm_state93"], "QuitState" : ["ap_ST_fsm_state92"], "PreState" : ["ap_ST_fsm_state89"], "PostState" : ["ap_ST_fsm_state88"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_52_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "93", "FirstState" : "ap_ST_fsm_state88", "LastState" : ["ap_ST_fsm_state92"], "QuitState" : ["ap_ST_fsm_state88"], "PreState" : ["ap_ST_fsm_state84"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_ram_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_ram_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.idx_ram_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.count_ram_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U10", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U11", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_8_1_1_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_ap_uint_256_ap_int_8_ap_int_8_32u_s {
		am_ROWS {Type I LastRead 0 FirstWrite -1}
		am_COLS {Type I LastRead 38 FirstWrite -1}
		fm_ROWS {Type I LastRead 0 FirstWrite -1}
		fm_COLS {Type I LastRead 0 FirstWrite -1}
		sparse_data {Type I LastRead 79 FirstWrite -1}
		inputs {Type I LastRead 0 FirstWrite -1}
		idx_stream {Type O LastRead -1 FirstWrite 83}
		count_stream {Type O LastRead -1 FirstWrite 83}
		fm_stream {Type O LastRead -1 FirstWrite 83}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 38 FirstWrite -1}
		am_ROWS_c {Type O LastRead -1 FirstWrite 0}
		fm_ROWS_c14 {Type O LastRead -1 FirstWrite 0}
		fm_COLS_c16 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	am_ROWS { ap_none {  { am_ROWS in_data 0 32 } } }
	am_COLS { ap_none {  { am_COLS in_data 0 32 } } }
	fm_ROWS { ap_none {  { fm_ROWS in_data 0 32 } } }
	fm_COLS { ap_none {  { fm_COLS in_data 0 32 } } }
	 { m_axi {  { m_axi_sparse_data_AWVALID VALID 1 1 }  { m_axi_sparse_data_AWREADY READY 0 1 }  { m_axi_sparse_data_AWADDR ADDR 1 64 }  { m_axi_sparse_data_AWID ID 1 1 }  { m_axi_sparse_data_AWLEN SIZE 1 32 }  { m_axi_sparse_data_AWSIZE BURST 1 3 }  { m_axi_sparse_data_AWBURST LOCK 1 2 }  { m_axi_sparse_data_AWLOCK CACHE 1 2 }  { m_axi_sparse_data_AWCACHE PROT 1 4 }  { m_axi_sparse_data_AWPROT QOS 1 3 }  { m_axi_sparse_data_AWQOS REGION 1 4 }  { m_axi_sparse_data_AWREGION USER 1 4 }  { m_axi_sparse_data_AWUSER DATA 1 1 }  { m_axi_sparse_data_WVALID VALID 1 1 }  { m_axi_sparse_data_WREADY READY 0 1 }  { m_axi_sparse_data_WDATA FIFONUM 1 256 }  { m_axi_sparse_data_WSTRB STRB 1 32 }  { m_axi_sparse_data_WLAST LAST 1 1 }  { m_axi_sparse_data_WID ID 1 1 }  { m_axi_sparse_data_WUSER DATA 1 1 }  { m_axi_sparse_data_ARVALID VALID 1 1 }  { m_axi_sparse_data_ARREADY READY 0 1 }  { m_axi_sparse_data_ARADDR ADDR 1 64 }  { m_axi_sparse_data_ARID ID 1 1 }  { m_axi_sparse_data_ARLEN SIZE 1 32 }  { m_axi_sparse_data_ARSIZE BURST 1 3 }  { m_axi_sparse_data_ARBURST LOCK 1 2 }  { m_axi_sparse_data_ARLOCK CACHE 1 2 }  { m_axi_sparse_data_ARCACHE PROT 1 4 }  { m_axi_sparse_data_ARPROT QOS 1 3 }  { m_axi_sparse_data_ARQOS REGION 1 4 }  { m_axi_sparse_data_ARREGION USER 1 4 }  { m_axi_sparse_data_ARUSER DATA 1 1 }  { m_axi_sparse_data_RVALID VALID 0 1 }  { m_axi_sparse_data_RREADY READY 1 1 }  { m_axi_sparse_data_RDATA FIFONUM 0 256 }  { m_axi_sparse_data_RLAST LAST 0 1 }  { m_axi_sparse_data_RID ID 0 1 }  { m_axi_sparse_data_RFIFONUM LEN 0 9 }  { m_axi_sparse_data_RUSER DATA 0 1 }  { m_axi_sparse_data_RRESP RESP 0 2 }  { m_axi_sparse_data_BVALID VALID 0 1 }  { m_axi_sparse_data_BREADY READY 1 1 }  { m_axi_sparse_data_BRESP RESP 0 2 }  { m_axi_sparse_data_BID ID 0 1 }  { m_axi_sparse_data_BUSER DATA 0 1 } } }
	inputs { ap_none {  { inputs in_data 0 64 } } }
	idx_stream { ap_fifo {  { idx_stream_din fifo_port_we 1 8 }  { idx_stream_num_data_valid fifo_status_num_data_valid 0 8 }  { idx_stream_fifo_cap fifo_update 0 8 }  { idx_stream_full_n fifo_status 0 1 }  { idx_stream_write fifo_data 1 1 } } }
	count_stream { ap_fifo {  { count_stream_din fifo_port_we 1 8 }  { count_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { count_stream_fifo_cap fifo_update 0 7 }  { count_stream_full_n fifo_status 0 1 }  { count_stream_write fifo_data 1 1 } } }
	fm_stream { ap_fifo {  { fm_stream_din fifo_port_we 1 256 }  { fm_stream_num_data_valid fifo_status_num_data_valid 0 8 }  { fm_stream_fifo_cap fifo_update 0 8 }  { fm_stream_full_n fifo_status 0 1 }  { fm_stream_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 27 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 27 } } }
	am_ROWS_c { ap_fifo {  { am_ROWS_c_din fifo_port_we 1 32 }  { am_ROWS_c_num_data_valid fifo_status_num_data_valid 0 2 }  { am_ROWS_c_fifo_cap fifo_update 0 2 }  { am_ROWS_c_full_n fifo_status 0 1 }  { am_ROWS_c_write fifo_data 1 1 } } }
	fm_ROWS_c14 { ap_fifo {  { fm_ROWS_c14_din fifo_port_we 1 32 }  { fm_ROWS_c14_num_data_valid fifo_status_num_data_valid 0 3 }  { fm_ROWS_c14_fifo_cap fifo_update 0 3 }  { fm_ROWS_c14_full_n fifo_status 0 1 }  { fm_ROWS_c14_write fifo_data 1 1 } } }
	fm_COLS_c16 { ap_fifo {  { fm_COLS_c16_din fifo_port_we 1 32 }  { fm_COLS_c16_num_data_valid fifo_status_num_data_valid 0 2 }  { fm_COLS_c16_fifo_cap fifo_update 0 2 }  { fm_COLS_c16_full_n fifo_status 0 1 }  { fm_COLS_c16_write fifo_data 1 1 } } }
}
