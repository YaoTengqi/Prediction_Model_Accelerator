// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsparse.h"

extern XSparse_Config XSparse_ConfigTable[];

XSparse_Config *XSparse_LookupConfig(u16 DeviceId) {
	XSparse_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSPARSE_NUM_INSTANCES; Index++) {
		if (XSparse_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSparse_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSparse_Initialize(XSparse *InstancePtr, u16 DeviceId) {
	XSparse_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSparse_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSparse_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

