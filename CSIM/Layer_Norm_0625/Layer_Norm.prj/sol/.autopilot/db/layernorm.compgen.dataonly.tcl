# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ln_addr {
input_data_addr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
gama_addr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
beta_addr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
output_data_addr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
cols_log { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
q_value { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
shift_value { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
done { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
inputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
outputs { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
paras { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict ln_addr $port_ln_addr


