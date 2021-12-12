; ModuleID = 'kernel_gpu_cuda_wrapper.bc'
source_filename = "./kernel/kernel_gpu_cuda_wrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }
%struct.CUstream_st = type opaque

@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cudaMalloc  recordsD\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cudaMalloc  currKnodeD\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"cudaMalloc  offsetD\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cudaMalloc  keysD\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"cudaMalloc ansD\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"cudaMalloc cudaMemcpy memD\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"cudaMalloc cudaMemcpy currKnodeD\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"cudaMalloc cudaMemcpy offsetD\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cudaMalloc cudaMemcpy keysD\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"cudaMalloc cudaMemcpy ansD\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"findK\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"cudaMemcpy ansD\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%15.12f s, %15.12f % : GPU: SET DEVICE / DRIVER INIT\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"%15.12f s, %15.12f % : GPU MEM: ALO\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : GPU MEM: COPY IN\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"%15.12f s, %15.12f % : GPU: KERNEL\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%15.12f s, %15.12f % : GPU MEM: COPY OUT\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%15.12f s, %15.12f % : GPU MEM: FRE\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@str = private unnamed_addr constant [51 x i8] c"Time spent in different stages of GPU_CUDA KERNEL:\00", align 1
@str.22 = private unnamed_addr constant [12 x i8] c"Total time:\00", align 1

; Function Attrs: uwtable
define void @_Z23kernel_gpu_cuda_wrapperP6recordlP5knodelliliPlS3_PiS0_(%struct.record* %records, i64 %records_mem, %struct.knode* %knodes, i64 %knodes_elem, i64 %knodes_mem, i32 %order, i64 %maxheight, i32 %count, i64* %currKnode, i64* %offset, i32* %keys, %struct.record* %ans) local_unnamed_addr #0 {
entry:
  %knodes_elem.addr = alloca i64, align 8
  %maxheight.addr = alloca i64, align 8
  %recordsD = alloca %struct.record*, align 8
  %knodesD = alloca %struct.knode*, align 8
  %currKnodeD = alloca i64*, align 8
  %offsetD = alloca i64*, align 8
  %keysD = alloca i32*, align 8
  %ansD = alloca %struct.record*, align 8
  %args = alloca [8 x i8*], align 16
  store i64 %knodes_elem, i64* %knodes_elem.addr, align 8, !tbaa !3
  store i64 %maxheight, i64* %maxheight.addr, align 8, !tbaa !3
  %call = tail call i64 @_Z8get_timev()
  %call1 = tail call i32 @cudaDeviceSynchronize()
  %cmp = icmp slt i32 %order, 1024
  %cond = select i1 %cmp, i32 %order, i32 1024
  %call2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %count, i32 %cond)
  %call3 = tail call i64 @_Z8get_timev()
  %0 = bitcast %struct.record** %recordsD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast %struct.record** %recordsD to i8**
  %call4 = call i32 @cudaMalloc(i8** nonnull %1, i64 %records_mem)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %2 = bitcast %struct.knode** %knodesD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast %struct.knode** %knodesD to i8**
  %call5 = call i32 @cudaMalloc(i8** nonnull %3, i64 %knodes_mem)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %4 = bitcast i64** %currKnodeD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast i64** %currKnodeD to i8**
  %conv = sext i32 %count to i64
  %mul = shl nsw i64 %conv, 3
  %call6 = call i32 @cudaMalloc(i8** nonnull %5, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %6 = bitcast i64** %offsetD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = bitcast i64** %offsetD to i8**
  %call9 = call i32 @cudaMalloc(i8** nonnull %7, i64 %mul)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %8 = bitcast i32** %keysD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5
  %9 = bitcast i32** %keysD to i8**
  %mul11 = shl nsw i64 %conv, 2
  %call12 = call i32 @cudaMalloc(i8** nonnull %9, i64 %mul11)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %10 = bitcast %struct.record** %ansD to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  %11 = bitcast %struct.record** %ansD to i8**
  %call15 = call i32 @cudaMalloc(i8** nonnull %11, i64 %mul11)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %call16 = call i64 @_Z8get_timev()
  %12 = load i8*, i8** %1, align 8, !tbaa !7
  %13 = bitcast %struct.record* %records to i8*
  %call17 = call i32 @cudaMemcpy(i8* %12, i8* %13, i64 %records_mem, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %14 = load i8*, i8** %3, align 8, !tbaa !7
  %15 = bitcast %struct.knode* %knodes to i8*
  %call18 = call i32 @cudaMemcpy(i8* %14, i8* %15, i64 %knodes_mem, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8, !tbaa !7
  %17 = bitcast i64* %currKnode to i8*
  %call21 = call i32 @cudaMemcpy(i8* %16, i8* %17, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i8*, i8** %7, align 8, !tbaa !7
  %19 = bitcast i64* %offset to i8*
  %call24 = call i32 @cudaMemcpy(i8* %18, i8* %19, i64 %mul, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i8*, i8** %9, align 8, !tbaa !7
  %21 = bitcast i32* %keys to i8*
  %call27 = call i32 @cudaMemcpy(i8* %20, i8* %21, i64 %mul11, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i8*, i8** %11, align 8, !tbaa !7
  %23 = bitcast %struct.record* %ans to i8*
  %call30 = call i32 @cudaMemcpy(i8* %22, i8* %23, i64 %mul11, i32 1)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %call31 = call i64 @_Z8get_timev()
  %24 = bitcast [8 x i8*]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %24) #5
  %arrayinit.begin = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 0
  %25 = bitcast [8 x i8*]* %args to i64**
  store i64* %maxheight.addr, i64** %25, align 16, !tbaa !7
  %arrayinit.element = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 1
  %26 = bitcast i8** %arrayinit.element to %struct.knode***
  store %struct.knode** %knodesD, %struct.knode*** %26, align 8, !tbaa !7
  %arrayinit.element32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 2
  %27 = bitcast i8** %arrayinit.element32 to i64**
  store i64* %knodes_elem.addr, i64** %27, align 16, !tbaa !7
  %arrayinit.element33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 3
  %28 = bitcast i8** %arrayinit.element33 to %struct.record***
  store %struct.record** %recordsD, %struct.record*** %28, align 8, !tbaa !7
  %arrayinit.element34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 4
  %29 = bitcast i8** %arrayinit.element34 to i64***
  store i64** %currKnodeD, i64*** %29, align 16, !tbaa !7
  %arrayinit.element35 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 5
  %30 = bitcast i8** %arrayinit.element35 to i64***
  store i64** %offsetD, i64*** %30, align 8, !tbaa !7
  %arrayinit.element36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 6
  %31 = bitcast i8** %arrayinit.element36 to i32***
  store i32** %keysD, i32*** %31, align 16, !tbaa !7
  %arrayinit.element37 = getelementptr inbounds [8 x i8*], [8 x i8*]* %args, i64 0, i64 7
  %32 = bitcast i8** %arrayinit.element37 to %struct.record***
  store %struct.record** %ansD, %struct.record*** %32, align 8, !tbaa !7
  %grid.sroa.0.sroa.0.0.insert.ext = zext i32 %count to i64
  %grid.sroa.0.sroa.0.0.insert.insert = or i64 %grid.sroa.0.sroa.0.0.insert.ext, 4294967296
  %block.sroa.0.sroa.0.0.insert.ext = zext i32 %cond to i64
  %block.sroa.0.sroa.0.0.insert.insert = or i64 %block.sroa.0.sroa.0.0.insert.ext, 4294967296
  %call39 = call i32 @cudaLaunchKernel(i8* bitcast (void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)* @_Z5findKlP5knodelP6recordPlS3_PiS2_ to i8*), i64 %grid.sroa.0.sroa.0.0.insert.insert, i32 1, i64 %block.sroa.0.sroa.0.0.insert.insert, i32 1, i8** nonnull %arrayinit.begin, i64 0, %struct.CUstream_st* null)
  %call40 = call i32 @cudaDeviceSynchronize()
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %call41 = call i64 @_Z8get_timev()
  %33 = load i8*, i8** %11, align 8, !tbaa !7
  %call44 = call i32 @cudaMemcpy(i8* %23, i8* %33, i64 %mul11, i32 2)
  call void @_Z14checkCUDAErrorPKc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %call45 = call i64 @_Z8get_timev()
  %34 = load i8*, i8** %1, align 8, !tbaa !7
  %call46 = call i32 @cudaFree(i8* %34)
  %35 = load i8*, i8** %3, align 8, !tbaa !7
  %call47 = call i32 @cudaFree(i8* %35)
  %36 = load i8*, i8** %5, align 8, !tbaa !7
  %call48 = call i32 @cudaFree(i8* %36)
  %37 = load i8*, i8** %7, align 8, !tbaa !7
  %call49 = call i32 @cudaFree(i8* %37)
  %38 = load i8*, i8** %9, align 8, !tbaa !7
  %call50 = call i32 @cudaFree(i8* %38)
  %39 = load i8*, i8** %11, align 8, !tbaa !7
  %call51 = call i32 @cudaFree(i8* %39)
  %call52 = call i64 @_Z8get_timev()
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str, i64 0, i64 0))
  %sub = sub nsw i64 %call3, %call
  %conv54 = sitofp i64 %sub to float
  %div = fdiv float %conv54, 1.000000e+06
  %conv55 = fpext float %div to double
  %sub58 = sub nsw i64 %call52, %call
  %conv59 = sitofp i64 %sub58 to float
  %div60 = fdiv float %conv54, %conv59
  %mul61 = fmul float %div60, 1.000000e+02
  %conv62 = fpext float %mul61 to double
  %call63 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), double %conv55, double %conv62)
  %sub64 = sub nsw i64 %call16, %call3
  %conv65 = sitofp i64 %sub64 to float
  %div66 = fdiv float %conv65, 1.000000e+06
  %conv67 = fpext float %div66 to double
  %div72 = fdiv float %conv65, %conv59
  %mul73 = fmul float %div72, 1.000000e+02
  %conv74 = fpext float %mul73 to double
  %call75 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), double %conv67, double %conv74)
  %sub76 = sub nsw i64 %call31, %call16
  %conv77 = sitofp i64 %sub76 to float
  %div78 = fdiv float %conv77, 1.000000e+06
  %conv79 = fpext float %div78 to double
  %div84 = fdiv float %conv77, %conv59
  %mul85 = fmul float %div84, 1.000000e+02
  %conv86 = fpext float %mul85 to double
  %call87 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), double %conv79, double %conv86)
  %sub88 = sub nsw i64 %call41, %call31
  %conv89 = sitofp i64 %sub88 to float
  %div90 = fdiv float %conv89, 1.000000e+06
  %conv91 = fpext float %div90 to double
  %div96 = fdiv float %conv89, %conv59
  %mul97 = fmul float %div96, 1.000000e+02
  %conv98 = fpext float %mul97 to double
  %call99 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), double %conv91, double %conv98)
  %sub100 = sub nsw i64 %call45, %call41
  %conv101 = sitofp i64 %sub100 to float
  %div102 = fdiv float %conv101, 1.000000e+06
  %conv103 = fpext float %div102 to double
  %div108 = fdiv float %conv101, %conv59
  %mul109 = fmul float %div108, 1.000000e+02
  %conv110 = fpext float %mul109 to double
  %call111 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), double %conv103, double %conv110)
  %sub112 = sub nsw i64 %call52, %call45
  %conv113 = sitofp i64 %sub112 to float
  %div114 = fdiv float %conv113, 1.000000e+06
  %conv115 = fpext float %div114 to double
  %div120 = fdiv float %conv113, %conv59
  %mul121 = fmul float %div120, 1.000000e+02
  %conv122 = fpext float %mul121 to double
  %call123 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), double %conv115, double %conv122)
  %puts189 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.22, i64 0, i64 0))
  %div127 = fdiv float %conv59, 1.000000e+06
  %conv128 = fpext float %div127 to double
  %call129 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), double %conv128)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %24) #5
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

declare void @_Z5findKlP5knodelP6recordPlS3_PiS2_(i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*) #2

declare i32 @cudaFree(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

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
