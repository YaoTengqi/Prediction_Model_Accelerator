# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_reshape_addr {
input_data_addr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
inputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
outputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
ROWS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
COLS { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
reshape_flag { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict reshape_addr $port_reshape_addr


