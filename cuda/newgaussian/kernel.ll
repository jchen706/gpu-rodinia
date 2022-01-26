; ModuleID = 'kernel.bc'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intra_warp_index = thread_local local_unnamed_addr global i32 0
@inter_warp_index = thread_local local_unnamed_addr global i32 0
@block_size = external local_unnamed_addr global i32
@block_size_x = external local_unnamed_addr global i32
@block_size_y = external local_unnamed_addr global i32
@block_index_x = external thread_local local_unnamed_addr global i32
@block_index_y = external thread_local local_unnamed_addr global i32

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan1PfS_ii(float* noalias %m_cuda, float* noalias %a_cuda, i32 %Size, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  store i32 0, i32* %local_inter_warp_idx
  %0 = load i32, i32* @block_size
  %t.addr_intra_warp_ = alloca i32, i32 %0
  %1 = load i32, i32* @block_size
  %Size.addr_intra_warp_ = alloca i32, i32 %1
  %2 = load i32, i32* @block_size
  %a_cuda.addr_intra_warp_ = alloca float*, i32 %2
  %3 = load i32, i32* @block_size
  %m_cuda.addr_intra_warp_ = alloca float*, i32 %3
  %m_cuda.addr = alloca float*, align 8
  br label %entry_after_block_sync_0

entry_after_block_sync_0:                         ; preds = %entry
  %a_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  br label %entry_after_block_sync_0_after_block_sync_4

entry_after_block_sync_0_after_block_sync_4:      ; preds = %entry_after_block_sync_0
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %entry_after_block_sync_0_after_block_sync_4
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %return
  %4 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %4, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %5 = load i32, i32* @block_size
  %6 = load i32, i32* %local_intra_warp_idx
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %entry_after_block_sync_0_after_block_sync_1, label %reset_block, !llvm.loop !11

entry_after_block_sync_0_after_block_sync_1:      ; preds = %intra_warp_cond
  %8 = load i32, i32* %local_inter_warp_idx
  %9 = load i32, i32* %local_intra_warp_idx
  %10 = mul i32 %8, 32
  %thread_idx1 = add i32 %9, %10
  %11 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx1
  store float* %m_cuda, float** %11, align 8, !llvm.mem.parallel_loop_access !14
  %12 = load i32, i32* %local_inter_warp_idx
  %13 = load i32, i32* %local_intra_warp_idx
  %14 = mul i32 %12, 32
  %thread_idx4 = add i32 %13, %14
  %15 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx4
  store float* %a_cuda, float** %15, align 8, !llvm.mem.parallel_loop_access !14
  %16 = load i32, i32* %local_inter_warp_idx
  %17 = load i32, i32* %local_intra_warp_idx
  %18 = mul i32 %16, 32
  %thread_idx9 = add i32 %17, %18
  %19 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  store i32 %Size, i32* %19, align 4, !llvm.mem.parallel_loop_access !14
  %20 = load i32, i32* %local_inter_warp_idx
  %21 = load i32, i32* %local_intra_warp_idx
  %22 = mul i32 %20, 32
  %thread_idx17 = add i32 %21, %22
  %23 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  store i32 %t, i32* %23, align 4, !llvm.mem.parallel_loop_access !14
  %24 = load i32, i32* %local_inter_warp_idx
  %25 = mul i32 %24, 32
  %26 = load i32, i32* %local_intra_warp_idx
  %thread_idx18 = add i32 %26, %25
  %thread_id_x = load i32, i32* @block_size_x
  %27 = srem i32 %thread_idx18, %thread_id_x
  %28 = load i32, i32* @block_index_x
  %29 = load i32, i32* @block_size_x
  %mul = mul i32 %28, %29
  %add = add i32 %27, %mul
  %30 = load i32, i32* %local_inter_warp_idx
  %31 = load i32, i32* %local_intra_warp_idx
  %32 = mul i32 %30, 32
  %thread_idx8 = add i32 %31, %32
  %33 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx8
  %34 = load i32, i32* %33, align 4, !llvm.mem.parallel_loop_access !14
  %sub = sub nsw i32 %34, 1
  %35 = load i32, i32* %local_inter_warp_idx
  %36 = load i32, i32* %local_intra_warp_idx
  %37 = mul i32 %35, 32
  %thread_idx16 = add i32 %36, %37
  %38 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx16
  %39 = load i32, i32* %38, align 4, !llvm.mem.parallel_loop_access !14
  %sub3 = sub nsw i32 %sub, %39
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry_after_block_sync_0_after_block_sync_1
  br label %return

if.end:                                           ; preds = %entry_after_block_sync_0_after_block_sync_1
  %40 = load i32, i32* %local_inter_warp_idx
  %41 = load i32, i32* %local_intra_warp_idx
  %42 = mul i32 %40, 32
  %thread_idx3 = add i32 %41, %42
  %43 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %44 = load float*, float** %43, align 8, !llvm.mem.parallel_loop_access !14
  %45 = load i32, i32* %local_inter_warp_idx
  %46 = load i32, i32* %local_intra_warp_idx
  %47 = mul i32 %45, 32
  %thread_idx7 = add i32 %46, %47
  %48 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx7
  %49 = load i32, i32* %48, align 4, !llvm.mem.parallel_loop_access !14
  %50 = load i32, i32* @block_size_x
  %51 = load i32, i32* @block_index_x
  %mul6 = mul i32 %50, %51
  %52 = load i32, i32* %local_inter_warp_idx
  %53 = mul i32 %52, 32
  %54 = load i32, i32* %local_intra_warp_idx
  %thread_idx19 = add i32 %54, %53
  %thread_id_x20 = load i32, i32* @block_size_x
  %55 = srem i32 %thread_idx19, %thread_id_x20
  %add8 = add i32 %mul6, %55
  %56 = load i32, i32* %local_inter_warp_idx
  %57 = load i32, i32* %local_intra_warp_idx
  %58 = mul i32 %56, 32
  %thread_idx15 = add i32 %57, %58
  %59 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx15
  %60 = load i32, i32* %59, align 4, !llvm.mem.parallel_loop_access !14
  %add9 = add i32 %add8, %60
  %add10 = add i32 %add9, 1
  %mul11 = mul i32 %49, %add10
  %idx.ext = zext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds float, float* %44, i64 %idx.ext
  %61 = load i32, i32* %local_inter_warp_idx
  %62 = load i32, i32* %local_intra_warp_idx
  %63 = mul i32 %61, 32
  %thread_idx14 = add i32 %62, %63
  %64 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx14
  %65 = load i32, i32* %64, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext12 = sext i32 %65 to i64
  %add.ptr13 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext12
  %66 = load float, float* %add.ptr13, align 4, !llvm.mem.parallel_loop_access !14
  %67 = load i32, i32* %local_inter_warp_idx
  %68 = load i32, i32* %local_intra_warp_idx
  %69 = mul i32 %67, 32
  %thread_idx2 = add i32 %68, %69
  %70 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx2
  %71 = load float*, float** %70, align 8, !llvm.mem.parallel_loop_access !14
  %72 = load i32, i32* %local_inter_warp_idx
  %73 = load i32, i32* %local_intra_warp_idx
  %74 = mul i32 %72, 32
  %thread_idx6 = add i32 %73, %74
  %75 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx6
  %76 = load i32, i32* %75, align 4, !llvm.mem.parallel_loop_access !14
  %77 = load i32, i32* %local_inter_warp_idx
  %78 = load i32, i32* %local_intra_warp_idx
  %79 = mul i32 %77, 32
  %thread_idx13 = add i32 %78, %79
  %80 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx13
  %81 = load i32, i32* %80, align 4, !llvm.mem.parallel_loop_access !14
  %mul14 = mul nsw i32 %76, %81
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds float, float* %71, i64 %idx.ext15
  %82 = load i32, i32* %local_inter_warp_idx
  %83 = load i32, i32* %local_intra_warp_idx
  %84 = mul i32 %82, 32
  %thread_idx12 = add i32 %83, %84
  %85 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx12
  %86 = load i32, i32* %85, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext17 = sext i32 %86 to i64
  %add.ptr18 = getelementptr inbounds float, float* %add.ptr16, i64 %idx.ext17
  %87 = load float, float* %add.ptr18, align 4, !llvm.mem.parallel_loop_access !14
  %div = fdiv float %66, %87
  %88 = load i32, i32* %local_inter_warp_idx
  %89 = load i32, i32* %local_intra_warp_idx
  %90 = mul i32 %88, 32
  %thread_idx = add i32 %89, %90
  %91 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %92 = load float*, float** %91, align 8, !llvm.mem.parallel_loop_access !14
  %93 = load i32, i32* %local_inter_warp_idx
  %94 = load i32, i32* %local_intra_warp_idx
  %95 = mul i32 %93, 32
  %thread_idx5 = add i32 %94, %95
  %96 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx5
  %97 = load i32, i32* %96, align 4, !llvm.mem.parallel_loop_access !14
  %98 = load i32, i32* @block_size_x
  %99 = load i32, i32* @block_index_x
  %mul21 = mul i32 %98, %99
  %100 = load i32, i32* %local_inter_warp_idx
  %101 = mul i32 %100, 32
  %102 = load i32, i32* %local_intra_warp_idx
  %thread_idx21 = add i32 %102, %101
  %thread_id_x22 = load i32, i32* @block_size_x
  %103 = srem i32 %thread_idx21, %thread_id_x22
  %add23 = add i32 %mul21, %103
  %104 = load i32, i32* %local_inter_warp_idx
  %105 = load i32, i32* %local_intra_warp_idx
  %106 = mul i32 %104, 32
  %thread_idx11 = add i32 %105, %106
  %107 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx11
  %108 = load i32, i32* %107, align 4, !llvm.mem.parallel_loop_access !14
  %add24 = add i32 %add23, %108
  %add25 = add i32 %add24, 1
  %mul26 = mul i32 %97, %add25
  %idx.ext27 = zext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds float, float* %92, i64 %idx.ext27
  %109 = load i32, i32* %local_inter_warp_idx
  %110 = load i32, i32* %local_intra_warp_idx
  %111 = mul i32 %109, 32
  %thread_idx10 = add i32 %110, %111
  %112 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx10
  %113 = load i32, i32* %112, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext29 = sext i32 %113 to i64
  %add.ptr30 = getelementptr inbounds float, float* %add.ptr28, i64 %idx.ext29
  store float %div, float* %add.ptr30, align 4, !llvm.mem.parallel_loop_access !14
  br label %return

return:                                           ; preds = %if.end, %if.then
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %return_after_block_sync_3

return_after_block_sync_3:                        ; preds = %reset_block
  br label %return_after_block_sync_2

return_after_block_sync_2:                        ; preds = %return_after_block_sync_3
  ret void
}

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan2PfS_S_iii(float* noalias %m_cuda, float* noalias %a_cuda, float* noalias %b_cuda, i32 %Size, i32 %j1, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  store i32 0, i32* %local_inter_warp_idx
  %0 = load i32, i32* @block_size
  %yidx_intra_warp_ = alloca i32, i32 %0
  %1 = load i32, i32* @block_size
  %xidx_intra_warp_ = alloca i32, i32 %1
  %2 = load i32, i32* @block_size
  %t.addr_intra_warp_ = alloca i32, i32 %2
  %3 = load i32, i32* @block_size
  %j1.addr_intra_warp_ = alloca i32, i32 %3
  %4 = load i32, i32* @block_size
  %Size.addr_intra_warp_ = alloca i32, i32 %4
  %5 = load i32, i32* @block_size
  %b_cuda.addr_intra_warp_ = alloca float*, i32 %5
  %6 = load i32, i32* @block_size
  %a_cuda.addr_intra_warp_ = alloca float*, i32 %6
  %7 = load i32, i32* @block_size
  %m_cuda.addr_intra_warp_ = alloca float*, i32 %7
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
  %8 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %8, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %9 = load i32, i32* @block_size
  %10 = load i32, i32* %local_intra_warp_idx
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %entry_after_block_sync_1_after_block_sync_4, label %reset_block, !llvm.loop !15

entry_after_block_sync_1_after_block_sync_4:      ; preds = %intra_warp_cond
  %12 = load i32, i32* %local_inter_warp_idx
  %13 = load i32, i32* %local_intra_warp_idx
  %14 = mul i32 %12, 32
  %thread_idx2 = add i32 %13, %14
  %15 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx2
  store float* %m_cuda, float** %15, align 8, !llvm.mem.parallel_loop_access !18
  %16 = load i32, i32* %local_inter_warp_idx
  %17 = load i32, i32* %local_intra_warp_idx
  %18 = mul i32 %16, 32
  %thread_idx5 = add i32 %17, %18
  %19 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx5
  store float* %a_cuda, float** %19, align 8, !llvm.mem.parallel_loop_access !18
  %20 = load i32, i32* %local_inter_warp_idx
  %21 = load i32, i32* %local_intra_warp_idx
  %22 = mul i32 %20, 32
  %thread_idx8 = add i32 %21, %22
  %23 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx8
  store float* %b_cuda, float** %23, align 8, !llvm.mem.parallel_loop_access !18
  %24 = load i32, i32* %local_inter_warp_idx
  %25 = load i32, i32* %local_intra_warp_idx
  %26 = mul i32 %24, 32
  %thread_idx15 = add i32 %25, %26
  %27 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx15
  store i32 %Size, i32* %27, align 4, !llvm.mem.parallel_loop_access !18
  %28 = load i32, i32* %local_inter_warp_idx
  %29 = load i32, i32* %local_intra_warp_idx
  %30 = mul i32 %28, 32
  %thread_idx16 = add i32 %29, %30
  %31 = getelementptr i32, i32* %j1.addr_intra_warp_, i32 %thread_idx16
  store i32 %j1, i32* %31, align 4, !llvm.mem.parallel_loop_access !18
  %32 = load i32, i32* %local_inter_warp_idx
  %33 = load i32, i32* %local_intra_warp_idx
  %34 = mul i32 %32, 32
  %thread_idx29 = add i32 %33, %34
  %35 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx29
  store i32 %t, i32* %35, align 4, !llvm.mem.parallel_loop_access !18
  %36 = load i32, i32* %local_inter_warp_idx
  %37 = mul i32 %36, 32
  %38 = load i32, i32* %local_intra_warp_idx
  %thread_idx40 = add i32 %38, %37
  %thread_id_x = load i32, i32* @block_size_x
  %39 = srem i32 %thread_idx40, %thread_id_x
  %40 = load i32, i32* @block_index_x
  %41 = load i32, i32* @block_size_x
  %mul = mul i32 %40, %41
  %add = add i32 %39, %mul
  %42 = load i32, i32* %local_inter_warp_idx
  %43 = load i32, i32* %local_intra_warp_idx
  %44 = mul i32 %42, 32
  %thread_idx14 = add i32 %43, %44
  %45 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx14
  %46 = load i32, i32* %45, align 4, !llvm.mem.parallel_loop_access !18
  %sub = sub nsw i32 %46, 1
  %47 = load i32, i32* %local_inter_warp_idx
  %48 = load i32, i32* %local_intra_warp_idx
  %49 = mul i32 %47, 32
  %thread_idx28 = add i32 %48, %49
  %50 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx28
  %51 = load i32, i32* %50, align 4, !llvm.mem.parallel_loop_access !18
  %sub3 = sub nsw i32 %sub, %51
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry_after_block_sync_1_after_block_sync_4
  br label %if.end58

if.end:                                           ; preds = %entry_after_block_sync_1_after_block_sync_4
  %52 = load i32, i32* %local_inter_warp_idx
  %53 = mul i32 %52, 32
  %54 = load i32, i32* %local_intra_warp_idx
  %thread_idx41 = add i32 %54, %53
  %55 = load i32, i32* @block_size_x
  %thread_id_y = sdiv i32 %thread_idx41, %55
  %56 = load i32, i32* @block_index_y
  %57 = load i32, i32* @block_size_y
  %mul7 = mul i32 %56, %57
  %add8 = add i32 %thread_id_y, %mul7
  %58 = load i32, i32* %local_inter_warp_idx
  %59 = load i32, i32* %local_intra_warp_idx
  %60 = mul i32 %58, 32
  %thread_idx13 = add i32 %59, %60
  %61 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx13
  %62 = load i32, i32* %61, align 4, !llvm.mem.parallel_loop_access !18
  %63 = load i32, i32* %local_inter_warp_idx
  %64 = load i32, i32* %local_intra_warp_idx
  %65 = mul i32 %63, 32
  %thread_idx27 = add i32 %64, %65
  %66 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx27
  %67 = load i32, i32* %66, align 4, !llvm.mem.parallel_loop_access !18
  %sub9 = sub nsw i32 %62, %67
  %cmp10 = icmp uge i32 %add8, %sub9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %if.end58

if.end12:                                         ; preds = %if.end
  %68 = load i32, i32* @block_index_x
  %69 = load i32, i32* @block_size_x
  %mul15 = mul i32 %68, %69
  %70 = load i32, i32* %local_inter_warp_idx
  %71 = mul i32 %70, 32
  %72 = load i32, i32* %local_intra_warp_idx
  %thread_idx42 = add i32 %72, %71
  %thread_id_x43 = load i32, i32* @block_size_x
  %73 = srem i32 %thread_idx42, %thread_id_x43
  %add17 = add i32 %mul15, %73
  %74 = load i32, i32* %local_inter_warp_idx
  %75 = load i32, i32* %local_intra_warp_idx
  %76 = mul i32 %74, 32
  %thread_idx34 = add i32 %75, %76
  %77 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx34
  store i32 %add17, i32* %77, align 4, !llvm.mem.parallel_loop_access !18
  %78 = load i32, i32* @block_index_y
  %79 = load i32, i32* @block_size_y
  %mul20 = mul i32 %78, %79
  %80 = load i32, i32* %local_inter_warp_idx
  %81 = mul i32 %80, 32
  %82 = load i32, i32* %local_intra_warp_idx
  %thread_idx44 = add i32 %82, %81
  %83 = load i32, i32* @block_size_x
  %thread_id_y45 = sdiv i32 %thread_idx44, %83
  %add22 = add i32 %mul20, %thread_id_y45
  %84 = load i32, i32* %local_inter_warp_idx
  %85 = load i32, i32* %local_intra_warp_idx
  %86 = mul i32 %84, 32
  %thread_idx39 = add i32 %85, %86
  %87 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx39
  store i32 %add22, i32* %87, align 4, !llvm.mem.parallel_loop_access !18
  %88 = load i32, i32* %local_inter_warp_idx
  %89 = load i32, i32* %local_intra_warp_idx
  %90 = mul i32 %88, 32
  %thread_idx1 = add i32 %89, %90
  %91 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx1
  %92 = load float*, float** %91, align 8, !llvm.mem.parallel_loop_access !18
  %93 = load i32, i32* %local_inter_warp_idx
  %94 = load i32, i32* %local_intra_warp_idx
  %95 = mul i32 %93, 32
  %thread_idx12 = add i32 %94, %95
  %96 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx12
  %97 = load i32, i32* %96, align 4, !llvm.mem.parallel_loop_access !18
  %98 = load i32, i32* %local_inter_warp_idx
  %99 = load i32, i32* %local_intra_warp_idx
  %100 = mul i32 %98, 32
  %thread_idx33 = add i32 %99, %100
  %101 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx33
  %102 = load i32, i32* %101, align 4, !llvm.mem.parallel_loop_access !18
  %add23 = add nsw i32 %102, 1
  %103 = load i32, i32* %local_inter_warp_idx
  %104 = load i32, i32* %local_intra_warp_idx
  %105 = mul i32 %103, 32
  %thread_idx26 = add i32 %104, %105
  %106 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx26
  %107 = load i32, i32* %106, align 4, !llvm.mem.parallel_loop_access !18
  %add24 = add nsw i32 %add23, %107
  %mul25 = mul nsw i32 %97, %add24
  %108 = load i32, i32* %local_inter_warp_idx
  %109 = load i32, i32* %local_intra_warp_idx
  %110 = mul i32 %108, 32
  %thread_idx25 = add i32 %109, %110
  %111 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx25
  %112 = load i32, i32* %111, align 4, !llvm.mem.parallel_loop_access !18
  %add26 = add nsw i32 %mul25, %112
  %idxprom = sext i32 %add26 to i64
  %arrayidx = getelementptr inbounds float, float* %92, i64 %idxprom
  %113 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !18
  %114 = load i32, i32* %local_inter_warp_idx
  %115 = load i32, i32* %local_intra_warp_idx
  %116 = mul i32 %114, 32
  %thread_idx4 = add i32 %115, %116
  %117 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx4
  %118 = load float*, float** %117, align 8, !llvm.mem.parallel_loop_access !18
  %119 = load i32, i32* %local_inter_warp_idx
  %120 = load i32, i32* %local_intra_warp_idx
  %121 = mul i32 %119, 32
  %thread_idx11 = add i32 %120, %121
  %122 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx11
  %123 = load i32, i32* %122, align 4, !llvm.mem.parallel_loop_access !18
  %124 = load i32, i32* %local_inter_warp_idx
  %125 = load i32, i32* %local_intra_warp_idx
  %126 = mul i32 %124, 32
  %thread_idx24 = add i32 %125, %126
  %127 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx24
  %128 = load i32, i32* %127, align 4, !llvm.mem.parallel_loop_access !18
  %mul27 = mul nsw i32 %123, %128
  %129 = load i32, i32* %local_inter_warp_idx
  %130 = load i32, i32* %local_intra_warp_idx
  %131 = mul i32 %129, 32
  %thread_idx38 = add i32 %130, %131
  %132 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx38
  %133 = load i32, i32* %132, align 4, !llvm.mem.parallel_loop_access !18
  %134 = load i32, i32* %local_inter_warp_idx
  %135 = load i32, i32* %local_intra_warp_idx
  %136 = mul i32 %134, 32
  %thread_idx23 = add i32 %135, %136
  %137 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx23
  %138 = load i32, i32* %137, align 4, !llvm.mem.parallel_loop_access !18
  %add28 = add nsw i32 %133, %138
  %add29 = add nsw i32 %mul27, %add28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %118, i64 %idxprom30
  %139 = load float, float* %arrayidx31, align 4, !llvm.mem.parallel_loop_access !18
  %mul32 = fmul contract float %113, %139
  %140 = load i32, i32* %local_inter_warp_idx
  %141 = load i32, i32* %local_intra_warp_idx
  %142 = mul i32 %140, 32
  %thread_idx3 = add i32 %141, %142
  %143 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %144 = load float*, float** %143, align 8, !llvm.mem.parallel_loop_access !18
  %145 = load i32, i32* %local_inter_warp_idx
  %146 = load i32, i32* %local_intra_warp_idx
  %147 = mul i32 %145, 32
  %thread_idx10 = add i32 %146, %147
  %148 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx10
  %149 = load i32, i32* %148, align 4, !llvm.mem.parallel_loop_access !18
  %150 = load i32, i32* %local_inter_warp_idx
  %151 = load i32, i32* %local_intra_warp_idx
  %152 = mul i32 %150, 32
  %thread_idx32 = add i32 %151, %152
  %153 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx32
  %154 = load i32, i32* %153, align 4, !llvm.mem.parallel_loop_access !18
  %add33 = add nsw i32 %154, 1
  %155 = load i32, i32* %local_inter_warp_idx
  %156 = load i32, i32* %local_intra_warp_idx
  %157 = mul i32 %155, 32
  %thread_idx22 = add i32 %156, %157
  %158 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx22
  %159 = load i32, i32* %158, align 4, !llvm.mem.parallel_loop_access !18
  %add34 = add nsw i32 %add33, %159
  %mul35 = mul nsw i32 %149, %add34
  %160 = load i32, i32* %local_inter_warp_idx
  %161 = load i32, i32* %local_intra_warp_idx
  %162 = mul i32 %160, 32
  %thread_idx37 = add i32 %161, %162
  %163 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx37
  %164 = load i32, i32* %163, align 4, !llvm.mem.parallel_loop_access !18
  %165 = load i32, i32* %local_inter_warp_idx
  %166 = load i32, i32* %local_intra_warp_idx
  %167 = mul i32 %165, 32
  %thread_idx21 = add i32 %166, %167
  %168 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx21
  %169 = load i32, i32* %168, align 4, !llvm.mem.parallel_loop_access !18
  %add36 = add nsw i32 %164, %169
  %add37 = add nsw i32 %mul35, %add36
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %144, i64 %idxprom38
  %170 = load float, float* %arrayidx39, align 4, !llvm.mem.parallel_loop_access !18
  %sub40 = fsub contract float %170, %mul32
  store float %sub40, float* %arrayidx39, align 4, !llvm.mem.parallel_loop_access !18
  %171 = load i32, i32* %local_inter_warp_idx
  %172 = load i32, i32* %local_intra_warp_idx
  %173 = mul i32 %171, 32
  %thread_idx36 = add i32 %172, %173
  %174 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx36
  %175 = load i32, i32* %174, align 4, !llvm.mem.parallel_loop_access !18
  %cmp41 = icmp eq i32 %175, 0
  br i1 %cmp41, label %if.then42, label %if.end58

if.then42:                                        ; preds = %if.end12
  %176 = load i32, i32* %local_inter_warp_idx
  %177 = load i32, i32* %local_intra_warp_idx
  %178 = mul i32 %176, 32
  %thread_idx = add i32 %177, %178
  %179 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %180 = load float*, float** %179, align 8, !llvm.mem.parallel_loop_access !18
  %181 = load i32, i32* %local_inter_warp_idx
  %182 = load i32, i32* %local_intra_warp_idx
  %183 = mul i32 %181, 32
  %thread_idx9 = add i32 %182, %183
  %184 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  %185 = load i32, i32* %184, align 4, !llvm.mem.parallel_loop_access !18
  %186 = load i32, i32* %local_inter_warp_idx
  %187 = load i32, i32* %local_intra_warp_idx
  %188 = mul i32 %186, 32
  %thread_idx31 = add i32 %187, %188
  %189 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx31
  %190 = load i32, i32* %189, align 4, !llvm.mem.parallel_loop_access !18
  %add43 = add nsw i32 %190, 1
  %191 = load i32, i32* %local_inter_warp_idx
  %192 = load i32, i32* %local_intra_warp_idx
  %193 = mul i32 %191, 32
  %thread_idx20 = add i32 %192, %193
  %194 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx20
  %195 = load i32, i32* %194, align 4, !llvm.mem.parallel_loop_access !18
  %add44 = add nsw i32 %add43, %195
  %mul45 = mul nsw i32 %185, %add44
  %196 = load i32, i32* %local_inter_warp_idx
  %197 = load i32, i32* %local_intra_warp_idx
  %198 = mul i32 %196, 32
  %thread_idx35 = add i32 %197, %198
  %199 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx35
  %200 = load i32, i32* %199, align 4, !llvm.mem.parallel_loop_access !18
  %201 = load i32, i32* %local_inter_warp_idx
  %202 = load i32, i32* %local_intra_warp_idx
  %203 = mul i32 %201, 32
  %thread_idx19 = add i32 %202, %203
  %204 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx19
  %205 = load i32, i32* %204, align 4, !llvm.mem.parallel_loop_access !18
  %add46 = add nsw i32 %200, %205
  %add47 = add nsw i32 %mul45, %add46
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds float, float* %180, i64 %idxprom48
  %206 = load float, float* %arrayidx49, align 4, !llvm.mem.parallel_loop_access !18
  %207 = load i32, i32* %local_inter_warp_idx
  %208 = load i32, i32* %local_intra_warp_idx
  %209 = mul i32 %207, 32
  %thread_idx7 = add i32 %208, %209
  %210 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx7
  %211 = load float*, float** %210, align 8, !llvm.mem.parallel_loop_access !18
  %212 = load i32, i32* %local_inter_warp_idx
  %213 = load i32, i32* %local_intra_warp_idx
  %214 = mul i32 %212, 32
  %thread_idx18 = add i32 %213, %214
  %215 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx18
  %216 = load i32, i32* %215, align 4, !llvm.mem.parallel_loop_access !18
  %idxprom50 = sext i32 %216 to i64
  %arrayidx51 = getelementptr inbounds float, float* %211, i64 %idxprom50
  %217 = load float, float* %arrayidx51, align 4, !llvm.mem.parallel_loop_access !18
  %mul52 = fmul contract float %206, %217
  %218 = load i32, i32* %local_inter_warp_idx
  %219 = load i32, i32* %local_intra_warp_idx
  %220 = mul i32 %218, 32
  %thread_idx6 = add i32 %219, %220
  %221 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx6
  %222 = load float*, float** %221, align 8, !llvm.mem.parallel_loop_access !18
  %223 = load i32, i32* %local_inter_warp_idx
  %224 = load i32, i32* %local_intra_warp_idx
  %225 = mul i32 %223, 32
  %thread_idx30 = add i32 %224, %225
  %226 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx30
  %227 = load i32, i32* %226, align 4, !llvm.mem.parallel_loop_access !18
  %add53 = add nsw i32 %227, 1
  %228 = load i32, i32* %local_inter_warp_idx
  %229 = load i32, i32* %local_intra_warp_idx
  %230 = mul i32 %228, 32
  %thread_idx17 = add i32 %229, %230
  %231 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  %232 = load i32, i32* %231, align 4, !llvm.mem.parallel_loop_access !18
  %add54 = add nsw i32 %add53, %232
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, float* %222, i64 %idxprom55
  %233 = load float, float* %arrayidx56, align 4, !llvm.mem.parallel_loop_access !18
  %sub57 = fsub contract float %233, %mul52
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
