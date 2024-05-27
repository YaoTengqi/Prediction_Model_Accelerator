; ModuleID = '/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Concat_HLS/Concat_HLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: noinline
define void @apatb_concat_ir(i32 %input_data_addr1, i32 %input_data_addr2, i32 %output_data_addr3, i32 %ROWS, i32 %COLS, %"struct.ap_uint<256>"* noalias nonnull %inputs, %"struct.ap_uint<256>"* noalias nocapture nonnull %outputs, i1* noalias nocapture nonnull dereferenceable(1) %concat_flag) local_unnamed_addr #0 {
entry:
  %inputs_copy = alloca i256, align 512
  %outputs_copy = alloca i256, align 512
  %concat_flag_copy = alloca i1, align 512
  call fastcc void @copy_in(%"struct.ap_uint<256>"* nonnull %inputs, i256* nonnull align 512 %inputs_copy, %"struct.ap_uint<256>"* nonnull %outputs, i256* nonnull align 512 %outputs_copy, i1* nonnull %concat_flag, i1* nonnull align 512 %concat_flag_copy)
  call void @apatb_concat_hw(i32 %input_data_addr1, i32 %input_data_addr2, i32 %output_data_addr3, i32 %ROWS, i32 %COLS, i256* %inputs_copy, i256* %outputs_copy, i1* %concat_flag_copy)
  call void @copy_back(%"struct.ap_uint<256>"* %inputs, i256* %inputs_copy, %"struct.ap_uint<256>"* %outputs, i256* %outputs_copy, i1* %concat_flag, i1* %concat_flag_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_uint<256>"* noalias readonly "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0.0.0", %"struct.ap_uint<256>"* noalias readonly "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0.0.0", i1* noalias readonly "unpacked"="4", i1* noalias align 512 "unpacked"="5") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.17.21"(i256* align 512 %1, %"struct.ap_uint<256>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.17.21"(i256* align 512 %3, %"struct.ap_uint<256>"* %2)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %5, i1* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_uint<256>"* noalias "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", %"struct.ap_uint<256>"* noalias "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", i1* noalias "unpacked"="4", i1* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %2, i256* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* noalias "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<256>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i256, i256* %1, align 512
  store i256 %3, i256* %.01.0.05, align 32
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>.17.21"(i256* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<256>"* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<256>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<256>", %"struct.ap_uint<256>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i256, i256* %.0.0.04, align 32
  store i256 %3, i256* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_concat_hw(i32, i32, i32, i32, i32, i256*, i256*, i1*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_uint<256>"* noalias "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", %"struct.ap_uint<256>"* noalias "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", i1* noalias "unpacked"="4", i1* noalias readonly align 512 "unpacked"="5") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<256>"(%"struct.ap_uint<256>"* %2, i256* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  ret void
}

define void @concat_hw_stub_wrapper(i32, i32, i32, i32, i32, i256*, i256*, i1*) #4 {
entry:
  %8 = alloca %"struct.ap_uint<256>"
  %9 = alloca %"struct.ap_uint<256>"
  call void @copy_out(%"struct.ap_uint<256>"* %8, i256* %5, %"struct.ap_uint<256>"* %9, i256* %6, i1* null, i1* %7)
  call void @concat_hw_stub(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %"struct.ap_uint<256>"* %8, %"struct.ap_uint<256>"* %9, i1* %7)
  call void @copy_in(%"struct.ap_uint<256>"* %8, i256* %5, %"struct.ap_uint<256>"* %9, i256* %6, i1* null, i1* %7)
  ret void
}

declare void @concat_hw_stub(i32, i32, i32, i32, i32, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, i1*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
