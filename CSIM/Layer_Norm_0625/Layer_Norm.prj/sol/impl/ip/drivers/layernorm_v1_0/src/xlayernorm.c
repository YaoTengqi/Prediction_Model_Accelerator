// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlayernorm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLayernorm_CfgInitialize(XLayernorm *InstancePtr, XLayernorm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ln_addr_BaseAddress = ConfigPtr->Ln_addr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLayernorm_Start(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL) & 0x80;
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLayernorm_IsDone(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLayernorm_IsIdle(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLayernorm_IsReady(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLayernorm_EnableAutoRestart(XLayernorm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL, 0x80);
}

void XLayernorm_DisableAutoRestart(XLayernorm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_AP_CTRL, 0);
}

void XLayernorm_Set_input_data_addr(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUT_DATA_ADDR_DATA, Data);
}

u32 XLayernorm_Get_input_data_addr(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUT_DATA_ADDR_DATA);
    return Data;
}

void XLayernorm_Set_gama_addr(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_GAMA_ADDR_DATA, Data);
}

u32 XLayernorm_Get_gama_addr(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_GAMA_ADDR_DATA);
    return Data;
}

void XLayernorm_Set_beta_addr(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_BETA_ADDR_DATA, Data);
}

u32 XLayernorm_Get_beta_addr(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_BETA_ADDR_DATA);
    return Data;
}

void XLayernorm_Set_output_data_addr(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUT_DATA_ADDR_DATA, Data);
}

u32 XLayernorm_Get_output_data_addr(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUT_DATA_ADDR_DATA);
    return Data;
}

void XLayernorm_Set_rows(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_ROWS_DATA, Data);
}

u32 XLayernorm_Get_rows(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_ROWS_DATA);
    return Data;
}

void XLayernorm_Set_cols_log(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_COLS_LOG_DATA, Data);
}

u32 XLayernorm_Get_cols_log(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_COLS_LOG_DATA);
    return Data;
}

void XLayernorm_Set_q_value(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_Q_VALUE_DATA, Data);
}

u32 XLayernorm_Get_q_value(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_Q_VALUE_DATA);
    return Data;
}

void XLayernorm_Set_shift_value(XLayernorm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_SHIFT_VALUE_DATA, Data);
}

u32 XLayernorm_Get_shift_value(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_SHIFT_VALUE_DATA);
    return Data;
}

u32 XLayernorm_Get_done(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_DONE_DATA);
    return Data;
}

u32 XLayernorm_Get_done_vld(XLayernorm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_DONE_CTRL);
    return Data & 0x1;
}

void XLayernorm_Set_inputs(XLayernorm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUTS_DATA, (u32)(Data));
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XLayernorm_Get_inputs(XLayernorm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUTS_DATA);
    Data += (u64)XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_INPUTS_DATA + 4) << 32;
    return Data;
}

void XLayernorm_Set_outputs(XLayernorm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUTS_DATA, (u32)(Data));
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUTS_DATA + 4, (u32)(Data >> 32));
}

u64 XLayernorm_Get_outputs(XLayernorm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUTS_DATA);
    Data += (u64)XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_OUTPUTS_DATA + 4) << 32;
    return Data;
}

void XLayernorm_Set_paras(XLayernorm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_PARAS_DATA, (u32)(Data));
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_PARAS_DATA + 4, (u32)(Data >> 32));
}

u64 XLayernorm_Get_paras(XLayernorm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_PARAS_DATA);
    Data += (u64)XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_PARAS_DATA + 4) << 32;
    return Data;
}

void XLayernorm_InterruptGlobalEnable(XLayernorm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_GIE, 1);
}

void XLayernorm_InterruptGlobalDisable(XLayernorm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_GIE, 0);
}

void XLayernorm_InterruptEnable(XLayernorm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_IER);
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_IER, Register | Mask);
}

void XLayernorm_InterruptDisable(XLayernorm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_IER);
    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_IER, Register & (~Mask));
}

void XLayernorm_InterruptClear(XLayernorm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayernorm_WriteReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_ISR, Mask);
}

u32 XLayernorm_InterruptGetEnabled(XLayernorm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_IER);
}

u32 XLayernorm_InterruptGetStatus(XLayernorm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLayernorm_ReadReg(InstancePtr->Ln_addr_BaseAddress, XLAYERNORM_LN_ADDR_ADDR_ISR);
}

