# Copyright (C) 2019-2022, Xilinx, Inc.
# Copyright (C) 2022-2023, Advanced Micro Devices, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# vitis hls makefile-generator v2.0.0

set CSIM 1
set CSYNTH 1
set COSIM 0
set EXPORT_IP 1

set CUR_DIR [pwd]
set XF_PROJ_ROOT $CUR_DIR/
set XPART xczu7ev-ffvc1156-2-e

set PROJ "Concat_HLS.prj"
set SOLN "sol"

if {![info exists CLKP]} {
  set CLKP 10
}

open_project -reset $PROJ

# add_files "${XF_PROJ_ROOT}/L1/tests/hw/gemm/uut_top.cpp" -cflags "-I${XF_PROJ_ROOT}/L1/include/hw -I${XF_PROJ_ROOT}/L1/tests/hw/gemm -I${XF_PROJ_ROOT}/L1/include/hw/xf_blas/helpers/utils -I${XF_PROJ_ROOT}/L1/tests/hw/gemm/tests/Dfloat_m32_n16_k64_par8 -I${XF_PROJ_ROOT}/L1/tests/sw/include -std=c++11 "
# add_files -tb "${XF_PROJ_ROOT}/L1/tests/hw/gemm/test.cpp" -cflags "-std=c++11 -I${XF_PROJ_ROOT}/L1/include/hw -I${XF_PROJ_ROOT}/L1/tests/sw/include -I${XF_PROJ_ROOT}/L1/tests/hw/gemm -I${XF_PROJ_ROOT}/L1/include/hw/xf_blas/helpers/utils -I${XF_PROJ_ROOT}/L1/tests/hw/gemm/tests/Dfloat_m32_n16_k64_par8"
# set_top uut_top

add_files "${CUR_DIR}/src/concat.cpp" -cflags "-I${CUR_DIR}/include/"
add_files -tb "${CUR_DIR}/testbench/concat_tb.cpp" -cflags "-std=c++11 "
set_top concat

open_solution -reset $SOLN



set_part $XPART
create_clock -period $CLKP

if {$CSIM == 1} {
  csim_design 
}

if {$CSYNTH == 1} {
  csynth_design
}

if {$COSIM == 1} {
  cosim_design -trace_level all -argv "$HOST_ARGS/"
}

if {$EXPORT_IP == 1} {
  export_design -format ip_catalog
}

close_project
exit