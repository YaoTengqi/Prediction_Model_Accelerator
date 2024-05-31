// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconcat.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConcat_CfgInitialize(XConcat *InstancePtr, XConcat_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Concat_addr_BaseAddress = ConfigPtr->Concat_addr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConcat_Start(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL) & 0x80;
    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConcat_IsDone(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConcat_IsIdle(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConcat_IsReady(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConcat_EnableAutoRestart(XConcat *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL, 0x80);
}

void XConcat_DisableAutoRestart(XConcat *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_AP_CTRL, 0);
}

void XConcat_Set_input_data_addr1(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUT_DATA_ADDR1_DATA, Data);
}

u32 XConcat_Get_input_data_addr1(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUT_DATA_ADDR1_DATA);
    return Data;
}

void XConcat_Set_input_data_addr2(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUT_DATA_ADDR2_DATA, Data);
}

u32 XConcat_Get_input_data_addr2(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUT_DATA_ADDR2_DATA);
    return Data;
}

void XConcat_Set_output_data_addr3(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA, Data);
}

u32 XConcat_Get_output_data_addr3(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA);
    return Data;
}

void XConcat_Set_ROWS(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_ROWS_DATA, Data);
}

u32 XConcat_Get_ROWS(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_ROWS_DATA);
    return Data;
}

void XConcat_Set_COLS(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_COLS_DATA, Data);
}

u32 XConcat_Get_COLS(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_COLS_DATA);
    return Data;
}

void XConcat_Set_mul1(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_MUL1_DATA, Data);
}

u32 XConcat_Get_mul1(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_MUL1_DATA);
    return Data;
}

void XConcat_Set_shift1(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_SHIFT1_DATA, Data);
}

u32 XConcat_Get_shift1(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_SHIFT1_DATA);
    return Data;
}

void XConcat_Set_mul2(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_MUL2_DATA, Data);
}

u32 XConcat_Get_mul2(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_MUL2_DATA);
    return Data;
}

void XConcat_Set_shift2(XConcat *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_SHIFT2_DATA, Data);
}

u32 XConcat_Get_shift2(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_SHIFT2_DATA);
    return Data;
}

void XConcat_Set_inputs(XConcat *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUTS_DATA, (u32)(Data));
    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XConcat_Get_inputs(XConcat *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUTS_DATA);
    Data += (u64)XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_INPUTS_DATA + 4) << 32;
    return Data;
}

void XConcat_Set_outputs(XConcat *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUTS_DATA, (u32)(Data));
    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XConcat_Get_outputs(XConcat *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUTS_DATA);
    Data += (u64)XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_OUTPUTS_DATA + 4) << 32;
    return Data;
}

u32 XConcat_Get_concat_flag(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_CONCAT_FLAG_DATA);
    return Data;
}

u32 XConcat_Get_concat_flag_vld(XConcat *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_CONCAT_FLAG_CTRL);
    return Data & 0x1;
}

void XConcat_InterruptGlobalEnable(XConcat *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_GIE, 1);
}

void XConcat_InterruptGlobalDisable(XConcat *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_GIE, 0);
}

void XConcat_InterruptEnable(XConcat *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_IER);
    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_IER, Register | Mask);
}

void XConcat_InterruptDisable(XConcat *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_IER);
    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_IER, Register & (~Mask));
}

void XConcat_InterruptClear(XConcat *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConcat_WriteReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_ISR, Mask);
}

u32 XConcat_InterruptGetEnabled(XConcat *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_IER);
}

u32 XConcat_InterruptGetStatus(XConcat *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConcat_ReadReg(InstancePtr->Concat_addr_BaseAddress, XCONCAT_CONCAT_ADDR_ADDR_ISR);
}

