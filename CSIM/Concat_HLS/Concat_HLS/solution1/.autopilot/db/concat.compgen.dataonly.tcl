# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_concat_addr {
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
ROWS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
COLS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
inputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
outputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
concat_flag { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict concat_addr $port_concat_addr


