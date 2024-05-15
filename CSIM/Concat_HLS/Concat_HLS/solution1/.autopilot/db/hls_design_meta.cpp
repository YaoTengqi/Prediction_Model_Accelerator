#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_concat_addr_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_concat_addr_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_concat_data_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_concat_data_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_concat_data_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_concat_data_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_concat_data_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_concat_data_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_concat_data_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_concat_data_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_concat_data_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_concat_data_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_concat_data_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_concat_data_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_concat_data_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_concat_data_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_concat_data_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_concat_data_WDATA", 256, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_concat_data_WSTRB", 32, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_concat_data_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_concat_data_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_concat_data_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_concat_data_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_concat_data_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_concat_data_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_concat_data_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_concat_data_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_concat_data_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_concat_data_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_concat_data_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_concat_data_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_concat_data_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_concat_data_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_concat_data_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_concat_data_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_concat_data_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_concat_data_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_concat_data_RDATA", 256, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_concat_data_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_concat_data_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_concat_data_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_concat_data_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_concat_data_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_concat_data_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_concat_data_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_concat_data_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_concat_data_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
};
const char* HLS_Design_Meta::dut_name = "concat";
