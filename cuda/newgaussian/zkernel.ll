; ModuleID = 'kernel.bc'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intra_warp_index = thread_local local_unnamed_addr global i32 0
@inter_warp_index = thread_local local_unnamed_addr global i32 0
@block_index = external thread_local local_unnamed_addr global i32

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan1PfS_ii(float* noalias %m_cuda, float* noalias %a_cuda, i32 %Size, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32      
  %local_inter_warp_idx = alloca i32  
  %t.addr_intra_warp_ = alloca i32, i32 512
  %Size.addr_intra_warp_ = alloca i32, i32 512
  %a_cuda.addr_intra_warp_ = alloca float*, i32 512
  %m_cuda.addr_intra_warp_ = alloca float*, i32 512
  %m_cuda.addr = alloca float*, align 8
  br label %entry_after_block_sync_1

entry_after_block_sync_1:                         ; preds = %entry
  %a_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  br label %entry_after_block_sync_0

entry_after_block_sync_0:                         ; preds = %entry_after_block_sync_1
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %entry_after_block_sync_0
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %return
  %0 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %0, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %1 = load i32, i32* %local_intra_warp_idx
  %2 = icmp ult i32 %1, 512
  br i1 %2, label %entry_after_block_sync_0_after_block_sync_2, label %reset_block, !llvm.loop !11



entry_after_block_sync_0_after_block_sync_2:      ; preds = %intra_warp_cond
  %3 = load i32, i32* %local_inter_warp_idx   ;0
  %4 = load i32, i32* %local_intra_warp_idx   ;0
  %5 = mul i32 %3, 32                         ;0
  %thread_idx1 = add i32 %4, %5               ;0
  %6 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx1
  store float* %m_cuda, float** %6, align 8, !llvm.mem.parallel_loop_access !14
  %7 = load i32, i32* %local_inter_warp_idx
  %8 = load i32, i32* %local_intra_warp_idx
  %9 = mul i32 %7, 32
  %thread_idx4 = add i32 %8, %9
  %10 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx4
  store float* %a_cuda, float** %10, align 8, !llvm.mem.parallel_loop_access !14
  %11 = load i32, i32* %local_inter_warp_idx
  %12 = load i32, i32* %local_intra_warp_idx
  %13 = mul i32 %11, 32
  %thread_idx9 = add i32 %12, %13
  %14 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  store i32 %Size, i32* %14, align 4, !llvm.mem.parallel_loop_access !14
  %15 = load i32, i32* %local_inter_warp_idx
  %16 = load i32, i32* %local_intra_warp_idx
  %17 = mul i32 %15, 32
  %thread_idx17 = add i32 %16, %17
  %18 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  store i32 %t, i32* %18, align 4, !llvm.mem.parallel_loop_access !14
  %19 = load i32, i32* %local_inter_warp_idx
  %20 = mul i32 %19, 32
  %21 = load i32, i32* %local_intra_warp_idx
  %thread_idx18 = add i32 %21, %20
  %22 = load i32, i32* @block_index
  %mul = mul i32 %22, 512
  %add = add i32 %thread_idx18, %mul
  %23 = load i32, i32* %local_inter_warp_idx
  %24 = load i32, i32* %local_intra_warp_idx
  %25 = mul i32 %23, 32
  %thread_idx8 = add i32 %24, %25
  %26 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx8
  %27 = load i32, i32* %26, align 4, !llvm.mem.parallel_loop_access !14
  %sub = sub nsw i32 %27, 1
  %28 = load i32, i32* %local_inter_warp_idx
  %29 = load i32, i32* %local_intra_warp_idx
  %30 = mul i32 %28, 32
  %thread_idx16 = add i32 %29, %30
  %31 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx16
  %32 = load i32, i32* %31, align 4, !llvm.mem.parallel_loop_access !14
  %sub3 = sub nsw i32 %sub, %32
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry_after_block_sync_0_after_block_sync_2
  br label %return

if.end:                                           ; preds = %entry_after_block_sync_0_after_block_sync_2
  %33 = load i32, i32* %local_inter_warp_idx
  %34 = load i32, i32* %local_intra_warp_idx
  %35 = mul i32 %33, 32
  %thread_idx3 = add i32 %34, %35
  %36 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %37 = load float*, float** %36, align 8, !llvm.mem.parallel_loop_access !14
  %38 = load i32, i32* %local_inter_warp_idx
  %39 = load i32, i32* %local_intra_warp_idx
  %40 = mul i32 %38, 32
  %thread_idx7 = add i32 %39, %40
  %41 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx7
  %42 = load i32, i32* %41, align 4, !llvm.mem.parallel_loop_access !14
  %43 = load i32, i32* @block_index
  %mul6 = mul i32 512, %43
  %44 = load i32, i32* %local_inter_warp_idx
  %45 = mul i32 %44, 32
  %46 = load i32, i32* %local_intra_warp_idx
  %thread_idx19 = add i32 %46, %45
  %add8 = add i32 %mul6, %thread_idx19
  %47 = load i32, i32* %local_inter_warp_idx
  %48 = load i32, i32* %local_intra_warp_idx
  %49 = mul i32 %47, 32
  %thread_idx15 = add i32 %48, %49
  %50 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx15
  %51 = load i32, i32* %50, align 4, !llvm.mem.parallel_loop_access !14
  %add9 = add i32 %add8, %51
  %add10 = add i32 %add9, 1
  %mul11 = mul i32 %42, %add10
  %idx.ext = zext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds float, float* %37, i64 %idx.ext
  %52 = load i32, i32* %local_inter_warp_idx
  %53 = load i32, i32* %local_intra_warp_idx
  %54 = mul i32 %52, 32
  %thread_idx14 = add i32 %53, %54
  %55 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx14
  %56 = load i32, i32* %55, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext12 = sext i32 %56 to i64
  %add.ptr13 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext12
  %57 = load float, float* %add.ptr13, align 4, !llvm.mem.parallel_loop_access !14
  %58 = load i32, i32* %local_inter_warp_idx
  %59 = load i32, i32* %local_intra_warp_idx
  %60 = mul i32 %58, 32
  %thread_idx2 = add i32 %59, %60
  %61 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx2
  %62 = load float*, float** %61, align 8, !llvm.mem.parallel_loop_access !14
  %63 = load i32, i32* %local_inter_warp_idx
  %64 = load i32, i32* %local_intra_warp_idx
  %65 = mul i32 %63, 32
  %thread_idx6 = add i32 %64, %65
  %66 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx6
  %67 = load i32, i32* %66, align 4, !llvm.mem.parallel_loop_access !14
  %68 = load i32, i32* %local_inter_warp_idx
  %69 = load i32, i32* %local_intra_warp_idx
  %70 = mul i32 %68, 32
  %thread_idx13 = add i32 %69, %70
  %71 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx13
  %72 = load i32, i32* %71, align 4, !llvm.mem.parallel_loop_access !14
  %mul14 = mul nsw i32 %67, %72
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds float, float* %62, i64 %idx.ext15
  %73 = load i32, i32* %local_inter_warp_idx
  %74 = load i32, i32* %local_intra_warp_idx
  %75 = mul i32 %73, 32
  %thread_idx12 = add i32 %74, %75
  %76 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx12
  %77 = load i32, i32* %76, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext17 = sext i32 %77 to i64
  %add.ptr18 = getelementptr inbounds float, float* %add.ptr16, i64 %idx.ext17
  %78 = load float, float* %add.ptr18, align 4, !llvm.mem.parallel_loop_access !14
  %div = fdiv float %57, %78
  %79 = load i32, i32* %local_inter_warp_idx
  %80 = load i32, i32* %local_intra_warp_idx
  %81 = mul i32 %79, 32
  %thread_idx = add i32 %80, %81
  %82 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %83 = load float*, float** %82, align 8, !llvm.mem.parallel_loop_access !14
  %84 = load i32, i32* %local_inter_warp_idx
  %85 = load i32, i32* %local_intra_warp_idx
  %86 = mul i32 %84, 32
  %thread_idx5 = add i32 %85, %86
  %87 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx5
  %88 = load i32, i32* %87, align 4, !llvm.mem.parallel_loop_access !14
  %89 = load i32, i32* @block_index
  %mul21 = mul i32 512, %89
  %90 = load i32, i32* %local_inter_warp_idx
  %91 = mul i32 %90, 32
  %92 = load i32, i32* %local_intra_warp_idx
  %thread_idx20 = add i32 %92, %91
  %add23 = add i32 %mul21, %thread_idx20
  %93 = load i32, i32* %local_inter_warp_idx
  %94 = load i32, i32* %local_intra_warp_idx
  %95 = mul i32 %93, 32
  %thread_idx11 = add i32 %94, %95
  %96 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx11
  %97 = load i32, i32* %96, align 4, !llvm.mem.parallel_loop_access !14
  %add24 = add i32 %add23, %97
  %add25 = add i32 %add24, 1
  %mul26 = mul i32 %88, %add25
  %idx.ext27 = zext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds float, float* %83, i64 %idx.ext27
  %98 = load i32, i32* %local_inter_warp_idx
  %99 = load i32, i32* %local_intra_warp_idx
  %100 = mul i32 %98, 32
  %thread_idx10 = add i32 %99, %100
  %101 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx10
  %102 = load i32, i32* %101, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext29 = sext i32 %102 to i64
  %add.ptr30 = getelementptr inbounds float, float* %add.ptr28, i64 %idx.ext29
  store float %div, float* %add.ptr30, align 4, !llvm.mem.parallel_loop_access !14
  br label %return

return:                                           ; preds = %if.end, %if.then
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %return_after_block_sync_4

return_after_block_sync_4:                        ; preds = %reset_block
  br label %return_after_block_sync_3

return_after_block_sync_3:                        ; preds = %return_after_block_sync_4
  ret void
}

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan2PfS_S_iii(float* noalias %m_cuda, float* noalias %a_cuda, float* noalias %b_cuda, i32 %Size, i32 %j1, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  %yidx_intra_warp_ = alloca i32, i32 512
  %xidx_intra_warp_ = alloca i32, i32 512
  %t.addr_intra_warp_ = alloca i32, i32 512
  %j1.addr_intra_warp_ = alloca i32, i32 512
  %Size.addr_intra_warp_ = alloca i32, i32 512
  %b_cuda.addr_intra_warp_ = alloca float*, i32 512
  %a_cuda.addr_intra_warp_ = alloca float*, i32 512
  %m_cuda.addr_intra_warp_ = alloca float*, i32 512
  %m_cuda.addr = alloca float*, align 8
  br label %entry_after_block_sync_3

entry_after_block_sync_3:                         ; preds = %entry
  %a_cuda.addr = alloca float*, align 8
  %b_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %xidx = alloca i32, align 4
  %yidx = alloca i32, align 4
  br label %entry_after_block_sync_1

entry_after_block_sync_1:                         ; preds = %entry_after_block_sync_3
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %entry_after_block_sync_1
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %if.end58
  %0 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %0, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %1 = load i32, i32* %local_intra_warp_idx
  %2 = icmp ult i32 %1, 512
  br i1 %2, label %entry_after_block_sync_1_after_block_sync_4, label %reset_block, !llvm.loop !15

entry_after_block_sync_1_after_block_sync_4:      ; preds = %intra_warp_cond
  %3 = load i32, i32* %local_inter_warp_idx
  %4 = load i32, i32* %local_intra_warp_idx
  %5 = mul i32 %3, 32
  %thread_idx2 = add i32 %4, %5
  %6 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx2
  store float* %m_cuda, float** %6, align 8, !llvm.mem.parallel_loop_access !18
  %7 = load i32, i32* %local_inter_warp_idx
  %8 = load i32, i32* %local_intra_warp_idx
  %9 = mul i32 %7, 32
  %thread_idx5 = add i32 %8, %9
  %10 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx5
  store float* %a_cuda, float** %10, align 8, !llvm.mem.parallel_loop_access !18
  %11 = load i32, i32* %local_inter_warp_idx
  %12 = load i32, i32* %local_intra_warp_idx
  %13 = mul i32 %11, 32
  %thread_idx8 = add i32 %12, %13
  %14 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx8
  store float* %b_cuda, float** %14, align 8, !llvm.mem.parallel_loop_access !18
  %15 = load i32, i32* %local_inter_warp_idx
  %16 = load i32, i32* %local_intra_warp_idx
  %17 = mul i32 %15, 32
  %thread_idx15 = add i32 %16, %17
  %18 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx15
  store i32 %Size, i32* %18, align 4, !llvm.mem.parallel_loop_access !18
  %19 = load i32, i32* %local_inter_warp_idx
  %20 = load i32, i32* %local_intra_warp_idx
  %21 = mul i32 %19, 32
  %thread_idx16 = add i32 %20, %21
  %22 = getelementptr i32, i32* %j1.addr_intra_warp_, i32 %thread_idx16
  store i32 %j1, i32* %22, align 4, !llvm.mem.parallel_loop_access !18
  %23 = load i32, i32* %local_inter_warp_idx
  %24 = load i32, i32* %local_intra_warp_idx
  %25 = mul i32 %23, 32
  %thread_idx29 = add i32 %24, %25
  %26 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx29
  store i32 %t, i32* %26, align 4, !llvm.mem.parallel_loop_access !18
  %27 = load i32, i32* %local_inter_warp_idx
  %28 = mul i32 %27, 32
  %29 = load i32, i32* %local_intra_warp_idx
  %thread_idx40 = add i32 %29, %28
  %30 = load i32, i32* @block_index
  %mul = mul i32 %30, 512
  %add = add i32 %thread_idx40, %mul
  %31 = load i32, i32* %local_inter_warp_idx
  %32 = load i32, i32* %local_intra_warp_idx
  %33 = mul i32 %31, 32
  %thread_idx14 = add i32 %32, %33
  %34 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx14
  %35 = load i32, i32* %34, align 4, !llvm.mem.parallel_loop_access !18
  %sub = sub nsw i32 %35, 1
  %36 = load i32, i32* %local_inter_warp_idx
  %37 = load i32, i32* %local_intra_warp_idx
  %38 = mul i32 %36, 32
  %thread_idx28 = add i32 %37, %38
  %39 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx28
  %40 = load i32, i32* %39, align 4, !llvm.mem.parallel_loop_access !18
  %sub3 = sub nsw i32 %sub, %40
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry_after_block_sync_1_after_block_sync_4
  br label %if.end58

if.end:                                           ; preds = %entry_after_block_sync_1_after_block_sync_4
  %41 = load i32, i32* %local_inter_warp_idx
  %42 = mul i32 %41, 32
  %43 = load i32, i32* %local_intra_warp_idx
  %thread_idx41 = add i32 %43, %42
  %thread_id_y = sdiv i32 %thread_idx41, 512
  %add8 = add i32 %thread_id_y, 0
  %44 = load i32, i32* %local_inter_warp_idx
  %45 = load i32, i32* %local_intra_warp_idx
  %46 = mul i32 %44, 32
  %thread_idx13 = add i32 %45, %46
  %47 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx13
  %48 = load i32, i32* %47, align 4, !llvm.mem.parallel_loop_access !18
  %49 = load i32, i32* %local_inter_warp_idx
  %50 = load i32, i32* %local_intra_warp_idx
  %51 = mul i32 %49, 32
  %thread_idx27 = add i32 %50, %51
  %52 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx27
  %53 = load i32, i32* %52, align 4, !llvm.mem.parallel_loop_access !18
  %sub9 = sub nsw i32 %48, %53
  %cmp10 = icmp uge i32 %add8, %sub9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %if.end58

if.end12:                                         ; preds = %if.end
  %54 = load i32, i32* @block_index
  %mul15 = mul i32 %54, 512
  %55 = load i32, i32* %local_inter_warp_idx
  %56 = mul i32 %55, 32
  %57 = load i32, i32* %local_intra_warp_idx
  %thread_idx42 = add i32 %57, %56
  %add17 = add i32 %mul15, %thread_idx42
  %58 = load i32, i32* %local_inter_warp_idx
  %59 = load i32, i32* %local_intra_warp_idx
  %60 = mul i32 %58, 32
  %thread_idx34 = add i32 %59, %60
  %61 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx34
  store i32 %add17, i32* %61, align 4, !llvm.mem.parallel_loop_access !18
  %62 = load i32, i32* %local_inter_warp_idx
  %63 = mul i32 %62, 32
  %64 = load i32, i32* %local_intra_warp_idx
  %thread_idx43 = add i32 %64, %63
  %thread_id_y44 = sdiv i32 %thread_idx43, 512
  %add22 = add i32 0, %thread_id_y44
  %65 = load i32, i32* %local_inter_warp_idx
  %66 = load i32, i32* %local_intra_warp_idx
  %67 = mul i32 %65, 32
  %thread_idx39 = add i32 %66, %67
  %68 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx39
  store i32 %add22, i32* %68, align 4, !llvm.mem.parallel_loop_access !18
  %69 = load i32, i32* %local_inter_warp_idx
  %70 = load i32, i32* %local_intra_warp_idx
  %71 = mul i32 %69, 32
  %thread_idx1 = add i32 %70, %71
  %72 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx1
  %73 = load float*, float** %72, align 8, !llvm.mem.parallel_loop_access !18
  %74 = load i32, i32* %local_inter_warp_idx
  %75 = load i32, i32* %local_intra_warp_idx
  %76 = mul i32 %74, 32
  %thread_idx12 = add i32 %75, %76
  %77 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx12
  %78 = load i32, i32* %77, align 4, !llvm.mem.parallel_loop_access !18
  %79 = load i32, i32* %local_inter_warp_idx
  %80 = load i32, i32* %local_intra_warp_idx
  %81 = mul i32 %79, 32
  %thread_idx33 = add i32 %80, %81
  %82 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx33
  %83 = load i32, i32* %82, align 4, !llvm.mem.parallel_loop_access !18
  %add23 = add nsw i32 %83, 1
  %84 = load i32, i32* %local_inter_warp_idx
  %85 = load i32, i32* %local_intra_warp_idx
  %86 = mul i32 %84, 32
  %thread_idx26 = add i32 %85, %86
  %87 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx26
  %88 = load i32, i32* %87, align 4, !llvm.mem.parallel_loop_access !18
  %add24 = add nsw i32 %add23, %88
  %mul25 = mul nsw i32 %78, %add24
  %89 = load i32, i32* %local_inter_warp_idx
  %90 = load i32, i32* %local_intra_warp_idx
  %91 = mul i32 %89, 32
  %thread_idx25 = add i32 %90, %91
  %92 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx25
  %93 = load i32, i32* %92, align 4, !llvm.mem.parallel_loop_access !18
  %add26 = add nsw i32 %mul25, %93
  %idxprom = sext i32 %add26 to i64
  %arrayidx = getelementptr inbounds float, float* %73, i64 %idxprom
  %94 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !18
  %95 = load i32, i32* %local_inter_warp_idx
  %96 = load i32, i32* %local_intra_warp_idx
  %97 = mul i32 %95, 32
  %thread_idx4 = add i32 %96, %97
  %98 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx4
  %99 = load float*, float** %98, align 8, !llvm.mem.parallel_loop_access !18
  %100 = load i32, i32* %local_inter_warp_idx
  %101 = load i32, i32* %local_intra_warp_idx
  %102 = mul i32 %100, 32
  %thread_idx11 = add i32 %101, %102
  %103 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx11
  %104 = load i32, i32* %103, align 4, !llvm.mem.parallel_loop_access !18
  %105 = load i32, i32* %local_inter_warp_idx
  %106 = load i32, i32* %local_intra_warp_idx
  %107 = mul i32 %105, 32
  %thread_idx24 = add i32 %106, %107
  %108 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx24
  %109 = load i32, i32* %108, align 4, !llvm.mem.parallel_loop_access !18
  %mul27 = mul nsw i32 %104, %109
  %110 = load i32, i32* %local_inter_warp_idx
  %111 = load i32, i32* %local_intra_warp_idx
  %112 = mul i32 %110, 32
  %thread_idx38 = add i32 %111, %112
  %113 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx38
  %114 = load i32, i32* %113, align 4, !llvm.mem.parallel_loop_access !18
  %115 = load i32, i32* %local_inter_warp_idx
  %116 = load i32, i32* %local_intra_warp_idx
  %117 = mul i32 %115, 32
  %thread_idx23 = add i32 %116, %117
  %118 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx23
  %119 = load i32, i32* %118, align 4, !llvm.mem.parallel_loop_access !18
  %add28 = add nsw i32 %114, %119
  %add29 = add nsw i32 %mul27, %add28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %99, i64 %idxprom30
  %120 = load float, float* %arrayidx31, align 4, !llvm.mem.parallel_loop_access !18
  %mul32 = fmul contract float %94, %120
  %121 = load i32, i32* %local_inter_warp_idx
  %122 = load i32, i32* %local_intra_warp_idx
  %123 = mul i32 %121, 32
  %thread_idx3 = add i32 %122, %123
  %124 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %125 = load float*, float** %124, align 8, !llvm.mem.parallel_loop_access !18
  %126 = load i32, i32* %local_inter_warp_idx
  %127 = load i32, i32* %local_intra_warp_idx
  %128 = mul i32 %126, 32
  %thread_idx10 = add i32 %127, %128
  %129 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx10
  %130 = load i32, i32* %129, align 4, !llvm.mem.parallel_loop_access !18
  %131 = load i32, i32* %local_inter_warp_idx
  %132 = load i32, i32* %local_intra_warp_idx
  %133 = mul i32 %131, 32
  %thread_idx32 = add i32 %132, %133
  %134 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx32
  %135 = load i32, i32* %134, align 4, !llvm.mem.parallel_loop_access !18
  %add33 = add nsw i32 %135, 1
  %136 = load i32, i32* %local_inter_warp_idx
  %137 = load i32, i32* %local_intra_warp_idx
  %138 = mul i32 %136, 32
  %thread_idx22 = add i32 %137, %138
  %139 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx22
  %140 = load i32, i32* %139, align 4, !llvm.mem.parallel_loop_access !18
  %add34 = add nsw i32 %add33, %140
  %mul35 = mul nsw i32 %130, %add34
  %141 = load i32, i32* %local_inter_warp_idx
  %142 = load i32, i32* %local_intra_warp_idx
  %143 = mul i32 %141, 32
  %thread_idx37 = add i32 %142, %143
  %144 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx37
  %145 = load i32, i32* %144, align 4, !llvm.mem.parallel_loop_access !18
  %146 = load i32, i32* %local_inter_warp_idx
  %147 = load i32, i32* %local_intra_warp_idx
  %148 = mul i32 %146, 32
  %thread_idx21 = add i32 %147, %148
  %149 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx21
  %150 = load i32, i32* %149, align 4, !llvm.mem.parallel_loop_access !18
  %add36 = add nsw i32 %145, %150
  %add37 = add nsw i32 %mul35, %add36
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %125, i64 %idxprom38
  %151 = load float, float* %arrayidx39, align 4, !llvm.mem.parallel_loop_access !18
  %sub40 = fsub contract float %151, %mul32
  store float %sub40, float* %arrayidx39, align 4, !llvm.mem.parallel_loop_access !18
  %152 = load i32, i32* %local_inter_warp_idx
  %153 = load i32, i32* %local_intra_warp_idx
  %154 = mul i32 %152, 32
  %thread_idx36 = add i32 %153, %154
  %155 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx36
  %156 = load i32, i32* %155, align 4, !llvm.mem.parallel_loop_access !18
  %cmp41 = icmp eq i32 %156, 0
  br i1 %cmp41, label %if.then42, label %if.end58

if.then42:                                        ; preds = %if.end12
  %157 = load i32, i32* %local_inter_warp_idx
  %158 = load i32, i32* %local_intra_warp_idx
  %159 = mul i32 %157, 32
  %thread_idx = add i32 %158, %159
  %160 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %161 = load float*, float** %160, align 8, !llvm.mem.parallel_loop_access !18
  %162 = load i32, i32* %local_inter_warp_idx
  %163 = load i32, i32* %local_intra_warp_idx
  %164 = mul i32 %162, 32
  %thread_idx9 = add i32 %163, %164
  %165 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  %166 = load i32, i32* %165, align 4, !llvm.mem.parallel_loop_access !18
  %167 = load i32, i32* %local_inter_warp_idx
  %168 = load i32, i32* %local_intra_warp_idx
  %169 = mul i32 %167, 32
  %thread_idx31 = add i32 %168, %169
  %170 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx31
  %171 = load i32, i32* %170, align 4, !llvm.mem.parallel_loop_access !18
  %add43 = add nsw i32 %171, 1
  %172 = load i32, i32* %local_inter_warp_idx
  %173 = load i32, i32* %local_intra_warp_idx
  %174 = mul i32 %172, 32
  %thread_idx20 = add i32 %173, %174
  %175 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx20
  %176 = load i32, i32* %175, align 4, !llvm.mem.parallel_loop_access !18
  %add44 = add nsw i32 %add43, %176
  %mul45 = mul nsw i32 %166, %add44
  %177 = load i32, i32* %local_inter_warp_idx
  %178 = load i32, i32* %local_intra_warp_idx
  %179 = mul i32 %177, 32
  %thread_idx35 = add i32 %178, %179
  %180 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx35
  %181 = load i32, i32* %180, align 4, !llvm.mem.parallel_loop_access !18
  %182 = load i32, i32* %local_inter_warp_idx
  %183 = load i32, i32* %local_intra_warp_idx
  %184 = mul i32 %182, 32
  %thread_idx19 = add i32 %183, %184
  %185 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx19
  %186 = load i32, i32* %185, align 4, !llvm.mem.parallel_loop_access !18
  %add46 = add nsw i32 %181, %186
  %add47 = add nsw i32 %mul45, %add46
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds float, float* %161, i64 %idxprom48
  %187 = load float, float* %arrayidx49, align 4, !llvm.mem.parallel_loop_access !18
  %188 = load i32, i32* %local_inter_warp_idx
  %189 = load i32, i32* %local_intra_warp_idx
  %190 = mul i32 %188, 32
  %thread_idx7 = add i32 %189, %190
  %191 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx7
  %192 = load float*, float** %191, align 8, !llvm.mem.parallel_loop_access !18
  %193 = load i32, i32* %local_inter_warp_idx
  %194 = load i32, i32* %local_intra_warp_idx
  %195 = mul i32 %193, 32
  %thread_idx18 = add i32 %194, %195
  %196 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx18
  %197 = load i32, i32* %196, align 4, !llvm.mem.parallel_loop_access !18
  %idxprom50 = sext i32 %197 to i64
  %arrayidx51 = getelementptr inbounds float, float* %192, i64 %idxprom50
  %198 = load float, float* %arrayidx51, align 4, !llvm.mem.parallel_loop_access !18
  %mul52 = fmul contract float %187, %198
  %199 = load i32, i32* %local_inter_warp_idx
  %200 = load i32, i32* %local_intra_warp_idx
  %201 = mul i32 %199, 32
  %thread_idx6 = add i32 %200, %201
  %202 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx6
  %203 = load float*, float** %202, align 8, !llvm.mem.parallel_loop_access !18
  %204 = load i32, i32* %local_inter_warp_idx
  %205 = load i32, i32* %local_intra_warp_idx
  %206 = mul i32 %204, 32
  %thread_idx30 = add i32 %205, %206
  %207 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx30
  %208 = load i32, i32* %207, align 4, !llvm.mem.parallel_loop_access !18
  %add53 = add nsw i32 %208, 1
  %209 = load i32, i32* %local_inter_warp_idx
  %210 = load i32, i32* %local_intra_warp_idx
  %211 = mul i32 %209, 32
  %thread_idx17 = add i32 %210, %211
  %212 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  %213 = load i32, i32* %212, align 4, !llvm.mem.parallel_loop_access !18
  %add54 = add nsw i32 %add53, %213
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, float* %203, i64 %idxprom55
  %214 = load float, float* %arrayidx56, align 4, !llvm.mem.parallel_loop_access !18
  %sub57 = fsub contract float %214, %mul52
  store float %sub57, float* %arrayidx56, align 4, !llvm.mem.parallel_loop_access !18
  br label %if.end58

if.end58:                                         ; preds = %if.then42, %if.end12, %if.then11, %if.then
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end58_after_block_sync_0

if.end58_after_block_sync_0:                      ; preds = %reset_block
  br label %if.end58_after_block_sync_0_after_block_sync_2

if.end58_after_block_sync_0_after_block_sync_2:   ; preds = %if.end58_after_block_sync_0
  ret void
}

; Function Attrs: nounwind
define void @_Z4Fan1PfS_ii_wrapper(i8* noalias nocapture readonly %0) local_unnamed_addr #1 {
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

; Function Attrs: nounwind
define void @_Z4Fan2PfS_S_iii_wrapper(i8* noalias nocapture readonly %0) local_unnamed_addr #1 {
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
  %17 = getelementptr i8, i8* %0, i64 32
  %18 = bitcast i8* %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8, i8* %0, i64 40
  %22 = bitcast i8* %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  tail call void @_Z4Fan2PfS_S_iii(float* %4, float* %8, float* %12, i32 %16, i32 %20, i32 %24)
  ret void
}

attributes #0 = { convergent noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.parallel_accesses", !13}
!13 = distinct !{}
!14 = !{!13}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.parallel_accesses", !17}
!17 = distinct !{}
!18 = !{!17}
