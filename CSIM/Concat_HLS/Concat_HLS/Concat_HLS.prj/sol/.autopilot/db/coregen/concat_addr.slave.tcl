dict set slaves concat_addr {ports {input_data_addr1 {type i_ap_none width 32} input_data_addr2 {type i_ap_none width 32} output_data_addr3 {type i_ap_none width 32} ROWS {type i_ap_none width 32} COLS {type i_ap_none width 32} mul1 {type i_ap_none width 16} shift1 {type i_ap_none width 32} mul2 {type i_ap_none width 16} shift2 {type i_ap_none width 32} inputs {type i_ap_none width 64} outputs {type i_ap_none width 64} concat_flag {type o_ap_vld width 1} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
