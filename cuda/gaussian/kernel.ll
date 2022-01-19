; ModuleID = 'kernel.bc'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intra_warp_index = thread_local local_unnamed_addr global i32 0
@inter_warp_index = thread_local local_unnamed_addr global i32 0
@block_index = external thread_local local_unnamed_addr global i32

; Function Attrs: nofree norecurse nounwind
define dso_local void @_Z4Fan1PfS_ii(float* noalias nocapture %m_cuda, float* noalias nocapture readonly %a_cuda, i32 %Size, i32 %t) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @block_index, align 4
  %mul = shl i32 %0, 15
  %1 = xor i32 %t, -1
  %sub3 = add i32 %1, %Size
  %add9 = add i32 %t, 1
  %idx.ext12 = sext i32 %t to i64
  %mul14 = mul nsw i32 %t, %Size
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds float, float* %a_cuda, i64 %idx.ext15
  %add.ptr18 = getelementptr inbounds float, float* %add.ptr16, i64 %idx.ext12
  %2 = zext i32 %mul to i64
  %3 = zext i32 %sub3 to i64
  %add.ptr = getelementptr inbounds float, float* %a_cuda, i64 %idx.ext12
  %add.ptr28 = getelementptr inbounds float, float* %m_cuda, i64 %idx.ext12
  br label %entry_after_block_sync_0

entry_after_block_sync_0:                         ; preds = %return, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %return ]
  %4 = add nuw nsw i64 %indvars.iv, %2
  %cmp = icmp ult i64 %4, %3
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry_after_block_sync_0
  %5 = trunc i64 %4 to i32
  %add10 = add i32 %add9, %5
  %mul11 = mul i32 %add10, %Size
  %idx.ext = zext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext
  %6 = load float, float* %add.ptr13, align 4, !tbaa !11, !llvm.mem.parallel_loop_access !15
  %7 = load float, float* %add.ptr18, align 4, !tbaa !11, !llvm.mem.parallel_loop_access !15
  %div = fdiv float %6, %7
  %add.ptr30 = getelementptr inbounds float, float* %add.ptr28, i64 %idx.ext
  store float %div, float* %add.ptr30, align 4, !tbaa !11, !llvm.mem.parallel_loop_access !15
  br label %return

return:                                           ; preds = %if.end, %entry_after_block_sync_0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond, label %return_after_block_sync_1, label %entry_after_block_sync_0, !llvm.loop !17

return_after_block_sync_1:                        ; preds = %return
  ret void
}

; Function Attrs: nofree noreturn nounwind
define dso_local void @_Z4Fan2PfS_S_iii(float* noalias nocapture readonly %m_cuda, float* noalias nocapture readnone %a_cuda, float* noalias nocapture readnone %b_cuda, i32 %Size, i32 %j1, i32 %t) local_unnamed_addr #1 {
entry:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nofree norecurse nounwind
define void @_Z4Fan1PfS_ii_wrapper(i8* noalias nocapture readonly %0) local_unnamed_addr #2 {
  %2 = bitcast i8* %0 to float***
  %3 = load float**, float*** %2, align 8
  %4 = load float*, float** %3, align 8
  %5 = getelementptr i8, i8* %0, i64 8
  %6 = bitcast i8* %5 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8, i8* %0, i64 16
  %10 = bitcast i8* %9 to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr i8, i8* %0, i64 24
  %14 = bitcast i8* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  tail call void @_Z4Fan1PfS_ii(float* %4, float* %8, i32 %12, i32 %16)
  ret void
}

; Function Attrs: nofree noreturn nounwind
define void @_Z4Fan2PfS_S_iii_wrapper(i8* noalias nocapture readonly %0) local_unnamed_addr #3 {
  %2 = bitcast i8* %0 to float***
  %3 = load float**, float*** %2, align 8
  %4 = load float*, float** %3, align 8
  %5 = getelementptr i8, i8* %0, i64 8
  %6 = bitcast i8* %5 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8, i8* %0, i64 16
  %10 = bitcast i8* %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8, i8* %0, i64 24
  %14 = bitcast i8* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr i8, i8* %0, i64 40
  %18 = bitcast i8* %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  tail call void @_Z4Fan2PfS_S_iii(float* %4, float* %8, float* %12, i32 %16, i32 undef, i32 %20)
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree norecurse nounwind }
attributes #3 = { nofree noreturn nounwind }
attributes #4 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!nvvm.annotations = !{!3, !4, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7}
!llvm.ident = !{!9}
!nvvmir.version = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{void (float*, float*, i32, i32)* @_Z4Fan1PfS_ii, !"kernel", i32 1}
!4 = !{void (float*, float*, float*, i32, i32, i32)* @_Z4Fan2PfS_S_iii, !"kernel", i32 1}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!9 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!10 = !{i32 1, i32 4}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!16}
!16 = distinct !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.parallel_accesses", !16}
