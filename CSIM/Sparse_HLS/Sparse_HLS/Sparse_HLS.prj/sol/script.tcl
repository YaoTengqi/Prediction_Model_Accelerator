############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Sparse_HLS.prj
set_top sparse
add_files src/sparse.cpp -cflags "-I/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Sparse_HLS/Sparse_HLS/include/."
add_files -tb testbench/sparse_tb.cpp -cflags "-std=c++11 -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_interface -m_axi_latency 0
config_export -format ip_catalog
source "./Sparse_HLS.prj/sol/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
