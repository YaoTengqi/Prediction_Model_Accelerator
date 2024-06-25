# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XLayernorm" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_LN_ADDR_BASEADDR" \
        "C_S_AXI_LN_ADDR_HIGHADDR"

    xdefine_config_file $drv_handle "xlayernorm_g.c" "XLayernorm" \
        "DEVICE_ID" \
        "C_S_AXI_LN_ADDR_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XLayernorm" \
        "DEVICE_ID" \
        "C_S_AXI_LN_ADDR_BASEADDR" \
        "C_S_AXI_LN_ADDR_HIGHADDR"
}

