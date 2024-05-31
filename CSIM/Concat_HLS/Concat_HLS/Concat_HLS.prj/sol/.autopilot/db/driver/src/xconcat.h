// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONCAT_H
#define XCONCAT_H

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
#include "xconcat_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Concat_addr_BaseAddress;
} XConcat_Config;
#endif

typedef struct {
    u64 Concat_addr_BaseAddress;
    u32 IsReady;
} XConcat;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConcat_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConcat_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConcat_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConcat_ReadReg(BaseAddress, RegOffset) \
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
int XConcat_Initialize(XConcat *InstancePtr, u16 DeviceId);
XConcat_Config* XConcat_LookupConfig(u16 DeviceId);
int XConcat_CfgInitialize(XConcat *InstancePtr, XConcat_Config *ConfigPtr);
#else
int XConcat_Initialize(XConcat *InstancePtr, const char* InstanceName);
int XConcat_Release(XConcat *InstancePtr);
#endif

void XConcat_Start(XConcat *InstancePtr);
u32 XConcat_IsDone(XConcat *InstancePtr);
u32 XConcat_IsIdle(XConcat *InstancePtr);
u32 XConcat_IsReady(XConcat *InstancePtr);
void XConcat_EnableAutoRestart(XConcat *InstancePtr);
void XConcat_DisableAutoRestart(XConcat *InstancePtr);

void XConcat_Set_input_data_addr1(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_input_data_addr1(XConcat *InstancePtr);
void XConcat_Set_input_data_addr2(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_input_data_addr2(XConcat *InstancePtr);
void XConcat_Set_output_data_addr3(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_output_data_addr3(XConcat *InstancePtr);
void XConcat_Set_ROWS(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_ROWS(XConcat *InstancePtr);
void XConcat_Set_COLS(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_COLS(XConcat *InstancePtr);
void XConcat_Set_mul1(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_mul1(XConcat *InstancePtr);
void XConcat_Set_shift1(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_shift1(XConcat *InstancePtr);
void XConcat_Set_mul2(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_mul2(XConcat *InstancePtr);
void XConcat_Set_shift2(XConcat *InstancePtr, u32 Data);
u32 XConcat_Get_shift2(XConcat *InstancePtr);
void XConcat_Set_inputs(XConcat *InstancePtr, u64 Data);
u64 XConcat_Get_inputs(XConcat *InstancePtr);
void XConcat_Set_outputs(XConcat *InstancePtr, u64 Data);
u64 XConcat_Get_outputs(XConcat *InstancePtr);
u32 XConcat_Get_concat_flag(XConcat *InstancePtr);
u32 XConcat_Get_concat_flag_vld(XConcat *InstancePtr);

void XConcat_InterruptGlobalEnable(XConcat *InstancePtr);
void XConcat_InterruptGlobalDisable(XConcat *InstancePtr);
void XConcat_InterruptEnable(XConcat *InstancePtr, u32 Mask);
void XConcat_InterruptDisable(XConcat *InstancePtr, u32 Mask);
void XConcat_InterruptClear(XConcat *InstancePtr, u32 Mask);
u32 XConcat_InterruptGetEnabled(XConcat *InstancePtr);
u32 XConcat_InterruptGetStatus(XConcat *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
