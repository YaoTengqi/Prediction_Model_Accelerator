// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSPARSE_H
#define XSPARSE_H

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
#include "xsparse_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Sparse_addr_BaseAddress;
} XSparse_Config;
#endif

typedef struct {
    u64 Sparse_addr_BaseAddress;
    u32 IsReady;
} XSparse;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSparse_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSparse_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSparse_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSparse_ReadReg(BaseAddress, RegOffset) \
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
int XSparse_Initialize(XSparse *InstancePtr, u16 DeviceId);
XSparse_Config* XSparse_LookupConfig(u16 DeviceId);
int XSparse_CfgInitialize(XSparse *InstancePtr, XSparse_Config *ConfigPtr);
#else
int XSparse_Initialize(XSparse *InstancePtr, const char* InstanceName);
int XSparse_Release(XSparse *InstancePtr);
#endif

void XSparse_Start(XSparse *InstancePtr);
u32 XSparse_IsDone(XSparse *InstancePtr);
u32 XSparse_IsIdle(XSparse *InstancePtr);
u32 XSparse_IsReady(XSparse *InstancePtr);
void XSparse_EnableAutoRestart(XSparse *InstancePtr);
void XSparse_DisableAutoRestart(XSparse *InstancePtr);

void XSparse_Set_input_data_addr1(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_input_data_addr1(XSparse *InstancePtr);
void XSparse_Set_input_data_addr2(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_input_data_addr2(XSparse *InstancePtr);
void XSparse_Set_output_data_addr3(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_output_data_addr3(XSparse *InstancePtr);
void XSparse_Set_am_ROWS(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_am_ROWS(XSparse *InstancePtr);
void XSparse_Set_am_COLS(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_am_COLS(XSparse *InstancePtr);
void XSparse_Set_fm_ROWS(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_fm_ROWS(XSparse *InstancePtr);
void XSparse_Set_fm_COLS(XSparse *InstancePtr, u32 Data);
u32 XSparse_Get_fm_COLS(XSparse *InstancePtr);
void XSparse_Set_inputs(XSparse *InstancePtr, u64 Data);
u64 XSparse_Get_inputs(XSparse *InstancePtr);
void XSparse_Set_outputs(XSparse *InstancePtr, u64 Data);
u64 XSparse_Get_outputs(XSparse *InstancePtr);
u32 XSparse_Get_sparse_flag(XSparse *InstancePtr);
u32 XSparse_Get_sparse_flag_vld(XSparse *InstancePtr);

void XSparse_InterruptGlobalEnable(XSparse *InstancePtr);
void XSparse_InterruptGlobalDisable(XSparse *InstancePtr);
void XSparse_InterruptEnable(XSparse *InstancePtr, u32 Mask);
void XSparse_InterruptDisable(XSparse *InstancePtr, u32 Mask);
void XSparse_InterruptClear(XSparse *InstancePtr, u32 Mask);
u32 XSparse_InterruptGetEnabled(XSparse *InstancePtr);
u32 XSparse_InterruptGetStatus(XSparse *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
