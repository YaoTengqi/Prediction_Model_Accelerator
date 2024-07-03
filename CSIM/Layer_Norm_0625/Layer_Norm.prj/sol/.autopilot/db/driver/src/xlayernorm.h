// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLAYERNORM_H
#define XLAYERNORM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlayernorm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ln_addr_BaseAddress;
} XLayernorm_Config;
#endif

typedef struct {
    u64 Ln_addr_BaseAddress;
    u32 IsReady;
} XLayernorm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLayernorm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLayernorm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLayernorm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLayernorm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLayernorm_Initialize(XLayernorm *InstancePtr, u16 DeviceId);
XLayernorm_Config* XLayernorm_LookupConfig(u16 DeviceId);
int XLayernorm_CfgInitialize(XLayernorm *InstancePtr, XLayernorm_Config *ConfigPtr);
#else
int XLayernorm_Initialize(XLayernorm *InstancePtr, const char* InstanceName);
int XLayernorm_Release(XLayernorm *InstancePtr);
#endif

void XLayernorm_Start(XLayernorm *InstancePtr);
u32 XLayernorm_IsDone(XLayernorm *InstancePtr);
u32 XLayernorm_IsIdle(XLayernorm *InstancePtr);
u32 XLayernorm_IsReady(XLayernorm *InstancePtr);
void XLayernorm_EnableAutoRestart(XLayernorm *InstancePtr);
void XLayernorm_DisableAutoRestart(XLayernorm *InstancePtr);

void XLayernorm_Set_input_data_addr(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_input_data_addr(XLayernorm *InstancePtr);
void XLayernorm_Set_gama_addr(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_gama_addr(XLayernorm *InstancePtr);
void XLayernorm_Set_beta_addr(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_beta_addr(XLayernorm *InstancePtr);
void XLayernorm_Set_output_data_addr(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_output_data_addr(XLayernorm *InstancePtr);
void XLayernorm_Set_rows(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_rows(XLayernorm *InstancePtr);
void XLayernorm_Set_cols_log(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_cols_log(XLayernorm *InstancePtr);
void XLayernorm_Set_q_value(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_q_value(XLayernorm *InstancePtr);
void XLayernorm_Set_shift_value(XLayernorm *InstancePtr, u32 Data);
u32 XLayernorm_Get_shift_value(XLayernorm *InstancePtr);
u32 XLayernorm_Get_done(XLayernorm *InstancePtr);
u32 XLayernorm_Get_done_vld(XLayernorm *InstancePtr);
void XLayernorm_Set_inputs(XLayernorm *InstancePtr, u64 Data);
u64 XLayernorm_Get_inputs(XLayernorm *InstancePtr);
void XLayernorm_Set_outputs(XLayernorm *InstancePtr, u64 Data);
u64 XLayernorm_Get_outputs(XLayernorm *InstancePtr);
void XLayernorm_Set_paras(XLayernorm *InstancePtr, u64 Data);
u64 XLayernorm_Get_paras(XLayernorm *InstancePtr);

void XLayernorm_InterruptGlobalEnable(XLayernorm *InstancePtr);
void XLayernorm_InterruptGlobalDisable(XLayernorm *InstancePtr);
void XLayernorm_InterruptEnable(XLayernorm *InstancePtr, u32 Mask);
void XLayernorm_InterruptDisable(XLayernorm *InstancePtr, u32 Mask);
void XLayernorm_InterruptClear(XLayernorm *InstancePtr, u32 Mask);
u32 XLayernorm_InterruptGetEnabled(XLayernorm *InstancePtr);
u32 XLayernorm_InterruptGetStatus(XLayernorm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
