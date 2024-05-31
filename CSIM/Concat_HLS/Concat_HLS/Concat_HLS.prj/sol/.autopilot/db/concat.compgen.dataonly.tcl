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
mul1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
shift1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
mul2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
shift2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
inputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
outputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
concat_flag { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 112
	offset_end 119
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict concat_addr $port_concat_addr


