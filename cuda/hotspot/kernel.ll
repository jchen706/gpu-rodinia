; ModuleID = 'kernel.bc'
source_filename = "hotspot.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intra_warp_index = thread_local local_unnamed_addr global i32 0
@inter_warp_index = thread_local local_unnamed_addr global i32 0
@block_index = external thread_local local_unnamed_addr global i32
@wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda = thread_local addrspace(1) global [16 x [16 x float]] zeroinitializer
@wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda = thread_local addrspace(1) global [16 x [16 x float]] zeroinitializer
@wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t = thread_local local_unnamed_addr addrspace(1) global [16 x [16 x float]] zeroinitializer

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z14calculate_tempiPfS_S_iiiiffffff(i32 %iteration, float* noalias %power, float* noalias %temp_src, float* noalias %temp_dst, i32 %grid_cols, i32 %grid_rows, i32 %border_cols, i32 %border_rows, float %Cap, float %Rx, float %Ry, float %Rz, float %step, float %time_elapsed) local_unnamed_addr #0 {
entry:
  %local_intra_warp_idx = alloca i32
  %local_inter_warp_idx = alloca i32
  store i32 0, i32* %local_inter_warp_idx
  %"1_intra_warp_" = alloca [16 x [16 x float]]*, i32 512
  %"0_intra_warp_" = alloca [16 x [16 x float]]*, i32 512
  %cmp87_intra_warp_ = alloca i1, i32 512
  %cmp89_intra_warp_ = alloca i1, i32 512
  %cmp93_intra_warp_ = alloca i1, i32 512
  %cmp96_intra_warp_ = alloca i1, i32 512
  %cmp100_intra_warp_ = alloca i1, i32 512
  %cmp102_intra_warp_ = alloca i1, i32 512
  %cmp104_intra_warp_ = alloca i1, i32 512
  %cmp106_intra_warp_ = alloca i1, i32 512
  %cmp108_intra_warp_ = alloca i1, i32 512
  %cmp177_intra_warp_ = alloca i1, i32 512
  %i_intra_warp_ = alloca i32, i32 512
  %computed_intra_warp_ = alloca i8, i32 512
  %E_intra_warp_ = alloca i32, i32 512
  %W_intra_warp_ = alloca i32, i32 512
  %S_intra_warp_ = alloca i32, i32 512
  %N_intra_warp_ = alloca i32, i32 512
  %validXmax_intra_warp_ = alloca i32, i32 512
  %validXmin_intra_warp_ = alloca i32, i32 512
  %validYmax_intra_warp_ = alloca i32, i32 512
  %validYmin_intra_warp_ = alloca i32, i32 512
  %index_intra_warp_ = alloca i32, i32 512
  %loadXidx_intra_warp_ = alloca i32, i32 512
  %loadYidx_intra_warp_ = alloca i32, i32 512
  %xidx_intra_warp_ = alloca i32, i32 512
  %yidx_intra_warp_ = alloca i32, i32 512
  %blkXmax_intra_warp_ = alloca i32, i32 512
  %blkYmax_intra_warp_ = alloca i32, i32 512
  %blkX_intra_warp_ = alloca i32, i32 512
  %blkY_intra_warp_ = alloca i32, i32 512
  %small_block_cols_intra_warp_ = alloca i32, i32 512
  %small_block_rows_intra_warp_ = alloca i32, i32 512
  %ty_intra_warp_ = alloca i32, i32 512
  %tx_intra_warp_ = alloca i32, i32 512
  %by_intra_warp_ = alloca i32, i32 512
  %bx_intra_warp_ = alloca i32, i32 512
  %Rz_1_intra_warp_ = alloca float, i32 512
  %Ry_1_intra_warp_ = alloca float, i32 512
  %Rx_1_intra_warp_ = alloca float, i32 512
  %step_div_Cap_intra_warp_ = alloca float, i32 512
  %amb_temp_intra_warp_ = alloca float, i32 512
  %time_elapsed.addr_intra_warp_ = alloca float, i32 512
  %step.addr_intra_warp_ = alloca float, i32 512
  %Rz.addr_intra_warp_ = alloca float, i32 512
  %Ry.addr_intra_warp_ = alloca float, i32 512
  %Rx.addr_intra_warp_ = alloca float, i32 512
  %Cap.addr_intra_warp_ = alloca float, i32 512
  %border_rows.addr_intra_warp_ = alloca i32, i32 512
  %border_cols.addr_intra_warp_ = alloca i32, i32 512
  %grid_rows.addr_intra_warp_ = alloca i32, i32 512
  %grid_cols.addr_intra_warp_ = alloca i32, i32 512
  %temp_dst.addr_intra_warp_ = alloca float*, i32 512
  %temp_src.addr_intra_warp_ = alloca float*, i32 512
  %power.addr_intra_warp_ = alloca float*, i32 512
  %iteration.addr_intra_warp_ = alloca i32, i32 512
  %cond.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond47.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond53.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond62.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond71.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond76.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond81.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond86.ex_phi_intra_warp_ = alloca i32, i32 512
  %cond86.ex_phi = alloca i32
  br label %entry_after_block_sync_14

entry_after_block_sync_14:                        ; preds = %entry
  %cond81.ex_phi = alloca i32
  %cond76.ex_phi = alloca i32
  %cond71.ex_phi = alloca i32
  %cond62.ex_phi = alloca i32
  %cond53.ex_phi = alloca i32
  %cond47.ex_phi = alloca i32
  %cond.ex_phi = alloca i32
  %iteration.addr = alloca i32, align 4
  %power.addr = alloca float*, align 8
  %temp_src.addr = alloca float*, align 8
  %temp_dst.addr = alloca float*, align 8
  %grid_cols.addr = alloca i32, align 4
  %grid_rows.addr = alloca i32, align 4
  %border_cols.addr = alloca i32, align 4
  %border_rows.addr = alloca i32, align 4
  %Cap.addr = alloca float, align 4
  %Rx.addr = alloca float, align 4
  %Ry.addr = alloca float, align 4
  %Rz.addr = alloca float, align 4
  %step.addr = alloca float, align 4
  %time_elapsed.addr = alloca float, align 4
  %amb_temp = alloca float, align 4
  %step_div_Cap = alloca float, align 4
  %Rx_1 = alloca float, align 4
  %Ry_1 = alloca float, align 4
  %Rz_1 = alloca float, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %small_block_rows = alloca i32, align 4
  %small_block_cols = alloca i32, align 4
  %blkY = alloca i32, align 4
  %blkX = alloca i32, align 4
  %blkYmax = alloca i32, align 4
  %blkXmax = alloca i32, align 4
  %yidx = alloca i32, align 4
  %xidx = alloca i32, align 4
  %loadYidx = alloca i32, align 4
  %loadXidx = alloca i32, align 4
  %index = alloca i32, align 4
  %validYmin = alloca i32, align 4
  %validYmax = alloca i32, align 4
  %validXmin = alloca i32, align 4
  %validXmax = alloca i32, align 4
  %N = alloca i32, align 4
  %S = alloca i32, align 4
  %W = alloca i32, align 4
  %E = alloca i32, align 4
  %computed = alloca i8, align 1
  %i = alloca i32, align 4
  br label %entry_after_block_sync_12

entry_after_block_sync_12:                        ; preds = %entry_after_block_sync_14
  br label %intra_warp_init68

intra_warp_init68:                                ; preds = %entry_after_block_sync_12
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond67

intra_warp_inc69:                                 ; preds = %if.end
  %0 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment70 = add i32 %0, 1
  store i32 %intra_warp_index_increment70, i32* %local_intra_warp_idx
  br label %intra_warp_cond67

intra_warp_cond67:                                ; preds = %intra_warp_inc69, %intra_warp_init68
  %1 = load i32, i32* %local_intra_warp_idx
  %2 = icmp ult i32 %1, 512
  br i1 %2, label %entry_after_block_sync_12_after_block_sync_15, label %reset_block71, !llvm.loop !10

entry_after_block_sync_12_after_block_sync_15:    ; preds = %intra_warp_cond67
  %3 = load i32, i32* %local_inter_warp_idx
  %4 = load i32, i32* %local_intra_warp_idx
  %5 = mul i32 %3, 32
  %thread_idx99 = add i32 %4, %5
  %6 = getelementptr i32, i32* %iteration.addr_intra_warp_, i32 %thread_idx99
  store i32 %iteration, i32* %6, align 4, !llvm.mem.parallel_loop_access !13
  %7 = load i32, i32* %local_inter_warp_idx
  %8 = load i32, i32* %local_intra_warp_idx
  %9 = mul i32 %7, 32
  %thread_idx101 = add i32 %8, %9
  %10 = getelementptr float*, float** %power.addr_intra_warp_, i32 %thread_idx101
  store float* %power, float** %10, align 8, !llvm.mem.parallel_loop_access !13
  %11 = load i32, i32* %local_inter_warp_idx
  %12 = load i32, i32* %local_intra_warp_idx
  %13 = mul i32 %11, 32
  %thread_idx103 = add i32 %12, %13
  %14 = getelementptr float*, float** %temp_src.addr_intra_warp_, i32 %thread_idx103
  store float* %temp_src, float** %14, align 8, !llvm.mem.parallel_loop_access !13
  %15 = load i32, i32* %local_inter_warp_idx
  %16 = load i32, i32* %local_intra_warp_idx
  %17 = mul i32 %15, 32
  %thread_idx105 = add i32 %16, %17
  %18 = getelementptr float*, float** %temp_dst.addr_intra_warp_, i32 %thread_idx105
  store float* %temp_dst, float** %18, align 8, !llvm.mem.parallel_loop_access !13
  %19 = load i32, i32* %local_inter_warp_idx
  %20 = load i32, i32* %local_intra_warp_idx
  %21 = mul i32 %19, 32
  %thread_idx110 = add i32 %20, %21
  %22 = getelementptr i32, i32* %grid_cols.addr_intra_warp_, i32 %thread_idx110
  store i32 %grid_cols, i32* %22, align 4, !llvm.mem.parallel_loop_access !13
  %23 = load i32, i32* %local_inter_warp_idx
  %24 = load i32, i32* %local_intra_warp_idx
  %25 = mul i32 %23, 32
  %thread_idx114 = add i32 %24, %25
  %26 = getelementptr i32, i32* %grid_rows.addr_intra_warp_, i32 %thread_idx114
  store i32 %grid_rows, i32* %26, align 4, !llvm.mem.parallel_loop_access !13
  %27 = load i32, i32* %local_inter_warp_idx
  %28 = load i32, i32* %local_intra_warp_idx
  %29 = mul i32 %27, 32
  %thread_idx116 = add i32 %28, %29
  %30 = getelementptr i32, i32* %border_cols.addr_intra_warp_, i32 %thread_idx116
  store i32 %border_cols, i32* %30, align 4, !llvm.mem.parallel_loop_access !13
  %31 = load i32, i32* %local_inter_warp_idx
  %32 = load i32, i32* %local_intra_warp_idx
  %33 = mul i32 %31, 32
  %thread_idx118 = add i32 %32, %33
  %34 = getelementptr i32, i32* %border_rows.addr_intra_warp_, i32 %thread_idx118
  store i32 %border_rows, i32* %34, align 4, !llvm.mem.parallel_loop_access !13
  %35 = load i32, i32* %local_inter_warp_idx
  %36 = load i32, i32* %local_intra_warp_idx
  %37 = mul i32 %35, 32
  %thread_idx120 = add i32 %36, %37
  %38 = getelementptr float, float* %Cap.addr_intra_warp_, i32 %thread_idx120
  store float %Cap, float* %38, align 4, !llvm.mem.parallel_loop_access !13
  %39 = load i32, i32* %local_inter_warp_idx
  %40 = load i32, i32* %local_intra_warp_idx
  %41 = mul i32 %39, 32
  %thread_idx122 = add i32 %40, %41
  %42 = getelementptr float, float* %Rx.addr_intra_warp_, i32 %thread_idx122
  store float %Rx, float* %42, align 4, !llvm.mem.parallel_loop_access !13
  %43 = load i32, i32* %local_inter_warp_idx
  %44 = load i32, i32* %local_intra_warp_idx
  %45 = mul i32 %43, 32
  %thread_idx124 = add i32 %44, %45
  %46 = getelementptr float, float* %Ry.addr_intra_warp_, i32 %thread_idx124
  store float %Ry, float* %46, align 4, !llvm.mem.parallel_loop_access !13
  %47 = load i32, i32* %local_inter_warp_idx
  %48 = load i32, i32* %local_intra_warp_idx
  %49 = mul i32 %47, 32
  %thread_idx126 = add i32 %48, %49
  %50 = getelementptr float, float* %Rz.addr_intra_warp_, i32 %thread_idx126
  store float %Rz, float* %50, align 4, !llvm.mem.parallel_loop_access !13
  %51 = load i32, i32* %local_inter_warp_idx
  %52 = load i32, i32* %local_intra_warp_idx
  %53 = mul i32 %51, 32
  %thread_idx128 = add i32 %52, %53
  %54 = getelementptr float, float* %step.addr_intra_warp_, i32 %thread_idx128
  store float %step, float* %54, align 4, !llvm.mem.parallel_loop_access !13
  %55 = load i32, i32* %local_inter_warp_idx
  %56 = load i32, i32* %local_intra_warp_idx
  %57 = mul i32 %55, 32
  %thread_idx129 = add i32 %56, %57
  %58 = getelementptr float, float* %time_elapsed.addr_intra_warp_, i32 %thread_idx129
  store float %time_elapsed, float* %58, align 4, !llvm.mem.parallel_loop_access !13
  %59 = load i32, i32* %local_inter_warp_idx
  %60 = load i32, i32* %local_intra_warp_idx
  %61 = mul i32 %59, 32
  %thread_idx131 = add i32 %60, %61
  %62 = getelementptr float, float* %amb_temp_intra_warp_, i32 %thread_idx131
  store float 8.000000e+01, float* %62, align 4, !llvm.mem.parallel_loop_access !13
  %63 = load i32, i32* @block_index
  %64 = load i32, i32* %local_inter_warp_idx
  %65 = load i32, i32* %local_intra_warp_idx
  %66 = mul i32 %64, 32
  %thread_idx141 = add i32 %65, %66
  %67 = getelementptr i32, i32* %bx_intra_warp_, i32 %thread_idx141
  store i32 %63, i32* %67, align 4, !llvm.mem.parallel_loop_access !13
  %68 = load i32, i32* %local_inter_warp_idx
  %69 = load i32, i32* %local_intra_warp_idx
  %70 = mul i32 %68, 32
  %thread_idx143 = add i32 %69, %70
  %71 = getelementptr i32, i32* %by_intra_warp_, i32 %thread_idx143
  store i32 0, i32* %71, align 4, !llvm.mem.parallel_loop_access !13
  %72 = load i32, i32* %local_inter_warp_idx
  %73 = mul i32 %72, 32
  %74 = load i32, i32* %local_intra_warp_idx
  %thread_idx305 = add i32 %74, %73
  %75 = load i32, i32* %local_inter_warp_idx
  %76 = load i32, i32* %local_intra_warp_idx
  %77 = mul i32 %75, 32
  %thread_idx164 = add i32 %76, %77
  %78 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx164
  store i32 %thread_idx305, i32* %78, align 4, !llvm.mem.parallel_loop_access !13
  %79 = load i32, i32* %local_inter_warp_idx
  %80 = mul i32 %79, 32
  %81 = load i32, i32* %local_intra_warp_idx
  %thread_idx306 = add i32 %81, %80
  %thread_id_y = sdiv i32 %thread_idx306, 512
  %82 = load i32, i32* %local_inter_warp_idx
  %83 = load i32, i32* %local_intra_warp_idx
  %84 = mul i32 %82, 32
  %thread_idx185 = add i32 %83, %84
  %85 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx185
  store i32 %thread_id_y, i32* %85, align 4, !llvm.mem.parallel_loop_access !13
  %86 = load i32, i32* %local_inter_warp_idx
  %87 = load i32, i32* %local_intra_warp_idx
  %88 = mul i32 %86, 32
  %thread_idx127 = add i32 %87, %88
  %89 = getelementptr float, float* %step.addr_intra_warp_, i32 %thread_idx127
  %90 = load float, float* %89, align 4, !llvm.mem.parallel_loop_access !13
  %91 = load i32, i32* %local_inter_warp_idx
  %92 = load i32, i32* %local_intra_warp_idx
  %93 = mul i32 %91, 32
  %thread_idx119 = add i32 %92, %93
  %94 = getelementptr float, float* %Cap.addr_intra_warp_, i32 %thread_idx119
  %95 = load float, float* %94, align 4, !llvm.mem.parallel_loop_access !13
  %div = fdiv float %90, %95
  %96 = load i32, i32* %local_inter_warp_idx
  %97 = load i32, i32* %local_intra_warp_idx
  %98 = mul i32 %96, 32
  %thread_idx133 = add i32 %97, %98
  %99 = getelementptr float, float* %step_div_Cap_intra_warp_, i32 %thread_idx133
  store float %div, float* %99, align 4, !llvm.mem.parallel_loop_access !13
  %100 = load i32, i32* %local_inter_warp_idx
  %101 = load i32, i32* %local_intra_warp_idx
  %102 = mul i32 %100, 32
  %thread_idx121 = add i32 %101, %102
  %103 = getelementptr float, float* %Rx.addr_intra_warp_, i32 %thread_idx121
  %104 = load float, float* %103, align 4, !llvm.mem.parallel_loop_access !13
  %div4 = fdiv float 1.000000e+00, %104
  %105 = load i32, i32* %local_inter_warp_idx
  %106 = load i32, i32* %local_intra_warp_idx
  %107 = mul i32 %105, 32
  %thread_idx135 = add i32 %106, %107
  %108 = getelementptr float, float* %Rx_1_intra_warp_, i32 %thread_idx135
  store float %div4, float* %108, align 4, !llvm.mem.parallel_loop_access !13
  %109 = load i32, i32* %local_inter_warp_idx
  %110 = load i32, i32* %local_intra_warp_idx
  %111 = mul i32 %109, 32
  %thread_idx123 = add i32 %110, %111
  %112 = getelementptr float, float* %Ry.addr_intra_warp_, i32 %thread_idx123
  %113 = load float, float* %112, align 4, !llvm.mem.parallel_loop_access !13
  %div5 = fdiv float 1.000000e+00, %113
  %114 = load i32, i32* %local_inter_warp_idx
  %115 = load i32, i32* %local_intra_warp_idx
  %116 = mul i32 %114, 32
  %thread_idx137 = add i32 %115, %116
  %117 = getelementptr float, float* %Ry_1_intra_warp_, i32 %thread_idx137
  store float %div5, float* %117, align 4, !llvm.mem.parallel_loop_access !13
  %118 = load i32, i32* %local_inter_warp_idx
  %119 = load i32, i32* %local_intra_warp_idx
  %120 = mul i32 %118, 32
  %thread_idx125 = add i32 %119, %120
  %121 = getelementptr float, float* %Rz.addr_intra_warp_, i32 %thread_idx125
  %122 = load float, float* %121, align 4, !llvm.mem.parallel_loop_access !13
  %div6 = fdiv float 1.000000e+00, %122
  %123 = load i32, i32* %local_inter_warp_idx
  %124 = load i32, i32* %local_intra_warp_idx
  %125 = mul i32 %123, 32
  %thread_idx139 = add i32 %124, %125
  %126 = getelementptr float, float* %Rz_1_intra_warp_, i32 %thread_idx139
  store float %div6, float* %126, align 4, !llvm.mem.parallel_loop_access !13
  %127 = load i32, i32* %local_inter_warp_idx
  %128 = load i32, i32* %local_intra_warp_idx
  %129 = mul i32 %127, 32
  %thread_idx98 = add i32 %128, %129
  %130 = getelementptr i32, i32* %iteration.addr_intra_warp_, i32 %thread_idx98
  %131 = load i32, i32* %130, align 4, !llvm.mem.parallel_loop_access !13
  %mul = mul nsw i32 %131, 2
  %sub = sub nsw i32 16, %mul
  %132 = load i32, i32* %local_inter_warp_idx
  %133 = load i32, i32* %local_intra_warp_idx
  %134 = mul i32 %132, 32
  %thread_idx187 = add i32 %133, %134
  %135 = getelementptr i32, i32* %small_block_rows_intra_warp_, i32 %thread_idx187
  store i32 %sub, i32* %135, align 4, !llvm.mem.parallel_loop_access !13
  %136 = load i32, i32* %local_inter_warp_idx
  %137 = load i32, i32* %local_intra_warp_idx
  %138 = mul i32 %136, 32
  %thread_idx97 = add i32 %137, %138
  %139 = getelementptr i32, i32* %iteration.addr_intra_warp_, i32 %thread_idx97
  %140 = load i32, i32* %139, align 4, !llvm.mem.parallel_loop_access !13
  %mul7 = mul nsw i32 %140, 2
  %sub8 = sub nsw i32 16, %mul7
  %141 = load i32, i32* %local_inter_warp_idx
  %142 = load i32, i32* %local_intra_warp_idx
  %143 = mul i32 %141, 32
  %thread_idx189 = add i32 %142, %143
  %144 = getelementptr i32, i32* %small_block_cols_intra_warp_, i32 %thread_idx189
  store i32 %sub8, i32* %144, align 4, !llvm.mem.parallel_loop_access !13
  %145 = load i32, i32* %local_inter_warp_idx
  %146 = load i32, i32* %local_intra_warp_idx
  %147 = mul i32 %145, 32
  %thread_idx186 = add i32 %146, %147
  %148 = getelementptr i32, i32* %small_block_rows_intra_warp_, i32 %thread_idx186
  %149 = load i32, i32* %148, align 4, !llvm.mem.parallel_loop_access !13
  %150 = load i32, i32* %local_inter_warp_idx
  %151 = load i32, i32* %local_intra_warp_idx
  %152 = mul i32 %150, 32
  %thread_idx142 = add i32 %151, %152
  %153 = getelementptr i32, i32* %by_intra_warp_, i32 %thread_idx142
  %154 = load i32, i32* %153, align 4, !llvm.mem.parallel_loop_access !13
  %mul9 = mul nsw i32 %149, %154
  %155 = load i32, i32* %local_inter_warp_idx
  %156 = load i32, i32* %local_intra_warp_idx
  %157 = mul i32 %155, 32
  %thread_idx117 = add i32 %156, %157
  %158 = getelementptr i32, i32* %border_rows.addr_intra_warp_, i32 %thread_idx117
  %159 = load i32, i32* %158, align 4, !llvm.mem.parallel_loop_access !13
  %sub10 = sub nsw i32 %mul9, %159
  %160 = load i32, i32* %local_inter_warp_idx
  %161 = load i32, i32* %local_intra_warp_idx
  %162 = mul i32 %160, 32
  %thread_idx194 = add i32 %161, %162
  %163 = getelementptr i32, i32* %blkY_intra_warp_, i32 %thread_idx194
  store i32 %sub10, i32* %163, align 4, !llvm.mem.parallel_loop_access !13
  %164 = load i32, i32* %local_inter_warp_idx
  %165 = load i32, i32* %local_intra_warp_idx
  %166 = mul i32 %164, 32
  %thread_idx188 = add i32 %165, %166
  %167 = getelementptr i32, i32* %small_block_cols_intra_warp_, i32 %thread_idx188
  %168 = load i32, i32* %167, align 4, !llvm.mem.parallel_loop_access !13
  %169 = load i32, i32* %local_inter_warp_idx
  %170 = load i32, i32* %local_intra_warp_idx
  %171 = mul i32 %169, 32
  %thread_idx140 = add i32 %170, %171
  %172 = getelementptr i32, i32* %bx_intra_warp_, i32 %thread_idx140
  %173 = load i32, i32* %172, align 4, !llvm.mem.parallel_loop_access !13
  %mul11 = mul nsw i32 %168, %173
  %174 = load i32, i32* %local_inter_warp_idx
  %175 = load i32, i32* %local_intra_warp_idx
  %176 = mul i32 %174, 32
  %thread_idx115 = add i32 %175, %176
  %177 = getelementptr i32, i32* %border_cols.addr_intra_warp_, i32 %thread_idx115
  %178 = load i32, i32* %177, align 4, !llvm.mem.parallel_loop_access !13
  %sub12 = sub nsw i32 %mul11, %178
  %179 = load i32, i32* %local_inter_warp_idx
  %180 = load i32, i32* %local_intra_warp_idx
  %181 = mul i32 %179, 32
  %thread_idx199 = add i32 %180, %181
  %182 = getelementptr i32, i32* %blkX_intra_warp_, i32 %thread_idx199
  store i32 %sub12, i32* %182, align 4, !llvm.mem.parallel_loop_access !13
  %183 = load i32, i32* %local_inter_warp_idx
  %184 = load i32, i32* %local_intra_warp_idx
  %185 = mul i32 %183, 32
  %thread_idx193 = add i32 %184, %185
  %186 = getelementptr i32, i32* %blkY_intra_warp_, i32 %thread_idx193
  %187 = load i32, i32* %186, align 4, !llvm.mem.parallel_loop_access !13
  %add = add nsw i32 %187, 16
  %sub13 = sub nsw i32 %add, 1
  %188 = load i32, i32* %local_inter_warp_idx
  %189 = load i32, i32* %local_intra_warp_idx
  %190 = mul i32 %188, 32
  %thread_idx202 = add i32 %189, %190
  %191 = getelementptr i32, i32* %blkYmax_intra_warp_, i32 %thread_idx202
  store i32 %sub13, i32* %191, align 4, !llvm.mem.parallel_loop_access !13
  %192 = load i32, i32* %local_inter_warp_idx
  %193 = load i32, i32* %local_intra_warp_idx
  %194 = mul i32 %192, 32
  %thread_idx198 = add i32 %193, %194
  %195 = getelementptr i32, i32* %blkX_intra_warp_, i32 %thread_idx198
  %196 = load i32, i32* %195, align 4, !llvm.mem.parallel_loop_access !13
  %add14 = add nsw i32 %196, 16
  %sub15 = sub nsw i32 %add14, 1
  %197 = load i32, i32* %local_inter_warp_idx
  %198 = load i32, i32* %local_intra_warp_idx
  %199 = mul i32 %197, 32
  %thread_idx205 = add i32 %198, %199
  %200 = getelementptr i32, i32* %blkXmax_intra_warp_, i32 %thread_idx205
  store i32 %sub15, i32* %200, align 4, !llvm.mem.parallel_loop_access !13
  %201 = load i32, i32* %local_inter_warp_idx
  %202 = load i32, i32* %local_intra_warp_idx
  %203 = mul i32 %201, 32
  %thread_idx192 = add i32 %202, %203
  %204 = getelementptr i32, i32* %blkY_intra_warp_, i32 %thread_idx192
  %205 = load i32, i32* %204, align 4, !llvm.mem.parallel_loop_access !13
  %206 = load i32, i32* %local_inter_warp_idx
  %207 = load i32, i32* %local_intra_warp_idx
  %208 = mul i32 %206, 32
  %thread_idx184 = add i32 %207, %208
  %209 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx184
  %210 = load i32, i32* %209, align 4, !llvm.mem.parallel_loop_access !13
  %add16 = add nsw i32 %205, %210
  %211 = load i32, i32* %local_inter_warp_idx
  %212 = load i32, i32* %local_intra_warp_idx
  %213 = mul i32 %211, 32
  %thread_idx207 = add i32 %212, %213
  %214 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx207
  store i32 %add16, i32* %214, align 4, !llvm.mem.parallel_loop_access !13
  %215 = load i32, i32* %local_inter_warp_idx
  %216 = load i32, i32* %local_intra_warp_idx
  %217 = mul i32 %215, 32
  %thread_idx197 = add i32 %216, %217
  %218 = getelementptr i32, i32* %blkX_intra_warp_, i32 %thread_idx197
  %219 = load i32, i32* %218, align 4, !llvm.mem.parallel_loop_access !13
  %220 = load i32, i32* %local_inter_warp_idx
  %221 = load i32, i32* %local_intra_warp_idx
  %222 = mul i32 %220, 32
  %thread_idx163 = add i32 %221, %222
  %223 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx163
  %224 = load i32, i32* %223, align 4, !llvm.mem.parallel_loop_access !13
  %add17 = add nsw i32 %219, %224
  %225 = load i32, i32* %local_inter_warp_idx
  %226 = load i32, i32* %local_intra_warp_idx
  %227 = mul i32 %225, 32
  %thread_idx209 = add i32 %226, %227
  %228 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx209
  store i32 %add17, i32* %228, align 4, !llvm.mem.parallel_loop_access !13
  %229 = load i32, i32* %local_inter_warp_idx
  %230 = load i32, i32* %local_intra_warp_idx
  %231 = mul i32 %229, 32
  %thread_idx206 = add i32 %230, %231
  %232 = getelementptr i32, i32* %yidx_intra_warp_, i32 %thread_idx206
  %233 = load i32, i32* %232, align 4, !llvm.mem.parallel_loop_access !13
  %234 = load i32, i32* %local_inter_warp_idx
  %235 = load i32, i32* %local_intra_warp_idx
  %236 = mul i32 %234, 32
  %thread_idx213 = add i32 %235, %236
  %237 = getelementptr i32, i32* %loadYidx_intra_warp_, i32 %thread_idx213
  store i32 %233, i32* %237, align 4, !llvm.mem.parallel_loop_access !13
  %238 = load i32, i32* %local_inter_warp_idx
  %239 = load i32, i32* %local_intra_warp_idx
  %240 = mul i32 %238, 32
  %thread_idx208 = add i32 %239, %240
  %241 = getelementptr i32, i32* %xidx_intra_warp_, i32 %thread_idx208
  %242 = load i32, i32* %241, align 4, !llvm.mem.parallel_loop_access !13
  %243 = load i32, i32* %local_inter_warp_idx
  %244 = load i32, i32* %local_intra_warp_idx
  %245 = mul i32 %243, 32
  %thread_idx217 = add i32 %244, %245
  %246 = getelementptr i32, i32* %loadXidx_intra_warp_, i32 %thread_idx217
  store i32 %242, i32* %246, align 4, !llvm.mem.parallel_loop_access !13
  %247 = load i32, i32* %local_inter_warp_idx
  %248 = load i32, i32* %local_intra_warp_idx
  %249 = mul i32 %247, 32
  %thread_idx109 = add i32 %248, %249
  %250 = getelementptr i32, i32* %grid_cols.addr_intra_warp_, i32 %thread_idx109
  %251 = load i32, i32* %250, align 4, !llvm.mem.parallel_loop_access !13
  %252 = load i32, i32* %local_inter_warp_idx
  %253 = load i32, i32* %local_intra_warp_idx
  %254 = mul i32 %252, 32
  %thread_idx212 = add i32 %253, %254
  %255 = getelementptr i32, i32* %loadYidx_intra_warp_, i32 %thread_idx212
  %256 = load i32, i32* %255, align 4, !llvm.mem.parallel_loop_access !13
  %mul18 = mul nsw i32 %251, %256
  %257 = load i32, i32* %local_inter_warp_idx
  %258 = load i32, i32* %local_intra_warp_idx
  %259 = mul i32 %257, 32
  %thread_idx216 = add i32 %258, %259
  %260 = getelementptr i32, i32* %loadXidx_intra_warp_, i32 %thread_idx216
  %261 = load i32, i32* %260, align 4, !llvm.mem.parallel_loop_access !13
  %add19 = add nsw i32 %mul18, %261
  %262 = load i32, i32* %local_inter_warp_idx
  %263 = load i32, i32* %local_intra_warp_idx
  %264 = mul i32 %262, 32
  %thread_idx221 = add i32 %263, %264
  %265 = getelementptr i32, i32* %index_intra_warp_, i32 %thread_idx221
  store i32 %add19, i32* %265, align 4, !llvm.mem.parallel_loop_access !13
  %266 = load i32, i32* %local_inter_warp_idx
  %267 = load i32, i32* %local_intra_warp_idx
  %268 = mul i32 %266, 32
  %thread_idx211 = add i32 %267, %268
  %269 = getelementptr i32, i32* %loadYidx_intra_warp_, i32 %thread_idx211
  %270 = load i32, i32* %269, align 4, !llvm.mem.parallel_loop_access !13
  %cmp = icmp sge i32 %270, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry_after_block_sync_12_after_block_sync_15
  %271 = load i32, i32* %local_inter_warp_idx
  %272 = load i32, i32* %local_intra_warp_idx
  %273 = mul i32 %271, 32
  %thread_idx210 = add i32 %272, %273
  %274 = getelementptr i32, i32* %loadYidx_intra_warp_, i32 %thread_idx210
  %275 = load i32, i32* %274, align 4, !llvm.mem.parallel_loop_access !13
  %276 = load i32, i32* %local_inter_warp_idx
  %277 = load i32, i32* %local_intra_warp_idx
  %278 = mul i32 %276, 32
  %thread_idx113 = add i32 %277, %278
  %279 = getelementptr i32, i32* %grid_rows.addr_intra_warp_, i32 %thread_idx113
  %280 = load i32, i32* %279, align 4, !llvm.mem.parallel_loop_access !13
  %sub20 = sub nsw i32 %280, 1
  %cmp21 = icmp sle i32 %275, %sub20
  br i1 %cmp21, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true
  %281 = load i32, i32* %local_inter_warp_idx
  %282 = load i32, i32* %local_intra_warp_idx
  %283 = mul i32 %281, 32
  %thread_idx215 = add i32 %282, %283
  %284 = getelementptr i32, i32* %loadXidx_intra_warp_, i32 %thread_idx215
  %285 = load i32, i32* %284, align 4, !llvm.mem.parallel_loop_access !13
  %cmp23 = icmp sge i32 %285, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %286 = load i32, i32* %local_inter_warp_idx
  %287 = load i32, i32* %local_intra_warp_idx
  %288 = mul i32 %286, 32
  %thread_idx214 = add i32 %287, %288
  %289 = getelementptr i32, i32* %loadXidx_intra_warp_, i32 %thread_idx214
  %290 = load i32, i32* %289, align 4, !llvm.mem.parallel_loop_access !13
  %291 = load i32, i32* %local_inter_warp_idx
  %292 = load i32, i32* %local_intra_warp_idx
  %293 = mul i32 %291, 32
  %thread_idx108 = add i32 %292, %293
  %294 = getelementptr i32, i32* %grid_cols.addr_intra_warp_, i32 %thread_idx108
  %295 = load i32, i32* %294, align 4, !llvm.mem.parallel_loop_access !13
  %sub25 = sub nsw i32 %295, 1
  %cmp26 = icmp sle i32 %290, %sub25
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true24
  %296 = load i32, i32* %local_inter_warp_idx
  %297 = load i32, i32* %local_intra_warp_idx
  %298 = mul i32 %296, 32
  %thread_idx102 = add i32 %297, %298
  %299 = getelementptr float*, float** %temp_src.addr_intra_warp_, i32 %thread_idx102
  %300 = load float*, float** %299, align 8, !llvm.mem.parallel_loop_access !13
  %301 = load i32, i32* %local_inter_warp_idx
  %302 = load i32, i32* %local_intra_warp_idx
  %303 = mul i32 %301, 32
  %thread_idx220 = add i32 %302, %303
  %304 = getelementptr i32, i32* %index_intra_warp_, i32 %thread_idx220
  %305 = load i32, i32* %304, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom = sext i32 %305 to i64
  %arrayidx = getelementptr inbounds float, float* %300, i64 %idxprom
  %306 = load float, float* %arrayidx, align 4, !llvm.mem.parallel_loop_access !13
  %307 = load i32, i32* %local_inter_warp_idx
  %308 = load i32, i32* %local_intra_warp_idx
  %309 = mul i32 %307, 32
  %thread_idx183 = add i32 %308, %309
  %310 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx183
  %311 = load i32, i32* %310, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom27 = sext i32 %311 to i64
  %312 = load i32, i32* %local_inter_warp_idx
  %313 = load i32, i32* %local_intra_warp_idx
  %314 = mul i32 %312, 32
  %thread_idx291 = add i32 %313, %314
  %315 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx291
  store [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(1)* @wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda to [16 x [16 x float]]*), [16 x [16 x float]]** %315
  %316 = load i32, i32* %local_inter_warp_idx
  %317 = load i32, i32* %local_intra_warp_idx
  %318 = mul i32 %316, 32
  %thread_idx301 = add i32 %317, %318
  %319 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx301
  %320 = load [16 x [16 x float]]*, [16 x [16 x float]]** %319
  %arrayidx28 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %320, i64 0, i64 %idxprom27
  %321 = load i32, i32* %local_inter_warp_idx
  %322 = load i32, i32* %local_intra_warp_idx
  %323 = mul i32 %321, 32
  %thread_idx162 = add i32 %322, %323
  %324 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx162
  %325 = load i32, i32* %324, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom29 = sext i32 %325 to i64
  %arrayidx30 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx28, i64 0, i64 %idxprom29
  store float %306, float* %arrayidx30, align 4, !llvm.mem.parallel_loop_access !13
  %326 = load i32, i32* %local_inter_warp_idx
  %327 = load i32, i32* %local_intra_warp_idx
  %328 = mul i32 %326, 32
  %thread_idx100 = add i32 %327, %328
  %329 = getelementptr float*, float** %power.addr_intra_warp_, i32 %thread_idx100
  %330 = load float*, float** %329, align 8, !llvm.mem.parallel_loop_access !13
  %331 = load i32, i32* %local_inter_warp_idx
  %332 = load i32, i32* %local_intra_warp_idx
  %333 = mul i32 %331, 32
  %thread_idx219 = add i32 %332, %333
  %334 = getelementptr i32, i32* %index_intra_warp_, i32 %thread_idx219
  %335 = load i32, i32* %334, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom31 = sext i32 %335 to i64
  %arrayidx32 = getelementptr inbounds float, float* %330, i64 %idxprom31
  %336 = load float, float* %arrayidx32, align 4, !llvm.mem.parallel_loop_access !13
  %337 = load i32, i32* %local_inter_warp_idx
  %338 = load i32, i32* %local_intra_warp_idx
  %339 = mul i32 %337, 32
  %thread_idx182 = add i32 %338, %339
  %340 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx182
  %341 = load i32, i32* %340, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom33 = sext i32 %341 to i64
  %342 = load i32, i32* %local_inter_warp_idx
  %343 = load i32, i32* %local_intra_warp_idx
  %344 = mul i32 %342, 32
  %thread_idx302 = add i32 %343, %344
  %345 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"1_intra_warp_", i32 %thread_idx302
  store [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(1)* @wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda to [16 x [16 x float]]*), [16 x [16 x float]]** %345
  %346 = load i32, i32* %local_inter_warp_idx
  %347 = load i32, i32* %local_intra_warp_idx
  %348 = mul i32 %346, 32
  %thread_idx304 = add i32 %347, %348
  %349 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"1_intra_warp_", i32 %thread_idx304
  %350 = load [16 x [16 x float]]*, [16 x [16 x float]]** %349
  %arrayidx34 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %350, i64 0, i64 %idxprom33
  %351 = load i32, i32* %local_inter_warp_idx
  %352 = load i32, i32* %local_intra_warp_idx
  %353 = mul i32 %351, 32
  %thread_idx161 = add i32 %352, %353
  %354 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx161
  %355 = load i32, i32* %354, align 4, !llvm.mem.parallel_loop_access !13
  %idxprom35 = sext i32 %355 to i64
  %arrayidx36 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx34, i64 0, i64 %idxprom35
  store float %336, float* %arrayidx36, align 4, !llvm.mem.parallel_loop_access !13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true24, %land.lhs.true22, %land.lhs.true, %entry_after_block_sync_12_after_block_sync_15
  br label %intra_warp_inc69

reset_block71:                                    ; preds = %intra_warp_cond67
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end_after_block_sync_36

if.end_after_block_sync_36:                       ; preds = %reset_block71
  br label %intra_warp_init63

intra_warp_init63:                                ; preds = %if.end_after_block_sync_36
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond62

intra_warp_inc64:                                 ; preds = %cond.end85
  %356 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment65 = add i32 %356, 1
  store i32 %intra_warp_index_increment65, i32* %local_intra_warp_idx
  br label %intra_warp_cond62

intra_warp_cond62:                                ; preds = %intra_warp_inc64, %intra_warp_init63
  %357 = load i32, i32* %local_intra_warp_idx
  %358 = icmp ult i32 %357, 512
  br i1 %358, label %if.end_after_block_sync_36_after_block_sync_37, label %reset_block66, !llvm.loop !14

if.end_after_block_sync_36_after_block_sync_37:   ; preds = %intra_warp_cond62
  %359 = load i32, i32* %local_inter_warp_idx
  %360 = load i32, i32* %local_intra_warp_idx
  %361 = mul i32 %359, 32
  %thread_idx191 = add i32 %360, %361
  %362 = getelementptr i32, i32* %blkY_intra_warp_, i32 %thread_idx191
  %363 = load i32, i32* %362, align 4, !llvm.mem.parallel_loop_access !17
  %cmp37 = icmp slt i32 %363, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end_after_block_sync_36_after_block_sync_37
  %364 = load i32, i32* %local_inter_warp_idx
  %365 = load i32, i32* %local_intra_warp_idx
  %366 = mul i32 %364, 32
  %thread_idx190 = add i32 %365, %366
  %367 = getelementptr i32, i32* %blkY_intra_warp_, i32 %thread_idx190
  %368 = load i32, i32* %367, align 4, !llvm.mem.parallel_loop_access !17
  %sub38 = sub nsw i32 0, %368
  %369 = load i32, i32* %local_inter_warp_idx
  %370 = load i32, i32* %local_intra_warp_idx
  %371 = mul i32 %369, 32
  %thread_idx94 = add i32 %370, %371
  %372 = getelementptr i32, i32* %cond.ex_phi_intra_warp_, i32 %thread_idx94
  store i32 %sub38, i32* %372, !llvm.mem.parallel_loop_access !17
  br label %cond.end

cond.false:                                       ; preds = %if.end_after_block_sync_36_after_block_sync_37
  %373 = load i32, i32* %local_inter_warp_idx
  %374 = load i32, i32* %local_intra_warp_idx
  %375 = mul i32 %373, 32
  %thread_idx93 = add i32 %374, %375
  %376 = getelementptr i32, i32* %cond.ex_phi_intra_warp_, i32 %thread_idx93
  store i32 0, i32* %376, !llvm.mem.parallel_loop_access !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %377 = load i32, i32* %local_inter_warp_idx
  %378 = load i32, i32* %local_intra_warp_idx
  %379 = mul i32 %377, 32
  %thread_idx92 = add i32 %378, %379
  %380 = getelementptr i32, i32* %cond.ex_phi_intra_warp_, i32 %thread_idx92
  %381 = load i32, i32* %380, !llvm.mem.parallel_loop_access !17
  %382 = load i32, i32* %local_inter_warp_idx
  %383 = load i32, i32* %local_intra_warp_idx
  %384 = mul i32 %382, 32
  %thread_idx225 = add i32 %383, %384
  %385 = getelementptr i32, i32* %validYmin_intra_warp_, i32 %thread_idx225
  store i32 %381, i32* %385, align 4, !llvm.mem.parallel_loop_access !17
  %386 = load i32, i32* %local_inter_warp_idx
  %387 = load i32, i32* %local_intra_warp_idx
  %388 = mul i32 %386, 32
  %thread_idx201 = add i32 %387, %388
  %389 = getelementptr i32, i32* %blkYmax_intra_warp_, i32 %thread_idx201
  %390 = load i32, i32* %389, align 4, !llvm.mem.parallel_loop_access !17
  %391 = load i32, i32* %local_inter_warp_idx
  %392 = load i32, i32* %local_intra_warp_idx
  %393 = mul i32 %391, 32
  %thread_idx112 = add i32 %392, %393
  %394 = getelementptr i32, i32* %grid_rows.addr_intra_warp_, i32 %thread_idx112
  %395 = load i32, i32* %394, align 4, !llvm.mem.parallel_loop_access !17
  %sub39 = sub nsw i32 %395, 1
  %cmp40 = icmp sgt i32 %390, %sub39
  br i1 %cmp40, label %cond.true41, label %cond.false45

cond.true41:                                      ; preds = %cond.end
  %396 = load i32, i32* %local_inter_warp_idx
  %397 = load i32, i32* %local_intra_warp_idx
  %398 = mul i32 %396, 32
  %thread_idx200 = add i32 %397, %398
  %399 = getelementptr i32, i32* %blkYmax_intra_warp_, i32 %thread_idx200
  %400 = load i32, i32* %399, align 4, !llvm.mem.parallel_loop_access !17
  %401 = load i32, i32* %local_inter_warp_idx
  %402 = load i32, i32* %local_intra_warp_idx
  %403 = mul i32 %401, 32
  %thread_idx111 = add i32 %402, %403
  %404 = getelementptr i32, i32* %grid_rows.addr_intra_warp_, i32 %thread_idx111
  %405 = load i32, i32* %404, align 4, !llvm.mem.parallel_loop_access !17
  %sub42 = sub nsw i32 %400, %405
  %add43 = add nsw i32 %sub42, 1
  %sub44 = sub nsw i32 15, %add43
  %406 = load i32, i32* %local_inter_warp_idx
  %407 = load i32, i32* %local_intra_warp_idx
  %408 = mul i32 %406, 32
  %thread_idx91 = add i32 %407, %408
  %409 = getelementptr i32, i32* %cond47.ex_phi_intra_warp_, i32 %thread_idx91
  store i32 %sub44, i32* %409, !llvm.mem.parallel_loop_access !17
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end
  %410 = load i32, i32* %local_inter_warp_idx
  %411 = load i32, i32* %local_intra_warp_idx
  %412 = mul i32 %410, 32
  %thread_idx90 = add i32 %411, %412
  %413 = getelementptr i32, i32* %cond47.ex_phi_intra_warp_, i32 %thread_idx90
  store i32 15, i32* %413, !llvm.mem.parallel_loop_access !17
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true41
  %414 = load i32, i32* %local_inter_warp_idx
  %415 = load i32, i32* %local_intra_warp_idx
  %416 = mul i32 %414, 32
  %thread_idx89 = add i32 %415, %416
  %417 = getelementptr i32, i32* %cond47.ex_phi_intra_warp_, i32 %thread_idx89
  %418 = load i32, i32* %417, !llvm.mem.parallel_loop_access !17
  %419 = load i32, i32* %local_inter_warp_idx
  %420 = load i32, i32* %local_intra_warp_idx
  %421 = mul i32 %419, 32
  %thread_idx229 = add i32 %420, %421
  %422 = getelementptr i32, i32* %validYmax_intra_warp_, i32 %thread_idx229
  store i32 %418, i32* %422, align 4, !llvm.mem.parallel_loop_access !17
  %423 = load i32, i32* %local_inter_warp_idx
  %424 = load i32, i32* %local_intra_warp_idx
  %425 = mul i32 %423, 32
  %thread_idx196 = add i32 %424, %425
  %426 = getelementptr i32, i32* %blkX_intra_warp_, i32 %thread_idx196
  %427 = load i32, i32* %426, align 4, !llvm.mem.parallel_loop_access !17
  %cmp48 = icmp slt i32 %427, 0
  br i1 %cmp48, label %cond.true49, label %cond.false51

cond.true49:                                      ; preds = %cond.end46
  %428 = load i32, i32* %local_inter_warp_idx
  %429 = load i32, i32* %local_intra_warp_idx
  %430 = mul i32 %428, 32
  %thread_idx195 = add i32 %429, %430
  %431 = getelementptr i32, i32* %blkX_intra_warp_, i32 %thread_idx195
  %432 = load i32, i32* %431, align 4, !llvm.mem.parallel_loop_access !17
  %sub50 = sub nsw i32 0, %432
  %433 = load i32, i32* %local_inter_warp_idx
  %434 = load i32, i32* %local_intra_warp_idx
  %435 = mul i32 %433, 32
  %thread_idx88 = add i32 %434, %435
  %436 = getelementptr i32, i32* %cond53.ex_phi_intra_warp_, i32 %thread_idx88
  store i32 %sub50, i32* %436, !llvm.mem.parallel_loop_access !17
  br label %cond.end52

cond.false51:                                     ; preds = %cond.end46
  %437 = load i32, i32* %local_inter_warp_idx
  %438 = load i32, i32* %local_intra_warp_idx
  %439 = mul i32 %437, 32
  %thread_idx87 = add i32 %438, %439
  %440 = getelementptr i32, i32* %cond53.ex_phi_intra_warp_, i32 %thread_idx87
  store i32 0, i32* %440, !llvm.mem.parallel_loop_access !17
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %cond.true49
  %441 = load i32, i32* %local_inter_warp_idx
  %442 = load i32, i32* %local_intra_warp_idx
  %443 = mul i32 %441, 32
  %thread_idx86 = add i32 %442, %443
  %444 = getelementptr i32, i32* %cond53.ex_phi_intra_warp_, i32 %thread_idx86
  %445 = load i32, i32* %444, !llvm.mem.parallel_loop_access !17
  %446 = load i32, i32* %local_inter_warp_idx
  %447 = load i32, i32* %local_intra_warp_idx
  %448 = mul i32 %446, 32
  %thread_idx233 = add i32 %447, %448
  %449 = getelementptr i32, i32* %validXmin_intra_warp_, i32 %thread_idx233
  store i32 %445, i32* %449, align 4, !llvm.mem.parallel_loop_access !17
  %450 = load i32, i32* %local_inter_warp_idx
  %451 = load i32, i32* %local_intra_warp_idx
  %452 = mul i32 %450, 32
  %thread_idx204 = add i32 %451, %452
  %453 = getelementptr i32, i32* %blkXmax_intra_warp_, i32 %thread_idx204
  %454 = load i32, i32* %453, align 4, !llvm.mem.parallel_loop_access !17
  %455 = load i32, i32* %local_inter_warp_idx
  %456 = load i32, i32* %local_intra_warp_idx
  %457 = mul i32 %455, 32
  %thread_idx107 = add i32 %456, %457
  %458 = getelementptr i32, i32* %grid_cols.addr_intra_warp_, i32 %thread_idx107
  %459 = load i32, i32* %458, align 4, !llvm.mem.parallel_loop_access !17
  %sub54 = sub nsw i32 %459, 1
  %cmp55 = icmp sgt i32 %454, %sub54
  br i1 %cmp55, label %cond.true56, label %cond.false60

cond.true56:                                      ; preds = %cond.end52
  %460 = load i32, i32* %local_inter_warp_idx
  %461 = load i32, i32* %local_intra_warp_idx
  %462 = mul i32 %460, 32
  %thread_idx203 = add i32 %461, %462
  %463 = getelementptr i32, i32* %blkXmax_intra_warp_, i32 %thread_idx203
  %464 = load i32, i32* %463, align 4, !llvm.mem.parallel_loop_access !17
  %465 = load i32, i32* %local_inter_warp_idx
  %466 = load i32, i32* %local_intra_warp_idx
  %467 = mul i32 %465, 32
  %thread_idx106 = add i32 %466, %467
  %468 = getelementptr i32, i32* %grid_cols.addr_intra_warp_, i32 %thread_idx106
  %469 = load i32, i32* %468, align 4, !llvm.mem.parallel_loop_access !17
  %sub57 = sub nsw i32 %464, %469
  %add58 = add nsw i32 %sub57, 1
  %sub59 = sub nsw i32 15, %add58
  %470 = load i32, i32* %local_inter_warp_idx
  %471 = load i32, i32* %local_intra_warp_idx
  %472 = mul i32 %470, 32
  %thread_idx85 = add i32 %471, %472
  %473 = getelementptr i32, i32* %cond62.ex_phi_intra_warp_, i32 %thread_idx85
  store i32 %sub59, i32* %473, !llvm.mem.parallel_loop_access !17
  br label %cond.end61

cond.false60:                                     ; preds = %cond.end52
  %474 = load i32, i32* %local_inter_warp_idx
  %475 = load i32, i32* %local_intra_warp_idx
  %476 = mul i32 %474, 32
  %thread_idx84 = add i32 %475, %476
  %477 = getelementptr i32, i32* %cond62.ex_phi_intra_warp_, i32 %thread_idx84
  store i32 15, i32* %477, !llvm.mem.parallel_loop_access !17
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true56
  %478 = load i32, i32* %local_inter_warp_idx
  %479 = load i32, i32* %local_intra_warp_idx
  %480 = mul i32 %478, 32
  %thread_idx83 = add i32 %479, %480
  %481 = getelementptr i32, i32* %cond62.ex_phi_intra_warp_, i32 %thread_idx83
  %482 = load i32, i32* %481, !llvm.mem.parallel_loop_access !17
  %483 = load i32, i32* %local_inter_warp_idx
  %484 = load i32, i32* %local_intra_warp_idx
  %485 = mul i32 %483, 32
  %thread_idx237 = add i32 %484, %485
  %486 = getelementptr i32, i32* %validXmax_intra_warp_, i32 %thread_idx237
  store i32 %482, i32* %486, align 4, !llvm.mem.parallel_loop_access !17
  %487 = load i32, i32* %local_inter_warp_idx
  %488 = load i32, i32* %local_intra_warp_idx
  %489 = mul i32 %487, 32
  %thread_idx181 = add i32 %488, %489
  %490 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx181
  %491 = load i32, i32* %490, align 4, !llvm.mem.parallel_loop_access !17
  %sub63 = sub nsw i32 %491, 1
  %492 = load i32, i32* %local_inter_warp_idx
  %493 = load i32, i32* %local_intra_warp_idx
  %494 = mul i32 %492, 32
  %thread_idx242 = add i32 %493, %494
  %495 = getelementptr i32, i32* %N_intra_warp_, i32 %thread_idx242
  store i32 %sub63, i32* %495, align 4, !llvm.mem.parallel_loop_access !17
  %496 = load i32, i32* %local_inter_warp_idx
  %497 = load i32, i32* %local_intra_warp_idx
  %498 = mul i32 %496, 32
  %thread_idx180 = add i32 %497, %498
  %499 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx180
  %500 = load i32, i32* %499, align 4, !llvm.mem.parallel_loop_access !17
  %add64 = add nsw i32 %500, 1
  %501 = load i32, i32* %local_inter_warp_idx
  %502 = load i32, i32* %local_intra_warp_idx
  %503 = mul i32 %501, 32
  %thread_idx247 = add i32 %502, %503
  %504 = getelementptr i32, i32* %S_intra_warp_, i32 %thread_idx247
  store i32 %add64, i32* %504, align 4, !llvm.mem.parallel_loop_access !17
  %505 = load i32, i32* %local_inter_warp_idx
  %506 = load i32, i32* %local_intra_warp_idx
  %507 = mul i32 %505, 32
  %thread_idx160 = add i32 %506, %507
  %508 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx160
  %509 = load i32, i32* %508, align 4, !llvm.mem.parallel_loop_access !17
  %sub65 = sub nsw i32 %509, 1
  %510 = load i32, i32* %local_inter_warp_idx
  %511 = load i32, i32* %local_intra_warp_idx
  %512 = mul i32 %510, 32
  %thread_idx252 = add i32 %511, %512
  %513 = getelementptr i32, i32* %W_intra_warp_, i32 %thread_idx252
  store i32 %sub65, i32* %513, align 4, !llvm.mem.parallel_loop_access !17
  %514 = load i32, i32* %local_inter_warp_idx
  %515 = load i32, i32* %local_intra_warp_idx
  %516 = mul i32 %514, 32
  %thread_idx159 = add i32 %515, %516
  %517 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx159
  %518 = load i32, i32* %517, align 4, !llvm.mem.parallel_loop_access !17
  %add66 = add nsw i32 %518, 1
  %519 = load i32, i32* %local_inter_warp_idx
  %520 = load i32, i32* %local_intra_warp_idx
  %521 = mul i32 %519, 32
  %thread_idx257 = add i32 %520, %521
  %522 = getelementptr i32, i32* %E_intra_warp_, i32 %thread_idx257
  store i32 %add66, i32* %522, align 4, !llvm.mem.parallel_loop_access !17
  %523 = load i32, i32* %local_inter_warp_idx
  %524 = load i32, i32* %local_intra_warp_idx
  %525 = mul i32 %523, 32
  %thread_idx241 = add i32 %524, %525
  %526 = getelementptr i32, i32* %N_intra_warp_, i32 %thread_idx241
  %527 = load i32, i32* %526, align 4, !llvm.mem.parallel_loop_access !17
  %528 = load i32, i32* %local_inter_warp_idx
  %529 = load i32, i32* %local_intra_warp_idx
  %530 = mul i32 %528, 32
  %thread_idx224 = add i32 %529, %530
  %531 = getelementptr i32, i32* %validYmin_intra_warp_, i32 %thread_idx224
  %532 = load i32, i32* %531, align 4, !llvm.mem.parallel_loop_access !17
  %cmp67 = icmp slt i32 %527, %532
  br i1 %cmp67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end61
  %533 = load i32, i32* %local_inter_warp_idx
  %534 = load i32, i32* %local_intra_warp_idx
  %535 = mul i32 %533, 32
  %thread_idx223 = add i32 %534, %535
  %536 = getelementptr i32, i32* %validYmin_intra_warp_, i32 %thread_idx223
  %537 = load i32, i32* %536, align 4, !llvm.mem.parallel_loop_access !17
  %538 = load i32, i32* %local_inter_warp_idx
  %539 = load i32, i32* %local_intra_warp_idx
  %540 = mul i32 %538, 32
  %thread_idx82 = add i32 %539, %540
  %541 = getelementptr i32, i32* %cond71.ex_phi_intra_warp_, i32 %thread_idx82
  store i32 %537, i32* %541, !llvm.mem.parallel_loop_access !17
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end61
  %542 = load i32, i32* %local_inter_warp_idx
  %543 = load i32, i32* %local_intra_warp_idx
  %544 = mul i32 %542, 32
  %thread_idx240 = add i32 %543, %544
  %545 = getelementptr i32, i32* %N_intra_warp_, i32 %thread_idx240
  %546 = load i32, i32* %545, align 4, !llvm.mem.parallel_loop_access !17
  %547 = load i32, i32* %local_inter_warp_idx
  %548 = load i32, i32* %local_intra_warp_idx
  %549 = mul i32 %547, 32
  %thread_idx81 = add i32 %548, %549
  %550 = getelementptr i32, i32* %cond71.ex_phi_intra_warp_, i32 %thread_idx81
  store i32 %546, i32* %550, !llvm.mem.parallel_loop_access !17
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %cond.true68
  %551 = load i32, i32* %local_inter_warp_idx
  %552 = load i32, i32* %local_intra_warp_idx
  %553 = mul i32 %551, 32
  %thread_idx80 = add i32 %552, %553
  %554 = getelementptr i32, i32* %cond71.ex_phi_intra_warp_, i32 %thread_idx80
  %555 = load i32, i32* %554, !llvm.mem.parallel_loop_access !17
  %556 = load i32, i32* %local_inter_warp_idx
  %557 = load i32, i32* %local_intra_warp_idx
  %558 = mul i32 %556, 32
  %thread_idx239 = add i32 %557, %558
  %559 = getelementptr i32, i32* %N_intra_warp_, i32 %thread_idx239
  store i32 %555, i32* %559, align 4, !llvm.mem.parallel_loop_access !17
  %560 = load i32, i32* %local_inter_warp_idx
  %561 = load i32, i32* %local_intra_warp_idx
  %562 = mul i32 %560, 32
  %thread_idx246 = add i32 %561, %562
  %563 = getelementptr i32, i32* %S_intra_warp_, i32 %thread_idx246
  %564 = load i32, i32* %563, align 4, !llvm.mem.parallel_loop_access !17
  %565 = load i32, i32* %local_inter_warp_idx
  %566 = load i32, i32* %local_intra_warp_idx
  %567 = mul i32 %565, 32
  %thread_idx228 = add i32 %566, %567
  %568 = getelementptr i32, i32* %validYmax_intra_warp_, i32 %thread_idx228
  %569 = load i32, i32* %568, align 4, !llvm.mem.parallel_loop_access !17
  %cmp72 = icmp sgt i32 %564, %569
  br i1 %cmp72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %cond.end70
  %570 = load i32, i32* %local_inter_warp_idx
  %571 = load i32, i32* %local_intra_warp_idx
  %572 = mul i32 %570, 32
  %thread_idx227 = add i32 %571, %572
  %573 = getelementptr i32, i32* %validYmax_intra_warp_, i32 %thread_idx227
  %574 = load i32, i32* %573, align 4, !llvm.mem.parallel_loop_access !17
  %575 = load i32, i32* %local_inter_warp_idx
  %576 = load i32, i32* %local_intra_warp_idx
  %577 = mul i32 %575, 32
  %thread_idx79 = add i32 %576, %577
  %578 = getelementptr i32, i32* %cond76.ex_phi_intra_warp_, i32 %thread_idx79
  store i32 %574, i32* %578, !llvm.mem.parallel_loop_access !17
  br label %cond.end75

cond.false74:                                     ; preds = %cond.end70
  %579 = load i32, i32* %local_inter_warp_idx
  %580 = load i32, i32* %local_intra_warp_idx
  %581 = mul i32 %579, 32
  %thread_idx245 = add i32 %580, %581
  %582 = getelementptr i32, i32* %S_intra_warp_, i32 %thread_idx245
  %583 = load i32, i32* %582, align 4, !llvm.mem.parallel_loop_access !17
  %584 = load i32, i32* %local_inter_warp_idx
  %585 = load i32, i32* %local_intra_warp_idx
  %586 = mul i32 %584, 32
  %thread_idx78 = add i32 %585, %586
  %587 = getelementptr i32, i32* %cond76.ex_phi_intra_warp_, i32 %thread_idx78
  store i32 %583, i32* %587, !llvm.mem.parallel_loop_access !17
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %588 = load i32, i32* %local_inter_warp_idx
  %589 = load i32, i32* %local_intra_warp_idx
  %590 = mul i32 %588, 32
  %thread_idx77 = add i32 %589, %590
  %591 = getelementptr i32, i32* %cond76.ex_phi_intra_warp_, i32 %thread_idx77
  %592 = load i32, i32* %591, !llvm.mem.parallel_loop_access !17
  %593 = load i32, i32* %local_inter_warp_idx
  %594 = load i32, i32* %local_intra_warp_idx
  %595 = mul i32 %593, 32
  %thread_idx244 = add i32 %594, %595
  %596 = getelementptr i32, i32* %S_intra_warp_, i32 %thread_idx244
  store i32 %592, i32* %596, align 4, !llvm.mem.parallel_loop_access !17
  %597 = load i32, i32* %local_inter_warp_idx
  %598 = load i32, i32* %local_intra_warp_idx
  %599 = mul i32 %597, 32
  %thread_idx251 = add i32 %598, %599
  %600 = getelementptr i32, i32* %W_intra_warp_, i32 %thread_idx251
  %601 = load i32, i32* %600, align 4, !llvm.mem.parallel_loop_access !17
  %602 = load i32, i32* %local_inter_warp_idx
  %603 = load i32, i32* %local_intra_warp_idx
  %604 = mul i32 %602, 32
  %thread_idx232 = add i32 %603, %604
  %605 = getelementptr i32, i32* %validXmin_intra_warp_, i32 %thread_idx232
  %606 = load i32, i32* %605, align 4, !llvm.mem.parallel_loop_access !17
  %cmp77 = icmp slt i32 %601, %606
  br i1 %cmp77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.end75
  %607 = load i32, i32* %local_inter_warp_idx
  %608 = load i32, i32* %local_intra_warp_idx
  %609 = mul i32 %607, 32
  %thread_idx231 = add i32 %608, %609
  %610 = getelementptr i32, i32* %validXmin_intra_warp_, i32 %thread_idx231
  %611 = load i32, i32* %610, align 4, !llvm.mem.parallel_loop_access !17
  %612 = load i32, i32* %local_inter_warp_idx
  %613 = load i32, i32* %local_intra_warp_idx
  %614 = mul i32 %612, 32
  %thread_idx76 = add i32 %613, %614
  %615 = getelementptr i32, i32* %cond81.ex_phi_intra_warp_, i32 %thread_idx76
  store i32 %611, i32* %615, !llvm.mem.parallel_loop_access !17
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end75
  %616 = load i32, i32* %local_inter_warp_idx
  %617 = load i32, i32* %local_intra_warp_idx
  %618 = mul i32 %616, 32
  %thread_idx250 = add i32 %617, %618
  %619 = getelementptr i32, i32* %W_intra_warp_, i32 %thread_idx250
  %620 = load i32, i32* %619, align 4, !llvm.mem.parallel_loop_access !17
  %621 = load i32, i32* %local_inter_warp_idx
  %622 = load i32, i32* %local_intra_warp_idx
  %623 = mul i32 %621, 32
  %thread_idx75 = add i32 %622, %623
  %624 = getelementptr i32, i32* %cond81.ex_phi_intra_warp_, i32 %thread_idx75
  store i32 %620, i32* %624, !llvm.mem.parallel_loop_access !17
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %625 = load i32, i32* %local_inter_warp_idx
  %626 = load i32, i32* %local_intra_warp_idx
  %627 = mul i32 %625, 32
  %thread_idx74 = add i32 %626, %627
  %628 = getelementptr i32, i32* %cond81.ex_phi_intra_warp_, i32 %thread_idx74
  %629 = load i32, i32* %628, !llvm.mem.parallel_loop_access !17
  %630 = load i32, i32* %local_inter_warp_idx
  %631 = load i32, i32* %local_intra_warp_idx
  %632 = mul i32 %630, 32
  %thread_idx249 = add i32 %631, %632
  %633 = getelementptr i32, i32* %W_intra_warp_, i32 %thread_idx249
  store i32 %629, i32* %633, align 4, !llvm.mem.parallel_loop_access !17
  %634 = load i32, i32* %local_inter_warp_idx
  %635 = load i32, i32* %local_intra_warp_idx
  %636 = mul i32 %634, 32
  %thread_idx256 = add i32 %635, %636
  %637 = getelementptr i32, i32* %E_intra_warp_, i32 %thread_idx256
  %638 = load i32, i32* %637, align 4, !llvm.mem.parallel_loop_access !17
  %639 = load i32, i32* %local_inter_warp_idx
  %640 = load i32, i32* %local_intra_warp_idx
  %641 = mul i32 %639, 32
  %thread_idx236 = add i32 %640, %641
  %642 = getelementptr i32, i32* %validXmax_intra_warp_, i32 %thread_idx236
  %643 = load i32, i32* %642, align 4, !llvm.mem.parallel_loop_access !17
  %cmp82 = icmp sgt i32 %638, %643
  br i1 %cmp82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end80
  %644 = load i32, i32* %local_inter_warp_idx
  %645 = load i32, i32* %local_intra_warp_idx
  %646 = mul i32 %644, 32
  %thread_idx235 = add i32 %645, %646
  %647 = getelementptr i32, i32* %validXmax_intra_warp_, i32 %thread_idx235
  %648 = load i32, i32* %647, align 4, !llvm.mem.parallel_loop_access !17
  %649 = load i32, i32* %local_inter_warp_idx
  %650 = load i32, i32* %local_intra_warp_idx
  %651 = mul i32 %649, 32
  %thread_idx73 = add i32 %650, %651
  %652 = getelementptr i32, i32* %cond86.ex_phi_intra_warp_, i32 %thread_idx73
  store i32 %648, i32* %652, !llvm.mem.parallel_loop_access !17
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end80
  %653 = load i32, i32* %local_inter_warp_idx
  %654 = load i32, i32* %local_intra_warp_idx
  %655 = mul i32 %653, 32
  %thread_idx255 = add i32 %654, %655
  %656 = getelementptr i32, i32* %E_intra_warp_, i32 %thread_idx255
  %657 = load i32, i32* %656, align 4, !llvm.mem.parallel_loop_access !17
  %658 = load i32, i32* %local_inter_warp_idx
  %659 = load i32, i32* %local_intra_warp_idx
  %660 = mul i32 %658, 32
  %thread_idx72 = add i32 %659, %660
  %661 = getelementptr i32, i32* %cond86.ex_phi_intra_warp_, i32 %thread_idx72
  store i32 %657, i32* %661, !llvm.mem.parallel_loop_access !17
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %662 = load i32, i32* %local_inter_warp_idx
  %663 = load i32, i32* %local_intra_warp_idx
  %664 = mul i32 %662, 32
  %thread_idx = add i32 %663, %664
  %665 = getelementptr i32, i32* %cond86.ex_phi_intra_warp_, i32 %thread_idx
  %666 = load i32, i32* %665, !llvm.mem.parallel_loop_access !17
  %667 = load i32, i32* %local_inter_warp_idx
  %668 = load i32, i32* %local_intra_warp_idx
  %669 = mul i32 %667, 32
  %thread_idx254 = add i32 %668, %669
  %670 = getelementptr i32, i32* %E_intra_warp_, i32 %thread_idx254
  store i32 %666, i32* %670, align 4, !llvm.mem.parallel_loop_access !17
  %671 = load i32, i32* %local_inter_warp_idx
  %672 = load i32, i32* %local_intra_warp_idx
  %673 = mul i32 %671, 32
  %thread_idx270 = add i32 %672, %673
  %674 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx270
  store i32 0, i32* %674, align 4, !llvm.mem.parallel_loop_access !17
  br label %intra_warp_inc64

reset_block66:                                    ; preds = %intra_warp_cond62
  store i32 0, i32* %local_intra_warp_idx
  br label %cond.end85_after_block_sync_55

cond.end85_after_block_sync_55:                   ; preds = %reset_block66
  br label %cond.end85_after_block_sync_4

cond.end85_after_block_sync_4:                    ; preds = %cond.end85_after_block_sync_55
  br label %cond.end85_after_block_sync_4_after_block_sync_31

cond.end85_after_block_sync_4_after_block_sync_31: ; preds = %cond.end85_after_block_sync_4
  br label %for.cond

for.cond:                                         ; preds = %for.inc_after_block_sync_40, %cond.end85_after_block_sync_4_after_block_sync_31
  br label %for.cond_after_block_sync_22

for.cond_after_block_sync_22:                     ; preds = %for.cond
  br label %for.cond_after_block_sync_22_after_block_sync_53

for.cond_after_block_sync_22_after_block_sync_53: ; preds = %for.cond_after_block_sync_22
  br label %intra_warp_init58

intra_warp_init58:                                ; preds = %for.cond_after_block_sync_22_after_block_sync_53
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond57

intra_warp_inc59:                                 ; preds = %for.cond_after_block_sync_22_after_block_sync_32
  %675 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment60 = add i32 %675, 1
  store i32 %intra_warp_index_increment60, i32* %local_intra_warp_idx
  br label %intra_warp_cond57

intra_warp_cond57:                                ; preds = %intra_warp_inc59, %intra_warp_init58
  %676 = load i32, i32* %local_intra_warp_idx
  %677 = icmp ult i32 %676, 512
  br i1 %677, label %for.cond_after_block_sync_22_after_block_sync_32, label %reset_block61, !llvm.loop !18

for.cond_after_block_sync_22_after_block_sync_32: ; preds = %intra_warp_cond57
  %678 = load i32, i32* %local_inter_warp_idx
  %679 = load i32, i32* %local_intra_warp_idx
  %680 = mul i32 %678, 32
  %thread_idx269 = add i32 %679, %680
  %681 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx269
  %682 = load i32, i32* %681, align 4, !llvm.mem.parallel_loop_access !21
  %683 = load i32, i32* %local_inter_warp_idx
  %684 = load i32, i32* %local_intra_warp_idx
  %685 = mul i32 %683, 32
  %thread_idx96 = add i32 %684, %685
  %686 = getelementptr i32, i32* %iteration.addr_intra_warp_, i32 %thread_idx96
  %687 = load i32, i32* %686, align 4, !llvm.mem.parallel_loop_access !21
  %cmp87 = icmp slt i32 %682, %687
  %688 = load i32, i32* %local_inter_warp_idx
  %689 = load i32, i32* %local_intra_warp_idx
  %690 = mul i32 %688, 32
  %thread_idx289 = add i32 %689, %690
  %691 = getelementptr i1, i1* %cmp87_intra_warp_, i32 %thread_idx289
  store i1 %cmp87, i1* %691
  br label %intra_warp_inc59

reset_block61:                                    ; preds = %intra_warp_cond57
  store i32 0, i32* %local_intra_warp_idx
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57: ; preds = %reset_block61
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59: ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79: ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79_after_block_sync_83

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79_after_block_sync_83: ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_43

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_43: ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_57_after_block_sync_59_after_block_sync_79_after_block_sync_83
  br label %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_33

for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_33: ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_43
  %692 = load i32, i32* %local_inter_warp_idx
  %693 = load i32, i32* %local_intra_warp_idx
  %694 = mul i32 %692, 32
  %thread_idx290 = add i32 %693, %694
  %695 = getelementptr i1, i1* %cmp87_intra_warp_, i32 %thread_idx290
  %696 = load i1, i1* %695
  br i1 %696, label %for.body, label %for.end.loopexit

for.body:                                         ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_33
  br label %for.body_after_block_sync_0

for.body_after_block_sync_0:                      ; preds = %for.body
  br label %for.body_after_block_sync_0_after_block_sync_56

for.body_after_block_sync_0_after_block_sync_56:  ; preds = %for.body_after_block_sync_0
  br label %intra_warp_init53

intra_warp_init53:                                ; preds = %for.body_after_block_sync_0_after_block_sync_56
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond52

intra_warp_inc54:                                 ; preds = %for.body_after_block_sync_0_after_block_sync_34
  %697 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment55 = add i32 %697, 1
  store i32 %intra_warp_index_increment55, i32* %local_intra_warp_idx
  br label %intra_warp_cond52

intra_warp_cond52:                                ; preds = %intra_warp_inc54, %intra_warp_init53
  %698 = load i32, i32* %local_intra_warp_idx
  %699 = icmp ult i32 %698, 512
  br i1 %699, label %for.body_after_block_sync_0_after_block_sync_34, label %reset_block56, !llvm.loop !22

for.body_after_block_sync_0_after_block_sync_34:  ; preds = %intra_warp_cond52
  %700 = load i32, i32* %local_inter_warp_idx
  %701 = load i32, i32* %local_intra_warp_idx
  %702 = mul i32 %700, 32
  %thread_idx261 = add i32 %701, %702
  %703 = getelementptr i8, i8* %computed_intra_warp_, i32 %thread_idx261
  store i8 0, i8* %703, align 1, !llvm.mem.parallel_loop_access !25
  %704 = load i32, i32* %local_inter_warp_idx
  %705 = load i32, i32* %local_intra_warp_idx
  %706 = mul i32 %704, 32
  %thread_idx158 = add i32 %705, %706
  %707 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx158
  %708 = load i32, i32* %707, align 4, !llvm.mem.parallel_loop_access !25
  %709 = load i32, i32* %local_inter_warp_idx
  %710 = load i32, i32* %local_intra_warp_idx
  %711 = mul i32 %709, 32
  %thread_idx268 = add i32 %710, %711
  %712 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx268
  %713 = load i32, i32* %712, align 4, !llvm.mem.parallel_loop_access !25
  %add88 = add nsw i32 %713, 1
  %cmp89 = icmp sge i32 %708, %add88
  %714 = load i32, i32* %local_inter_warp_idx
  %715 = load i32, i32* %local_intra_warp_idx
  %716 = mul i32 %714, 32
  %thread_idx287 = add i32 %715, %716
  %717 = getelementptr i1, i1* %cmp89_intra_warp_, i32 %thread_idx287
  store i1 %cmp89, i1* %717
  br label %intra_warp_inc54

reset_block56:                                    ; preds = %intra_warp_cond52
  store i32 0, i32* %local_intra_warp_idx
  br label %for.body_after_block_sync_0_after_block_sync_34_after_block_sync_63

for.body_after_block_sync_0_after_block_sync_34_after_block_sync_63: ; preds = %reset_block56
  br label %for.body_after_block_sync_0_after_block_sync_34_after_block_sync_35

for.body_after_block_sync_0_after_block_sync_34_after_block_sync_35: ; preds = %for.body_after_block_sync_0_after_block_sync_34_after_block_sync_63
  %718 = load i32, i32* %local_inter_warp_idx
  %719 = load i32, i32* %local_intra_warp_idx
  %720 = mul i32 %718, 32
  %thread_idx288 = add i32 %719, %720
  %721 = getelementptr i1, i1* %cmp89_intra_warp_, i32 %thread_idx288
  %722 = load i1, i1* %721
  br i1 %722, label %land.lhs.true90, label %if.end175

land.lhs.true90:                                  ; preds = %for.body_after_block_sync_0_after_block_sync_34_after_block_sync_35
  br label %land.lhs.true90_after_block_sync_62

land.lhs.true90_after_block_sync_62:              ; preds = %land.lhs.true90
  br label %intra_warp_init48

intra_warp_init48:                                ; preds = %land.lhs.true90_after_block_sync_62
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond47

intra_warp_inc49:                                 ; preds = %land.lhs.true90_after_block_sync_45
  %723 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment50 = add i32 %723, 1
  store i32 %intra_warp_index_increment50, i32* %local_intra_warp_idx
  br label %intra_warp_cond47

intra_warp_cond47:                                ; preds = %intra_warp_inc49, %intra_warp_init48
  %724 = load i32, i32* %local_intra_warp_idx
  %725 = icmp ult i32 %724, 512
  br i1 %725, label %land.lhs.true90_after_block_sync_45, label %reset_block51, !llvm.loop !26

land.lhs.true90_after_block_sync_45:              ; preds = %intra_warp_cond47
  %726 = load i32, i32* %local_inter_warp_idx
  %727 = load i32, i32* %local_intra_warp_idx
  %728 = mul i32 %726, 32
  %thread_idx157 = add i32 %727, %728
  %729 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx157
  %730 = load i32, i32* %729, align 4, !llvm.mem.parallel_loop_access !29
  %731 = load i32, i32* %local_inter_warp_idx
  %732 = load i32, i32* %local_intra_warp_idx
  %733 = mul i32 %731, 32
  %thread_idx267 = add i32 %732, %733
  %734 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx267
  %735 = load i32, i32* %734, align 4, !llvm.mem.parallel_loop_access !29
  %sub91 = sub nsw i32 16, %735
  %sub92 = sub nsw i32 %sub91, 2
  %cmp93 = icmp sle i32 %730, %sub92
  %736 = load i32, i32* %local_inter_warp_idx
  %737 = load i32, i32* %local_intra_warp_idx
  %738 = mul i32 %736, 32
  %thread_idx285 = add i32 %737, %738
  %739 = getelementptr i1, i1* %cmp93_intra_warp_, i32 %thread_idx285
  store i1 %cmp93, i1* %739
  br label %intra_warp_inc49

reset_block51:                                    ; preds = %intra_warp_cond47
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true90_after_block_sync_45_after_block_sync_65

land.lhs.true90_after_block_sync_45_after_block_sync_65: ; preds = %reset_block51
  br label %land.lhs.true90_after_block_sync_23

land.lhs.true90_after_block_sync_23:              ; preds = %land.lhs.true90_after_block_sync_45_after_block_sync_65
  %740 = load i32, i32* %local_inter_warp_idx
  %741 = load i32, i32* %local_intra_warp_idx
  %742 = mul i32 %740, 32
  %thread_idx286 = add i32 %741, %742
  %743 = getelementptr i1, i1* %cmp93_intra_warp_, i32 %thread_idx286
  %744 = load i1, i1* %743
  br i1 %744, label %land.lhs.true94, label %if_end

land.lhs.true94:                                  ; preds = %land.lhs.true90_after_block_sync_23
  br label %land.lhs.true94_after_block_sync_64

land.lhs.true94_after_block_sync_64:              ; preds = %land.lhs.true94
  br label %intra_warp_init43

intra_warp_init43:                                ; preds = %land.lhs.true94_after_block_sync_64
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond42

intra_warp_inc44:                                 ; preds = %land.lhs.true94_after_block_sync_24
  %745 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment45 = add i32 %745, 1
  store i32 %intra_warp_index_increment45, i32* %local_intra_warp_idx
  br label %intra_warp_cond42

intra_warp_cond42:                                ; preds = %intra_warp_inc44, %intra_warp_init43
  %746 = load i32, i32* %local_intra_warp_idx
  %747 = icmp ult i32 %746, 512
  br i1 %747, label %land.lhs.true94_after_block_sync_24, label %reset_block46, !llvm.loop !30

land.lhs.true94_after_block_sync_24:              ; preds = %intra_warp_cond42
  %748 = load i32, i32* %local_inter_warp_idx
  %749 = load i32, i32* %local_intra_warp_idx
  %750 = mul i32 %748, 32
  %thread_idx179 = add i32 %749, %750
  %751 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx179
  %752 = load i32, i32* %751, align 4, !llvm.mem.parallel_loop_access !33
  %753 = load i32, i32* %local_inter_warp_idx
  %754 = load i32, i32* %local_intra_warp_idx
  %755 = mul i32 %753, 32
  %thread_idx266 = add i32 %754, %755
  %756 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx266
  %757 = load i32, i32* %756, align 4, !llvm.mem.parallel_loop_access !33
  %add95 = add nsw i32 %757, 1
  %cmp96 = icmp sge i32 %752, %add95
  %758 = load i32, i32* %local_inter_warp_idx
  %759 = load i32, i32* %local_intra_warp_idx
  %760 = mul i32 %758, 32
  %thread_idx283 = add i32 %759, %760
  %761 = getelementptr i1, i1* %cmp96_intra_warp_, i32 %thread_idx283
  store i1 %cmp96, i1* %761
  br label %intra_warp_inc44

reset_block46:                                    ; preds = %intra_warp_cond42
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true94_after_block_sync_24_after_block_sync_67

land.lhs.true94_after_block_sync_24_after_block_sync_67: ; preds = %reset_block46
  br label %land.lhs.true94_after_block_sync_24_after_block_sync_25

land.lhs.true94_after_block_sync_24_after_block_sync_25: ; preds = %land.lhs.true94_after_block_sync_24_after_block_sync_67
  %762 = load i32, i32* %local_inter_warp_idx
  %763 = load i32, i32* %local_intra_warp_idx
  %764 = mul i32 %762, 32
  %thread_idx284 = add i32 %763, %764
  %765 = getelementptr i1, i1* %cmp96_intra_warp_, i32 %thread_idx284
  %766 = load i1, i1* %765
  br i1 %766, label %if_end1, label %if_end

land.lhs.true97:                                  ; preds = %if_end1_after_block_sync_6
  br label %land.lhs.true97_after_block_sync_66

land.lhs.true97_after_block_sync_66:              ; preds = %land.lhs.true97
  br label %intra_warp_init38

intra_warp_init38:                                ; preds = %land.lhs.true97_after_block_sync_66
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond37

intra_warp_inc39:                                 ; preds = %land.lhs.true97_after_block_sync_26
  %767 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment40 = add i32 %767, 1
  store i32 %intra_warp_index_increment40, i32* %local_intra_warp_idx
  br label %intra_warp_cond37

intra_warp_cond37:                                ; preds = %intra_warp_inc39, %intra_warp_init38
  %768 = load i32, i32* %local_intra_warp_idx
  %769 = icmp ult i32 %768, 512
  br i1 %769, label %land.lhs.true97_after_block_sync_26, label %reset_block41, !llvm.loop !34

land.lhs.true97_after_block_sync_26:              ; preds = %intra_warp_cond37
  %770 = load i32, i32* %local_inter_warp_idx
  %771 = load i32, i32* %local_intra_warp_idx
  %772 = mul i32 %770, 32
  %thread_idx178 = add i32 %771, %772
  %773 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx178
  %774 = load i32, i32* %773, align 4, !llvm.mem.parallel_loop_access !37
  %775 = load i32, i32* %local_inter_warp_idx
  %776 = load i32, i32* %local_intra_warp_idx
  %777 = mul i32 %775, 32
  %thread_idx265 = add i32 %776, %777
  %778 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx265
  %779 = load i32, i32* %778, align 4, !llvm.mem.parallel_loop_access !37
  %sub98 = sub nsw i32 16, %779
  %sub99 = sub nsw i32 %sub98, 2
  %cmp100 = icmp sle i32 %774, %sub99
  %780 = load i32, i32* %local_inter_warp_idx
  %781 = load i32, i32* %local_intra_warp_idx
  %782 = mul i32 %780, 32
  %thread_idx281 = add i32 %781, %782
  %783 = getelementptr i1, i1* %cmp100_intra_warp_, i32 %thread_idx281
  store i1 %cmp100, i1* %783
  br label %intra_warp_inc39

reset_block41:                                    ; preds = %intra_warp_cond37
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true97_after_block_sync_26_after_block_sync_69

land.lhs.true97_after_block_sync_26_after_block_sync_69: ; preds = %reset_block41
  br label %land.lhs.true97_after_block_sync_26_after_block_sync_27

land.lhs.true97_after_block_sync_26_after_block_sync_27: ; preds = %land.lhs.true97_after_block_sync_26_after_block_sync_69
  %784 = load i32, i32* %local_inter_warp_idx
  %785 = load i32, i32* %local_intra_warp_idx
  %786 = mul i32 %784, 32
  %thread_idx282 = add i32 %785, %786
  %787 = getelementptr i1, i1* %cmp100_intra_warp_, i32 %thread_idx282
  %788 = load i1, i1* %787
  br i1 %788, label %if_end2, label %if_end

land.lhs.true101:                                 ; preds = %if_end2_after_block_sync_5
  br label %land.lhs.true101_after_block_sync_68

land.lhs.true101_after_block_sync_68:             ; preds = %land.lhs.true101
  br label %intra_warp_init33

intra_warp_init33:                                ; preds = %land.lhs.true101_after_block_sync_68
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond32

intra_warp_inc34:                                 ; preds = %land.lhs.true101_after_block_sync_28
  %789 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment35 = add i32 %789, 1
  store i32 %intra_warp_index_increment35, i32* %local_intra_warp_idx
  br label %intra_warp_cond32

intra_warp_cond32:                                ; preds = %intra_warp_inc34, %intra_warp_init33
  %790 = load i32, i32* %local_intra_warp_idx
  %791 = icmp ult i32 %790, 512
  br i1 %791, label %land.lhs.true101_after_block_sync_28, label %reset_block36, !llvm.loop !38

land.lhs.true101_after_block_sync_28:             ; preds = %intra_warp_cond32
  %792 = load i32, i32* %local_inter_warp_idx
  %793 = load i32, i32* %local_intra_warp_idx
  %794 = mul i32 %792, 32
  %thread_idx156 = add i32 %793, %794
  %795 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx156
  %796 = load i32, i32* %795, align 4, !llvm.mem.parallel_loop_access !41
  %797 = load i32, i32* %local_inter_warp_idx
  %798 = load i32, i32* %local_intra_warp_idx
  %799 = mul i32 %797, 32
  %thread_idx230 = add i32 %798, %799
  %800 = getelementptr i32, i32* %validXmin_intra_warp_, i32 %thread_idx230
  %801 = load i32, i32* %800, align 4, !llvm.mem.parallel_loop_access !41
  %cmp102 = icmp sge i32 %796, %801
  %802 = load i32, i32* %local_inter_warp_idx
  %803 = load i32, i32* %local_intra_warp_idx
  %804 = mul i32 %802, 32
  %thread_idx279 = add i32 %803, %804
  %805 = getelementptr i1, i1* %cmp102_intra_warp_, i32 %thread_idx279
  store i1 %cmp102, i1* %805
  br label %intra_warp_inc34

reset_block36:                                    ; preds = %intra_warp_cond32
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true101_after_block_sync_28_after_block_sync_71

land.lhs.true101_after_block_sync_28_after_block_sync_71: ; preds = %reset_block36
  br label %land.lhs.true101_after_block_sync_28_after_block_sync_29

land.lhs.true101_after_block_sync_28_after_block_sync_29: ; preds = %land.lhs.true101_after_block_sync_28_after_block_sync_71
  %806 = load i32, i32* %local_inter_warp_idx
  %807 = load i32, i32* %local_intra_warp_idx
  %808 = mul i32 %806, 32
  %thread_idx280 = add i32 %807, %808
  %809 = getelementptr i1, i1* %cmp102_intra_warp_, i32 %thread_idx280
  %810 = load i1, i1* %809
  br i1 %810, label %if_end3, label %if_end

land.lhs.true103:                                 ; preds = %if_end3_after_block_sync_9
  br label %land.lhs.true103_after_block_sync_70

land.lhs.true103_after_block_sync_70:             ; preds = %land.lhs.true103
  br label %intra_warp_init28

intra_warp_init28:                                ; preds = %land.lhs.true103_after_block_sync_70
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond27

intra_warp_inc29:                                 ; preds = %land.lhs.true103_after_block_sync_30
  %811 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment30 = add i32 %811, 1
  store i32 %intra_warp_index_increment30, i32* %local_intra_warp_idx
  br label %intra_warp_cond27

intra_warp_cond27:                                ; preds = %intra_warp_inc29, %intra_warp_init28
  %812 = load i32, i32* %local_intra_warp_idx
  %813 = icmp ult i32 %812, 512
  br i1 %813, label %land.lhs.true103_after_block_sync_30, label %reset_block31, !llvm.loop !42

land.lhs.true103_after_block_sync_30:             ; preds = %intra_warp_cond27
  %814 = load i32, i32* %local_inter_warp_idx
  %815 = load i32, i32* %local_intra_warp_idx
  %816 = mul i32 %814, 32
  %thread_idx155 = add i32 %815, %816
  %817 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx155
  %818 = load i32, i32* %817, align 4, !llvm.mem.parallel_loop_access !45
  %819 = load i32, i32* %local_inter_warp_idx
  %820 = load i32, i32* %local_intra_warp_idx
  %821 = mul i32 %819, 32
  %thread_idx234 = add i32 %820, %821
  %822 = getelementptr i32, i32* %validXmax_intra_warp_, i32 %thread_idx234
  %823 = load i32, i32* %822, align 4, !llvm.mem.parallel_loop_access !45
  %cmp104 = icmp sle i32 %818, %823
  %824 = load i32, i32* %local_inter_warp_idx
  %825 = load i32, i32* %local_intra_warp_idx
  %826 = mul i32 %824, 32
  %thread_idx277 = add i32 %825, %826
  %827 = getelementptr i1, i1* %cmp104_intra_warp_, i32 %thread_idx277
  store i1 %cmp104, i1* %827
  br label %intra_warp_inc29

reset_block31:                                    ; preds = %intra_warp_cond27
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true103_after_block_sync_30_after_block_sync_73

land.lhs.true103_after_block_sync_30_after_block_sync_73: ; preds = %reset_block31
  br label %land.lhs.true103_after_block_sync_16

land.lhs.true103_after_block_sync_16:             ; preds = %land.lhs.true103_after_block_sync_30_after_block_sync_73
  %828 = load i32, i32* %local_inter_warp_idx
  %829 = load i32, i32* %local_intra_warp_idx
  %830 = mul i32 %828, 32
  %thread_idx278 = add i32 %829, %830
  %831 = getelementptr i1, i1* %cmp104_intra_warp_, i32 %thread_idx278
  %832 = load i1, i1* %831
  br i1 %832, label %if_end4, label %if_end

land.lhs.true105:                                 ; preds = %if_end4_after_block_sync_10
  br label %land.lhs.true105_after_block_sync_72

land.lhs.true105_after_block_sync_72:             ; preds = %land.lhs.true105
  br label %intra_warp_init23

intra_warp_init23:                                ; preds = %land.lhs.true105_after_block_sync_72
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond22

intra_warp_inc24:                                 ; preds = %land.lhs.true105_after_block_sync_17
  %833 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment25 = add i32 %833, 1
  store i32 %intra_warp_index_increment25, i32* %local_intra_warp_idx
  br label %intra_warp_cond22

intra_warp_cond22:                                ; preds = %intra_warp_inc24, %intra_warp_init23
  %834 = load i32, i32* %local_intra_warp_idx
  %835 = icmp ult i32 %834, 512
  br i1 %835, label %land.lhs.true105_after_block_sync_17, label %reset_block26, !llvm.loop !46

land.lhs.true105_after_block_sync_17:             ; preds = %intra_warp_cond22
  %836 = load i32, i32* %local_inter_warp_idx
  %837 = load i32, i32* %local_intra_warp_idx
  %838 = mul i32 %836, 32
  %thread_idx177 = add i32 %837, %838
  %839 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx177
  %840 = load i32, i32* %839, align 4, !llvm.mem.parallel_loop_access !49
  %841 = load i32, i32* %local_inter_warp_idx
  %842 = load i32, i32* %local_intra_warp_idx
  %843 = mul i32 %841, 32
  %thread_idx222 = add i32 %842, %843
  %844 = getelementptr i32, i32* %validYmin_intra_warp_, i32 %thread_idx222
  %845 = load i32, i32* %844, align 4, !llvm.mem.parallel_loop_access !49
  %cmp106 = icmp sge i32 %840, %845
  %846 = load i32, i32* %local_inter_warp_idx
  %847 = load i32, i32* %local_intra_warp_idx
  %848 = mul i32 %846, 32
  %thread_idx275 = add i32 %847, %848
  %849 = getelementptr i1, i1* %cmp106_intra_warp_, i32 %thread_idx275
  store i1 %cmp106, i1* %849
  br label %intra_warp_inc24

reset_block26:                                    ; preds = %intra_warp_cond22
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true105_after_block_sync_17_after_block_sync_75

land.lhs.true105_after_block_sync_17_after_block_sync_75: ; preds = %reset_block26
  br label %land.lhs.true105_after_block_sync_17_after_block_sync_18

land.lhs.true105_after_block_sync_17_after_block_sync_18: ; preds = %land.lhs.true105_after_block_sync_17_after_block_sync_75
  %850 = load i32, i32* %local_inter_warp_idx
  %851 = load i32, i32* %local_intra_warp_idx
  %852 = mul i32 %850, 32
  %thread_idx276 = add i32 %851, %852
  %853 = getelementptr i1, i1* %cmp106_intra_warp_, i32 %thread_idx276
  %854 = load i1, i1* %853
  br i1 %854, label %if_end5, label %if_end

land.lhs.true107:                                 ; preds = %if_end5_after_block_sync_8
  br label %land.lhs.true107_after_block_sync_74

land.lhs.true107_after_block_sync_74:             ; preds = %land.lhs.true107
  br label %intra_warp_init18

intra_warp_init18:                                ; preds = %land.lhs.true107_after_block_sync_74
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond17

intra_warp_inc19:                                 ; preds = %land.lhs.true107_after_block_sync_19
  %855 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment20 = add i32 %855, 1
  store i32 %intra_warp_index_increment20, i32* %local_intra_warp_idx
  br label %intra_warp_cond17

intra_warp_cond17:                                ; preds = %intra_warp_inc19, %intra_warp_init18
  %856 = load i32, i32* %local_intra_warp_idx
  %857 = icmp ult i32 %856, 512
  br i1 %857, label %land.lhs.true107_after_block_sync_19, label %reset_block21, !llvm.loop !50

land.lhs.true107_after_block_sync_19:             ; preds = %intra_warp_cond17
  %858 = load i32, i32* %local_inter_warp_idx
  %859 = load i32, i32* %local_intra_warp_idx
  %860 = mul i32 %858, 32
  %thread_idx176 = add i32 %859, %860
  %861 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx176
  %862 = load i32, i32* %861, align 4, !llvm.mem.parallel_loop_access !53
  %863 = load i32, i32* %local_inter_warp_idx
  %864 = load i32, i32* %local_intra_warp_idx
  %865 = mul i32 %863, 32
  %thread_idx226 = add i32 %864, %865
  %866 = getelementptr i32, i32* %validYmax_intra_warp_, i32 %thread_idx226
  %867 = load i32, i32* %866, align 4, !llvm.mem.parallel_loop_access !53
  %cmp108 = icmp sle i32 %862, %867
  %868 = load i32, i32* %local_inter_warp_idx
  %869 = load i32, i32* %local_intra_warp_idx
  %870 = mul i32 %868, 32
  %thread_idx273 = add i32 %869, %870
  %871 = getelementptr i1, i1* %cmp108_intra_warp_, i32 %thread_idx273
  store i1 %cmp108, i1* %871
  br label %intra_warp_inc19

reset_block21:                                    ; preds = %intra_warp_cond17
  store i32 0, i32* %local_intra_warp_idx
  br label %land.lhs.true107_after_block_sync_19_after_block_sync_78

land.lhs.true107_after_block_sync_19_after_block_sync_78: ; preds = %reset_block21
  br label %land.lhs.true107_after_block_sync_19_after_block_sync_20

land.lhs.true107_after_block_sync_19_after_block_sync_20: ; preds = %land.lhs.true107_after_block_sync_19_after_block_sync_78
  %872 = load i32, i32* %local_inter_warp_idx
  %873 = load i32, i32* %local_intra_warp_idx
  %874 = mul i32 %872, 32
  %thread_idx274 = add i32 %873, %874
  %875 = getelementptr i1, i1* %cmp108_intra_warp_, i32 %thread_idx274
  %876 = load i1, i1* %875
  br i1 %876, label %if_end6, label %if_end

if.then109:                                       ; preds = %if_end6_after_block_sync_11
  br label %if.then109_after_block_sync_76

if.then109_after_block_sync_76:                   ; preds = %if.then109
  br label %if.then109_after_block_sync_21

if.then109_after_block_sync_21:                   ; preds = %if.then109_after_block_sync_76
  %877 = load i32, i32* %local_inter_warp_idx
  %878 = load i32, i32* %local_intra_warp_idx
  %879 = mul i32 %877, 32
  %thread_idx260 = add i32 %878, %879
  %880 = getelementptr i8, i8* %computed_intra_warp_, i32 %thread_idx260
  store i8 1, i8* %880, align 1
  %881 = load i32, i32* %local_inter_warp_idx
  %882 = load i32, i32* %local_intra_warp_idx
  %883 = mul i32 %881, 32
  %thread_idx175 = add i32 %882, %883
  %884 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx175
  %885 = load i32, i32* %884, align 4
  %idxprom110 = sext i32 %885 to i64
  %886 = load i32, i32* %local_inter_warp_idx
  %887 = load i32, i32* %local_intra_warp_idx
  %888 = mul i32 %886, 32
  %thread_idx300 = add i32 %887, %888
  %889 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx300
  %890 = load [16 x [16 x float]]*, [16 x [16 x float]]** %889
  %arrayidx111 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %890, i64 0, i64 %idxprom110
  %891 = load i32, i32* %local_inter_warp_idx
  %892 = load i32, i32* %local_intra_warp_idx
  %893 = mul i32 %891, 32
  %thread_idx154 = add i32 %892, %893
  %894 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx154
  %895 = load i32, i32* %894, align 4
  %idxprom112 = sext i32 %895 to i64
  %arrayidx113 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx111, i64 0, i64 %idxprom112
  %896 = load float, float* %arrayidx113, align 4
  %conv = fpext float %896 to double
  %897 = load i32, i32* %local_inter_warp_idx
  %898 = load i32, i32* %local_intra_warp_idx
  %899 = mul i32 %897, 32
  %thread_idx132 = add i32 %898, %899
  %900 = getelementptr float, float* %step_div_Cap_intra_warp_, i32 %thread_idx132
  %901 = load float, float* %900, align 4
  %conv114 = fpext float %901 to double
  %902 = load i32, i32* %local_inter_warp_idx
  %903 = load i32, i32* %local_intra_warp_idx
  %904 = mul i32 %902, 32
  %thread_idx174 = add i32 %903, %904
  %905 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx174
  %906 = load i32, i32* %905, align 4
  %idxprom115 = sext i32 %906 to i64
  %907 = load i32, i32* %local_inter_warp_idx
  %908 = load i32, i32* %local_intra_warp_idx
  %909 = mul i32 %907, 32
  %thread_idx303 = add i32 %908, %909
  %910 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"1_intra_warp_", i32 %thread_idx303
  %911 = load [16 x [16 x float]]*, [16 x [16 x float]]** %910
  %arrayidx116 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %911, i64 0, i64 %idxprom115
  %912 = load i32, i32* %local_inter_warp_idx
  %913 = load i32, i32* %local_intra_warp_idx
  %914 = mul i32 %912, 32
  %thread_idx153 = add i32 %913, %914
  %915 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx153
  %916 = load i32, i32* %915, align 4
  %idxprom117 = sext i32 %916 to i64
  %arrayidx118 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx116, i64 0, i64 %idxprom117
  %917 = load float, float* %arrayidx118, align 4
  %conv119 = fpext float %917 to double
  %918 = load i32, i32* %local_inter_warp_idx
  %919 = load i32, i32* %local_intra_warp_idx
  %920 = mul i32 %918, 32
  %thread_idx243 = add i32 %919, %920
  %921 = getelementptr i32, i32* %S_intra_warp_, i32 %thread_idx243
  %922 = load i32, i32* %921, align 4
  %idxprom120 = sext i32 %922 to i64
  %923 = load i32, i32* %local_inter_warp_idx
  %924 = load i32, i32* %local_intra_warp_idx
  %925 = mul i32 %923, 32
  %thread_idx299 = add i32 %924, %925
  %926 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx299
  %927 = load [16 x [16 x float]]*, [16 x [16 x float]]** %926
  %arrayidx121 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %927, i64 0, i64 %idxprom120
  %928 = load i32, i32* %local_inter_warp_idx
  %929 = load i32, i32* %local_intra_warp_idx
  %930 = mul i32 %928, 32
  %thread_idx152 = add i32 %929, %930
  %931 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx152
  %932 = load i32, i32* %931, align 4
  %idxprom122 = sext i32 %932 to i64
  %arrayidx123 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx121, i64 0, i64 %idxprom122
  %933 = load float, float* %arrayidx123, align 4
  %934 = load i32, i32* %local_inter_warp_idx
  %935 = load i32, i32* %local_intra_warp_idx
  %936 = mul i32 %934, 32
  %thread_idx238 = add i32 %935, %936
  %937 = getelementptr i32, i32* %N_intra_warp_, i32 %thread_idx238
  %938 = load i32, i32* %937, align 4
  %idxprom124 = sext i32 %938 to i64
  %939 = load i32, i32* %local_inter_warp_idx
  %940 = load i32, i32* %local_intra_warp_idx
  %941 = mul i32 %939, 32
  %thread_idx298 = add i32 %940, %941
  %942 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx298
  %943 = load [16 x [16 x float]]*, [16 x [16 x float]]** %942
  %arrayidx125 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %943, i64 0, i64 %idxprom124
  %944 = load i32, i32* %local_inter_warp_idx
  %945 = load i32, i32* %local_intra_warp_idx
  %946 = mul i32 %944, 32
  %thread_idx151 = add i32 %945, %946
  %947 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx151
  %948 = load i32, i32* %947, align 4
  %idxprom126 = sext i32 %948 to i64
  %arrayidx127 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx125, i64 0, i64 %idxprom126
  %949 = load float, float* %arrayidx127, align 4
  %add128 = fadd contract float %933, %949
  %conv129 = fpext float %add128 to double
  %950 = load i32, i32* %local_inter_warp_idx
  %951 = load i32, i32* %local_intra_warp_idx
  %952 = mul i32 %950, 32
  %thread_idx173 = add i32 %951, %952
  %953 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx173
  %954 = load i32, i32* %953, align 4
  %idxprom130 = sext i32 %954 to i64
  %955 = load i32, i32* %local_inter_warp_idx
  %956 = load i32, i32* %local_intra_warp_idx
  %957 = mul i32 %955, 32
  %thread_idx297 = add i32 %956, %957
  %958 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx297
  %959 = load [16 x [16 x float]]*, [16 x [16 x float]]** %958
  %arrayidx131 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %959, i64 0, i64 %idxprom130
  %960 = load i32, i32* %local_inter_warp_idx
  %961 = load i32, i32* %local_intra_warp_idx
  %962 = mul i32 %960, 32
  %thread_idx150 = add i32 %961, %962
  %963 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx150
  %964 = load i32, i32* %963, align 4
  %idxprom132 = sext i32 %964 to i64
  %arrayidx133 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx131, i64 0, i64 %idxprom132
  %965 = load float, float* %arrayidx133, align 4
  %conv134 = fpext float %965 to double
  %mul135 = fmul contract double 2.000000e+00, %conv134
  %sub136 = fsub contract double %conv129, %mul135
  %966 = load i32, i32* %local_inter_warp_idx
  %967 = load i32, i32* %local_intra_warp_idx
  %968 = mul i32 %966, 32
  %thread_idx136 = add i32 %967, %968
  %969 = getelementptr float, float* %Ry_1_intra_warp_, i32 %thread_idx136
  %970 = load float, float* %969, align 4
  %conv137 = fpext float %970 to double
  %mul138 = fmul contract double %sub136, %conv137
  %add139 = fadd contract double %conv119, %mul138
  %971 = load i32, i32* %local_inter_warp_idx
  %972 = load i32, i32* %local_intra_warp_idx
  %973 = mul i32 %971, 32
  %thread_idx172 = add i32 %972, %973
  %974 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx172
  %975 = load i32, i32* %974, align 4
  %idxprom140 = sext i32 %975 to i64
  %976 = load i32, i32* %local_inter_warp_idx
  %977 = load i32, i32* %local_intra_warp_idx
  %978 = mul i32 %976, 32
  %thread_idx296 = add i32 %977, %978
  %979 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx296
  %980 = load [16 x [16 x float]]*, [16 x [16 x float]]** %979
  %arrayidx141 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %980, i64 0, i64 %idxprom140
  %981 = load i32, i32* %local_inter_warp_idx
  %982 = load i32, i32* %local_intra_warp_idx
  %983 = mul i32 %981, 32
  %thread_idx253 = add i32 %982, %983
  %984 = getelementptr i32, i32* %E_intra_warp_, i32 %thread_idx253
  %985 = load i32, i32* %984, align 4
  %idxprom142 = sext i32 %985 to i64
  %arrayidx143 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx141, i64 0, i64 %idxprom142
  %986 = load float, float* %arrayidx143, align 4
  %987 = load i32, i32* %local_inter_warp_idx
  %988 = load i32, i32* %local_intra_warp_idx
  %989 = mul i32 %987, 32
  %thread_idx171 = add i32 %988, %989
  %990 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx171
  %991 = load i32, i32* %990, align 4
  %idxprom144 = sext i32 %991 to i64
  %992 = load i32, i32* %local_inter_warp_idx
  %993 = load i32, i32* %local_intra_warp_idx
  %994 = mul i32 %992, 32
  %thread_idx295 = add i32 %993, %994
  %995 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx295
  %996 = load [16 x [16 x float]]*, [16 x [16 x float]]** %995
  %arrayidx145 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %996, i64 0, i64 %idxprom144
  %997 = load i32, i32* %local_inter_warp_idx
  %998 = load i32, i32* %local_intra_warp_idx
  %999 = mul i32 %997, 32
  %thread_idx248 = add i32 %998, %999
  %1000 = getelementptr i32, i32* %W_intra_warp_, i32 %thread_idx248
  %1001 = load i32, i32* %1000, align 4
  %idxprom146 = sext i32 %1001 to i64
  %arrayidx147 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx145, i64 0, i64 %idxprom146
  %1002 = load float, float* %arrayidx147, align 4
  %add148 = fadd contract float %986, %1002
  %conv149 = fpext float %add148 to double
  %1003 = load i32, i32* %local_inter_warp_idx
  %1004 = load i32, i32* %local_intra_warp_idx
  %1005 = mul i32 %1003, 32
  %thread_idx170 = add i32 %1004, %1005
  %1006 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx170
  %1007 = load i32, i32* %1006, align 4
  %idxprom150 = sext i32 %1007 to i64
  %1008 = load i32, i32* %local_inter_warp_idx
  %1009 = load i32, i32* %local_intra_warp_idx
  %1010 = mul i32 %1008, 32
  %thread_idx294 = add i32 %1009, %1010
  %1011 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx294
  %1012 = load [16 x [16 x float]]*, [16 x [16 x float]]** %1011
  %arrayidx151 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %1012, i64 0, i64 %idxprom150
  %1013 = load i32, i32* %local_inter_warp_idx
  %1014 = load i32, i32* %local_intra_warp_idx
  %1015 = mul i32 %1013, 32
  %thread_idx149 = add i32 %1014, %1015
  %1016 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx149
  %1017 = load i32, i32* %1016, align 4
  %idxprom152 = sext i32 %1017 to i64
  %arrayidx153 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx151, i64 0, i64 %idxprom152
  %1018 = load float, float* %arrayidx153, align 4
  %conv154 = fpext float %1018 to double
  %mul155 = fmul contract double 2.000000e+00, %conv154
  %sub156 = fsub contract double %conv149, %mul155
  %1019 = load i32, i32* %local_inter_warp_idx
  %1020 = load i32, i32* %local_intra_warp_idx
  %1021 = mul i32 %1019, 32
  %thread_idx134 = add i32 %1020, %1021
  %1022 = getelementptr float, float* %Rx_1_intra_warp_, i32 %thread_idx134
  %1023 = load float, float* %1022, align 4
  %conv157 = fpext float %1023 to double
  %mul158 = fmul contract double %sub156, %conv157
  %add159 = fadd contract double %add139, %mul158
  %1024 = load i32, i32* %local_inter_warp_idx
  %1025 = load i32, i32* %local_intra_warp_idx
  %1026 = mul i32 %1024, 32
  %thread_idx130 = add i32 %1025, %1026
  %1027 = getelementptr float, float* %amb_temp_intra_warp_, i32 %thread_idx130
  %1028 = load float, float* %1027, align 4
  %1029 = load i32, i32* %local_inter_warp_idx
  %1030 = load i32, i32* %local_intra_warp_idx
  %1031 = mul i32 %1029, 32
  %thread_idx169 = add i32 %1030, %1031
  %1032 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx169
  %1033 = load i32, i32* %1032, align 4
  %idxprom160 = sext i32 %1033 to i64
  %1034 = load i32, i32* %local_inter_warp_idx
  %1035 = load i32, i32* %local_intra_warp_idx
  %1036 = mul i32 %1034, 32
  %thread_idx293 = add i32 %1035, %1036
  %1037 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx293
  %1038 = load [16 x [16 x float]]*, [16 x [16 x float]]** %1037
  %arrayidx161 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %1038, i64 0, i64 %idxprom160
  %1039 = load i32, i32* %local_inter_warp_idx
  %1040 = load i32, i32* %local_intra_warp_idx
  %1041 = mul i32 %1039, 32
  %thread_idx148 = add i32 %1040, %1041
  %1042 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx148
  %1043 = load i32, i32* %1042, align 4
  %idxprom162 = sext i32 %1043 to i64
  %arrayidx163 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx161, i64 0, i64 %idxprom162
  %1044 = load float, float* %arrayidx163, align 4
  %sub164 = fsub contract float %1028, %1044
  %1045 = load i32, i32* %local_inter_warp_idx
  %1046 = load i32, i32* %local_intra_warp_idx
  %1047 = mul i32 %1045, 32
  %thread_idx138 = add i32 %1046, %1047
  %1048 = getelementptr float, float* %Rz_1_intra_warp_, i32 %thread_idx138
  %1049 = load float, float* %1048, align 4
  %mul165 = fmul contract float %sub164, %1049
  %conv166 = fpext float %mul165 to double
  %add167 = fadd contract double %add159, %conv166
  %mul168 = fmul contract double %conv114, %add167
  %add169 = fadd contract double %conv, %mul168
  %conv170 = fptrunc double %add169 to float
  %1050 = load i32, i32* %local_inter_warp_idx
  %1051 = load i32, i32* %local_intra_warp_idx
  %1052 = mul i32 %1050, 32
  %thread_idx168 = add i32 %1051, %1052
  %1053 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx168
  %1054 = load i32, i32* %1053, align 4
  %idxprom171 = sext i32 %1054 to i64
  %arrayidx172 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(1)* @wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to [16 x [16 x float]]*), i64 0, i64 %idxprom171
  %1055 = load i32, i32* %local_inter_warp_idx
  %1056 = load i32, i32* %local_intra_warp_idx
  %1057 = mul i32 %1055, 32
  %thread_idx147 = add i32 %1056, %1057
  %1058 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx147
  %1059 = load i32, i32* %1058, align 4
  %idxprom173 = sext i32 %1059 to i64
  %arrayidx174 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx172, i64 0, i64 %idxprom173
  store float %conv170, float* %arrayidx174, align 4
  br label %if_end

if.end175:                                        ; preds = %if_end_after_block_sync_7, %for.body_after_block_sync_0_after_block_sync_34_after_block_sync_35
  br label %if.end175_after_block_sync_46

if.end175_after_block_sync_46:                    ; preds = %if.end175
  br label %intra_warp_init13

intra_warp_init13:                                ; preds = %if.end175_after_block_sync_46
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond12

intra_warp_inc14:                                 ; preds = %if.end175_after_block_sync_46_after_block_sync_47
  %1060 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment15 = add i32 %1060, 1
  store i32 %intra_warp_index_increment15, i32* %local_intra_warp_idx
  br label %intra_warp_cond12

intra_warp_cond12:                                ; preds = %intra_warp_inc14, %intra_warp_init13
  %1061 = load i32, i32* %local_intra_warp_idx
  %1062 = icmp ult i32 %1061, 512
  br i1 %1062, label %if.end175_after_block_sync_46_after_block_sync_47, label %reset_block16, !llvm.loop !54

if.end175_after_block_sync_46_after_block_sync_47: ; preds = %intra_warp_cond12
  %1063 = load i32, i32* %local_inter_warp_idx
  %1064 = load i32, i32* %local_intra_warp_idx
  %1065 = mul i32 %1063, 32
  %thread_idx264 = add i32 %1064, %1065
  %1066 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx264
  %1067 = load i32, i32* %1066, align 4, !llvm.mem.parallel_loop_access !57
  %1068 = load i32, i32* %local_inter_warp_idx
  %1069 = load i32, i32* %local_intra_warp_idx
  %1070 = mul i32 %1068, 32
  %thread_idx95 = add i32 %1069, %1070
  %1071 = getelementptr i32, i32* %iteration.addr_intra_warp_, i32 %thread_idx95
  %1072 = load i32, i32* %1071, align 4, !llvm.mem.parallel_loop_access !57
  %sub176 = sub nsw i32 %1072, 1
  %cmp177 = icmp eq i32 %1067, %sub176
  %1073 = load i32, i32* %local_inter_warp_idx
  %1074 = load i32, i32* %local_intra_warp_idx
  %1075 = mul i32 %1073, 32
  %thread_idx271 = add i32 %1074, %1075
  %1076 = getelementptr i1, i1* %cmp177_intra_warp_, i32 %thread_idx271
  store i1 %cmp177, i1* %1076
  br label %intra_warp_inc14

reset_block16:                                    ; preds = %intra_warp_cond12
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end175_after_block_sync_3

if.end175_after_block_sync_3:                     ; preds = %reset_block16
  br label %if.end175_after_block_sync_3_after_block_sync_44

if.end175_after_block_sync_3_after_block_sync_44: ; preds = %if.end175_after_block_sync_3
  br label %if.end175_after_block_sync_3_after_block_sync_44_after_block_sync_48

if.end175_after_block_sync_3_after_block_sync_44_after_block_sync_48: ; preds = %if.end175_after_block_sync_3_after_block_sync_44
  %1077 = load i32, i32* %local_inter_warp_idx
  %1078 = load i32, i32* %local_intra_warp_idx
  %1079 = mul i32 %1077, 32
  %thread_idx272 = add i32 %1078, %1079
  %1080 = getelementptr i1, i1* %cmp177_intra_warp_, i32 %thread_idx272
  %1081 = load i1, i1* %1080
  br i1 %1081, label %if.then178, label %intra_warp_init8

if.then178:                                       ; preds = %if.end175_after_block_sync_3_after_block_sync_44_after_block_sync_48
  br label %if.then178_after_block_sync_1

if.then178_after_block_sync_1:                    ; preds = %if.then178
  br label %if.then178_after_block_sync_1_after_block_sync_52

if.then178_after_block_sync_1_after_block_sync_52: ; preds = %if.then178_after_block_sync_1
  br label %if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82

if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82: ; preds = %if.then178_after_block_sync_1_after_block_sync_52
  br label %if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82_after_block_sync_86

if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82_after_block_sync_86: ; preds = %if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82
  br label %if.then178_after_block_sync_1_after_block_sync_49

if.then178_after_block_sync_1_after_block_sync_49: ; preds = %if.then178_after_block_sync_1_after_block_sync_52_after_block_sync_82_after_block_sync_86
  br label %for.end

intra_warp_init8:                                 ; preds = %if.end175_after_block_sync_3_after_block_sync_44_after_block_sync_48
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond7

intra_warp_inc9:                                  ; preds = %if.end189
  %1082 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment10 = add i32 %1082, 1
  store i32 %intra_warp_index_increment10, i32* %local_intra_warp_idx
  br label %intra_warp_cond7

intra_warp_cond7:                                 ; preds = %intra_warp_inc9, %intra_warp_init8
  %1083 = load i32, i32* %local_intra_warp_idx
  %1084 = icmp ult i32 %1083, 512
  br i1 %1084, label %if.end179, label %reset_block11, !llvm.loop !58

if.end179:                                        ; preds = %intra_warp_cond7
  %1085 = load i32, i32* %local_inter_warp_idx
  %1086 = load i32, i32* %local_intra_warp_idx
  %1087 = mul i32 %1085, 32
  %thread_idx259 = add i32 %1086, %1087
  %1088 = getelementptr i8, i8* %computed_intra_warp_, i32 %thread_idx259
  %1089 = load i8, i8* %1088, align 1, !llvm.mem.parallel_loop_access !61
  %tobool = trunc i8 %1089 to i1
  br i1 %tobool, label %if.then180, label %if.end189

if.then180:                                       ; preds = %if.end179
  %1090 = load i32, i32* %local_inter_warp_idx
  %1091 = load i32, i32* %local_intra_warp_idx
  %1092 = mul i32 %1090, 32
  %thread_idx167 = add i32 %1091, %1092
  %1093 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx167
  %1094 = load i32, i32* %1093, align 4, !llvm.mem.parallel_loop_access !61
  %idxprom181 = sext i32 %1094 to i64
  %arrayidx182 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(1)* @wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to [16 x [16 x float]]*), i64 0, i64 %idxprom181
  %1095 = load i32, i32* %local_inter_warp_idx
  %1096 = load i32, i32* %local_intra_warp_idx
  %1097 = mul i32 %1095, 32
  %thread_idx146 = add i32 %1096, %1097
  %1098 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx146
  %1099 = load i32, i32* %1098, align 4, !llvm.mem.parallel_loop_access !61
  %idxprom183 = sext i32 %1099 to i64
  %arrayidx184 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx182, i64 0, i64 %idxprom183
  %1100 = load float, float* %arrayidx184, align 4, !llvm.mem.parallel_loop_access !61
  %1101 = load i32, i32* %local_inter_warp_idx
  %1102 = load i32, i32* %local_intra_warp_idx
  %1103 = mul i32 %1101, 32
  %thread_idx166 = add i32 %1102, %1103
  %1104 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx166
  %1105 = load i32, i32* %1104, align 4, !llvm.mem.parallel_loop_access !61
  %idxprom185 = sext i32 %1105 to i64
  %1106 = load i32, i32* %local_inter_warp_idx
  %1107 = load i32, i32* %local_intra_warp_idx
  %1108 = mul i32 %1106, 32
  %thread_idx292 = add i32 %1107, %1108
  %1109 = getelementptr [16 x [16 x float]]*, [16 x [16 x float]]** %"0_intra_warp_", i32 %thread_idx292
  %1110 = load [16 x [16 x float]]*, [16 x [16 x float]]** %1109
  %arrayidx186 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %1110, i64 0, i64 %idxprom185
  %1111 = load i32, i32* %local_inter_warp_idx
  %1112 = load i32, i32* %local_intra_warp_idx
  %1113 = mul i32 %1111, 32
  %thread_idx145 = add i32 %1112, %1113
  %1114 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx145
  %1115 = load i32, i32* %1114, align 4, !llvm.mem.parallel_loop_access !61
  %idxprom187 = sext i32 %1115 to i64
  %arrayidx188 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx186, i64 0, i64 %idxprom187
  store float %1100, float* %arrayidx188, align 4, !llvm.mem.parallel_loop_access !61
  br label %if.end189

if.end189:                                        ; preds = %if.then180, %if.end179
  br label %intra_warp_inc9

reset_block11:                                    ; preds = %intra_warp_cond7
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end189_after_block_sync_38

if.end189_after_block_sync_38:                    ; preds = %reset_block11
  br label %if.end189_after_block_sync_38_after_block_sync_39

if.end189_after_block_sync_38_after_block_sync_39: ; preds = %if.end189_after_block_sync_38
  br label %for.inc

for.inc:                                          ; preds = %if.end189_after_block_sync_38_after_block_sync_39
  %1116 = load i32, i32* %local_inter_warp_idx
  %1117 = load i32, i32* %local_intra_warp_idx
  %1118 = mul i32 %1116, 32
  %thread_idx263 = add i32 %1117, %1118
  %1119 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx263
  %1120 = load i32, i32* %1119, align 4
  %inc = add nsw i32 %1120, 1
  %1121 = load i32, i32* %local_inter_warp_idx
  %1122 = load i32, i32* %local_intra_warp_idx
  %1123 = mul i32 %1121, 32
  %thread_idx262 = add i32 %1122, %1123
  %1124 = getelementptr i32, i32* %i_intra_warp_, i32 %thread_idx262
  store i32 %inc, i32* %1124, align 4
  br label %for.inc_after_block_sync_54

for.inc_after_block_sync_54:                      ; preds = %for.inc
  br label %for.inc_after_block_sync_40

for.inc_after_block_sync_40:                      ; preds = %for.inc_after_block_sync_54
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.cond_after_block_sync_22_after_block_sync_32_after_block_sync_33
  br label %for.end.loopexit_after_block_sync_58

for.end.loopexit_after_block_sync_58:             ; preds = %for.end.loopexit
  br label %for.end.loopexit_after_block_sync_13

for.end.loopexit_after_block_sync_13:             ; preds = %for.end.loopexit_after_block_sync_58
  br label %for.end.loopexit_after_block_sync_13_after_block_sync_51

for.end.loopexit_after_block_sync_13_after_block_sync_51: ; preds = %for.end.loopexit_after_block_sync_13
  br label %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81

for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81: ; preds = %for.end.loopexit_after_block_sync_13_after_block_sync_51
  br label %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81_after_block_sync_85

for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81_after_block_sync_85: ; preds = %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81
  br label %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_61

for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_61: ; preds = %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_81_after_block_sync_85
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit_after_block_sync_13_after_block_sync_51_after_block_sync_61, %if.then178_after_block_sync_1_after_block_sync_49
  br label %for.end_after_block_sync_84

for.end_after_block_sync_84:                      ; preds = %for.end
  br label %for.end_after_block_sync_80

for.end_after_block_sync_80:                      ; preds = %for.end_after_block_sync_84
  br label %for.end_after_block_sync_77

for.end_after_block_sync_77:                      ; preds = %for.end_after_block_sync_80
  br label %for.end_after_block_sync_2

for.end_after_block_sync_2:                       ; preds = %for.end_after_block_sync_77
  br label %intra_warp_init

intra_warp_init:                                  ; preds = %for.end_after_block_sync_2
  store i32 0, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_inc:                                   ; preds = %if.end198
  %1125 = load i32, i32* %local_intra_warp_idx
  %intra_warp_index_increment = add i32 %1125, 1
  store i32 %intra_warp_index_increment, i32* %local_intra_warp_idx
  br label %intra_warp_cond

intra_warp_cond:                                  ; preds = %intra_warp_inc, %intra_warp_init
  %1126 = load i32, i32* %local_intra_warp_idx
  %1127 = icmp ult i32 %1126, 512
  br i1 %1127, label %for.end_after_block_sync_2_after_block_sync_41, label %reset_block, !llvm.loop !62

for.end_after_block_sync_2_after_block_sync_41:   ; preds = %intra_warp_cond
  %1128 = load i32, i32* %local_inter_warp_idx
  %1129 = load i32, i32* %local_intra_warp_idx
  %1130 = mul i32 %1128, 32
  %thread_idx258 = add i32 %1129, %1130
  %1131 = getelementptr i8, i8* %computed_intra_warp_, i32 %thread_idx258
  %1132 = load i8, i8* %1131, align 1, !llvm.mem.parallel_loop_access !65
  %tobool190 = trunc i8 %1132 to i1
  br i1 %tobool190, label %if.then191, label %if.end198

if.then191:                                       ; preds = %for.end_after_block_sync_2_after_block_sync_41
  %1133 = load i32, i32* %local_inter_warp_idx
  %1134 = load i32, i32* %local_intra_warp_idx
  %1135 = mul i32 %1133, 32
  %thread_idx165 = add i32 %1134, %1135
  %1136 = getelementptr i32, i32* %ty_intra_warp_, i32 %thread_idx165
  %1137 = load i32, i32* %1136, align 4, !llvm.mem.parallel_loop_access !65
  %idxprom192 = sext i32 %1137 to i64
  %arrayidx193 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(1)* @wrapper_global__ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t to [16 x [16 x float]]*), i64 0, i64 %idxprom192
  %1138 = load i32, i32* %local_inter_warp_idx
  %1139 = load i32, i32* %local_intra_warp_idx
  %1140 = mul i32 %1138, 32
  %thread_idx144 = add i32 %1139, %1140
  %1141 = getelementptr i32, i32* %tx_intra_warp_, i32 %thread_idx144
  %1142 = load i32, i32* %1141, align 4, !llvm.mem.parallel_loop_access !65
  %idxprom194 = sext i32 %1142 to i64
  %arrayidx195 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx193, i64 0, i64 %idxprom194
  %1143 = load float, float* %arrayidx195, align 4, !llvm.mem.parallel_loop_access !65
  %1144 = load i32, i32* %local_inter_warp_idx
  %1145 = load i32, i32* %local_intra_warp_idx
  %1146 = mul i32 %1144, 32
  %thread_idx104 = add i32 %1145, %1146
  %1147 = getelementptr float*, float** %temp_dst.addr_intra_warp_, i32 %thread_idx104
  %1148 = load float*, float** %1147, align 8, !llvm.mem.parallel_loop_access !65
  %1149 = load i32, i32* %local_inter_warp_idx
  %1150 = load i32, i32* %local_intra_warp_idx
  %1151 = mul i32 %1149, 32
  %thread_idx218 = add i32 %1150, %1151
  %1152 = getelementptr i32, i32* %index_intra_warp_, i32 %thread_idx218
  %1153 = load i32, i32* %1152, align 4, !llvm.mem.parallel_loop_access !65
  %idxprom196 = sext i32 %1153 to i64
  %arrayidx197 = getelementptr inbounds float, float* %1148, i64 %idxprom196
  store float %1143, float* %arrayidx197, align 4, !llvm.mem.parallel_loop_access !65
  br label %if.end198

if.end198:                                        ; preds = %if.then191, %for.end_after_block_sync_2_after_block_sync_41
  br label %intra_warp_inc

reset_block:                                      ; preds = %intra_warp_cond
  store i32 0, i32* %local_intra_warp_idx
  br label %if.end198_after_block_sync_60

if.end198_after_block_sync_60:                    ; preds = %reset_block
  br label %if.end198_after_block_sync_42

if.end198_after_block_sync_42:                    ; preds = %if.end198_after_block_sync_60
  ret void

if_end:                                           ; preds = %if.then109_after_block_sync_21, %land.lhs.true107_after_block_sync_19_after_block_sync_20, %land.lhs.true105_after_block_sync_17_after_block_sync_18, %land.lhs.true103_after_block_sync_16, %land.lhs.true101_after_block_sync_28_after_block_sync_29, %land.lhs.true97_after_block_sync_26_after_block_sync_27, %land.lhs.true94_after_block_sync_24_after_block_sync_25, %land.lhs.true90_after_block_sync_23
  br label %if_end_after_block_sync_50

if_end_after_block_sync_50:                       ; preds = %if_end
  br label %if_end_after_block_sync_7

if_end_after_block_sync_7:                        ; preds = %if_end_after_block_sync_50
  br label %if.end175

if_end1:                                          ; preds = %land.lhs.true94_after_block_sync_24_after_block_sync_25
  br label %if_end1_after_block_sync_87

if_end1_after_block_sync_87:                      ; preds = %if_end1
  br label %if_end1_after_block_sync_6

if_end1_after_block_sync_6:                       ; preds = %if_end1_after_block_sync_87
  br label %land.lhs.true97

if_end2:                                          ; preds = %land.lhs.true97_after_block_sync_26_after_block_sync_27
  br label %if_end2_after_block_sync_88

if_end2_after_block_sync_88:                      ; preds = %if_end2
  br label %if_end2_after_block_sync_5

if_end2_after_block_sync_5:                       ; preds = %if_end2_after_block_sync_88
  br label %land.lhs.true101

if_end3:                                          ; preds = %land.lhs.true101_after_block_sync_28_after_block_sync_29
  br label %if_end3_after_block_sync_89

if_end3_after_block_sync_89:                      ; preds = %if_end3
  br label %if_end3_after_block_sync_9

if_end3_after_block_sync_9:                       ; preds = %if_end3_after_block_sync_89
  br label %land.lhs.true103

if_end4:                                          ; preds = %land.lhs.true103_after_block_sync_16
  br label %if_end4_after_block_sync_90

if_end4_after_block_sync_90:                      ; preds = %if_end4
  br label %if_end4_after_block_sync_10

if_end4_after_block_sync_10:                      ; preds = %if_end4_after_block_sync_90
  br label %land.lhs.true105

if_end5:                                          ; preds = %land.lhs.true105_after_block_sync_17_after_block_sync_18
  br label %if_end5_after_block_sync_91

if_end5_after_block_sync_91:                      ; preds = %if_end5
  br label %if_end5_after_block_sync_8

if_end5_after_block_sync_8:                       ; preds = %if_end5_after_block_sync_91
  br label %land.lhs.true107

if_end6:                                          ; preds = %land.lhs.true107_after_block_sync_19_after_block_sync_20
  br label %if_end6_after_block_sync_92

if_end6_after_block_sync_92:                      ; preds = %if_end6
  br label %if_end6_after_block_sync_11

if_end6_after_block_sync_11:                      ; preds = %if_end6_after_block_sync_92
  br label %if.then109
}

; Function Attrs: nounwind
define void @_Z14calculate_tempiPfS_S_iiiiffffff_wrapper(i8* noalias nocapture readonly %0) local_unnamed_addr #1 {
  %2 = bitcast i8* %0 to i32**
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr i8, i8* %0, i64 8
  %6 = bitcast i8* %5 to float***
  %7 = load float**, float*** %6, align 8
  %8 = load float*, float** %7, align 8
  %9 = getelementptr i8, i8* %0, i64 16
  %10 = bitcast i8* %9 to float***
  %11 = load float**, float*** %10, align 8
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8, i8* %0, i64 24
  %14 = bitcast i8* %13 to float***
  %15 = load float**, float*** %14, align 8
  %16 = load float*, float** %15, align 8
  %17 = getelementptr i8, i8* %0, i64 32
  %18 = bitcast i8* %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8, i8* %0, i64 40
  %22 = bitcast i8* %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr i8, i8* %0, i64 48
  %26 = bitcast i8* %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr i8, i8* %0, i64 56
  %30 = bitcast i8* %29 to i32**
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr i8, i8* %0, i64 64
  %34 = bitcast i8* %33 to float**
  %35 = load float*, float** %34, align 8
  %36 = load float, float* %35, align 4
  %37 = getelementptr i8, i8* %0, i64 72
  %38 = bitcast i8* %37 to float**
  %39 = load float*, float** %38, align 8
  %40 = load float, float* %39, align 4
  %41 = getelementptr i8, i8* %0, i64 80
  %42 = bitcast i8* %41 to float**
  %43 = load float*, float** %42, align 8
  %44 = load float, float* %43, align 4
  %45 = getelementptr i8, i8* %0, i64 88
  %46 = bitcast i8* %45 to float**
  %47 = load float*, float** %46, align 8
  %48 = load float, float* %47, align 4
  %49 = getelementptr i8, i8* %0, i64 96
  %50 = bitcast i8* %49 to float**
  %51 = load float*, float** %50, align 8
  %52 = load float, float* %51, align 4
  %53 = getelementptr i8, i8* %0, i64 104
  %54 = bitcast i8* %53 to float**
  %55 = load float*, float** %54, align 8
  %56 = load float, float* %55, align 4
  tail call void @_Z14calculate_tempiPfS_S_iiiiffffff(i32 %4, float* %8, float* %12, float* %16, i32 %20, i32 %24, i32 %28, i32 %32, float %36, float %40, float %44, float %48, float %52, float %56)
  ret void
}

attributes #0 = { convergent noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!nvvm.annotations = !{!3, !4, !5, !4, !6, !6, !6, !6, !7, !7, !6}
!llvm.ident = !{!8}
!nvvmir.version = !{!9}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{void (i32, float*, float*, float*, i32, i32, i32, i32, float, float, float, float, float, float)* @_Z14calculate_tempiPfS_S_iiiiffffff, !"kernel", i32 1}
!4 = !{null, !"align", i32 8}
!5 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!6 = !{null, !"align", i32 16}
!7 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!8 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!9 = !{i32 1, i32 4}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.parallel_accesses", !12}
!12 = distinct !{}
!13 = !{!12}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.parallel_accesses", !16}
!16 = distinct !{}
!17 = !{!16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.parallel_accesses", !20}
!20 = distinct !{}
!21 = !{!20}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.parallel_accesses", !24}
!24 = distinct !{}
!25 = !{!24}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.parallel_accesses", !28}
!28 = distinct !{}
!29 = !{!28}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.parallel_accesses", !32}
!32 = distinct !{}
!33 = !{!32}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.parallel_accesses", !36}
!36 = distinct !{}
!37 = !{!36}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.parallel_accesses", !40}
!40 = distinct !{}
!41 = !{!40}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.parallel_accesses", !44}
!44 = distinct !{}
!45 = !{!44}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.parallel_accesses", !48}
!48 = distinct !{}
!49 = !{!48}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.parallel_accesses", !52}
!52 = distinct !{}
!53 = !{!52}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.parallel_accesses", !56}
!56 = distinct !{}
!57 = !{!56}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.parallel_accesses", !60}
!60 = distinct !{}
!61 = !{!60}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.parallel_accesses", !64}
!64 = distinct !{}
!65 = !{!64}
