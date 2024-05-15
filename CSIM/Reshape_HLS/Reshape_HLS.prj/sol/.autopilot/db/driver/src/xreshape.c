// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xreshape.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XReshape_CfgInitialize(XReshape *InstancePtr, XReshape_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Reshape_addr_BaseAddress = ConfigPtr->Reshape_addr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XReshape_Start(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL) & 0x80;
    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XReshape_IsDone(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XReshape_IsIdle(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XReshape_IsReady(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XReshape_EnableAutoRestart(XReshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL, 0x80);
}

void XReshape_DisableAutoRestart(XReshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_AP_CTRL, 0);
}

void XReshape_Set_input_data_addr(XReshape *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUT_DATA_ADDR_DATA, Data);
}

u32 XReshape_Get_input_data_addr(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUT_DATA_ADDR_DATA);
    return Data;
}

void XReshape_Set_inputs(XReshape *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUTS_DATA, (u32)(Data));
    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XReshape_Get_inputs(XReshape *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUTS_DATA);
    Data += (u64)XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_INPUTS_DATA + 4) << 32;
    return Data;
}

void XReshape_Set_outputs(XReshape *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_OUTPUTS_DATA, (u32)(Data));
    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_OUTPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XReshape_Get_outputs(XReshape *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_OUTPUTS_DATA);
    Data += (u64)XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_OUTPUTS_DATA + 4) << 32;
    return Data;
}

void XReshape_Set_ROWS(XReshape *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_ROWS_DATA, Data);
}

u32 XReshape_Get_ROWS(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_ROWS_DATA);
    return Data;
}

void XReshape_Set_COLS(XReshape *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_COLS_DATA, Data);
}

u32 XReshape_Get_COLS(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_COLS_DATA);
    return Data;
}

u32 XReshape_Get_reshape_flag(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_RESHAPE_FLAG_DATA);
    return Data;
}

u32 XReshape_Get_reshape_flag_vld(XReshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_RESHAPE_FLAG_CTRL);
    return Data & 0x1;
}

void XReshape_InterruptGlobalEnable(XReshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_GIE, 1);
}

void XReshape_InterruptGlobalDisable(XReshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_GIE, 0);
}

void XReshape_InterruptEnable(XReshape *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_IER);
    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_IER, Register | Mask);
}

void XReshape_InterruptDisable(XReshape *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_IER);
    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_IER, Register & (~Mask));
}

void XReshape_InterruptClear(XReshape *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReshape_WriteReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_ISR, Mask);
}

u32 XReshape_InterruptGetEnabled(XReshape *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_IER);
}

u32 XReshape_InterruptGetStatus(XReshape *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReshape_ReadReg(InstancePtr->Reshape_addr_BaseAddress, XRESHAPE_RESHAPE_ADDR_ADDR_ISR);
}

