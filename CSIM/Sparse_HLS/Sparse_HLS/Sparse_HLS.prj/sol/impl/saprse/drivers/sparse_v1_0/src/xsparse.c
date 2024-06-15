// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsparse.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSparse_CfgInitialize(XSparse *InstancePtr, XSparse_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Sparse_addr_BaseAddress = ConfigPtr->Sparse_addr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSparse_Start(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL) & 0x80;
    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSparse_IsDone(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSparse_IsIdle(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSparse_IsReady(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSparse_EnableAutoRestart(XSparse *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL, 0x80);
}

void XSparse_DisableAutoRestart(XSparse *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AP_CTRL, 0);
}

void XSparse_Set_input_data_addr1(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUT_DATA_ADDR1_DATA, Data);
}

u32 XSparse_Get_input_data_addr1(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUT_DATA_ADDR1_DATA);
    return Data;
}

void XSparse_Set_input_data_addr2(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUT_DATA_ADDR2_DATA, Data);
}

u32 XSparse_Get_input_data_addr2(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUT_DATA_ADDR2_DATA);
    return Data;
}

void XSparse_Set_output_data_addr3(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA, Data);
}

u32 XSparse_Get_output_data_addr3(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA);
    return Data;
}

void XSparse_Set_am_ROWS(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AM_ROWS_DATA, Data);
}

u32 XSparse_Get_am_ROWS(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AM_ROWS_DATA);
    return Data;
}

void XSparse_Set_am_COLS(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AM_COLS_DATA, Data);
}

u32 XSparse_Get_am_COLS(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_AM_COLS_DATA);
    return Data;
}

void XSparse_Set_fm_ROWS(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_FM_ROWS_DATA, Data);
}

u32 XSparse_Get_fm_ROWS(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_FM_ROWS_DATA);
    return Data;
}

void XSparse_Set_fm_COLS(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_FM_COLS_DATA, Data);
}

u32 XSparse_Get_fm_COLS(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_FM_COLS_DATA);
    return Data;
}

void XSparse_Set_inputs(XSparse *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUTS_DATA, (u32)(Data));
    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_Get_inputs(XSparse *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUTS_DATA);
    Data += (u64)XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_INPUTS_DATA + 4) << 32;
    return Data;
}

void XSparse_Set_outputs(XSparse *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUTS_DATA, (u32)(Data));
    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_Get_outputs(XSparse *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUTS_DATA);
    Data += (u64)XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_OUTPUTS_DATA + 4) << 32;
    return Data;
}

void XSparse_Set_quant_shift(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_QUANT_SHIFT_DATA, Data);
}

u32 XSparse_Get_quant_shift(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_QUANT_SHIFT_DATA);
    return Data;
}

void XSparse_Set_quant_mul(XSparse *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_QUANT_MUL_DATA, Data);
}

u32 XSparse_Get_quant_mul(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_QUANT_MUL_DATA);
    return Data;
}

u32 XSparse_Get_sparse_flag(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_SPARSE_FLAG_DATA);
    return Data;
}

u32 XSparse_Get_sparse_flag_vld(XSparse *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_SPARSE_FLAG_CTRL);
    return Data & 0x1;
}

void XSparse_InterruptGlobalEnable(XSparse *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_GIE, 1);
}

void XSparse_InterruptGlobalDisable(XSparse *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_GIE, 0);
}

void XSparse_InterruptEnable(XSparse *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_IER);
    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_IER, Register | Mask);
}

void XSparse_InterruptDisable(XSparse *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_IER);
    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_IER, Register & (~Mask));
}

void XSparse_InterruptClear(XSparse *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_WriteReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_ISR, Mask);
}

u32 XSparse_InterruptGetEnabled(XSparse *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_IER);
}

u32 XSparse_InterruptGetStatus(XSparse *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_ReadReg(InstancePtr->Sparse_addr_BaseAddress, XSPARSE_SPARSE_ADDR_ADDR_ISR);
}

