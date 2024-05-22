# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_sparse_addr {
input_data_addr1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
input_data_addr2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
output_data_addr3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
am_ROWS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
am_COLS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
fm_ROWS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
fm_COLS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
inputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
outputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
sparse_flag { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 96
	offset_end 103
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict sparse_addr $port_sparse_addr


