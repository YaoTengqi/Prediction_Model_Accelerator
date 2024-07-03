; ModuleID = '/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Layer_Norm_0612/Layer_Norm.prj/sol/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: noinline
define void @apatb_layernorm_ir(i32 %input_data_addr, i32 %gama_addr, i32 %beta_addr, i32 %output_data_addr, i32 %rows, i32 %cols_log, i32 %q_value, i32 %shift_value, i32* noalias nocapture nonnull dereferenceable(4) %done, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly %inputs, %"struct.ap_uint<256>"* noalias nocapture nonnull %outputs, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly %paras) local_unnamed_addr #0 {
entry:
  %done_copy = alloca i32, align 512
  %inputs_copy = alloca [8 x i256], align 512
  %outputs_copy = alloca [8 x i256], align 512
  %paras_copy = alloca [8 x i256], align 512
  %0 = bitcast %"struct.ap_uint<256>"* %inputs to [8 x %"struct.ap_uint<256>"]*
  %1 = bitcast %"struct.ap_uint<256>"* %outputs to [8 x %"struct.ap_uint<256>"]*
  %2 = bitcast %"struct.ap_uint<256>"* %paras to [8 x %"struct.ap_uint<256>"]*
  call fastcc void @copy_in(i32* nonnull %done, i32* nonnull align 512 %done_copy, [8 x %"struct.ap_uint<256>"]* nonnull %0, [8 x i256]* nonnull align 512 %inputs_copy, [8 x %"struct.ap_uint<256>"]* nonnull %1, [8 x i256]* nonnull align 512 %outputs_copy, [8 x %"struct.ap_uint<256>"]* nonnull %2, [8 x i256]* nonnull align 512 %paras_copy)
  %3 = getelementptr [8 x i256], [8 x i256]* %inputs_copy, i32 0, i32 0
  %4 = getelementptr [8 x i256], [8 x i256]* %outputs_copy, i32 0, i32 0
  %5 = getelementptr [8 x i256], [8 x i256]* %paras_copy, i32 0, i32 0
  call void @apatb_layernorm_hw(i32 %input_data_addr, i32 %gama_addr, i32 %beta_addr, i32 %output_data_addr, i32 %rows, i32 %cols_log, i32 %q_value, i32 %shift_value, i32* %done_copy, i256* %3, i256* %4, i256* %5)
  call void @copy_back(i32* %done, i32* %done_copy, [8 x %"struct.ap_uint<256>"]* %0, [8 x i256]* %inputs_copy, [8 x %"struct.ap_uint<256>"]* %1, [8 x i256]* %outputs_copy, [8 x %"struct.ap_uint<256>"]* %2, [8 x i256]* %paras_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(i32* noalias readonly "unpacked"="0", i32* noalias align 512 "unpacked"="1", [8 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="2", [8 x i256]* noalias nocapture align 512 "unpacked"="3.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="4", [8 x i256]* noalias nocapture align 512 "unpacked"="5.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="6", [8 x i256]* noalias nocapture align 512 "unpacked"="7.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>"([8 x i256]* align 512 %3, [8 x %"struct.ap_uint<256>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>"([8 x i256]* align 512 %5, [8 x %"struct.ap_uint<256>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>"([8 x i256]* align 512 %7, [8 x %"struct.ap_uint<256>"]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="6", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="7.0.0.0") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>.115.127.147"([8 x %"struct.ap_uint<256>"]* %2, [8 x i256]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>.115.127.147"([8 x %"struct.ap_uint<256>"]* %4, [8 x i256]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>.115.127.147"([8 x %"struct.ap_uint<256>"]* %6, [8 x i256]* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>.115.127.147"([8 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x %"struct.ap_uint<256>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i256], [8 x i256]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_uint<256>"], [8 x %"struct.ap_uint<256>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>"([8 x i256]* noalias nocapture align 512 "unpacked"="0.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x %"struct.ap_uint<256>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_uint<256>"], [8 x %"struct.ap_uint<256>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i256], [8 x i256]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_layernorm_hw(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i256*, i256*, i256*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(i32* noalias "unpacked"="0", i32* noalias readonly align 512 "unpacked"="1", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", [8 x %"struct.ap_uint<256>"]* noalias "unpacked"="6", [8 x i256]* noalias nocapture readonly align 512 "unpacked"="7.0.0.0") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_uint<256>.115.127.147"([8 x %"struct.ap_uint<256>"]* %4, [8 x i256]* align 512 %5)
  ret void
}

define void @layernorm_hw_stub_wrapper(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i256*, i256*, i256*) #4 {
entry:
  %12 = alloca [8 x %"struct.ap_uint<256>"]
  %13 = alloca [8 x %"struct.ap_uint<256>"]
  %14 = alloca [8 x %"struct.ap_uint<256>"]
  %15 = bitcast i256* %9 to [8 x i256]*
  %16 = bitcast i256* %10 to [8 x i256]*
  %17 = bitcast i256* %11 to [8 x i256]*
  call void @copy_out(i32* null, i32* %8, [8 x %"struct.ap_uint<256>"]* %12, [8 x i256]* %15, [8 x %"struct.ap_uint<256>"]* %13, [8 x i256]* %16, [8 x %"struct.ap_uint<256>"]* %14, [8 x i256]* %17)
  %18 = bitcast [8 x %"struct.ap_uint<256>"]* %12 to %"struct.ap_uint<256>"*
  %19 = bitcast [8 x %"struct.ap_uint<256>"]* %13 to %"struct.ap_uint<256>"*
  %20 = bitcast [8 x %"struct.ap_uint<256>"]* %14 to %"struct.ap_uint<256>"*
  call void @layernorm_hw_stub(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, %"struct.ap_uint<256>"* %18, %"struct.ap_uint<256>"* %19, %"struct.ap_uint<256>"* %20)
  call void @copy_in(i32* null, i32* %8, [8 x %"struct.ap_uint<256>"]* %12, [8 x i256]* %15, [8 x %"struct.ap_uint<256>"]* %13, [8 x i256]* %16, [8 x %"struct.ap_uint<256>"]* %14, [8 x i256]* %17)
  ret void
}

declare void @layernorm_hw_stub(i32, i32, i32, i32, i32, i32, i32, i32, i32*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*)

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
