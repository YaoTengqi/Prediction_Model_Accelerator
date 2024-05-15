// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xreshape.h"

extern XReshape_Config XReshape_ConfigTable[];

XReshape_Config *XReshape_LookupConfig(u16 DeviceId) {
	XReshape_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRESHAPE_NUM_INSTANCES; Index++) {
		if (XReshape_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XReshape_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XReshape_Initialize(XReshape *InstancePtr, u16 DeviceId) {
	XReshape_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XReshape_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XReshape_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

