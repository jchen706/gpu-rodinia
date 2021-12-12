; ModuleID = 'new_kernel_gpu_cuda_wrapper_2.bc'
source_filename = "./kernel/kernel_gpu_cuda_wrapper_2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.CUstream_st = type opaque

@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cudaMalloc  recordsD\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cudaMalloc  currKnodeD\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cudaMalloc  offsetD\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"cudaMalloc  lastKnodeD\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"cudaMalloc  offset_2D\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cudaMalloc startD\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cudaMalloc endD\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"cudaMalloc ansDStart\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"cudaMalloc ansDLength\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"cudaMalloc cudaMemcpy memD\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cudaMalloc cudaMemcpy currKnodeD\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"cudaMalloc cudaMemcpy offsetD\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"cudaMalloc cudaMemcpy lastKnodeD\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"cudaMalloc cudaMemcpy offset_2D\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"cudaMemcpy startD\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"cudaMemcpy endD\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"cudaMemcpy ansDStart\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"cudaMemcpy ansDLength\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"findRangeK\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%15.12f s, %15.12f % : GPU: SET DEVICE / DRIVER INIT\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"%15.12f s, %15.12f % : GPU MEM: ALO\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : GPU MEM: COPY IN\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"%15.12f s, %15.12f % : GPU: KERNEL\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"%15.12f s, %15.12f % : GPU MEM: COPY OUT\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"%15.12f s, %15.12f % : GPU MEM: FRE\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@str = private unnamed_addr constant [51 x i8] c"Time spent in different stages of GPU_CUDA KERNEL:\00", align 1
@str.29 = private unnamed_addr constant [12 x i8] c"Total time:\00", align 1

; Function Attrs: uwtable
define void @_Z25kernel_gpu_cuda_wrapper_2P5knodelliliPlS1_S1_S1_PiS2_S2_S2_(%struct.knode* %knodes, i64 %knodes_elem, i64 %knodes_mem, i32 %order, i64 %maxheight, i32 %count, i64* %currKnode, i64* %offset, i64* %lastKnode, i64* %offset_2, i32* %start, i32* %end, i32* %recstart, i32* %reclength) local_unnamed_addr #0 {
entry:
  %knodes_elem.addr = alloca i64, align 8
  %maxheight.addr = alloca i64, align 8
  %knodesD = alloca %struct.knode*, align 8
  %currKnodeD = alloca i64*, align 8
  %offsetD = alloca i64*, align 8
  %lastKnodeD = alloca i64*, align 8
  %offset_2D = alloca i64*, align 8
  %startD = alloca i32*, align 8
  %endD = alloca i32*, align 8
  %ansDStart = alloca i32*, align 8
  %ansDLength = alloca i32*, align 8
  %args = alloca [11 x i8*], align 16
  store i64 %knodes_elem, i64* %knodes_elem.addr, align 8, !tbaa !3
  store i64 %maxheight, i64* %maxheight.addr, align 8, !tbaa !3
  %call = tail call i64 @_Z8get_timev()
  %call1 = tail call i32 @cudaDeviceSynchronize()
  %call2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 256, i32 1)
  %call3 = tail call i64 @_Z8get_timev()
  %0 = bitcast %struct.knode** %knodesD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.knode** %knodesD to i8**
  %call4 = call i32 @cudaMalloc(i8** nonnull %1, i64 %knodes_mem)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %2 = bitcast i64** %currKnodeD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast i64** %currKnodeD to i8**
  %conv = sext i32 %count to i64
  %mul = shl nsw i64 %conv, 3
  %call5 = call i32 @cudaMalloc(i8** nonnull %3, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %4 = bitcast i64** %offsetD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast i64** %offsetD to i8**
  %call8 = call i32 @cudaMalloc(i8** nonnull %5, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %6 = bitcast i64** %lastKnodeD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = bitcast i64** %lastKnodeD to i8**
  %call11 = call i32 @cudaMalloc(i8** nonnull %7, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %8 = bitcast i64** %offset_2D to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  %9 = bitcast i64** %offset_2D to i8**
  %call14 = call i32 @cudaMalloc(i8** nonnull %9, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %10 = bitcast i32** %startD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  %11 = bitcast i32** %startD to i8**
  %mul16 = shl nsw i64 %conv, 2
  %call17 = call i32 @cudaMalloc(i8** nonnull %11, i64 %mul16)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %12 = bitcast i32** %endD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5
  %13 = bitcast i32** %endD to i8**
  %call20 = call i32 @cudaMalloc(i8** nonnull %13, i64 %mul16)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %14 = bitcast i32** %ansDStart to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5
  %15 = bitcast i32** %ansDStart to i8**
  %call23 = call i32 @cudaMalloc(i8** nonnull %15, i64 %mul16)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %16 = bitcast i32** %ansDLength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #5
  %17 = bitcast i32** %ansDLength to i8**
  %call26 = call i32 @cudaMalloc(i8** nonnull %17, i64 %mul16)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %call27 = call i64 @_Z8get_timev()
  %18 = load i8*, i8** %1, align 8, !tbaa !7
  %19 = bitcast %struct.knode* %knodes to i8*
  %call28 = call i32 @cudaMemcpy(i8* %18, i8* %19, i64 %knodes_mem, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8, !tbaa !7
  %21 = bitcast i64* %currKnode to i8*
  %call31 = call i32 @cudaMemcpy(i8* %20, i8* %21, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8, !tbaa !7
  %23 = bitcast i64* %offset to i8*
  %call34 = call i32 @cudaMemcpy(i8* %22, i8* %23, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %24 = load i8*, i8** %7, align 8, !tbaa !7
  %25 = bitcast i64* %lastKnode to i8*
  %call37 = call i32 @cudaMemcpy(i8* %24, i8* %25, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %26 = load i8*, i8** %9, align 8, !tbaa !7
  %27 = bitcast i64* %offset_2 to i8*
  %call40 = call i32 @cudaMemcpy(i8* %26, i8* %27, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %28 = load i8*, i8** %11, align 8, !tbaa !7
  %29 = bitcast i32* %start to i8*
  %call43 = call i32 @cudaMemcpy(i8* %28, i8* %29, i64 %mul16, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %30 = load i8*, i8** %13, align 8, !tbaa !7
  %31 = bitcast i32* %end to i8*
  %call46 = call i32 @cudaMemcpy(i8* %30, i8* %31, i64 %mul16, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %32 = load i8*, i8** %15, align 8, !tbaa !7
  %33 = bitcast i32* %recstart to i8*
  %call49 = call i32 @cudaMemcpy(i8* %32, i8* %33, i64 %mul16, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %34 = load i8*, i8** %17, align 8, !tbaa !7
  %35 = bitcast i32* %reclength to i8*
  %call52 = call i32 @cudaMemcpy(i8* %34, i8* %35, i64 %mul16, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %call53 = call i64 @_Z8get_timev()
  %36 = bitcast [11 x i8*]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %36) #5
  %arrayinit.begin = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 0
  %37 = bitcast [11 x i8*]* %args to i64**
  store i64* %maxheight.addr, i64** %37, align 16, !tbaa !7
  %arrayinit.element = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 1
  %38 = bitcast i8** %arrayinit.element to %struct.knode***
  store %struct.knode** %knodesD, %struct.knode*** %38, align 8, !tbaa !7
  %arrayinit.element54 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 2
  %39 = bitcast i8** %arrayinit.element54 to i64**
  store i64* %knodes_elem.addr, i64** %39, align 16, !tbaa !7
  %arrayinit.element55 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 3
  %40 = bitcast i8** %arrayinit.element55 to i64***
  store i64** %currKnodeD, i64*** %40, align 8, !tbaa !7
  %arrayinit.element56 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 4
  %41 = bitcast i8** %arrayinit.element56 to i64***
  store i64** %offsetD, i64*** %41, align 16, !tbaa !7
  %arrayinit.element57 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 5
  %42 = bitcast i8** %arrayinit.element57 to i64***
  store i64** %lastKnodeD, i64*** %42, align 8, !tbaa !7
  %arrayinit.element58 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 6
  %43 = bitcast i8** %arrayinit.element58 to i64***
  store i64** %offset_2D, i64*** %43, align 16, !tbaa !7
  %arrayinit.element59 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 7
  %44 = bitcast i8** %arrayinit.element59 to i32***
  store i32** %startD, i32*** %44, align 8, !tbaa !7
  %arrayinit.element60 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 8
  %45 = bitcast i8** %arrayinit.element60 to i32***
  store i32** %endD, i32*** %45, align 16, !tbaa !7
  %arrayinit.element61 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 9
  %46 = bitcast i8** %arrayinit.element61 to i32***
  store i32** %ansDStart, i32*** %46, align 8, !tbaa !7
  %arrayinit.element62 = getelementptr inbounds [11 x i8*], [11 x i8*]* %args, i64 0, i64 10
  %47 = bitcast i8** %arrayinit.element62 to i32***
  store i32** %ansDLength, i32*** %47, align 16, !tbaa !7
  %48 = bitcast void (i8*)* @_Z10findRangeKlP5knodelPlS1_S1_S1_PiS2_S2_S2__wrapper to i8*
  %call64 = call i32 @cudaLaunchKernel(i8* %48, i64 4294967552, i32 1, i64 4294967297, i32 1, i8** nonnull %arrayinit.begin, i64 0, %struct.CUstream_st* null)
  %call65 = call i32 @cudaDeviceSynchronize()
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %call66 = call i64 @_Z8get_timev()
  %49 = load i8*, i8** %15, align 8, !tbaa !7
  %call69 = call i32 @cudaMemcpy(i8* %33, i8* %49, i64 %mul16, i32 2)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %50 = load i8*, i8** %17, align 8, !tbaa !7
  %call72 = call i32 @cudaMemcpy(i8* %35, i8* %50, i64 %mul16, i32 2)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %call73 = call i64 @_Z8get_timev()
  %51 = load i8*, i8** %1, align 8, !tbaa !7
  %call74 = call i32 @cudaFree(i8* %51)
  %52 = load i8*, i8** %3, align 8, !tbaa !7
  %call75 = call i32 @cudaFree(i8* %52)
  %53 = load i8*, i8** %5, align 8, !tbaa !7
  %call76 = call i32 @cudaFree(i8* %53)
  %54 = load i8*, i8** %7, align 8, !tbaa !7
  %call77 = call i32 @cudaFree(i8* %54)
  %55 = load i8*, i8** %9, align 8, !tbaa !7
  %call78 = call i32 @cudaFree(i8* %55)
  %56 = load i8*, i8** %11, align 8, !tbaa !7
  %call79 = call i32 @cudaFree(i8* %56)
  %57 = load i8*, i8** %13, align 8, !tbaa !7
  %call80 = call i32 @cudaFree(i8* %57)
  %58 = load i8*, i8** %15, align 8, !tbaa !7
  %call81 = call i32 @cudaFree(i8* %58)
  %59 = load i8*, i8** %17, align 8, !tbaa !7
  %call82 = call i32 @cudaFree(i8* %59)
  %call83 = call i64 @_Z8get_timev()
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str, i64 0, i64 0))
  %sub = sub nsw i64 %call3, %call
  %conv85 = sitofp i64 %sub to float
  %div = fdiv float %conv85, 1.000000e+06
  %conv86 = fpext float %div to double
  %sub89 = sub nsw i64 %call83, %call
  %conv90 = sitofp i64 %sub89 to float
  %div91 = fdiv float %conv85, %conv90
  %mul92 = fmul float %div91, 1.000000e+02
  %conv93 = fpext float %mul92 to double
  %call94 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), double %conv86, double %conv93)
  %sub95 = sub nsw i64 %call27, %call3
  %conv96 = sitofp i64 %sub95 to float
  %div97 = fdiv float %conv96, 1.000000e+06
  %conv98 = fpext float %div97 to double
  %div103 = fdiv float %conv96, %conv90
  %mul104 = fmul float %div103, 1.000000e+02
  %conv105 = fpext float %mul104 to double
  %call106 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), double %conv98, double %conv105)
  %sub107 = sub nsw i64 %call53, %call27
  %conv108 = sitofp i64 %sub107 to float
  %div109 = fdiv float %conv108, 1.000000e+06
  %conv110 = fpext float %div109 to double
  %div115 = fdiv float %conv108, %conv90
  %mul116 = fmul float %div115, 1.000000e+02
  %conv117 = fpext float %mul116 to double
  %call118 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), double %conv110, double %conv117)
  %sub119 = sub nsw i64 %call66, %call53
  %conv120 = sitofp i64 %sub119 to float
  %div121 = fdiv float %conv120, 1.000000e+06
  %conv122 = fpext float %div121 to double
  %div127 = fdiv float %conv120, %conv90
  %mul128 = fmul float %div127, 1.000000e+02
  %conv129 = fpext float %mul128 to double
  %call130 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), double %conv122, double %conv129)
  %sub131 = sub nsw i64 %call73, %call66
  %conv132 = sitofp i64 %sub131 to float
  %div133 = fdiv float %conv132, 1.000000e+06
  %conv134 = fpext float %div133 to double
  %div139 = fdiv float %conv132, %conv90
  %mul140 = fmul float %div139, 1.000000e+02
  %conv141 = fpext float %mul140 to double
  %call142 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), double %conv134, double %conv141)
  %sub143 = sub nsw i64 %call83, %call73
  %conv144 = sitofp i64 %sub143 to float
  %div145 = fdiv float %conv144, 1.000000e+06
  %conv146 = fpext float %div145 to double
  %div151 = fdiv float %conv144, %conv90
  %mul152 = fmul float %div151, 1.000000e+02
  %conv153 = fpext float %mul152 to double
  %call154 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), double %conv146, double %conv153)
  %puts227 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.29, i64 0, i64 0))
  %div158 = fdiv float %conv90, 1.000000e+06
  %conv159 = fpext float %div158 to double
  %call160 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), double %conv159)
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %36) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @_Z8get_timev() local_unnamed_addr #2

declare i32 @cudaDeviceSynchronize() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

declare i32 @cudaMalloc(i8**, i64) local_unnamed_addr #2

declare void @_Z14checkCUDAErrorPKc(i8*) local_unnamed_addr #2

declare i32 @cudaMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #2

declare i32 @cudaLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.CUstream_st*) local_unnamed_addr #2

declare void @_Z10findRangeKlP5knodelPlS1_S1_S1_PiS2_S2_S2_(i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*) #2

declare i32 @cudaFree(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

declare dso_local void @_Z10findRangeKlP5knodelPlS1_S1_S1_PiS2_S2_S2__wrapper(i8*)

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
