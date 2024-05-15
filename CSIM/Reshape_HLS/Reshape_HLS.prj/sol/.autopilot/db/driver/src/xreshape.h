// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRESHAPE_H
#define XRESHAPE_H

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
#include "xreshape_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Reshape_addr_BaseAddress;
} XReshape_Config;
#endif

typedef struct {
    u64 Reshape_addr_BaseAddress;
    u32 IsReady;
} XReshape;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XReshape_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XReshape_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XReshape_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XReshape_ReadReg(BaseAddress, RegOffset) \
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
int XReshape_Initialize(XReshape *InstancePtr, u16 DeviceId);
XReshape_Config* XReshape_LookupConfig(u16 DeviceId);
int XReshape_CfgInitialize(XReshape *InstancePtr, XReshape_Config *ConfigPtr);
#else
int XReshape_Initialize(XReshape *InstancePtr, const char* InstanceName);
int XReshape_Release(XReshape *InstancePtr);
#endif

void XReshape_Start(XReshape *InstancePtr);
u32 XReshape_IsDone(XReshape *InstancePtr);
u32 XReshape_IsIdle(XReshape *InstancePtr);
u32 XReshape_IsReady(XReshape *InstancePtr);
void XReshape_EnableAutoRestart(XReshape *InstancePtr);
void XReshape_DisableAutoRestart(XReshape *InstancePtr);

void XReshape_Set_input_data_addr(XReshape *InstancePtr, u32 Data);
u32 XReshape_Get_input_data_addr(XReshape *InstancePtr);
void XReshape_Set_inputs(XReshape *InstancePtr, u64 Data);
u64 XReshape_Get_inputs(XReshape *InstancePtr);
void XReshape_Set_outputs(XReshape *InstancePtr, u64 Data);
u64 XReshape_Get_outputs(XReshape *InstancePtr);
void XReshape_Set_ROWS(XReshape *InstancePtr, u32 Data);
u32 XReshape_Get_ROWS(XReshape *InstancePtr);
void XReshape_Set_COLS(XReshape *InstancePtr, u32 Data);
u32 XReshape_Get_COLS(XReshape *InstancePtr);
u32 XReshape_Get_reshape_flag(XReshape *InstancePtr);
u32 XReshape_Get_reshape_flag_vld(XReshape *InstancePtr);

void XReshape_InterruptGlobalEnable(XReshape *InstancePtr);
void XReshape_InterruptGlobalDisable(XReshape *InstancePtr);
void XReshape_InterruptEnable(XReshape *InstancePtr, u32 Mask);
void XReshape_InterruptDisable(XReshape *InstancePtr, u32 Mask);
void XReshape_InterruptClear(XReshape *InstancePtr, u32 Mask);
u32 XReshape_InterruptGetEnabled(XReshape *InstancePtr);
u32 XReshape_InterruptGetStatus(XReshape *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
