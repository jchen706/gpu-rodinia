; ModuleID = 'kernel.bc'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%printf_args = type { i32, i32, i32, i32, i32 }
%printf_args.0 = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"blockIDx.x: %d, threadIdx.x: %d, Size: %d, t:%d, Size-1-t: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [98 x i8] c"blockIdx.x: %d, threadIdx.x: %d, blockIdx.y: %d, threadIdx.y: %d, blockDim.x: %d, blockDim.y: %d\0A\00", align 1
@intra_warp_index = thread_local local_unnamed_addr global i32 0
@inter_warp_index = thread_local local_unnamed_addr global i32 0
@block_index = external thread_local local_unnamed_addr global i32
@.str.54 = private unnamed_addr constant [64 x i8] c"blockIDx.x: %d, threadIdx.x: %d, Size: %d, t: %d, Size-1-t: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [98 x i8] c"blockIdx.x: %d, threadIdx.x: %d, blockIdx.y: %d, threadIdx.y: %d, blockDim.x: %d, blockDim.y: %d\0A\00", align 1

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan1PfS_ii(float* noalias %m_cuda, float* noalias %a_cuda, i32 %Size, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  store i32 0, i32* %local_inter_warp_idx
  %tmp_intra_warp_ = alloca %printf_args, i32 16
  %t.addr_intra_warp_ = alloca i32, i32 16
  %Size.addr_intra_warp_ = alloca i32, i32 16
  %a_cuda.addr_intra_warp_ = alloca float*, i32 16
  %m_cuda.addr_intra_warp_ = alloca float*, i32 16
  %m_cuda.addr = alloca float*, align 8
  br label %entry_after_block_sync_1

entry_after_block_sync_1:                         ; preds = %entry
  %a_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %tmp = alloca %printf_args
  br label %entry_after_block_sync_1_after_block_sync_3

entry_after_block_sync_1_after_block_sync_3:      ; preds = %entry_after_block_sync_1
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %entry_after_block_sync_1_after_block_sync_3
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %return
  %0 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %0, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %1 = load i32, i32* %local_intra_warp_idx
  %2 = icmp ult i32 %1, 16
  br i1 %2, label %entry_after_block_sync_1_after_block_sync_2, label %reset_block, !llvm.loop !11

entry_after_block_sync_1_after_block_sync_2:      ; preds = %intra_warp_cond
  %3 = load i32, i32* %local_inter_warp_idx
  %4 = load i32, i32* %local_intra_warp_idx
  %5 = mul i32 %3, 32
  %thread_idx1 = add i32 %4, %5
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
  %thread_idx12 = add i32 %12, %13
  %14 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx12
  store i32 %Size, i32* %14, align 4, !llvm.mem.parallel_loop_access !14
  %15 = load i32, i32* %local_inter_warp_idx
  %16 = load i32, i32* %local_intra_warp_idx
  %17 = mul i32 %15, 32
  %thread_idx23 = add i32 %16, %17
  %18 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx23
  store i32 %t, i32* %18, align 4, !llvm.mem.parallel_loop_access !14
  %19 = load i32, i32* %local_inter_warp_idx
  %20 = mul i32 %19, 32
  %21 = load i32, i32* %local_intra_warp_idx
  %thread_idx30 = add i32 %21, %20
  %thread_id_x = srem i32 %thread_idx30, 4
  %22 = load i32, i32* @block_index
  %mul = mul i32 %22, 4
  %add = add i32 %thread_id_x, %mul
  %23 = load i32, i32* %local_inter_warp_idx
  %24 = load i32, i32* %local_intra_warp_idx
  %25 = mul i32 %23, 32
  %thread_idx11 = add i32 %24, %25
  %26 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx11
  %27 = load i32, i32* %26, align 4, !llvm.mem.parallel_loop_access !14
  %sub = sub nsw i32 %27, 1
  %28 = load i32, i32* %local_inter_warp_idx
  %29 = load i32, i32* %local_intra_warp_idx
  %30 = mul i32 %28, 32
  %thread_idx22 = add i32 %29, %30
  %31 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx22
  %32 = load i32, i32* %31, align 4, !llvm.mem.parallel_loop_access !14
  %sub3 = sub nsw i32 %sub, %32
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry_after_block_sync_1_after_block_sync_2
  %33 = load i32, i32* @block_index
  %34 = load i32, i32* %local_inter_warp_idx
  %35 = mul i32 %34, 32
  %36 = load i32, i32* %local_intra_warp_idx
  %thread_idx31 = add i32 %36, %35
  %thread_id_x32 = srem i32 %thread_idx31, 4
  %37 = load i32, i32* %local_inter_warp_idx
  %38 = load i32, i32* %local_intra_warp_idx
  %39 = mul i32 %37, 32
  %thread_idx10 = add i32 %38, %39
  %40 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx10
  %41 = load i32, i32* %40, align 4, !llvm.mem.parallel_loop_access !14
  %42 = load i32, i32* %local_inter_warp_idx
  %43 = load i32, i32* %local_intra_warp_idx
  %44 = mul i32 %42, 32
  %thread_idx21 = add i32 %43, %44
  %45 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx21
  %46 = load i32, i32* %45, align 4, !llvm.mem.parallel_loop_access !14
  %47 = load i32, i32* %local_inter_warp_idx
  %48 = load i32, i32* %local_intra_warp_idx
  %49 = mul i32 %47, 32
  %thread_idx9 = add i32 %48, %49
  %50 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  %51 = load i32, i32* %50, align 4, !llvm.mem.parallel_loop_access !14
  %sub6 = sub nsw i32 %51, 1
  %52 = load i32, i32* %local_inter_warp_idx
  %53 = load i32, i32* %local_intra_warp_idx
  %54 = mul i32 %52, 32
  %thread_idx20 = add i32 %53, %54
  %55 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx20
  %56 = load i32, i32* %55, align 4, !llvm.mem.parallel_loop_access !14
  %sub7 = sub nsw i32 %sub6, %56
  %57 = load i32, i32* %local_inter_warp_idx
  %58 = load i32, i32* %local_intra_warp_idx
  %59 = mul i32 %57, 32
  %thread_idx29 = add i32 %58, %59
  %60 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx29
  %61 = getelementptr inbounds %printf_args, %printf_args* %60, i32 0, i32 0
  store i32 %33, i32* %61, align 4, !llvm.mem.parallel_loop_access !14
  %62 = load i32, i32* %local_inter_warp_idx
  %63 = load i32, i32* %local_intra_warp_idx
  %64 = mul i32 %62, 32
  %thread_idx28 = add i32 %63, %64
  %65 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx28
  %66 = getelementptr inbounds %printf_args, %printf_args* %65, i32 0, i32 1
  store i32 %thread_id_x32, i32* %66, align 4, !llvm.mem.parallel_loop_access !14
  %67 = load i32, i32* %local_inter_warp_idx
  %68 = load i32, i32* %local_intra_warp_idx
  %69 = mul i32 %67, 32
  %thread_idx27 = add i32 %68, %69
  %70 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx27
  %71 = getelementptr inbounds %printf_args, %printf_args* %70, i32 0, i32 2
  store i32 %41, i32* %71, align 4, !llvm.mem.parallel_loop_access !14
  %72 = load i32, i32* %local_inter_warp_idx
  %73 = load i32, i32* %local_intra_warp_idx
  %74 = mul i32 %72, 32
  %thread_idx26 = add i32 %73, %74
  %75 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx26
  %76 = getelementptr inbounds %printf_args, %printf_args* %75, i32 0, i32 3
  store i32 %46, i32* %76, align 4, !llvm.mem.parallel_loop_access !14
  %77 = load i32, i32* %local_inter_warp_idx
  %78 = load i32, i32* %local_intra_warp_idx
  %79 = mul i32 %77, 32
  %thread_idx25 = add i32 %78, %79
  %80 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx25
  %81 = getelementptr inbounds %printf_args, %printf_args* %80, i32 0, i32 4
  store i32 %sub7, i32* %81, align 4, !llvm.mem.parallel_loop_access !14
  %82 = load i32, i32* %local_inter_warp_idx
  %83 = load i32, i32* %local_intra_warp_idx
  %84 = mul i32 %82, 32
  %thread_idx24 = add i32 %83, %84
  %85 = getelementptr %printf_args, %printf_args* %tmp_intra_warp_, i32 %thread_idx24
  %86 = bitcast %printf_args* %85 to i8*
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.54, i64 0, i64 0), i32 %thread_idx24, i32 %33, i32 %41, i32 %46, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry_after_block_sync_1_after_block_sync_2
  %88 = load i32, i32* %local_inter_warp_idx
  %89 = mul i32 %88, 32
  %90 = load i32, i32* %local_intra_warp_idx
  %thread_idx33 = add i32 %90, %89
  %thread_id_x34 = srem i32 %thread_idx33, 4
  %91 = load i32, i32* @block_index
  %mul11 = mul i32 %91, 4
  %add12 = add i32 %thread_id_x34, %mul11
  %92 = load i32, i32* %local_inter_warp_idx
  %93 = load i32, i32* %local_intra_warp_idx
  %94 = mul i32 %92, 32
  %thread_idx8 = add i32 %93, %94
  %95 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx8
  %96 = load i32, i32* %95, align 4, !llvm.mem.parallel_loop_access !14
  %sub13 = sub nsw i32 %96, 1
  %97 = load i32, i32* %local_inter_warp_idx
  %98 = load i32, i32* %local_intra_warp_idx
  %99 = mul i32 %97, 32
  %thread_idx19 = add i32 %98, %99
  %100 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx19
  %101 = load i32, i32* %100, align 4, !llvm.mem.parallel_loop_access !14
  %sub14 = sub nsw i32 %sub13, %101
  %cmp15 = icmp uge i32 %add12, %sub14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %return

if.end17:                                         ; preds = %if.end
  %102 = load i32, i32* %local_inter_warp_idx
  %103 = load i32, i32* %local_intra_warp_idx
  %104 = mul i32 %102, 32
  %thread_idx3 = add i32 %103, %104
  %105 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %106 = load float*, float** %105, align 8, !llvm.mem.parallel_loop_access !14
  %107 = load i32, i32* %local_inter_warp_idx
  %108 = load i32, i32* %local_intra_warp_idx
  %109 = mul i32 %107, 32
  %thread_idx7 = add i32 %108, %109
  %110 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx7
  %111 = load i32, i32* %110, align 4, !llvm.mem.parallel_loop_access !14
  %112 = load i32, i32* @block_index
  %mul20 = mul i32 4, %112
  %113 = load i32, i32* %local_inter_warp_idx
  %114 = mul i32 %113, 32
  %115 = load i32, i32* %local_intra_warp_idx
  %thread_idx35 = add i32 %115, %114
  %thread_id_x36 = srem i32 %thread_idx35, 4
  %add22 = add i32 %mul20, %thread_id_x36
  %116 = load i32, i32* %local_inter_warp_idx
  %117 = load i32, i32* %local_intra_warp_idx
  %118 = mul i32 %116, 32
  %thread_idx18 = add i32 %117, %118
  %119 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx18
  %120 = load i32, i32* %119, align 4, !llvm.mem.parallel_loop_access !14
  %add23 = add i32 %add22, %120
  %add24 = add i32 %add23, 1
  %mul25 = mul i32 %111, %add24
  %idx.ext = zext i32 %mul25 to i64
  %add.ptr = getelementptr inbounds float, float* %106, i64 %idx.ext
  %121 = load i32, i32* %local_inter_warp_idx
  %122 = load i32, i32* %local_intra_warp_idx
  %123 = mul i32 %121, 32
  %thread_idx17 = add i32 %122, %123
  %124 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  %125 = load i32, i32* %124, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext26 = sext i32 %125 to i64
  %add.ptr27 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext26
  %126 = load float, float* %add.ptr27, align 4, !llvm.mem.parallel_loop_access !14
  %127 = load i32, i32* %local_inter_warp_idx
  %128 = load i32, i32* %local_intra_warp_idx
  %129 = mul i32 %127, 32
  %thread_idx2 = add i32 %128, %129
  %130 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx2
  %131 = load float*, float** %130, align 8, !llvm.mem.parallel_loop_access !14
  %132 = load i32, i32* %local_inter_warp_idx
  %133 = load i32, i32* %local_intra_warp_idx
  %134 = mul i32 %132, 32
  %thread_idx6 = add i32 %133, %134
  %135 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx6
  %136 = load i32, i32* %135, align 4, !llvm.mem.parallel_loop_access !14
  %137 = load i32, i32* %local_inter_warp_idx
  %138 = load i32, i32* %local_intra_warp_idx
  %139 = mul i32 %137, 32
  %thread_idx16 = add i32 %138, %139
  %140 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx16
  %141 = load i32, i32* %140, align 4, !llvm.mem.parallel_loop_access !14
  %mul28 = mul nsw i32 %136, %141
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds float, float* %131, i64 %idx.ext29
  %142 = load i32, i32* %local_inter_warp_idx
  %143 = load i32, i32* %local_intra_warp_idx
  %144 = mul i32 %142, 32
  %thread_idx15 = add i32 %143, %144
  %145 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx15
  %146 = load i32, i32* %145, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext31 = sext i32 %146 to i64
  %add.ptr32 = getelementptr inbounds float, float* %add.ptr30, i64 %idx.ext31
  %147 = load float, float* %add.ptr32, align 4, !llvm.mem.parallel_loop_access !14
  %div = fdiv float %126, %147
  %148 = load i32, i32* %local_inter_warp_idx
  %149 = load i32, i32* %local_intra_warp_idx
  %150 = mul i32 %148, 32
  %thread_idx = add i32 %149, %150
  %151 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %152 = load float*, float** %151, align 8, !llvm.mem.parallel_loop_access !14
  %153 = load i32, i32* %local_inter_warp_idx
  %154 = load i32, i32* %local_intra_warp_idx
  %155 = mul i32 %153, 32
  %thread_idx5 = add i32 %154, %155
  %156 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx5
  %157 = load i32, i32* %156, align 4, !llvm.mem.parallel_loop_access !14
  %158 = load i32, i32* @block_index
  %mul35 = mul i32 4, %158
  %159 = load i32, i32* %local_inter_warp_idx
  %160 = mul i32 %159, 32
  %161 = load i32, i32* %local_intra_warp_idx
  %thread_idx37 = add i32 %161, %160
  %thread_id_x38 = srem i32 %thread_idx37, 4
  %add37 = add i32 %mul35, %thread_id_x38
  %162 = load i32, i32* %local_inter_warp_idx
  %163 = load i32, i32* %local_intra_warp_idx
  %164 = mul i32 %162, 32
  %thread_idx14 = add i32 %163, %164
  %165 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx14
  %166 = load i32, i32* %165, align 4, !llvm.mem.parallel_loop_access !14
  %add38 = add i32 %add37, %166
  %add39 = add i32 %add38, 1
  %mul40 = mul i32 %157, %add39
  %idx.ext41 = zext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds float, float* %152, i64 %idx.ext41
  %167 = load i32, i32* %local_inter_warp_idx
  %168 = load i32, i32* %local_intra_warp_idx
  %169 = mul i32 %167, 32
  %thread_idx13 = add i32 %168, %169
  %170 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx13
  %171 = load i32, i32* %170, align 4, !llvm.mem.parallel_loop_access !14
  %idx.ext43 = sext i32 %171 to i64
  %add.ptr44 = getelementptr inbounds float, float* %add.ptr42, i64 %idx.ext43
  store float %div, float* %add.ptr44, align 4, !llvm.mem.parallel_loop_access !14
  br label %return

return:                                           ; preds = %if.end17, %if.then16
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %return_after_block_sync_4

return_after_block_sync_4:                        ; preds = %reset_block
  br label %return_after_block_sync_0

return_after_block_sync_0:                        ; preds = %return_after_block_sync_4
  ret void
}


; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan2PfS_S_iii(float* noalias %m_cuda, float* noalias %a_cuda, float* noalias %b_cuda, i32 %Size, i32 %j1, i32 %t) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  store i32 0, i32* %local_inter_warp_idx
  %tmp_intra_warp_ = alloca %printf_args.0, i32 16
  %yidx_intra_warp_ = alloca i32, i32 16
  %xidx_intra_warp_ = alloca i32, i32 16
  %t.addr_intra_warp_ = alloca i32, i32 16
  %j1.addr_intra_warp_ = alloca i32, i32 16
  %Size.addr_intra_warp_ = alloca i32, i32 16
  %b_cuda.addr_intra_warp_ = alloca float*, i32 16
  %a_cuda.addr_intra_warp_ = alloca float*, i32 16
  %m_cuda.addr_intra_warp_ = alloca float*, i32 16
  %m_cuda.addr = alloca float*, align 8
  br label %entry_after_block_sync_2

entry_after_block_sync_2:                         ; preds = %entry
  %a_cuda.addr = alloca float*, align 8
  %b_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %xidx = alloca i32, align 4
  %yidx = alloca i32, align 4
  %tmp = alloca %printf_args.0
  br label %entry_after_block_sync_1

entry_after_block_sync_1:                         ; preds = %entry_after_block_sync_2
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %entry_after_block_sync_1
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %if.end64
  %0 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %0, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %1 = load i32, i32* %local_intra_warp_idx
  %2 = icmp ult i32 %1, 16
  br i1 %2, label %entry_after_block_sync_1_after_block_sync_3, label %reset_block, !llvm.loop !15

entry_after_block_sync_1_after_block_sync_3:      ; preds = %intra_warp_cond
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
  %thread_idx47 = add i32 %29, %28
  %thread_id_x = srem i32 %thread_idx47, 4
  %30 = load i32, i32* @block_index
  %mul = mul i32 %30, 4
  %add = add i32 %thread_id_x, %mul
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

if.then:                                          ; preds = %entry_after_block_sync_1_after_block_sync_3
  br label %if.end64

if.end:                                           ; preds = %entry_after_block_sync_1_after_block_sync_3
  %41 = load i32, i32* %local_inter_warp_idx
  %42 = mul i32 %41, 32
  %43 = load i32, i32* %local_intra_warp_idx
  %thread_idx48 = add i32 %43, %42
  %thread_id_y = sdiv i32 %thread_idx48, 4
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
  br label %if.end64

if.end12:                                         ; preds = %if.end
  %54 = load i32, i32* @block_index
  %mul15 = mul i32 %54, 4
  %55 = load i32, i32* %local_inter_warp_idx
  %56 = mul i32 %55, 32
  %57 = load i32, i32* %local_intra_warp_idx
  %thread_idx49 = add i32 %57, %56
  %thread_id_x50 = srem i32 %thread_idx49, 4
  %add17 = add i32 %mul15, %thread_id_x50
  %58 = load i32, i32* %local_inter_warp_idx
  %59 = load i32, i32* %local_intra_warp_idx
  %60 = mul i32 %58, 32
  %thread_idx34 = add i32 %59, %60
  %61 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx34
  store i32 %add17, i32* %61, align 4, !llvm.mem.parallel_loop_access !18
  %62 = load i32, i32* %local_inter_warp_idx
  %63 = mul i32 %62, 32
  %64 = load i32, i32* %local_intra_warp_idx
  %thread_idx51 = add i32 %64, %63
  %thread_id_y52 = sdiv i32 %thread_idx51, 4
  %add22 = add i32 0, %thread_id_y52
  %65 = load i32, i32* %local_inter_warp_idx
  %66 = load i32, i32* %local_intra_warp_idx
  %67 = mul i32 %65, 32
  %thread_idx39 = add i32 %66, %67
  %68 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx39
  store i32 %add22, i32* %68, align 4, !llvm.mem.parallel_loop_access !18
  %69 = load i32, i32* @block_index
  %70 = load i32, i32* %local_inter_warp_idx
  %71 = mul i32 %70, 32
  %72 = load i32, i32* %local_intra_warp_idx
  %thread_idx53 = add i32 %72, %71
  %thread_id_x54 = srem i32 %thread_idx53, 4
  %73 = load i32, i32* %local_inter_warp_idx
  %74 = mul i32 %73, 32
  %75 = load i32, i32* %local_intra_warp_idx
  %thread_idx55 = add i32 %75, %74
  %thread_id_y56 = sdiv i32 %thread_idx55, 4
  %76 = load i32, i32* %local_inter_warp_idx
  %77 = load i32, i32* %local_intra_warp_idx
  %78 = mul i32 %76, 32
  %thread_idx46 = add i32 %77, %78
  %79 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx46
  %80 = getelementptr inbounds %printf_args.0, %printf_args.0* %79, i32 0, i32 0
  store i32 %69, i32* %80, align 4, !llvm.mem.parallel_loop_access !18
  %81 = load i32, i32* %local_inter_warp_idx
  %82 = load i32, i32* %local_intra_warp_idx
  %83 = mul i32 %81, 32
  %thread_idx45 = add i32 %82, %83
  %84 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx45
  %85 = getelementptr inbounds %printf_args.0, %printf_args.0* %84, i32 0, i32 1
  store i32 %thread_id_x54, i32* %85, align 4, !llvm.mem.parallel_loop_access !18
  %86 = load i32, i32* %local_inter_warp_idx
  %87 = load i32, i32* %local_intra_warp_idx
  %88 = mul i32 %86, 32
  %thread_idx44 = add i32 %87, %88
  %89 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx44
  %90 = getelementptr inbounds %printf_args.0, %printf_args.0* %89, i32 0, i32 2
  store i32 0, i32* %90, align 4, !llvm.mem.parallel_loop_access !18
  %91 = load i32, i32* %local_inter_warp_idx
  %92 = load i32, i32* %local_intra_warp_idx
  %93 = mul i32 %91, 32
  %thread_idx43 = add i32 %92, %93
  %94 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx43
  %95 = getelementptr inbounds %printf_args.0, %printf_args.0* %94, i32 0, i32 3
  store i32 %thread_id_y56, i32* %95, align 4, !llvm.mem.parallel_loop_access !18
  %96 = load i32, i32* %local_inter_warp_idx
  %97 = load i32, i32* %local_intra_warp_idx
  %98 = mul i32 %96, 32
  %thread_idx42 = add i32 %97, %98
  %99 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx42
  %100 = getelementptr inbounds %printf_args.0, %printf_args.0* %99, i32 0, i32 4
  store i32 4, i32* %100, align 4, !llvm.mem.parallel_loop_access !18
  %101 = load i32, i32* %local_inter_warp_idx
  %102 = load i32, i32* %local_intra_warp_idx
  %103 = mul i32 %101, 32
  %thread_idx41 = add i32 %102, %103
  %104 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx41
  %105 = getelementptr inbounds %printf_args.0, %printf_args.0* %104, i32 0, i32 5
  store i32 4, i32* %105, align 4, !llvm.mem.parallel_loop_access !18
  %106 = load i32, i32* %local_inter_warp_idx
  %107 = load i32, i32* %local_intra_warp_idx
  %108 = mul i32 %106, 32
  %thread_idx40 = add i32 %107, %108
  %109 = getelementptr %printf_args.0, %printf_args.0* %tmp_intra_warp_, i32 %thread_idx40
  %110 = bitcast %printf_args.0* %109 to i8*
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.55, i64 0, i64 0), i32 %54, i32 %thread_id_x50, i32 0, i32 %thread_id_y56, i32 0, i32 0)
  %112 = load i32, i32* %local_inter_warp_idx
  %113 = load i32, i32* %local_intra_warp_idx
  %114 = mul i32 %112, 32
  %thread_idx1 = add i32 %113, %114
  %115 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx1
  %116 = load float*, float** %115, align 8, !llvm.mem.parallel_loop_access !18
  %117 = load i32, i32* %local_inter_warp_idx
  %118 = load i32, i32* %local_intra_warp_idx
  %119 = mul i32 %117, 32
  %thread_idx12 = add i32 %118, %119
  %120 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx12
  %121 = load i32, i32* %120, align 4, !llvm.mem.parallel_loop_access !18
  %122 = load i32, i32* %local_inter_warp_idx
  %123 = load i32, i32* %local_intra_warp_idx
  %124 = mul i32 %122, 32
  %thread_idx33 = add i32 %123, %124
  %125 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx33
  %126 = load i32, i32* %125, align 4, !llvm.mem.parallel_loop_access !18
  %add29 = add nsw i32 %126, 1
  %127 = load i32, i32* %local_inter_warp_idx
  %128 = load i32, i32* %local_intra_warp_idx
  %129 = mul i32 %127, 32
  %thread_idx26 = add i32 %128, %129
  %130 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx26
  %131 = load i32, i32* %130, align 4, !llvm.mem.parallel_loop_access !18
  %add30 = add nsw i32 %add29, %131
  %mul31 = mul nsw i32 %121, %add30
  %132 = load i32, i32* %local_inter_warp_idx
  %133 = load i32, i32* %local_intra_warp_idx
  %134 = mul i32 %132, 32
  %thread_idx25 = add i32 %133, %134
  %135 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx25
  %136 = load i32, i32* %135, align 4, !llvm.mem.parallel_loop_access !18
  %add32 = add nsw i32 %mul31, %136
  %idxprom = sext i32 %add32 to i64
  %arrayidx = getelementptr inbounds float, float* %116, i64 %idxprom
  %137 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !18
  %138 = load i32, i32* %local_inter_warp_idx
  %139 = load i32, i32* %local_intra_warp_idx
  %140 = mul i32 %138, 32
  %thread_idx4 = add i32 %139, %140
  %141 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx4
  %142 = load float*, float** %141, align 8, !llvm.mem.parallel_loop_access !18
  %143 = load i32, i32* %local_inter_warp_idx
  %144 = load i32, i32* %local_intra_warp_idx
  %145 = mul i32 %143, 32
  %thread_idx11 = add i32 %144, %145
  %146 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx11
  %147 = load i32, i32* %146, align 4, !llvm.mem.parallel_loop_access !18
  %148 = load i32, i32* %local_inter_warp_idx
  %149 = load i32, i32* %local_intra_warp_idx
  %150 = mul i32 %148, 32
  %thread_idx24 = add i32 %149, %150
  %151 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx24
  %152 = load i32, i32* %151, align 4, !llvm.mem.parallel_loop_access !18
  %mul33 = mul nsw i32 %147, %152
  %153 = load i32, i32* %local_inter_warp_idx
  %154 = load i32, i32* %local_intra_warp_idx
  %155 = mul i32 %153, 32
  %thread_idx38 = add i32 %154, %155
  %156 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx38
  %157 = load i32, i32* %156, align 4, !llvm.mem.parallel_loop_access !18
  %158 = load i32, i32* %local_inter_warp_idx
  %159 = load i32, i32* %local_intra_warp_idx
  %160 = mul i32 %158, 32
  %thread_idx23 = add i32 %159, %160
  %161 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx23
  %162 = load i32, i32* %161, align 4, !llvm.mem.parallel_loop_access !18
  %add34 = add nsw i32 %157, %162
  %add35 = add nsw i32 %mul33, %add34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds float, float* %142, i64 %idxprom36
  %163 = load float, float* %arrayidx37, align 4, !llvm.mem.parallel_loop_access !18
  %mul38 = fmul contract float %137, %163
  %164 = load i32, i32* %local_inter_warp_idx
  %165 = load i32, i32* %local_intra_warp_idx
  %166 = mul i32 %164, 32
  %thread_idx3 = add i32 %165, %166
  %167 = getelementptr float*, float** %a_cuda.addr_intra_warp_, i32 %thread_idx3
  %168 = load float*, float** %167, align 8, !llvm.mem.parallel_loop_access !18
  %169 = load i32, i32* %local_inter_warp_idx
  %170 = load i32, i32* %local_intra_warp_idx
  %171 = mul i32 %169, 32
  %thread_idx10 = add i32 %170, %171
  %172 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx10
  %173 = load i32, i32* %172, align 4, !llvm.mem.parallel_loop_access !18
  %174 = load i32, i32* %local_inter_warp_idx
  %175 = load i32, i32* %local_intra_warp_idx
  %176 = mul i32 %174, 32
  %thread_idx32 = add i32 %175, %176
  %177 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx32
  %178 = load i32, i32* %177, align 4, !llvm.mem.parallel_loop_access !18
  %add39 = add nsw i32 %178, 1
  %179 = load i32, i32* %local_inter_warp_idx
  %180 = load i32, i32* %local_intra_warp_idx
  %181 = mul i32 %179, 32
  %thread_idx22 = add i32 %180, %181
  %182 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx22
  %183 = load i32, i32* %182, align 4, !llvm.mem.parallel_loop_access !18
  %add40 = add nsw i32 %add39, %183
  %mul41 = mul nsw i32 %173, %add40
  %184 = load i32, i32* %local_inter_warp_idx
  %185 = load i32, i32* %local_intra_warp_idx
  %186 = mul i32 %184, 32
  %thread_idx37 = add i32 %185, %186
  %187 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx37
  %188 = load i32, i32* %187, align 4, !llvm.mem.parallel_loop_access !18
  %189 = load i32, i32* %local_inter_warp_idx
  %190 = load i32, i32* %local_intra_warp_idx
  %191 = mul i32 %189, 32
  %thread_idx21 = add i32 %190, %191
  %192 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx21
  %193 = load i32, i32* %192, align 4, !llvm.mem.parallel_loop_access !18
  %add42 = add nsw i32 %188, %193
  %add43 = add nsw i32 %mul41, %add42
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, float* %168, i64 %idxprom44
  %194 = load float, float* %arrayidx45, align 4, !llvm.mem.parallel_loop_access !18
  %sub46 = fsub contract float %194, %mul38
  store float %sub46, float* %arrayidx45, align 4, !llvm.mem.parallel_loop_access !18
  %195 = load i32, i32* %local_inter_warp_idx
  %196 = load i32, i32* %local_intra_warp_idx
  %197 = mul i32 %195, 32
  %thread_idx36 = add i32 %196, %197
  %198 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx36
  %199 = load i32, i32* %198, align 4, !llvm.mem.parallel_loop_access !18
  %cmp47 = icmp eq i32 %199, 0
  br i1 %cmp47, label %if.then48, label %if.end64

if.then48:                                        ; preds = %if.end12
  %200 = load i32, i32* %local_inter_warp_idx
  %201 = load i32, i32* %local_intra_warp_idx
  %202 = mul i32 %200, 32
  %thread_idx = add i32 %201, %202
  %203 = getelementptr float*, float** %m_cuda.addr_intra_warp_, i32 %thread_idx
  %204 = load float*, float** %203, align 8, !llvm.mem.parallel_loop_access !18
  %205 = load i32, i32* %local_inter_warp_idx
  %206 = load i32, i32* %local_intra_warp_idx
  %207 = mul i32 %205, 32
  %thread_idx9 = add i32 %206, %207
  %208 = getelementptr i32, i32* %Size.addr_intra_warp_, i32 %thread_idx9
  %209 = load i32, i32* %208, align 4, !llvm.mem.parallel_loop_access !18
  %210 = load i32, i32* %local_inter_warp_idx
  %211 = load i32, i32* %local_intra_warp_idx
  %212 = mul i32 %210, 32
  %thread_idx31 = add i32 %211, %212
  %213 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx31
  %214 = load i32, i32* %213, align 4, !llvm.mem.parallel_loop_access !18
  %add49 = add nsw i32 %214, 1
  %215 = load i32, i32* %local_inter_warp_idx
  %216 = load i32, i32* %local_intra_warp_idx
  %217 = mul i32 %215, 32
  %thread_idx20 = add i32 %216, %217
  %218 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx20
  %219 = load i32, i32* %218, align 4, !llvm.mem.parallel_loop_access !18
  %add50 = add nsw i32 %add49, %219
  %mul51 = mul nsw i32 %209, %add50
  %220 = load i32, i32* %local_inter_warp_idx
  %221 = load i32, i32* %local_intra_warp_idx
  %222 = mul i32 %220, 32
  %thread_idx35 = add i32 %221, %222
  %223 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx35
  %224 = load i32, i32* %223, align 4, !llvm.mem.parallel_loop_access !18
  %225 = load i32, i32* %local_inter_warp_idx
  %226 = load i32, i32* %local_intra_warp_idx
  %227 = mul i32 %225, 32
  %thread_idx19 = add i32 %226, %227
  %228 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx19
  %229 = load i32, i32* %228, align 4, !llvm.mem.parallel_loop_access !18
  %add52 = add nsw i32 %224, %229
  %add53 = add nsw i32 %mul51, %add52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds float, float* %204, i64 %idxprom54
  %230 = load float, float* %arrayidx55, align 4, !llvm.mem.parallel_loop_access !18
  %231 = load i32, i32* %local_inter_warp_idx
  %232 = load i32, i32* %local_intra_warp_idx
  %233 = mul i32 %231, 32
  %thread_idx7 = add i32 %232, %233
  %234 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx7
  %235 = load float*, float** %234, align 8, !llvm.mem.parallel_loop_access !18
  %236 = load i32, i32* %local_inter_warp_idx
  %237 = load i32, i32* %local_intra_warp_idx
  %238 = mul i32 %236, 32
  %thread_idx18 = add i32 %237, %238
  %239 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx18
  %240 = load i32, i32* %239, align 4, !llvm.mem.parallel_loop_access !18
  %idxprom56 = sext i32 %240 to i64
  %arrayidx57 = getelementptr inbounds float, float* %235, i64 %idxprom56
  %241 = load float, float* %arrayidx57, align 4, !llvm.mem.parallel_loop_access !18
  %mul58 = fmul contract float %230, %241
  %242 = load i32, i32* %local_inter_warp_idx
  %243 = load i32, i32* %local_intra_warp_idx
  %244 = mul i32 %242, 32
  %thread_idx6 = add i32 %243, %244
  %245 = getelementptr float*, float** %b_cuda.addr_intra_warp_, i32 %thread_idx6
  %246 = load float*, float** %245, align 8, !llvm.mem.parallel_loop_access !18
  %247 = load i32, i32* %local_inter_warp_idx
  %248 = load i32, i32* %local_intra_warp_idx
  %249 = mul i32 %247, 32
  %thread_idx30 = add i32 %248, %249
  %250 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx30
  %251 = load i32, i32* %250, align 4, !llvm.mem.parallel_loop_access !18
  %add59 = add nsw i32 %251, 1
  %252 = load i32, i32* %local_inter_warp_idx
  %253 = load i32, i32* %local_intra_warp_idx
  %254 = mul i32 %252, 32
  %thread_idx17 = add i32 %253, %254
  %255 = getelementptr i32, i32* %t.addr_intra_warp_, i32 %thread_idx17
  %256 = load i32, i32* %255, align 4, !llvm.mem.parallel_loop_access !18
  %add60 = add nsw i32 %add59, %256
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds float, float* %246, i64 %idxprom61
  %257 = load float, float* %arrayidx62, align 4, !llvm.mem.parallel_loop_access !18
  %sub63 = fsub contract float %257, %mul58
  store float %sub63, float* %arrayidx62, align 4, !llvm.mem.parallel_loop_access !18
  br label %if.end64

if.end64:                                         ; preds = %if.then48, %if.end12, %if.then11, %if.then
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end64_after_block_sync_0

if.end64_after_block_sync_0:                      ; preds = %reset_block
  br label %if.end64_after_block_sync_0_after_block_sync_4

if.end64_after_block_sync_0_after_block_sync_4:   ; preds = %if.end64_after_block_sync_0
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
