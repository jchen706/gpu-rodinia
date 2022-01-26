; ModuleID = 'backprop_cuda-cuda-nvptx64-nvidia-cuda-sm_61.bc'
source_filename = "backprop_cuda.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_threadIdx_t = type { i8 }
%struct.cudaFuncAttributes = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.float2 = type { float, float }

$_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv = comdat any

$_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv = comdat any

$_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv = comdat any

@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node = internal addrspace(3) global [16 x float] undef, align 4
@_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix = internal addrspace(3) global [16 x [16 x float]] undef, align 4
@"$str" = private addrspace(1) constant [11 x i8] c"__CUDA_FTZ\00"

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaMalloc(i8** %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %s.addr = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaFuncGetAttributes(%struct.cudaFuncAttributes* %p, i8* %c) #0 {
entry:
  %p.addr = alloca %struct.cudaFuncAttributes*, align 8
  %c.addr = alloca i8*, align 8
  store %struct.cudaFuncAttributes* %p, %struct.cudaFuncAttributes** %p.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaDeviceGetAttribute(i32* %value, i32 %attr, i32 %device) #0 {
entry:
  %value.addr = alloca i32*, align 8
  %attr.addr = alloca i32, align 4
  %device.addr = alloca i32, align 4
  store i32* %value, i32** %value.addr, align 8
  store i32 %attr, i32* %attr.addr, align 4
  store i32 %device, i32* %device.addr, align 4
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaGetDevice(i32* %device) #0 {
entry:
  %device.addr = alloca i32*, align 8
  store i32* %device, i32** %device.addr, align 8
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessor(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize) #0 {
entry:
  %numBlocks.addr = alloca i32*, align 8
  %func.addr = alloca i8*, align 8
  %blockSize.addr = alloca i32, align 4
  %dynamicSmemSize.addr = alloca i64, align 8
  store i32* %numBlocks, i32** %numBlocks.addr, align 8
  store i8* %func, i8** %func.addr, align 8
  store i32 %blockSize, i32* %blockSize.addr, align 4
  store i64 %dynamicSmemSize, i64* %dynamicSmemSize.addr, align 8
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define weak dso_local i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize, i32 %flags) #0 {
entry:
  %numBlocks.addr = alloca i32*, align 8
  %func.addr = alloca i8*, align 8
  %blockSize.addr = alloca i32, align 4
  %dynamicSmemSize.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i32* %numBlocks, i32** %numBlocks.addr, align 8
  store i8* %func, i8** %func.addr, align 8
  store i32 %blockSize, i32* %blockSize.addr, align 4
  store i64 %dynamicSmemSize, i64* %dynamicSmemSize.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  ret i32 999
}

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z22bpnn_layerforward_CUDAPfS_S_S_ii(float* %input_cuda, float* %output_hidden_cuda, float* %input_hidden_cuda, float* %hidden_partial_sum, i32 %in, i32 %hid) #0 {
entry:
  %input_cuda.addr = alloca float*, align 8
  %output_hidden_cuda.addr = alloca float*, align 8
  %input_hidden_cuda.addr = alloca float*, align 8
  %hidden_partial_sum.addr = alloca float*, align 8
  %in.addr = alloca i32, align 4
  %hid.addr = alloca i32, align 4
  %by = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %index = alloca i32, align 4
  %index_in = alloca i32, align 4
  %i = alloca i32, align 4
  %power_two = alloca i32, align 4
  store float* %input_cuda, float** %input_cuda.addr, align 8
  store float* %output_hidden_cuda, float** %output_hidden_cuda.addr, align 8
  store float* %input_hidden_cuda, float** %input_hidden_cuda.addr, align 8
  store float* %hidden_partial_sum, float** %hidden_partial_sum.addr, align 8
  store i32 %in, i32* %in.addr, align 4
  store i32 %hid, i32* %hid.addr, align 4
  %call = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #2
  store i32 %call, i32* %by, align 4
  %call1 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #2
  store i32 %call1, i32* %tx, align 4
  %call2 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #2
  store i32 %call2, i32* %ty, align 4
  %0 = load i32, i32* %hid.addr, align 4
  %add = add nsw i32 %0, 1
  %mul = mul nsw i32 %add, 16
  %1 = load i32, i32* %by, align 4
  %mul3 = mul nsw i32 %mul, %1
  %2 = load i32, i32* %hid.addr, align 4
  %add4 = add nsw i32 %2, 1
  %3 = load i32, i32* %ty, align 4
  %mul5 = mul nsw i32 %add4, %3
  %add6 = add nsw i32 %mul3, %mul5
  %4 = load i32, i32* %tx, align 4
  %add7 = add nsw i32 %add6, %4
  %add8 = add nsw i32 %add7, 1
  %5 = load i32, i32* %hid.addr, align 4
  %add9 = add nsw i32 %5, 1
  %add10 = add nsw i32 %add8, %add9
  store i32 %add10, i32* %index, align 4
  %6 = load i32, i32* %by, align 4
  %mul11 = mul nsw i32 16, %6
  %7 = load i32, i32* %ty, align 4
  %add12 = add nsw i32 %mul11, %7
  %add13 = add nsw i32 %add12, 1
  store i32 %add13, i32* %index_in, align 4
  %8 = load i32, i32* %tx, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load float*, float** %input_cuda.addr, align 8
  %10 = load i32, i32* %index_in, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  %12 = load i32, i32* %ty, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* addrspacecast ([16 x float] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node to [16 x float]*), i64 0, i64 %idxprom14
  store float %11, float* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.nvvm.barrier0()
  %13 = load float*, float** %input_hidden_cuda.addr, align 8
  %14 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds float, float* %13, i64 %idxprom16
  %15 = load float, float* %arrayidx17, align 4
  %16 = load i32, i32* %ty, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom18
  %17 = load i32, i32* %tx, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i64 0, i64 %idxprom20
  store float %15, float* %arrayidx21, align 4
  call void @llvm.nvvm.barrier0()
  %18 = load i32, i32* %ty, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom22
  %19 = load i32, i32* %tx, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i64 0, i64 %idxprom24
  %20 = load float, float* %arrayidx25, align 4
  %21 = load i32, i32* %ty, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [16 x float], [16 x float]* addrspacecast ([16 x float] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node to [16 x float]*), i64 0, i64 %idxprom26
  %22 = load float, float* %arrayidx27, align 4
  %mul28 = fmul contract float %20, %22
  %23 = load i32, i32* %ty, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom29
  %24 = load i32, i32* %tx, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx30, i64 0, i64 %idxprom31
  store float %mul28, float* %arrayidx32, align 4
  call void @llvm.nvvm.barrier0()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4
  %conv = sitofp i32 %25 to float
  %call33 = call float @_ZL5log2ff(float 1.600000e+01) #2
  %cmp34 = fcmp ole float %conv, %call33
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %conv35 = sitofp i32 %26 to float
  %call36 = call float @_ZL4powfff(float 2.000000e+00, float %conv35) #2
  %conv37 = fptosi float %call36 to i32
  store i32 %conv37, i32* %power_two, align 4
  %27 = load i32, i32* %ty, align 4
  %28 = load i32, i32* %power_two, align 4
  %rem = srem i32 %27, %28
  %cmp38 = icmp eq i32 %rem, 0
  br i1 %cmp38, label %if.then39, label %if.end54

if.then39:                                        ; preds = %for.body
  %29 = load i32, i32* %ty, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom40
  %30 = load i32, i32* %tx, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx41, i64 0, i64 %idxprom42
  %31 = load float, float* %arrayidx43, align 4
  %32 = load i32, i32* %ty, align 4
  %33 = load i32, i32* %power_two, align 4
  %div = sdiv i32 %33, 2
  %add44 = add nsw i32 %32, %div
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom45
  %34 = load i32, i32* %tx, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx46, i64 0, i64 %idxprom47
  %35 = load float, float* %arrayidx48, align 4
  %add49 = fadd contract float %31, %35
  %36 = load i32, i32* %ty, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom50
  %37 = load i32, i32* %tx, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx51, i64 0, i64 %idxprom52
  store float %add49, float* %arrayidx53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then39, %for.body
  call void @llvm.nvvm.barrier0()
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %ty, align 4
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom55
  %40 = load i32, i32* %tx, align 4
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx56, i64 0, i64 %idxprom57
  %41 = load float, float* %arrayidx58, align 4
  %42 = load float*, float** %input_hidden_cuda.addr, align 8
  %43 = load i32, i32* %index, align 4
  %idxprom59 = sext i32 %43 to i64
  %arrayidx60 = getelementptr inbounds float, float* %42, i64 %idxprom59
  store float %41, float* %arrayidx60, align 4
  call void @llvm.nvvm.barrier0()
  %44 = load i32, i32* %tx, align 4
  %cmp61 = icmp eq i32 %44, 0
  br i1 %cmp61, label %if.then62, label %if.end71

if.then62:                                        ; preds = %for.end
  %45 = load i32, i32* %tx, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* addrspacecast ([16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix to [16 x [16 x float]]*), i64 0, i64 %idxprom63
  %46 = load i32, i32* %ty, align 4
  %idxprom65 = sext i32 %46 to i64
  %arrayidx66 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx64, i64 0, i64 %idxprom65
  %47 = load float, float* %arrayidx66, align 4
  %48 = load float*, float** %hidden_partial_sum.addr, align 8
  %49 = load i32, i32* %by, align 4
  %50 = load i32, i32* %hid.addr, align 4
  %mul67 = mul nsw i32 %49, %50
  %51 = load i32, i32* %ty, align 4
  %add68 = add nsw i32 %mul67, %51
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds float, float* %48, i64 %idxprom69
  store float %47, float* %arrayidx70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %for.end
  ret void
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  ret i32 %0
}

; Function Attrs: convergent nounwind
declare void @llvm.nvvm.barrier0() #2

; Function Attrs: alwaysinline convergent nounwind
define internal float @_ZL5log2ff(float %__a) #1 {
entry:
  %__a.addr = alloca float, align 4
  store float %__a, float* %__a.addr, align 4
  %0 = load float, float* %__a.addr, align 4
  %call = call float @__nv_log2f(float %0) #2
  ret float %call
}

; Function Attrs: alwaysinline convergent nounwind
define internal float @_ZL4powfff(float %__a, float %__b) #1 {
entry:
  %__a.addr = alloca float, align 4
  %__b.addr = alloca float, align 4
  store float %__a, float* %__a.addr, align 4
  store float %__b, float* %__b.addr, align 4
  %0 = load float, float* %__a.addr, align 4
  %1 = load float, float* %__b.addr, align 4
  %call = call float @__nv_powf(float %0, float %1) #2
  ret float %call
}

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_(float* %delta, i32 %hid, float* %ly, i32 %in, float* %w, float* %oldw) #0 {
entry:
  %delta.addr = alloca float*, align 8
  %hid.addr = alloca i32, align 4
  %ly.addr = alloca float*, align 8
  %in.addr = alloca i32, align 4
  %w.addr = alloca float*, align 8
  %oldw.addr = alloca float*, align 8
  %by = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %index = alloca i32, align 4
  %index_y = alloca i32, align 4
  %index_x = alloca i32, align 4
  store float* %delta, float** %delta.addr, align 8
  store i32 %hid, i32* %hid.addr, align 4
  store float* %ly, float** %ly.addr, align 8
  store i32 %in, i32* %in.addr, align 4
  store float* %w, float** %w.addr, align 8
  store float* %oldw, float** %oldw.addr, align 8
  %call = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #2
  store i32 %call, i32* %by, align 4
  %call1 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #2
  store i32 %call1, i32* %tx, align 4
  %call2 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #2
  store i32 %call2, i32* %ty, align 4
  %0 = load i32, i32* %hid.addr, align 4
  %add = add nsw i32 %0, 1
  %mul = mul nsw i32 %add, 16
  %1 = load i32, i32* %by, align 4
  %mul3 = mul nsw i32 %mul, %1
  %2 = load i32, i32* %hid.addr, align 4
  %add4 = add nsw i32 %2, 1
  %3 = load i32, i32* %ty, align 4
  %mul5 = mul nsw i32 %add4, %3
  %add6 = add nsw i32 %mul3, %mul5
  %4 = load i32, i32* %tx, align 4
  %add7 = add nsw i32 %add6, %4
  %add8 = add nsw i32 %add7, 1
  %5 = load i32, i32* %hid.addr, align 4
  %add9 = add nsw i32 %5, 1
  %add10 = add nsw i32 %add8, %add9
  store i32 %add10, i32* %index, align 4
  %6 = load i32, i32* %by, align 4
  %mul11 = mul nsw i32 16, %6
  %7 = load i32, i32* %ty, align 4
  %add12 = add nsw i32 %mul11, %7
  %add13 = add nsw i32 %add12, 1
  store i32 %add13, i32* %index_y, align 4
  %8 = load i32, i32* %tx, align 4
  %add14 = add nsw i32 %8, 1
  store i32 %add14, i32* %index_x, align 4
  %9 = load float*, float** %delta.addr, align 8
  %10 = load i32, i32* %index_x, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  %conv = fpext float %11 to double
  %mul15 = fmul contract double 3.000000e-01, %conv
  %12 = load float*, float** %ly.addr, align 8
  %13 = load i32, i32* %index_y, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds float, float* %12, i64 %idxprom16
  %14 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %14 to double
  %mul19 = fmul contract double %mul15, %conv18
  %15 = load float*, float** %oldw.addr, align 8
  %16 = load i32, i32* %index, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds float, float* %15, i64 %idxprom20
  %17 = load float, float* %arrayidx21, align 4
  %conv22 = fpext float %17 to double
  %mul23 = fmul contract double 3.000000e-01, %conv22
  %add24 = fadd contract double %mul19, %mul23
  %18 = load float*, float** %w.addr, align 8
  %19 = load i32, i32* %index, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds float, float* %18, i64 %idxprom25
  %20 = load float, float* %arrayidx26, align 4
  %conv27 = fpext float %20 to double
  %add28 = fadd contract double %conv27, %add24
  %conv29 = fptrunc double %add28 to float
  store float %conv29, float* %arrayidx26, align 4
  %21 = load float*, float** %delta.addr, align 8
  %22 = load i32, i32* %index_x, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds float, float* %21, i64 %idxprom30
  %23 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %23 to double
  %mul33 = fmul contract double 3.000000e-01, %conv32
  %24 = load float*, float** %ly.addr, align 8
  %25 = load i32, i32* %index_y, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds float, float* %24, i64 %idxprom34
  %26 = load float, float* %arrayidx35, align 4
  %conv36 = fpext float %26 to double
  %mul37 = fmul contract double %mul33, %conv36
  %27 = load float*, float** %oldw.addr, align 8
  %28 = load i32, i32* %index, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds float, float* %27, i64 %idxprom38
  %29 = load float, float* %arrayidx39, align 4
  %conv40 = fpext float %29 to double
  %mul41 = fmul contract double 3.000000e-01, %conv40
  %add42 = fadd contract double %mul37, %mul41
  %conv43 = fptrunc double %add42 to float
  %30 = load float*, float** %oldw.addr, align 8
  %31 = load i32, i32* %index, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds float, float* %30, i64 %idxprom44
  store float %conv43, float* %arrayidx45, align 4
  call void @llvm.nvvm.barrier0()
  %32 = load i32, i32* %ty, align 4
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %33 = load i32, i32* %by, align 4
  %cmp46 = icmp eq i32 %33, 0
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %34 = load float*, float** %delta.addr, align 8
  %35 = load i32, i32* %index_x, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds float, float* %34, i64 %idxprom47
  %36 = load float, float* %arrayidx48, align 4
  %conv49 = fpext float %36 to double
  %mul50 = fmul contract double 3.000000e-01, %conv49
  %37 = load float*, float** %oldw.addr, align 8
  %38 = load i32, i32* %index_x, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds float, float* %37, i64 %idxprom51
  %39 = load float, float* %arrayidx52, align 4
  %conv53 = fpext float %39 to double
  %mul54 = fmul contract double 3.000000e-01, %conv53
  %add55 = fadd contract double %mul50, %mul54
  %40 = load float*, float** %w.addr, align 8
  %41 = load i32, i32* %index_x, align 4
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds float, float* %40, i64 %idxprom56
  %42 = load float, float* %arrayidx57, align 4
  %conv58 = fpext float %42 to double
  %add59 = fadd contract double %conv58, %add55
  %conv60 = fptrunc double %add59 to float
  store float %conv60, float* %arrayidx57, align 4
  %43 = load float*, float** %delta.addr, align 8
  %44 = load i32, i32* %index_x, align 4
  %idxprom61 = sext i32 %44 to i64
  %arrayidx62 = getelementptr inbounds float, float* %43, i64 %idxprom61
  %45 = load float, float* %arrayidx62, align 4
  %conv63 = fpext float %45 to double
  %mul64 = fmul contract double 3.000000e-01, %conv63
  %46 = load float*, float** %oldw.addr, align 8
  %47 = load i32, i32* %index_x, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds float, float* %46, i64 %idxprom65
  %48 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %48 to double
  %mul68 = fmul contract double 3.000000e-01, %conv67
  %add69 = fadd contract double %mul64, %mul68
  %conv70 = fptrunc double %add69 to float
  %49 = load float*, float** %oldw.addr, align 8
  %50 = load i32, i32* %index_x, align 4
  %idxprom71 = sext i32 %50 to i64
  %arrayidx72 = getelementptr inbounds float, float* %49, i64 %idxprom71
  store float %conv70, float* %arrayidx72, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #3

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.y() #3

; Function Attrs: alwaysinline convergent inlinehint nounwind
define internal float @__nv_log2f(float %a) #4 {
  %1 = fcmp olt float %a, 0x3810000000000000
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = fmul float %a, 0x4160000000000000
  br label %4

4:                                                ; preds = %2, %0
  %a.addr.0.i = phi float [ %3, %2 ], [ %a, %0 ]
  %i.0.i = phi float [ -2.300000e+01, %2 ], [ 0.000000e+00, %0 ]
  %5 = bitcast float %a.addr.0.i to i32
  %6 = sub nsw i32 %5, 1060439283
  %7 = and i32 %6, -8388608
  %8 = bitcast float %a.addr.0.i to i32
  %9 = sub nsw i32 %8, %7
  %10 = bitcast i32 %9 to float
  %11 = sitofp i32 %7 to float
  %call.i7.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %12 = icmp ne i32 %call.i7.i, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call float @llvm.nvvm.fma.rn.ftz.f(float %11, float 0x3E80000000000000, float %i.0.i)
  br label %__nv_fmaf_rn.exit9.i

15:                                               ; preds = %4
  %16 = call float @llvm.nvvm.fma.rn.f(float %11, float 0x3E80000000000000, float %i.0.i)
  br label %__nv_fmaf_rn.exit9.i

__nv_fmaf_rn.exit9.i:                             ; preds = %15, %13
  %retval.0.i8.i = phi float [ %14, %13 ], [ %16, %15 ]
  %17 = fsub float %10, 1.000000e+00
  %call.i10.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %18 = icmp ne i32 %call.i10.i, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %__nv_fmaf_rn.exit9.i
  %20 = call float @llvm.nvvm.fma.rn.ftz.f(float 0x3FB8D64FE0000000, float %17, float 0xBFC58FE600000000)
  br label %__nv_fmaf_rn.exit12.i

21:                                               ; preds = %__nv_fmaf_rn.exit9.i
  %22 = call float @llvm.nvvm.fma.rn.f(float 0x3FB8D64FE0000000, float %17, float 0xBFC58FE600000000)
  br label %__nv_fmaf_rn.exit12.i

__nv_fmaf_rn.exit12.i:                            ; preds = %21, %19
  %retval.0.i11.i = phi float [ %20, %19 ], [ %22, %21 ]
  %call.i13.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %23 = icmp ne i32 %call.i13.i, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %__nv_fmaf_rn.exit12.i
  %25 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i11.i, float %17, float 0x3FC5F9E540000000)
  br label %__nv_fmaf_rn.exit15.i

26:                                               ; preds = %__nv_fmaf_rn.exit12.i
  %27 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i11.i, float %17, float 0x3FC5F9E540000000)
  br label %__nv_fmaf_rn.exit15.i

__nv_fmaf_rn.exit15.i:                            ; preds = %26, %24
  %retval.0.i14.i = phi float [ %25, %24 ], [ %27, %26 ]
  %call.i16.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %28 = icmp ne i32 %call.i16.i, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %__nv_fmaf_rn.exit15.i
  %30 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i14.i, float %17, float 0xBFC6E9C860000000)
  br label %__nv_fmaf_rn.exit18.i

31:                                               ; preds = %__nv_fmaf_rn.exit15.i
  %32 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i14.i, float %17, float 0xBFC6E9C860000000)
  br label %__nv_fmaf_rn.exit18.i

__nv_fmaf_rn.exit18.i:                            ; preds = %31, %29
  %retval.0.i17.i = phi float [ %30, %29 ], [ %32, %31 ]
  %call.i19.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %33 = icmp ne i32 %call.i19.i, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %__nv_fmaf_rn.exit18.i
  %35 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i17.i, float %17, float 0x3FCA417E80000000)
  br label %__nv_fmaf_rn.exit21.i

36:                                               ; preds = %__nv_fmaf_rn.exit18.i
  %37 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i17.i, float %17, float 0x3FCA417E80000000)
  br label %__nv_fmaf_rn.exit21.i

__nv_fmaf_rn.exit21.i:                            ; preds = %36, %34
  %retval.0.i20.i = phi float [ %35, %34 ], [ %37, %36 ]
  %call.i22.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %38 = icmp ne i32 %call.i22.i, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %__nv_fmaf_rn.exit21.i
  %40 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i20.i, float %17, float 0xBFCEC79160000000)
  br label %__nv_fmaf_rn.exit24.i

41:                                               ; preds = %__nv_fmaf_rn.exit21.i
  %42 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i20.i, float %17, float 0xBFCEC79160000000)
  br label %__nv_fmaf_rn.exit24.i

__nv_fmaf_rn.exit24.i:                            ; preds = %41, %39
  %retval.0.i23.i = phi float [ %40, %39 ], [ %42, %41 ]
  %call.i25.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %43 = icmp ne i32 %call.i25.i, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %__nv_fmaf_rn.exit24.i
  %45 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i23.i, float %17, float 0x3FD277F320000000)
  br label %__nv_fmaf_rn.exit27.i

46:                                               ; preds = %__nv_fmaf_rn.exit24.i
  %47 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i23.i, float %17, float 0x3FD277F320000000)
  br label %__nv_fmaf_rn.exit27.i

__nv_fmaf_rn.exit27.i:                            ; preds = %46, %44
  %retval.0.i26.i = phi float [ %45, %44 ], [ %47, %46 ]
  %call.i28.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %48 = icmp ne i32 %call.i28.i, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %__nv_fmaf_rn.exit27.i
  %50 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i26.i, float %17, float 0xBFD7154920000000)
  br label %__nv_fmaf_rn.exit30.i

51:                                               ; preds = %__nv_fmaf_rn.exit27.i
  %52 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i26.i, float %17, float 0xBFD7154920000000)
  br label %__nv_fmaf_rn.exit30.i

__nv_fmaf_rn.exit30.i:                            ; preds = %51, %49
  %retval.0.i29.i = phi float [ %50, %49 ], [ %52, %51 ]
  %call.i31.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %53 = icmp ne i32 %call.i31.i, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %__nv_fmaf_rn.exit30.i
  %55 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i29.i, float %17, float 0x3FDEC70940000000)
  br label %__nv_fmaf_rn.exit33.i

56:                                               ; preds = %__nv_fmaf_rn.exit30.i
  %57 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i29.i, float %17, float 0x3FDEC70940000000)
  br label %__nv_fmaf_rn.exit33.i

__nv_fmaf_rn.exit33.i:                            ; preds = %56, %54
  %retval.0.i32.i = phi float [ %55, %54 ], [ %57, %56 ]
  %call.i4.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %58 = icmp ne i32 %call.i4.i, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %__nv_fmaf_rn.exit33.i
  %60 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i32.i, float %17, float 0xBFE7154760000000)
  br label %__nv_fmaf_rn.exit6.i

61:                                               ; preds = %__nv_fmaf_rn.exit33.i
  %62 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i32.i, float %17, float 0xBFE7154760000000)
  br label %__nv_fmaf_rn.exit6.i

__nv_fmaf_rn.exit6.i:                             ; preds = %61, %59
  %retval.0.i5.i = phi float [ %60, %59 ], [ %62, %61 ]
  %63 = fmul float %retval.0.i5.i, %17
  %64 = fmul float %63, %17
  %call.i1.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %65 = icmp ne i32 %call.i1.i, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %__nv_fmaf_rn.exit6.i
  %67 = call float @llvm.nvvm.fma.rn.ftz.f(float %17, float 0x3FF7154760000000, float %64)
  br label %__nv_fmaf_rn.exit3.i

68:                                               ; preds = %__nv_fmaf_rn.exit6.i
  %69 = call float @llvm.nvvm.fma.rn.f(float %17, float 0x3FF7154760000000, float %64)
  br label %__nv_fmaf_rn.exit3.i

__nv_fmaf_rn.exit3.i:                             ; preds = %68, %66
  %retval.0.i2.i = phi float [ %67, %66 ], [ %69, %68 ]
  %70 = fadd float %retval.0.i2.i, %retval.0.i8.i
  %71 = bitcast float %a.addr.0.i to i32
  %72 = icmp uge i32 %71, 2139095040
  br i1 %72, label %73, label %81

73:                                               ; preds = %__nv_fmaf_rn.exit3.i
  %74 = bitcast i32 2139095040 to float
  %75 = bitcast i32 2139095040 to float
  %call.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %76 = icmp ne i32 %call.i.i, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call float @llvm.nvvm.fma.rn.ftz.f(float %a.addr.0.i, float %74, float %75)
  br label %__nv_fmaf_rn.exit.i

79:                                               ; preds = %73
  %80 = call float @llvm.nvvm.fma.rn.f(float %a.addr.0.i, float %74, float %75)
  br label %__nv_fmaf_rn.exit.i

__nv_fmaf_rn.exit.i:                              ; preds = %79, %77
  %retval.0.i.i = phi float [ %78, %77 ], [ %80, %79 ]
  br label %81

81:                                               ; preds = %__nv_fmaf_rn.exit.i, %__nv_fmaf_rn.exit3.i
  %r.0.i = phi float [ %retval.0.i.i, %__nv_fmaf_rn.exit.i ], [ %70, %__nv_fmaf_rn.exit3.i ]
  %82 = fcmp oeq float %a.addr.0.i, 0.000000e+00
  br i1 %82, label %83, label %__internal_accurate_log2f.exit

83:                                               ; preds = %81
  %84 = bitcast i32 2139095040 to float
  %85 = fsub float -0.000000e+00, %84
  br label %__internal_accurate_log2f.exit

__internal_accurate_log2f.exit:                   ; preds = %83, %81
  %r.1.i = phi float [ %85, %83 ], [ %r.0.i, %81 ]
  ret float %r.1.i
}

; Function Attrs: convergent nounwind
declare i32 @__nvvm_reflect(i8*) #5

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.fma.rn.ftz.f(float, float, float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.fma.rn.f(float, float, float) #3

; Function Attrs: alwaysinline convergent inlinehint nounwind
define internal float @__nv_powf(float %a, float %b) #4 {
  %x.addr.i.i = alloca %struct.float2, align 8
  %y.addr.i.i = alloca %struct.float2, align 8
  %z.i.i = alloca %struct.float2, align 8
  %res.i.i = alloca %struct.float2, align 8
  %prod.i = alloca %struct.float2, align 8
  %1 = bitcast float %b to i32
  %2 = and i32 %1, 2139095040
  %3 = ashr i32 %2, 23
  %4 = sub nsw i32 %3, 127
  %5 = add nsw i32 %4, 8
  %6 = fmul float 5.000000e-01, %b
  %call.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %7 = icmp ne i32 %call.i, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call float @llvm.nvvm.trunc.ftz.f(float %6)
  br label %__nv_truncf.exit

10:                                               ; preds = %0
  %11 = call float @llvm.nvvm.trunc.f(float %6)
  br label %__nv_truncf.exit

__nv_truncf.exit:                                 ; preds = %10, %8
  %retval.0.i = phi float [ %9, %8 ], [ %11, %10 ]
  %12 = fmul float 2.000000e+00, %retval.0.i
  %13 = fsub float %b, %12
  %call.i1 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %14 = icmp ne i32 %call.i1, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %__nv_truncf.exit
  %16 = call float @llvm.nvvm.fabs.ftz.f(float %13)
  br label %__nv_fabsf.exit

17:                                               ; preds = %__nv_truncf.exit
  %18 = call float @llvm.nvvm.fabs.f(float %13)
  br label %__nv_fabsf.exit

__nv_fabsf.exit:                                  ; preds = %17, %15
  %retval.0.i2 = phi float [ %16, %15 ], [ %18, %17 ]
  %19 = fcmp oeq float %retval.0.i2, 1.000000e+00
  %20 = zext i1 %19 to i32
  %call.i3 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %21 = icmp ne i32 %call.i3, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %__nv_fabsf.exit
  %23 = call float @llvm.nvvm.fabs.ftz.f(float %a)
  br label %__nv_fabsf.exit5

24:                                               ; preds = %__nv_fabsf.exit
  %25 = call float @llvm.nvvm.fabs.f(float %a)
  br label %__nv_fabsf.exit5

__nv_fabsf.exit5:                                 ; preds = %24, %22
  %retval.0.i4 = phi float [ %23, %22 ], [ %25, %24 ]
  %26 = bitcast %struct.float2* %prod.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %26)
  %27 = bitcast %struct.float2* %res.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %27)
  %call.i.i6 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %28 = icmp ne i32 %call.i.i6, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %35

30:                                               ; preds = %__nv_fabsf.exit5
  %31 = fcmp olt float %retval.0.i4, 0x3810000000000000
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = fmul float %retval.0.i4, 0x4170000000000000
  br label %34

34:                                               ; preds = %32, %30
  %expo.0.i.i = phi float [ -1.510000e+02, %32 ], [ -1.270000e+02, %30 ]
  %a.addr.0.i.i = phi float [ %33, %32 ], [ %retval.0.i4, %30 ]
  br label %35

35:                                               ; preds = %34, %__nv_fabsf.exit5
  %expo.1.i.i = phi float [ %expo.0.i.i, %34 ], [ -1.270000e+02, %__nv_fabsf.exit5 ]
  %a.addr.1.i.i = phi float [ %a.addr.0.i.i, %34 ], [ %retval.0.i4, %__nv_fabsf.exit5 ]
  %36 = bitcast float %a.addr.1.i.i to i32
  %37 = and i32 %36, 8388607
  %38 = or i32 %37, 1065353216
  %39 = bitcast i32 %38 to float
  %40 = lshr i32 %36, 23
  %41 = uitofp i32 %40 to float
  %42 = fadd float %expo.1.i.i, %41
  %43 = fcmp ogt float %39, 0x3FF6A09E60000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = fmul float %39, 5.000000e-01
  %46 = fadd float %42, 1.000000e+00
  br label %47

47:                                               ; preds = %44, %35
  %m.0.i.i = phi float [ %45, %44 ], [ %39, %35 ]
  %expo.2.i.i = phi float [ %46, %44 ], [ %42, %35 ]
  %48 = fsub float %m.0.i.i, 1.000000e+00
  %49 = fadd float %m.0.i.i, 1.000000e+00
  %50 = call float asm "rcp.approx.ftz.f32 $0,$1;", "=f,f"(float %49) #7
  %51 = fmul float 2.000000e+00, %48
  %52 = fmul float %51, %50
  %53 = fmul float %52, %52
  %call.i.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %54 = icmp ne i32 %call.i.i.i.i, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call float @llvm.nvvm.fma.rn.ftz.f(float 0x3F631E1FC0000000, float %53, float 0x3F8995EC60000000)
  br label %__internal_fmad.exit.i.i

57:                                               ; preds = %47
  %58 = call float @llvm.nvvm.fma.rn.f(float 0x3F631E1FC0000000, float %53, float 0x3F8995EC60000000)
  br label %__internal_fmad.exit.i.i

__internal_fmad.exit.i.i:                         ; preds = %57, %55
  %retval.0.i.i.i.i = phi float [ %56, %55 ], [ %58, %57 ]
  %call.i.i4.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %59 = icmp ne i32 %call.i.i4.i.i, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %__internal_fmad.exit.i.i
  %61 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i.i.i.i, float %53, float 0x3FB55557A0000000)
  br label %__internal_fmad.exit6.i.i

62:                                               ; preds = %__internal_fmad.exit.i.i
  %63 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i.i.i.i, float %53, float 0x3FB55557A0000000)
  br label %__internal_fmad.exit6.i.i

__internal_fmad.exit6.i.i:                        ; preds = %62, %60
  %retval.0.i.i5.i.i = phi float [ %61, %60 ], [ %63, %62 ]
  %call.i7.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %64 = icmp ne i32 %call.i7.i.i, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %__internal_fmad.exit6.i.i
  %66 = call float @llvm.nvvm.mul.rn.ftz.f(float %retval.0.i.i5.i.i, float %53)
  br label %__nv_fmul_rn.exit9.i.i

67:                                               ; preds = %__internal_fmad.exit6.i.i
  %68 = call float @llvm.nvvm.mul.rn.f(float %retval.0.i.i5.i.i, float %53)
  br label %__nv_fmul_rn.exit9.i.i

__nv_fmul_rn.exit9.i.i:                           ; preds = %67, %65
  %retval.0.i8.i.i = phi float [ %66, %65 ], [ %68, %67 ]
  %call.i10.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %69 = icmp ne i32 %call.i10.i.i, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %__nv_fmul_rn.exit9.i.i
  %71 = call float @llvm.nvvm.mul.rn.ftz.f(float %retval.0.i8.i.i, float %52)
  br label %__nv_fmul_rn.exit12.i.i

72:                                               ; preds = %__nv_fmul_rn.exit9.i.i
  %73 = call float @llvm.nvvm.mul.rn.f(float %retval.0.i8.i.i, float %52)
  br label %__nv_fmul_rn.exit12.i.i

__nv_fmul_rn.exit12.i.i:                          ; preds = %72, %70
  %retval.0.i11.i.i = phi float [ %71, %70 ], [ %73, %72 ]
  %74 = fsub float %48, %52
  %75 = fmul float 2.000000e+00, %74
  %76 = fsub float -0.000000e+00, %52
  %call.i13.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %77 = icmp ne i32 %call.i13.i.i, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %__nv_fmul_rn.exit12.i.i
  %79 = call float @llvm.nvvm.fma.rn.ftz.f(float %76, float %48, float %75)
  br label %__nv_fmaf_rn.exit.i.i

80:                                               ; preds = %__nv_fmul_rn.exit12.i.i
  %81 = call float @llvm.nvvm.fma.rn.f(float %76, float %48, float %75)
  br label %__nv_fmaf_rn.exit.i.i

__nv_fmaf_rn.exit.i.i:                            ; preds = %80, %78
  %retval.0.i14.i.i = phi float [ %79, %78 ], [ %81, %80 ]
  %call.i15.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %82 = icmp ne i32 %call.i15.i.i, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %__nv_fmaf_rn.exit.i.i
  %84 = call float @llvm.nvvm.mul.rn.ftz.f(float %50, float %retval.0.i14.i.i)
  br label %__nv_fmul_rn.exit17.i.i

85:                                               ; preds = %__nv_fmaf_rn.exit.i.i
  %86 = call float @llvm.nvvm.mul.rn.f(float %50, float %retval.0.i14.i.i)
  br label %__nv_fmul_rn.exit17.i.i

__nv_fmul_rn.exit17.i.i:                          ; preds = %85, %83
  %retval.0.i16.i.i = phi float [ %84, %83 ], [ %86, %85 ]
  %87 = fadd float %52, %retval.0.i11.i.i
  %88 = fsub float %52, %87
  %89 = fadd float %88, %retval.0.i11.i.i
  %90 = fadd float %89, %retval.0.i16.i.i
  %91 = fadd float %87, %90
  %92 = fsub float %87, %91
  %93 = fadd float %92, %90
  %call.i1.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %94 = icmp ne i32 %call.i1.i.i, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %__nv_fmul_rn.exit17.i.i
  %96 = call float @llvm.nvvm.mul.rn.ftz.f(float %expo.2.i.i, float 0x3FE62E4000000000)
  br label %__nv_fmul_rn.exit3.i.i

97:                                               ; preds = %__nv_fmul_rn.exit17.i.i
  %98 = call float @llvm.nvvm.mul.rn.f(float %expo.2.i.i, float 0x3FE62E4000000000)
  br label %__nv_fmul_rn.exit3.i.i

__nv_fmul_rn.exit3.i.i:                           ; preds = %97, %95
  %retval.0.i2.i.i = phi float [ %96, %95 ], [ %98, %97 ]
  %call.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %99 = icmp ne i32 %call.i.i.i, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %__nv_fmul_rn.exit3.i.i
  %101 = call float @llvm.nvvm.mul.rn.ftz.f(float %expo.2.i.i, float 0x3EB7F7D1C0000000)
  br label %__internal_log_ep.exit.i

102:                                              ; preds = %__nv_fmul_rn.exit3.i.i
  %103 = call float @llvm.nvvm.mul.rn.f(float %expo.2.i.i, float 0x3EB7F7D1C0000000)
  br label %__internal_log_ep.exit.i

__internal_log_ep.exit.i:                         ; preds = %102, %100
  %retval.0.i.i.i = phi float [ %101, %100 ], [ %103, %102 ]
  %104 = fadd float %retval.0.i2.i.i, %91
  %105 = fsub float %retval.0.i2.i.i, %104
  %106 = fadd float %105, %91
  %107 = fadd float %106, %93
  %108 = fadd float %107, %retval.0.i.i.i
  %109 = fadd float %104, %108
  %110 = getelementptr inbounds %struct.float2, %struct.float2* %res.i.i, i32 0, i32 1
  store float %109, float* %110, align 4
  %111 = fsub float %104, %109
  %112 = fadd float %111, %108
  %113 = getelementptr inbounds %struct.float2, %struct.float2* %res.i.i, i32 0, i32 0
  store float %112, float* %113, align 8
  %114 = load %struct.float2, %struct.float2* %res.i.i, align 8
  %115 = bitcast %struct.float2* %res.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %115)
  %call.i1.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %116 = icmp ne i32 %call.i1.i, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %__internal_log_ep.exit.i
  %118 = call float @llvm.nvvm.fabs.ftz.f(float %b)
  br label %__nv_fabsf.exit.i

119:                                              ; preds = %__internal_log_ep.exit.i
  %120 = call float @llvm.nvvm.fabs.f(float %b)
  br label %__nv_fabsf.exit.i

__nv_fabsf.exit.i:                                ; preds = %119, %117
  %retval.0.i.i7 = phi float [ %118, %117 ], [ %120, %119 ]
  %121 = fcmp ogt float %retval.0.i.i7, 0x46FED09BE0000000
  br i1 %121, label %122, label %124

122:                                              ; preds = %__nv_fabsf.exit.i
  %123 = fmul float %b, 0x3F20000000000000
  br label %124

124:                                              ; preds = %122, %__nv_fabsf.exit.i
  %b.addr.0.i = phi float [ %123, %122 ], [ %b, %__nv_fabsf.exit.i ]
  %125 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 1
  store float %b.addr.0.i, float* %125, align 4
  %126 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 0
  store float 0.000000e+00, float* %126, align 8
  %127 = load %struct.float2, %struct.float2* %prod.i, align 8
  %128 = bitcast %struct.float2* %x.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %128)
  %129 = bitcast %struct.float2* %y.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %129)
  %130 = bitcast %struct.float2* %z.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %130)
  store %struct.float2 %127, %struct.float2* %x.addr.i.i, align 8
  store %struct.float2 %114, %struct.float2* %y.addr.i.i, align 8
  %131 = getelementptr inbounds %struct.float2, %struct.float2* %x.addr.i.i, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = getelementptr inbounds %struct.float2, %struct.float2* %y.addr.i.i, i32 0, i32 1
  %134 = load float, float* %133, align 4
  %call.i.i2.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %135 = icmp ne i32 %call.i.i2.i, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = call float @llvm.nvvm.mul.rn.ftz.f(float %132, float %134)
  br label %__nv_fmul_rn.exit.i.i

138:                                              ; preds = %124
  %139 = call float @llvm.nvvm.mul.rn.f(float %132, float %134)
  br label %__nv_fmul_rn.exit.i.i

__nv_fmul_rn.exit.i.i:                            ; preds = %138, %136
  %retval.0.i.i3.i = phi float [ %137, %136 ], [ %139, %138 ]
  %140 = getelementptr inbounds %struct.float2, %struct.float2* %x.addr.i.i, i32 0, i32 1
  %141 = load float, float* %140, align 4
  %142 = getelementptr inbounds %struct.float2, %struct.float2* %y.addr.i.i, i32 0, i32 1
  %143 = load float, float* %142, align 4
  %144 = fsub float -0.000000e+00, %retval.0.i.i3.i
  %call.i1.i4.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %145 = icmp ne i32 %call.i1.i4.i, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %__nv_fmul_rn.exit.i.i
  %147 = call float @llvm.nvvm.fma.rn.ftz.f(float %141, float %143, float %144)
  br label %__nv_fmaf_rn.exit.i6.i

148:                                              ; preds = %__nv_fmul_rn.exit.i.i
  %149 = call float @llvm.nvvm.fma.rn.f(float %141, float %143, float %144)
  br label %__nv_fmaf_rn.exit.i6.i

__nv_fmaf_rn.exit.i6.i:                           ; preds = %148, %146
  %retval.0.i2.i5.i = phi float [ %147, %146 ], [ %149, %148 ]
  %150 = getelementptr inbounds %struct.float2, %struct.float2* %x.addr.i.i, i32 0, i32 1
  %151 = load float, float* %150, align 4
  %152 = getelementptr inbounds %struct.float2, %struct.float2* %y.addr.i.i, i32 0, i32 0
  %153 = load float, float* %152, align 8
  %call.i3.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %154 = icmp ne i32 %call.i3.i.i, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %__nv_fmaf_rn.exit.i6.i
  %156 = call float @llvm.nvvm.fma.rn.ftz.f(float %151, float %153, float %retval.0.i2.i5.i)
  br label %__nv_fmaf_rn.exit5.i.i

157:                                              ; preds = %__nv_fmaf_rn.exit.i6.i
  %158 = call float @llvm.nvvm.fma.rn.f(float %151, float %153, float %retval.0.i2.i5.i)
  br label %__nv_fmaf_rn.exit5.i.i

__nv_fmaf_rn.exit5.i.i:                           ; preds = %157, %155
  %retval.0.i4.i.i = phi float [ %156, %155 ], [ %158, %157 ]
  %159 = getelementptr inbounds %struct.float2, %struct.float2* %x.addr.i.i, i32 0, i32 0
  %160 = load float, float* %159, align 8
  %161 = getelementptr inbounds %struct.float2, %struct.float2* %y.addr.i.i, i32 0, i32 1
  %162 = load float, float* %161, align 4
  %call.i6.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %163 = icmp ne i32 %call.i6.i.i, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %__nv_fmaf_rn.exit5.i.i
  %165 = call float @llvm.nvvm.fma.rn.ftz.f(float %160, float %162, float %retval.0.i4.i.i)
  br label %__nv_fmaf_rn.exit8.i.i

166:                                              ; preds = %__nv_fmaf_rn.exit5.i.i
  %167 = call float @llvm.nvvm.fma.rn.f(float %160, float %162, float %retval.0.i4.i.i)
  br label %__nv_fmaf_rn.exit8.i.i

__nv_fmaf_rn.exit8.i.i:                           ; preds = %166, %164
  %retval.0.i7.i.i = phi float [ %165, %164 ], [ %167, %166 ]
  %call.i9.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %168 = icmp ne i32 %call.i9.i.i, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %__nv_fmaf_rn.exit8.i.i
  %170 = call float @llvm.nvvm.add.rn.ftz.f(float %retval.0.i.i3.i, float %retval.0.i7.i.i)
  br label %__nv_fadd_rn.exit.i.i

171:                                              ; preds = %__nv_fmaf_rn.exit8.i.i
  %172 = call float @llvm.nvvm.add.rn.f(float %retval.0.i.i3.i, float %retval.0.i7.i.i)
  br label %__nv_fadd_rn.exit.i.i

__nv_fadd_rn.exit.i.i:                            ; preds = %171, %169
  %retval.0.i10.i.i = phi float [ %170, %169 ], [ %172, %171 ]
  %173 = getelementptr inbounds %struct.float2, %struct.float2* %z.i.i, i32 0, i32 1
  store float %retval.0.i10.i.i, float* %173, align 4
  %174 = fsub float -0.000000e+00, %retval.0.i10.i.i
  %call.i11.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %175 = icmp ne i32 %call.i11.i.i, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %__nv_fadd_rn.exit.i.i
  %177 = call float @llvm.nvvm.add.rn.ftz.f(float %retval.0.i.i3.i, float %174)
  br label %__nv_fadd_rn.exit13.i.i

178:                                              ; preds = %__nv_fadd_rn.exit.i.i
  %179 = call float @llvm.nvvm.add.rn.f(float %retval.0.i.i3.i, float %174)
  br label %__nv_fadd_rn.exit13.i.i

__nv_fadd_rn.exit13.i.i:                          ; preds = %178, %176
  %retval.0.i12.i.i = phi float [ %177, %176 ], [ %179, %178 ]
  %call.i14.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %180 = icmp ne i32 %call.i14.i.i, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %__nv_fadd_rn.exit13.i.i
  %182 = call float @llvm.nvvm.add.rn.ftz.f(float %retval.0.i12.i.i, float %retval.0.i7.i.i)
  br label %__internal_dsmul.exit.i

183:                                              ; preds = %__nv_fadd_rn.exit13.i.i
  %184 = call float @llvm.nvvm.add.rn.f(float %retval.0.i12.i.i, float %retval.0.i7.i.i)
  br label %__internal_dsmul.exit.i

__internal_dsmul.exit.i:                          ; preds = %183, %181
  %retval.0.i15.i.i = phi float [ %182, %181 ], [ %184, %183 ]
  %185 = getelementptr inbounds %struct.float2, %struct.float2* %z.i.i, i32 0, i32 0
  store float %retval.0.i15.i.i, float* %185, align 8
  %186 = load %struct.float2, %struct.float2* %z.i.i, align 8
  %187 = bitcast %struct.float2* %x.addr.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %187)
  %188 = bitcast %struct.float2* %y.addr.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %188)
  %189 = bitcast %struct.float2* %z.i.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %189)
  store %struct.float2 %186, %struct.float2* %prod.i, align 8
  %190 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 1
  %191 = load float, float* %190, align 4
  %192 = bitcast float %191 to i32
  %193 = icmp eq i32 %192, 1118925336
  br i1 %193, label %194, label %205

194:                                              ; preds = %__internal_dsmul.exit.i
  %195 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 1
  %196 = load float, float* %195, align 4
  %197 = bitcast float %196 to i32
  %198 = sub nsw i32 %197, 1
  %199 = bitcast i32 %198 to float
  %200 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 1
  store float %199, float* %200, align 4
  %201 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 0
  %202 = load float, float* %201, align 8
  %203 = fadd float %202, 0x3EE0000000000000
  %204 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 0
  store float %203, float* %204, align 8
  br label %205

205:                                              ; preds = %194, %__internal_dsmul.exit.i
  %206 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 1
  %207 = load float, float* %206, align 4
  %208 = fmul float %207, 0x3FF7154760000000
  %call.i.i.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %209 = icmp ne i32 %call.i.i.i.i.i, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call float @llvm.nvvm.trunc.ftz.f(float %208)
  br label %__nv_truncf.exit.i.i.i.i

212:                                              ; preds = %205
  %213 = call float @llvm.nvvm.trunc.f(float %208)
  br label %__nv_truncf.exit.i.i.i.i

__nv_truncf.exit.i.i.i.i:                         ; preds = %212, %210
  %retval.0.i.i.i.i.i = phi float [ %211, %210 ], [ %213, %212 ]
  %call.i.i.i.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %214 = icmp ne i32 %call.i.i.i.i.i.i, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %__nv_truncf.exit.i.i.i.i
  %216 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i.i.i.i.i, float 0xBFE62E4000000000, float %207)
  br label %__internal_fmad.exit.i.i.i.i

217:                                              ; preds = %__nv_truncf.exit.i.i.i.i
  %218 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i.i.i.i.i, float 0xBFE62E4000000000, float %207)
  br label %__internal_fmad.exit.i.i.i.i

__internal_fmad.exit.i.i.i.i:                     ; preds = %217, %215
  %retval.0.i.i.i.i.i.i = phi float [ %216, %215 ], [ %218, %217 ]
  %call.i.i1.i.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %219 = icmp ne i32 %call.i.i1.i.i.i.i, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %__internal_fmad.exit.i.i.i.i
  %221 = call float @llvm.nvvm.fma.rn.ftz.f(float %retval.0.i.i.i.i.i, float 0xBEB7F7D1C0000000, float %retval.0.i.i.i.i.i.i)
  br label %__internal_expf_arg_reduction.exit.i.i.i

222:                                              ; preds = %__internal_fmad.exit.i.i.i.i
  %223 = call float @llvm.nvvm.fma.rn.f(float %retval.0.i.i.i.i.i, float 0xBEB7F7D1C0000000, float %retval.0.i.i.i.i.i.i)
  br label %__internal_expf_arg_reduction.exit.i.i.i

__internal_expf_arg_reduction.exit.i.i.i:         ; preds = %222, %220
  %retval.0.i.i2.i.i.i.i = phi float [ %221, %220 ], [ %223, %222 ]
  %224 = fmul float %retval.0.i.i2.i.i.i.i, 0x3FF7154760000000
  %225 = call float @llvm.nvvm.ex2.approx.ftz.f(float %224)
  %226 = fadd float %retval.0.i.i.i.i.i, 0.000000e+00
  %call.i.i1.i.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %227 = icmp ne i32 %call.i.i1.i.i.i, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %__internal_expf_arg_reduction.exit.i.i.i
  %229 = call float @llvm.nvvm.ex2.approx.ftz.f(float %226)
  br label %__internal_expf_kernel.exit.i.i

230:                                              ; preds = %__internal_expf_arg_reduction.exit.i.i.i
  %231 = call float @llvm.nvvm.ex2.approx.f(float %226)
  br label %__internal_expf_kernel.exit.i.i

__internal_expf_kernel.exit.i.i:                  ; preds = %230, %228
  %retval.0.i.i2.i.i.i = phi float [ %229, %228 ], [ %231, %230 ]
  %232 = fmul float %225, %retval.0.i.i2.i.i.i
  %233 = fcmp olt float %207, -1.050000e+02
  br i1 %233, label %234, label %235

234:                                              ; preds = %__internal_expf_kernel.exit.i.i
  br label %235

235:                                              ; preds = %234, %__internal_expf_kernel.exit.i.i
  %z.0.i.i = phi float [ 0.000000e+00, %234 ], [ %232, %__internal_expf_kernel.exit.i.i ]
  %236 = fcmp ogt float %207, 1.050000e+02
  br i1 %236, label %237, label %__internal_accurate_expf.exit.i

237:                                              ; preds = %235
  %238 = bitcast i32 2139095040 to float
  br label %__internal_accurate_expf.exit.i

__internal_accurate_expf.exit.i:                  ; preds = %237, %235
  %z.1.i.i = phi float [ %238, %237 ], [ %z.0.i.i, %235 ]
  %239 = bitcast i32 2139095040 to float
  %240 = fcmp une float %z.1.i.i, %239
  br i1 %240, label %241, label %__internal_accurate_powf.exit

241:                                              ; preds = %__internal_accurate_expf.exit.i
  %242 = getelementptr inbounds %struct.float2, %struct.float2* %prod.i, i32 0, i32 0
  %243 = load float, float* %242, align 8
  %call.i.i7.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %244 = icmp ne i32 %call.i.i7.i, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = call float @llvm.nvvm.fma.rn.ftz.f(float %z.1.i.i, float %243, float %z.1.i.i)
  br label %__internal_fmad.exit.i

247:                                              ; preds = %241
  %248 = call float @llvm.nvvm.fma.rn.f(float %z.1.i.i, float %243, float %z.1.i.i)
  br label %__internal_fmad.exit.i

__internal_fmad.exit.i:                           ; preds = %247, %245
  %retval.0.i.i8.i = phi float [ %246, %245 ], [ %248, %247 ]
  br label %__internal_accurate_powf.exit

__internal_accurate_powf.exit:                    ; preds = %__internal_fmad.exit.i, %__internal_accurate_expf.exit.i
  %t.0.i = phi float [ %retval.0.i.i8.i, %__internal_fmad.exit.i ], [ %z.1.i.i, %__internal_accurate_expf.exit.i ]
  %249 = bitcast %struct.float2* %prod.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %249)
  %250 = fcmp olt float %a, 0.000000e+00
  br i1 %250, label %251, label %253

251:                                              ; preds = %__internal_accurate_powf.exit
  %252 = icmp ne i32 %20, 0
  br label %253

253:                                              ; preds = %251, %__internal_accurate_powf.exit
  %254 = phi i1 [ false, %__internal_accurate_powf.exit ], [ %252, %251 ]
  br i1 %254, label %255, label %259

255:                                              ; preds = %253
  %256 = bitcast float %t.0.i to i32
  %257 = xor i32 %256, -2147483648
  %258 = bitcast i32 %257 to float
  br label %259

259:                                              ; preds = %255, %253
  %t.0 = phi float [ %258, %255 ], [ %t.0.i, %253 ]
  %260 = fcmp oeq float %a, 0.000000e+00
  br i1 %260, label %261, label %272

261:                                              ; preds = %259
  %262 = icmp ne i32 %20, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %261
  %264 = fadd float %a, %a
  %265 = bitcast float %264 to i32
  br label %266

266:                                              ; preds = %263, %261
  %ti.0 = phi i32 [ %265, %263 ], [ 0, %261 ]
  %267 = fcmp olt float %b, 0.000000e+00
  br i1 %267, label %268, label %270

268:                                              ; preds = %266
  %269 = or i32 %ti.0, 2139095040
  br label %270

270:                                              ; preds = %268, %266
  %ti.1 = phi i32 [ %269, %268 ], [ %ti.0, %266 ]
  %271 = bitcast i32 %ti.1 to float
  br label %286

272:                                              ; preds = %259
  %273 = fcmp olt float %a, 0.000000e+00
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %call.i8 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %275 = icmp ne i32 %call.i8, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %274
  %277 = call float @llvm.nvvm.trunc.ftz.f(float %b)
  br label %__nv_truncf.exit10

278:                                              ; preds = %274
  %279 = call float @llvm.nvvm.trunc.f(float %b)
  br label %__nv_truncf.exit10

__nv_truncf.exit10:                               ; preds = %278, %276
  %retval.0.i9 = phi float [ %277, %276 ], [ %279, %278 ]
  %280 = fcmp une float %b, %retval.0.i9
  br label %281

281:                                              ; preds = %__nv_truncf.exit10, %272
  %282 = phi i1 [ false, %272 ], [ %280, %__nv_truncf.exit10 ]
  br i1 %282, label %283, label %285

283:                                              ; preds = %281
  %284 = bitcast i32 2147483647 to float
  br label %285

285:                                              ; preds = %283, %281
  %t.1 = phi float [ %284, %283 ], [ %t.0, %281 ]
  br label %286

286:                                              ; preds = %285, %270
  %t.2 = phi float [ %271, %270 ], [ %t.1, %285 ]
  %call.i11 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %287 = icmp ne i32 %call.i11, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = call float @llvm.nvvm.fabs.ftz.f(float %a)
  br label %__nv_fabsf.exit13

290:                                              ; preds = %286
  %291 = call float @llvm.nvvm.fabs.f(float %a)
  br label %__nv_fabsf.exit13

__nv_fabsf.exit13:                                ; preds = %290, %288
  %retval.0.i12 = phi float [ %289, %288 ], [ %291, %290 ]
  %call.i14 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %292 = icmp ne i32 %call.i14, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %__nv_fabsf.exit13
  %294 = call float @llvm.nvvm.fabs.ftz.f(float %b)
  br label %__nv_fabsf.exit16

295:                                              ; preds = %__nv_fabsf.exit13
  %296 = call float @llvm.nvvm.fabs.f(float %b)
  br label %__nv_fabsf.exit16

__nv_fabsf.exit16:                                ; preds = %295, %293
  %retval.0.i15 = phi float [ %294, %293 ], [ %296, %295 ]
  %297 = fadd float %retval.0.i12, %retval.0.i15
  %298 = bitcast float %297 to i32
  %299 = bitcast i32 2139095040 to float
  %300 = bitcast float %299 to i32
  %301 = icmp sge i32 %298, %300
  br i1 %301, label %302, label %381

302:                                              ; preds = %__nv_fabsf.exit16
  %call.i.i17 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %303 = icmp ne i32 %call.i.i17, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %302
  %305 = call float @llvm.nvvm.fabs.ftz.f(float %a)
  br label %__nv_isnanf.exit

306:                                              ; preds = %302
  %307 = call float @llvm.nvvm.fabs.f(float %a)
  br label %__nv_isnanf.exit

__nv_isnanf.exit:                                 ; preds = %306, %304
  %retval.0.i.i18 = phi float [ %305, %304 ], [ %307, %306 ]
  %308 = bitcast i32 2139095040 to float
  %309 = fcmp ole float %retval.0.i.i18, %308
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %324, label %313

313:                                              ; preds = %__nv_isnanf.exit
  %call.i.i20 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %314 = icmp ne i32 %call.i.i20, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %313
  %316 = call float @llvm.nvvm.fabs.ftz.f(float %b)
  br label %__nv_isnanf.exit23

317:                                              ; preds = %313
  %318 = call float @llvm.nvvm.fabs.f(float %b)
  br label %__nv_isnanf.exit23

__nv_isnanf.exit23:                               ; preds = %317, %315
  %retval.0.i.i21 = phi float [ %316, %315 ], [ %318, %317 ]
  %319 = bitcast i32 2139095040 to float
  %320 = fcmp ole float %retval.0.i.i21, %319
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = icmp ne i32 %322, 0
  br label %324

324:                                              ; preds = %__nv_isnanf.exit23, %__nv_isnanf.exit
  %325 = phi i1 [ true, %__nv_isnanf.exit ], [ %323, %__nv_isnanf.exit23 ]
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = fadd float %a, %b
  br label %380

328:                                              ; preds = %324
  %call.i.i24 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %329 = icmp ne i32 %call.i.i24, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %328
  %331 = call float @llvm.nvvm.fabs.ftz.f(float %b)
  br label %__nv_isinff.exit27

332:                                              ; preds = %328
  %333 = call float @llvm.nvvm.fabs.f(float %b)
  br label %__nv_isinff.exit27

__nv_isinff.exit27:                               ; preds = %332, %330
  %retval.0.i.i25 = phi float [ %331, %330 ], [ %333, %332 ]
  %334 = bitcast i32 2139095040 to float
  %335 = fcmp oeq float %retval.0.i.i25, %334
  %336 = zext i1 %335 to i32
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %355

338:                                              ; preds = %__nv_isinff.exit27
  %call.i28 = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %339 = icmp ne i32 %call.i28, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %338
  %341 = call float @llvm.nvvm.fabs.ftz.f(float %a)
  br label %__nv_fabsf.exit30

342:                                              ; preds = %338
  %343 = call float @llvm.nvvm.fabs.f(float %a)
  br label %__nv_fabsf.exit30

__nv_fabsf.exit30:                                ; preds = %342, %340
  %retval.0.i29 = phi float [ %341, %340 ], [ %343, %342 ]
  %344 = fcmp ogt float %retval.0.i29, 1.000000e+00
  br i1 %344, label %345, label %346

345:                                              ; preds = %__nv_fabsf.exit30
  br label %346

346:                                              ; preds = %345, %__nv_fabsf.exit30
  %ti.2 = phi i32 [ 2139095040, %345 ], [ 0, %__nv_fabsf.exit30 ]
  %347 = fcmp olt float %b, 0.000000e+00
  br i1 %347, label %348, label %350

348:                                              ; preds = %346
  %349 = xor i32 %ti.2, 2139095040
  br label %350

350:                                              ; preds = %348, %346
  %ti.3 = phi i32 [ %349, %348 ], [ %ti.2, %346 ]
  %351 = fcmp oeq float %a, -1.000000e+00
  br i1 %351, label %352, label %353

352:                                              ; preds = %350
  br label %353

353:                                              ; preds = %352, %350
  %ti.4 = phi i32 [ 1065353216, %352 ], [ %ti.3, %350 ]
  %354 = bitcast i32 %ti.4 to float
  br label %379

355:                                              ; preds = %__nv_isinff.exit27
  %call.i.i = call i32 @__nvvm_reflect(i8* addrspacecast (i8 addrspace(1)* getelementptr inbounds ([11 x i8], [11 x i8] addrspace(1)* @"$str", i32 0, i32 0) to i8*))
  %356 = icmp ne i32 %call.i.i, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %355
  %358 = call float @llvm.nvvm.fabs.ftz.f(float %a)
  br label %__nv_isinff.exit

359:                                              ; preds = %355
  %360 = call float @llvm.nvvm.fabs.f(float %a)
  br label %__nv_isinff.exit

__nv_isinff.exit:                                 ; preds = %359, %357
  %retval.0.i.i = phi float [ %358, %357 ], [ %360, %359 ]
  %361 = bitcast i32 2139095040 to float
  %362 = fcmp oeq float %retval.0.i.i, %361
  %363 = zext i1 %362 to i32
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %__nv_isinff.exit
  %366 = fcmp oge float %b, 0.000000e+00
  br i1 %366, label %367, label %368

367:                                              ; preds = %365
  br label %368

368:                                              ; preds = %367, %365
  %ti.5 = phi i32 [ 2139095040, %367 ], [ 0, %365 ]
  %369 = fcmp olt float %a, 0.000000e+00
  br i1 %369, label %370, label %372

370:                                              ; preds = %368
  %371 = icmp ne i32 %20, 0
  br label %372

372:                                              ; preds = %370, %368
  %373 = phi i1 [ false, %368 ], [ %371, %370 ]
  br i1 %373, label %374, label %376

374:                                              ; preds = %372
  %375 = xor i32 %ti.5, -2147483648
  br label %376

376:                                              ; preds = %374, %372
  %ti.6 = phi i32 [ %375, %374 ], [ %ti.5, %372 ]
  %377 = bitcast i32 %ti.6 to float
  br label %378

378:                                              ; preds = %376, %__nv_isinff.exit
  %t.3 = phi float [ %377, %376 ], [ %t.2, %__nv_isinff.exit ]
  br label %379

379:                                              ; preds = %378, %353
  %t.4 = phi float [ %354, %353 ], [ %t.3, %378 ]
  br label %380

380:                                              ; preds = %379, %326
  %t.5 = phi float [ %327, %326 ], [ %t.4, %379 ]
  br label %381

381:                                              ; preds = %380, %__nv_fabsf.exit16
  %t.6 = phi float [ %t.5, %380 ], [ %t.2, %__nv_fabsf.exit16 ]
  %382 = fcmp oeq float %a, 1.000000e+00
  br i1 %382, label %385, label %383

383:                                              ; preds = %381
  %384 = fcmp oeq float %b, 0.000000e+00
  br label %385

385:                                              ; preds = %383, %381
  %386 = phi i1 [ true, %381 ], [ %384, %383 ]
  br i1 %386, label %387, label %388

387:                                              ; preds = %385
  br label %388

388:                                              ; preds = %387, %385
  %t.7 = phi float [ 1.000000e+00, %387 ], [ %t.6, %385 ]
  ret float %t.7
}

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.trunc.ftz.f(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.trunc.f(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.fabs.ftz.f(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.fabs.f(float) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.mul.rn.ftz.f(float, float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.mul.rn.f(float, float) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.add.rn.ftz.f(float, float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.add.rn.f(float, float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.ex2.approx.ftz.f(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.nvvm.ex2.approx.f(float) #3

attributes #0 = { convergent noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_61" "target-features"="+ptx64,+sm_61" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_61" "target-features"="+ptx64,+sm_61" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { alwaysinline convergent inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!nvvm.annotations = !{!3, !4, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7}
!llvm.ident = !{!9}
!nvvmir.version = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{void (float*, float*, float*, float*, i32, i32)* @_Z22bpnn_layerforward_CUDAPfS_S_S_ii, !"kernel", i32 1}
!4 = !{void (float*, i32, float*, i32, float*, float*)* @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, !"kernel", i32 1}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!9 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!10 = !{i32 1, i32 4}
