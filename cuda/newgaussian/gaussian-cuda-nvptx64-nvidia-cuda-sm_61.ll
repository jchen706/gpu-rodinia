; ModuleID = 'gaussian-cuda-nvptx64-nvidia-cuda-sm_61.bc'
source_filename = "gaussian.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_threadIdx_t = type { i8 }
%struct.__cuda_builtin_blockIdx_t = type { i8 }
%struct.__cuda_builtin_blockDim_t = type { i8 }
%struct.cudaFuncAttributes = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%printf_args = type { i32, i32, i32, i32, i32 }
%printf_args.0 = type { i32, i32, i32, i32, i32, i32 }

$_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv = comdat any

$_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv = comdat any

$_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv = comdat any

$_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv = comdat any

$_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv = comdat any

$_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_yEv = comdat any

@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1
@blockIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockIdx_t, align 1
@blockDim = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_blockDim_t, align 1
@.str = private unnamed_addr constant [63 x i8] c"blockIDx.x: %d, threadIdx.x: %d, Size: %d, t:%d, Size-1-t: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [98 x i8] c"blockIdx.x: %d, threadIdx.x: %d, blockIdx.y: %d, threadIdx.y: %d, blockDim.x: %d, blockDim.y: %d\0A\00", align 1

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
define dso_local void @_Z4Fan1PfS_ii(float* %m_cuda, float* %a_cuda, i32 %Size, i32 %t) #0 {
entry:
  %m_cuda.addr = alloca float*, align 8
  %a_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %tmp = alloca %printf_args
  store float* %m_cuda, float** %m_cuda.addr, align 8
  store float* %a_cuda, float** %a_cuda.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %call = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %call1 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call2 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %mul = mul i32 %call1, %call2
  %add = add i32 %call, %mul
  %0 = load i32, i32* %Size.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %t.addr, align 4
  %sub3 = sub nsw i32 %sub, %1
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call5 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %2 = load i32, i32* %Size.addr, align 4
  %3 = load i32, i32* %t.addr, align 4
  %4 = load i32, i32* %Size.addr, align 4
  %sub6 = sub nsw i32 %4, 1
  %5 = load i32, i32* %t.addr, align 4
  %sub7 = sub nsw i32 %sub6, %5
  %6 = getelementptr inbounds %printf_args, %printf_args* %tmp, i32 0, i32 0
  store i32 %call4, i32* %6, align 4
  %7 = getelementptr inbounds %printf_args, %printf_args* %tmp, i32 0, i32 1
  store i32 %call5, i32* %7, align 4
  %8 = getelementptr inbounds %printf_args, %printf_args* %tmp, i32 0, i32 2
  store i32 %2, i32* %8, align 4
  %9 = getelementptr inbounds %printf_args, %printf_args* %tmp, i32 0, i32 3
  store i32 %3, i32* %9, align 4
  %10 = getelementptr inbounds %printf_args, %printf_args* %tmp, i32 0, i32 4
  store i32 %sub7, i32* %10, align 4
  %11 = bitcast %printf_args* %tmp to i8*
  %12 = call i32 @vprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %call9 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call10 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %mul11 = mul i32 %call9, %call10
  %add12 = add i32 %call8, %mul11
  %13 = load i32, i32* %Size.addr, align 4
  %sub13 = sub nsw i32 %13, 1
  %14 = load i32, i32* %t.addr, align 4
  %sub14 = sub nsw i32 %sub13, %14
  %cmp15 = icmp uge i32 %add12, %sub14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %return

if.end17:                                         ; preds = %if.end
  %15 = load float*, float** %a_cuda.addr, align 8
  %16 = load i32, i32* %Size.addr, align 4
  %call18 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %call19 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %mul20 = mul i32 %call18, %call19
  %call21 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %add22 = add i32 %mul20, %call21
  %17 = load i32, i32* %t.addr, align 4
  %add23 = add i32 %add22, %17
  %add24 = add i32 %add23, 1
  %mul25 = mul i32 %16, %add24
  %idx.ext = zext i32 %mul25 to i64
  %add.ptr = getelementptr inbounds float, float* %15, i64 %idx.ext
  %18 = load i32, i32* %t.addr, align 4
  %idx.ext26 = sext i32 %18 to i64
  %add.ptr27 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext26
  %19 = load float, float* %add.ptr27, align 4
  %20 = load float*, float** %a_cuda.addr, align 8
  %21 = load i32, i32* %Size.addr, align 4
  %22 = load i32, i32* %t.addr, align 4
  %mul28 = mul nsw i32 %21, %22
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds float, float* %20, i64 %idx.ext29
  %23 = load i32, i32* %t.addr, align 4
  %idx.ext31 = sext i32 %23 to i64
  %add.ptr32 = getelementptr inbounds float, float* %add.ptr30, i64 %idx.ext31
  %24 = load float, float* %add.ptr32, align 4
  %div = fdiv float %19, %24
  %25 = load float*, float** %m_cuda.addr, align 8
  %26 = load i32, i32* %Size.addr, align 4
  %call33 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %call34 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %mul35 = mul i32 %call33, %call34
  %call36 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %add37 = add i32 %mul35, %call36
  %27 = load i32, i32* %t.addr, align 4
  %add38 = add i32 %add37, %27
  %add39 = add i32 %add38, 1
  %mul40 = mul i32 %26, %add39
  %idx.ext41 = zext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds float, float* %25, i64 %idx.ext41
  %28 = load i32, i32* %t.addr, align 4
  %idx.ext43 = sext i32 %28 to i64
  %add.ptr44 = getelementptr inbounds float, float* %add.ptr42, i64 %idx.ext43
  store float %div, float* %add.ptr44, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16
  ret void
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

declare i32 @vprintf(i8*, i8*)

; Function Attrs: convergent noinline nounwind optnone
define dso_local void @_Z4Fan2PfS_S_iii(float* %m_cuda, float* %a_cuda, float* %b_cuda, i32 %Size, i32 %j1, i32 %t) #0 {
entry:
  %m_cuda.addr = alloca float*, align 8
  %a_cuda.addr = alloca float*, align 8
  %b_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %xidx = alloca i32, align 4
  %yidx = alloca i32, align 4
  %tmp = alloca %printf_args.0
  store float* %m_cuda, float** %m_cuda.addr, align 8
  store float* %a_cuda, float** %a_cuda.addr, align 8
  store float* %b_cuda, float** %b_cuda.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %call = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %call1 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call2 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %mul = mul i32 %call1, %call2
  %add = add i32 %call, %mul
  %0 = load i32, i32* %Size.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %t.addr, align 4
  %sub3 = sub nsw i32 %sub, %1
  %cmp = icmp uge i32 %add, %sub3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end64

if.end:                                           ; preds = %entry
  %call4 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #3
  %call5 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #3
  %call6 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_yEv() #3
  %mul7 = mul i32 %call5, %call6
  %add8 = add i32 %call4, %mul7
  %2 = load i32, i32* %Size.addr, align 4
  %3 = load i32, i32* %t.addr, align 4
  %sub9 = sub nsw i32 %2, %3
  %cmp10 = icmp uge i32 %add8, %sub9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %if.end64

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call14 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %mul15 = mul i32 %call13, %call14
  %call16 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %add17 = add i32 %mul15, %call16
  store i32 %add17, i32* %xidx, align 4
  %call18 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #3
  %call19 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_yEv() #3
  %mul20 = mul i32 %call18, %call19
  %call21 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #3
  %add22 = add i32 %mul20, %call21
  store i32 %add22, i32* %yidx, align 4
  %call23 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_xEv() #3
  %call24 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_xEv() #3
  %call25 = call i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #3
  %call26 = call i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #3
  %call27 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_xEv() #3
  %call28 = call i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_yEv() #3
  %4 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 0
  store i32 %call23, i32* %4, align 4
  %5 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 1
  store i32 %call24, i32* %5, align 4
  %6 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 2
  store i32 %call25, i32* %6, align 4
  %7 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 3
  store i32 %call26, i32* %7, align 4
  %8 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 4
  store i32 %call27, i32* %8, align 4
  %9 = getelementptr inbounds %printf_args.0, %printf_args.0* %tmp, i32 0, i32 5
  store i32 %call28, i32* %9, align 4
  %10 = bitcast %printf_args.0* %tmp to i8*
  %11 = call i32 @vprintf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str1, i64 0, i64 0), i8* %10)
  %12 = load float*, float** %m_cuda.addr, align 8
  %13 = load i32, i32* %Size.addr, align 4
  %14 = load i32, i32* %xidx, align 4
  %add29 = add nsw i32 %14, 1
  %15 = load i32, i32* %t.addr, align 4
  %add30 = add nsw i32 %add29, %15
  %mul31 = mul nsw i32 %13, %add30
  %16 = load i32, i32* %t.addr, align 4
  %add32 = add nsw i32 %mul31, %16
  %idxprom = sext i32 %add32 to i64
  %arrayidx = getelementptr inbounds float, float* %12, i64 %idxprom
  %17 = load float, float* %arrayidx, align 4
  %18 = load float*, float** %a_cuda.addr, align 8
  %19 = load i32, i32* %Size.addr, align 4
  %20 = load i32, i32* %t.addr, align 4
  %mul33 = mul nsw i32 %19, %20
  %21 = load i32, i32* %yidx, align 4
  %22 = load i32, i32* %t.addr, align 4
  %add34 = add nsw i32 %21, %22
  %add35 = add nsw i32 %mul33, %add34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds float, float* %18, i64 %idxprom36
  %23 = load float, float* %arrayidx37, align 4
  %mul38 = fmul contract float %17, %23
  %24 = load float*, float** %a_cuda.addr, align 8
  %25 = load i32, i32* %Size.addr, align 4
  %26 = load i32, i32* %xidx, align 4
  %add39 = add nsw i32 %26, 1
  %27 = load i32, i32* %t.addr, align 4
  %add40 = add nsw i32 %add39, %27
  %mul41 = mul nsw i32 %25, %add40
  %28 = load i32, i32* %yidx, align 4
  %29 = load i32, i32* %t.addr, align 4
  %add42 = add nsw i32 %28, %29
  %add43 = add nsw i32 %mul41, %add42
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, float* %24, i64 %idxprom44
  %30 = load float, float* %arrayidx45, align 4
  %sub46 = fsub contract float %30, %mul38
  store float %sub46, float* %arrayidx45, align 4
  %31 = load i32, i32* %yidx, align 4
  %cmp47 = icmp eq i32 %31, 0
  br i1 %cmp47, label %if.then48, label %if.end64

if.then48:                                        ; preds = %if.end12
  %32 = load float*, float** %m_cuda.addr, align 8
  %33 = load i32, i32* %Size.addr, align 4
  %34 = load i32, i32* %xidx, align 4
  %add49 = add nsw i32 %34, 1
  %35 = load i32, i32* %t.addr, align 4
  %add50 = add nsw i32 %add49, %35
  %mul51 = mul nsw i32 %33, %add50
  %36 = load i32, i32* %yidx, align 4
  %37 = load i32, i32* %t.addr, align 4
  %add52 = add nsw i32 %36, %37
  %add53 = add nsw i32 %mul51, %add52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds float, float* %32, i64 %idxprom54
  %38 = load float, float* %arrayidx55, align 4
  %39 = load float*, float** %b_cuda.addr, align 8
  %40 = load i32, i32* %t.addr, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds float, float* %39, i64 %idxprom56
  %41 = load float, float* %arrayidx57, align 4
  %mul58 = fmul contract float %38, %41
  %42 = load float*, float** %b_cuda.addr, align 8
  %43 = load i32, i32* %xidx, align 4
  %add59 = add nsw i32 %43, 1
  %44 = load i32, i32* %t.addr, align 4
  %add60 = add nsw i32 %add59, %44
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds float, float* %42, i64 %idxprom61
  %45 = load float, float* %arrayidx62, align 4
  %sub63 = fsub contract float %45, %mul58
  store float %sub63, float* %arrayidx62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then, %if.then11, %if.then48, %if.end12
  ret void
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN26__cuda_builtin_threadIdx_t17__fetch_builtin_yEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN25__cuda_builtin_blockIdx_t17__fetch_builtin_yEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.y()
  ret i32 %0
}

; Function Attrs: alwaysinline convergent nounwind
define linkonce_odr dso_local i32 @_ZN25__cuda_builtin_blockDim_t17__fetch_builtin_yEv() #1 comdat align 2 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.y()
  ret i32 %0
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.y() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.y() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.y() #2

attributes #0 = { convergent noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_61" "target-features"="+ptx64,+sm_61" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_61" "target-features"="+ptx64,+sm_61" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { convergent nounwind }

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
