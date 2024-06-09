// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xconcat.h"

extern XConcat_Config XConcat_ConfigTable[];

XConcat_Config *XConcat_LookupConfig(u16 DeviceId) {
	XConcat_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCONCAT_NUM_INSTANCES; Index++) {
		if (XConcat_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XConcat_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XConcat_Initialize(XConcat *InstancePtr, u16 DeviceId) {
	XConcat_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XConcat_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XConcat_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

