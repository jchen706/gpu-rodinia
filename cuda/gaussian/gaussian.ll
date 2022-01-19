; ModuleID = 'gaussian.bc'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.cudaDeviceProp = type { [256 x i8], %struct.CUuuid_st, [8 x i8], i32, i64, i64, i32, i32, i64, i32, [3 x i32], [3 x i32], i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [2 x i32], [3 x i32], [3 x i32], i32, [2 x i32], [3 x i32], [2 x i32], i32, [2 x i32], [3 x i32], [2 x i32], [3 x i32], i32, [2 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.CUuuid_st = type { [16 x i8] }
%struct.dim3 = type { i32, i32, i32 }
%struct.CUstream_st = type opaque

@Size = dso_local global i32 0, align 4
@a = dso_local local_unnamed_addr global float* null, align 8
@b = dso_local local_unnamed_addr global float* null, align 8
@finalVec = dso_local local_unnamed_addr global float* null, align 8
@m = dso_local local_unnamed_addr global float* null, align 8
@fp = dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8
@totalKernelTime = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WG size of kernel 1 = %d, WG size of kernel 2= %d X %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"The first line of the file contains the dimension of the matrix, n.\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"The next n lines contain n tab separated values for the matrix.\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Create matrix internally in parse, size = %d \0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Read file from %s \0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"\0ATime total (including memory transfers)\09%f sec\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Time for CUDA kernels:\09%f sec\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Total Device found: %d\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"\0ADevice Name \09\09 - %s \00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"\0A**************************************\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"\0ATotal Global Memory\09\09\09 - %lu KB\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"\0AShared memory available per block \09 - %lu KB\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"\0ANumber of registers per thread block \09 - %d\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"\0AWarp size in threads \09\09\09 - %d\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"\0AMemory Pitch \09\09\09\09 - %zu bytes\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\0AMaximum threads per block \09\09 - %d\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"\0AMaximum Thread Dimension (block) \09 - %d %d %d\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"\0AMaximum Thread Dimension (grid) \09 - %d %d %d\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"\0ATotal constant memory \09\09\09 - %zu bytes\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0ACUDA ver \09\09\09\09 - %d.%d\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"\0AClock rate \09\09\09\09 - %d KHz\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"\0ATexture Alignment \09\09\09 - %zu bytes\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"\0ADevice Overlap \09\09\09\09 - %s\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"Allowed\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Not Allowed\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"\0ANumber of Multi processors \09\09 - %d\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Fan2\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"%8.2f \00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.56 = private unnamed_addr constant [21 x i8] c"Cuda error: %s: %s.\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"Usage: gaussian -f filename / -s size [-q]\0A\00", align 1
@str.57 = private unnamed_addr constant [61 x i8] c"-q (quiet) suppresses printing the matrix and result values.\00", align 1
@str.58 = private unnamed_addr constant [33 x i8] c"-f (filename) path of input file\00", align 1
@str.59 = private unnamed_addr constant [65 x i8] c"-s (size) size of matrix. Create matrix and rhs in this program \00", align 1
@str.60 = private unnamed_addr constant [42 x i8] c"The second line of the file is a newline.\00", align 1
@str.61 = private unnamed_addr constant [40 x i8] c"The next line of the file is a newline.\00", align 1
@str.62 = private unnamed_addr constant [69 x i8] c"The next line of the file is a 1xn vector with tab separated values.\00", align 1
@str.63 = private unnamed_addr constant [51 x i8] c"The next line of the file is a newline. (optional)\00", align 1
@str.64 = private unnamed_addr constant [68 x i8] c"The final line of the file is the pre-computed solution. (optional)\00", align 1
@str.65 = private unnamed_addr constant [22 x i8] c"Example: matrix4.txt:\00", align 1
@str.66 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@str.67 = private unnamed_addr constant [18 x i8] c"-0.6\09-0.5\090.7\090.3\00", align 1
@str.68 = private unnamed_addr constant [18 x i8] c"-0.3\09-0.9\090.3\090.7\00", align 1
@str.69 = private unnamed_addr constant [20 x i8] c"-0.4\09-0.5\09-0.3\09-0.8\00", align 1
@str.70 = private unnamed_addr constant [17 x i8] c"0.0\09-0.1\090.2\090.9\00", align 1
@str.71 = private unnamed_addr constant [23 x i8] c"-0.85\09-0.68\090.24\09-0.53\00", align 1
@str.72 = private unnamed_addr constant [18 x i8] c"0.7\090.0\09-0.4\09-0.5\00", align 1
@str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z13create_matrixPfi(float* nocapture %m, i32 %size) local_unnamed_addr #0 {
entry:
  %mul = shl i32 %size, 1
  %sub = add nsw i32 %mul, -1
  %0 = zext i32 %sub to i64
  %vla = alloca float, i64 %0, align 16
  %cmp59 = icmp sgt i32 %size, 0
  br i1 %cmp59, label %for.body.lr.ph, label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %sub3 = add nsw i32 %size, -1
  %1 = sext i32 %sub3 to i64
  %wide.trip.count69 = zext i32 %size to i64
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  br i1 %cmp59, label %for.cond11.preheader.us.preheader, label %for.end28

for.cond11.preheader.us.preheader:                ; preds = %for.cond8.preheader
  %2 = zext i32 %size to i64
  %3 = zext i32 %size to i64
  %4 = shl nuw nsw i64 %3, 2
  %xtraiter = and i64 %3, 1
  %5 = icmp eq i32 %size, 1
  br i1 %5, label %for.end28.loopexit.unr-lcssa, label %for.cond11.preheader.us.preheader.new

for.cond11.preheader.us.preheader.new:            ; preds = %for.cond11.preheader.us.preheader
  %unroll_iter = sub nsw i64 %3, %xtraiter
  br label %for.cond11.preheader.us

for.cond11.preheader.us:                          ; preds = %for.cond11.preheader.us, %for.cond11.preheader.us.preheader.new
  %indvar = phi i64 [ 0, %for.cond11.preheader.us.preheader.new ], [ %indvar.next.1, %for.cond11.preheader.us ]
  %niter = phi i64 [ %unroll_iter, %for.cond11.preheader.us.preheader.new ], [ %niter.nsub.1, %for.cond11.preheader.us ]
  %6 = mul nsw i64 %indvar, %2
  %scevgep = getelementptr float, float* %m, i64 %6
  %scevgep63 = bitcast float* %scevgep to i8*
  %7 = trunc i64 %indvar to i32
  %8 = xor i32 %7, -1
  %9 = add i32 %8, %size
  %10 = sext i32 %9 to i64
  %scevgep64 = getelementptr float, float* %vla, i64 %10
  %scevgep6465 = bitcast float* %scevgep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %scevgep63, i8* align 4 %scevgep6465, i64 %4, i1 false)
  %indvar.next = or i64 %indvar, 1
  %11 = mul nsw i64 %indvar.next, %2
  %scevgep.1 = getelementptr float, float* %m, i64 %11
  %scevgep63.1 = bitcast float* %scevgep.1 to i8*
  %12 = trunc i64 %indvar.next to i32
  %13 = xor i32 %12, -1
  %14 = add i32 %13, %size
  %15 = sext i32 %14 to i64
  %scevgep64.1 = getelementptr float, float* %vla, i64 %15
  %scevgep6465.1 = bitcast float* %scevgep64.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %scevgep63.1, i8* align 4 %scevgep6465.1, i64 %4, i1 false)
  %indvar.next.1 = add nuw nsw i64 %indvar, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end28.loopexit.unr-lcssa, label %for.cond11.preheader.us

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %16 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %16 to float
  %mul1 = fmul contract float %conv, 0xBF847AE140000000
  %call.i = tail call float @expf(float %mul1) #10
  %mul2 = fmul contract float %call.i, 1.000000e+01
  %17 = add nsw i64 %indvars.iv, %1
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %17
  store float %mul2, float* %arrayidx, align 4, !tbaa !3
  %18 = sub nsw i64 %1, %indvars.iv
  %arrayidx7 = getelementptr inbounds float, float* %vla, i64 %18
  store float %mul2, float* %arrayidx7, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond70 = icmp eq i64 %indvars.iv.next, %wide.trip.count69
  br i1 %exitcond70, label %for.cond8.preheader, label %for.body

for.end28.loopexit.unr-lcssa:                     ; preds = %for.cond11.preheader.us, %for.cond11.preheader.us.preheader
  %indvar.unr = phi i64 [ 0, %for.cond11.preheader.us.preheader ], [ %indvar.next.1, %for.cond11.preheader.us ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end28, label %for.cond11.preheader.us.epil

for.cond11.preheader.us.epil:                     ; preds = %for.end28.loopexit.unr-lcssa
  %19 = mul nsw i64 %indvar.unr, %2
  %scevgep.epil = getelementptr float, float* %m, i64 %19
  %scevgep63.epil = bitcast float* %scevgep.epil to i8*
  %20 = trunc i64 %indvar.unr to i32
  %21 = xor i32 %20, -1
  %22 = add i32 %21, %size
  %23 = sext i32 %22 to i64
  %scevgep64.epil = getelementptr float, float* %vla, i64 %23
  %scevgep6465.epil = bitcast float* %scevgep64.epil to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %scevgep63.epil, i8* align 4 %scevgep6465.epil, i64 %4, i1 false)
  br label %for.end28

for.end28:                                        ; preds = %for.cond11.preheader.us.epil, %for.end28.loopexit.unr-lcssa, %entry, %for.cond8.preheader
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #2 {
entry:
  %time_start = alloca %struct.timeval, align 8
  %time_end = alloca %struct.timeval, align 8
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 512, i32 4, i32 4)
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %for.body.preheader

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0))
  %puts106 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.57, i64 0, i64 0))
  %puts107 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.58, i64 0, i64 0))
  %puts108 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([65 x i8], [65 x i8]* @str.59, i64 0, i64 0))
  %call5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %puts109 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.60, i64 0, i64 0))
  %call7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %puts110 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.61, i64 0, i64 0))
  %puts111 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @str.62, i64 0, i64 0))
  %puts112 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.63, i64 0, i64 0))
  %puts113 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @str.64, i64 0, i64 0))
  %puts114 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.65, i64 0, i64 0))
  %puts115 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.66, i64 0, i64 0))
  %putchar = tail call i32 @putchar(i32 10)
  %puts116 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.67, i64 0, i64 0))
  %puts117 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.68, i64 0, i64 0))
  %puts118 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.69, i64 0, i64 0))
  %puts119 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.70, i64 0, i64 0))
  %putchar120 = tail call i32 @putchar(i32 10)
  %puts121 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.71, i64 0, i64 0))
  %putchar122 = tail call i32 @putchar(i32 10)
  %puts123 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.72, i64 0, i64 0))
  tail call void @exit(i32 0) #11
  unreachable

for.body.preheader:                               ; preds = %entry
  tail call void @_Z21PrintDevicePropertiesv()
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc60
  %i.0130 = phi i32 [ %inc61, %for.inc60 ], [ 1, %for.body.preheader ]
  %idxprom = sext i32 %i.0130 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !7
  %1 = load i8, i8* %0, align 1, !tbaa !9
  %cmp25 = icmp eq i8 %1, 45
  br i1 %cmp25, label %if.then26, label %for.inc60

if.then26:                                        ; preds = %for.body
  %arrayidx29 = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx29, align 1, !tbaa !9
  %conv30 = sext i8 %2 to i32
  switch i32 %conv30, label %for.inc60 [
    i32 115, label %sw.bb
    i32 102, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.then26
  %inc = add nsw i32 %i.0130, 1
  %idxprom31 = sext i32 %inc to i64
  %arrayidx32 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom31
  %3 = load i8*, i8** %arrayidx32, align 8, !tbaa !7
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %3, i8** null, i32 10) #10
  %conv.i = trunc i64 %call.i to i32
  store i32 %conv.i, i32* @Size, align 4, !tbaa !10
  %call34 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 %conv.i)
  %4 = load i32, i32* @Size, align 4, !tbaa !10
  %mul = mul nsw i32 %4, %4
  %conv35 = zext i32 %mul to i64
  %mul36 = shl nuw nsw i64 %conv35, 2
  %call37 = tail call noalias i8* @malloc(i64 %mul36) #10
  %5 = bitcast i8* %call37 to float*
  store i8* %call37, i8** bitcast (float** @a to i8**), align 8, !tbaa !7
  tail call void @_Z13create_matrixPfi(float* %5, i32 %4)
  %6 = load i32, i32* @Size, align 4, !tbaa !10
  %conv38 = sext i32 %6 to i64
  %mul39 = shl nsw i64 %conv38, 2
  %call40 = tail call noalias i8* @malloc(i64 %mul39) #10
  store i8* %call40, i8** bitcast (float** @b to i8**), align 8, !tbaa !7
  %cmp42127 = icmp sgt i32 %6, 0
  %7 = bitcast i8* %call40 to float*
  br i1 %cmp42127, label %for.body43.lr.ph, label %for.end

for.body43.lr.ph:                                 ; preds = %sw.bb
  %wide.trip.count = zext i32 %6 to i64
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %for.body43.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body43.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288
  %8 = add nsw i64 %n.vec, -8
  %9 = lshr exact i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %xtraiter132 = and i64 %10, 7
  %11 = icmp ult i64 %8, 56
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter134 = sub nsw i64 %10, %xtraiter132
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter135 = phi i64 [ %unroll_iter134, %vector.ph.new ], [ %niter135.nsub.7, %vector.body ]
  %12 = getelementptr inbounds float, float* %7, i64 %index
  %13 = bitcast float* %12 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %13, align 4, !tbaa !3
  %14 = getelementptr inbounds float, float* %12, i64 4
  %15 = bitcast float* %14 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %15, align 4, !tbaa !3
  %index.next = or i64 %index, 8
  %16 = getelementptr inbounds float, float* %7, i64 %index.next
  %17 = bitcast float* %16 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %17, align 4, !tbaa !3
  %18 = getelementptr inbounds float, float* %16, i64 4
  %19 = bitcast float* %18 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %19, align 4, !tbaa !3
  %index.next.1 = or i64 %index, 16
  %20 = getelementptr inbounds float, float* %7, i64 %index.next.1
  %21 = bitcast float* %20 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %21, align 4, !tbaa !3
  %22 = getelementptr inbounds float, float* %20, i64 4
  %23 = bitcast float* %22 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %23, align 4, !tbaa !3
  %index.next.2 = or i64 %index, 24
  %24 = getelementptr inbounds float, float* %7, i64 %index.next.2
  %25 = bitcast float* %24 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %25, align 4, !tbaa !3
  %26 = getelementptr inbounds float, float* %24, i64 4
  %27 = bitcast float* %26 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %27, align 4, !tbaa !3
  %index.next.3 = or i64 %index, 32
  %28 = getelementptr inbounds float, float* %7, i64 %index.next.3
  %29 = bitcast float* %28 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %29, align 4, !tbaa !3
  %30 = getelementptr inbounds float, float* %28, i64 4
  %31 = bitcast float* %30 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %31, align 4, !tbaa !3
  %index.next.4 = or i64 %index, 40
  %32 = getelementptr inbounds float, float* %7, i64 %index.next.4
  %33 = bitcast float* %32 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %33, align 4, !tbaa !3
  %34 = getelementptr inbounds float, float* %32, i64 4
  %35 = bitcast float* %34 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %35, align 4, !tbaa !3
  %index.next.5 = or i64 %index, 48
  %36 = getelementptr inbounds float, float* %7, i64 %index.next.5
  %37 = bitcast float* %36 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %37, align 4, !tbaa !3
  %38 = getelementptr inbounds float, float* %36, i64 4
  %39 = bitcast float* %38 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %39, align 4, !tbaa !3
  %index.next.6 = or i64 %index, 56
  %40 = getelementptr inbounds float, float* %7, i64 %index.next.6
  %41 = bitcast float* %40 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %41, align 4, !tbaa !3
  %42 = getelementptr inbounds float, float* %40, i64 4
  %43 = bitcast float* %42 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %43, align 4, !tbaa !3
  %index.next.7 = add i64 %index, 64
  %niter135.nsub.7 = add i64 %niter135, -8
  %niter135.ncmp.7 = icmp eq i64 %niter135.nsub.7, 0
  br i1 %niter135.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !12

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod133 = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter132, %middle.block.unr-lcssa ]
  %44 = getelementptr inbounds float, float* %7, i64 %index.epil
  %45 = bitcast float* %44 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %45, align 4, !tbaa !3
  %46 = getelementptr inbounds float, float* %44, i64 4
  %47 = bitcast float* %46 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %47, align 4, !tbaa !3
  %index.next.epil = add i64 %index.epil, 8
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !llvm.loop !14

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body43.preheader

for.body43.preheader:                             ; preds = %middle.block, %for.body43.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for.body43.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body43

for.body43:                                       ; preds = %for.body43.preheader, %for.body43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body43 ], [ %indvars.iv.ph, %for.body43.preheader ]
  %arrayidx45 = getelementptr inbounds float, float* %7, i64 %indvars.iv
  store float 1.000000e+00, float* %arrayidx45, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body43, !llvm.loop !16

for.end:                                          ; preds = %for.body43, %middle.block, %sw.bb
  %mul47 = mul nsw i32 %6, %6
  %conv48 = zext i32 %mul47 to i64
  %mul49 = shl nuw nsw i64 %conv48, 2
  %call50 = tail call noalias i8* @malloc(i64 %mul49) #10
  store i8* %call50, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  br label %for.inc60

sw.bb51:                                          ; preds = %if.then26
  %inc52 = add nsw i32 %i.0130, 1
  %idxprom53 = sext i32 %inc52 to i64
  %arrayidx54 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom53
  %48 = load i8*, i8** %arrayidx54, align 8, !tbaa !7
  %call55 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %48)
  %49 = load i8*, i8** %arrayidx54, align 8, !tbaa !7
  tail call void @_Z15InitProblemOncePc(i8* %49)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body, %if.then26, %sw.bb51, %for.end
  %i.1 = phi i32 [ %inc52, %sw.bb51 ], [ %inc, %for.end ], [ %i.0130, %for.body ], [ %i.0130, %if.then26 ]
  %inc61 = add nsw i32 %i.1, 1
  %cmp23 = icmp slt i32 %inc61, %argc
  br i1 %cmp23, label %for.body, label %for.end62

for.end62:                                        ; preds = %for.inc60
  %50 = load i32, i32* @Size, align 4, !tbaa !10
  %mul4.i = mul i32 %50, %50
  %cmp5.i = icmp eq i32 %mul4.i, 0
  br i1 %cmp5.i, label %_Z10InitPerRunv.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.end62
  %51 = load i8*, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  %52 = zext i32 %mul4.i to i64
  %53 = shl nuw nsw i64 %52, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 %53, i1 false) #10
  br label %_Z10InitPerRunv.exit

_Z10InitPerRunv.exit:                             ; preds = %for.end62, %for.body.lr.ph.i
  %54 = bitcast %struct.timeval* %time_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #10
  %call63 = call i32 @gettimeofday(%struct.timeval* nonnull %time_start, %struct.timezone* null) #10
  tail call void @_Z10ForwardSubv()
  %55 = bitcast %struct.timeval* %time_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %55) #10
  %call64 = call i32 @gettimeofday(%struct.timeval* nonnull %time_end, %struct.timezone* null) #10
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_end, i64 0, i32 0
  %56 = load i64, i64* %tv_sec, align 8, !tbaa !18
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_end, i64 0, i32 1
  %57 = load i64, i64* %tv_usec, align 8, !tbaa !21
  %tv_sec66 = getelementptr inbounds %struct.timeval, %struct.timeval* %time_start, i64 0, i32 0
  %58 = load i64, i64* %tv_sec66, align 8, !tbaa !18
  %tv_usec68 = getelementptr inbounds %struct.timeval, %struct.timeval* %time_start, i64 0, i32 1
  %59 = load i64, i64* %tv_usec68, align 8, !tbaa !21
  %reass.add = sub i64 %56, %58
  %reass.mul = mul i64 %reass.add, 1000000
  %add = sub i64 %57, %59
  %sub = add i64 %add, %reass.mul
  %conv70 = trunc i64 %sub to i32
  %60 = load i32, i32* @Size, align 4, !tbaa !10
  %conv.i124 = sext i32 %60 to i64
  %mul.i = shl nsw i64 %conv.i124, 2
  %call.i125 = tail call noalias i8* @malloc(i64 %mul.i) #10
  store i8* %call.i125, i8** bitcast (float** @finalVec to i8**), align 8, !tbaa !7
  %cmp63.i = icmp sgt i32 %60, 0
  %61 = bitcast i8* %call.i125 to float*
  br i1 %cmp63.i, label %for.body.lr.ph.i126, label %_Z7BackSubv.exit

for.body.lr.ph.i126:                              ; preds = %_Z10InitPerRunv.exit
  %62 = load float*, float** @b, align 8, !tbaa !7
  %63 = load float*, float** @a, align 8
  %wide.trip.count68.i = zext i32 %60 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i, %for.body.lr.ph.i126
  %indvars.iv66.i = phi i64 [ 0, %for.body.lr.ph.i126 ], [ %indvars.iv.next67.i, %for.end.i ]
  %64 = trunc i64 %indvars.iv66.i to i32
  %65 = xor i32 %64, -1
  %sub1.i = add i32 %60, %65
  %idxprom.i = sext i32 %sub1.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %62, i64 %idxprom.i
  %66 = bitcast float* %arrayidx.i to i32*
  %67 = load i32, i32* %66, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds float, float* %61, i64 %idxprom.i
  %68 = bitcast float* %arrayidx5.i to i32*
  store i32 %67, i32* %68, align 4, !tbaa !3
  %cmp761.i = icmp eq i64 %indvars.iv66.i, 0
  %69 = bitcast i32 %67 to float
  %.pre.i = mul nsw i32 %sub1.i, %60
  %.pre70.i = sext i32 %.pre.i to i64
  br i1 %cmp761.i, label %for.end.i, label %for.body8.lr.ph.i

for.body8.lr.ph.i:                                ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds float, float* %63, i64 %.pre70.i
  %xtraiter = and i64 %indvars.iv66.i, 1
  %70 = icmp eq i64 %indvars.iv66.i, 1
  br i1 %70, label %for.end.i.loopexit.unr-lcssa, label %for.body8.lr.ph.i.new

for.body8.lr.ph.i.new:                            ; preds = %for.body8.lr.ph.i
  %unroll_iter = sub nsw i64 %indvars.iv66.i, %xtraiter
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body8.lr.ph.i.new
  %71 = phi float [ %69, %for.body8.lr.ph.i.new ], [ %sub25.i.1, %for.body8.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body8.lr.ph.i.new ], [ %indvars.iv.next.i.1, %for.body8.i ]
  %niter = phi i64 [ %unroll_iter, %for.body8.lr.ph.i.new ], [ %niter.nsub.1, %for.body8.i ]
  %72 = trunc i64 %indvars.iv.i to i32
  %73 = xor i32 %72, -1
  %sub13.i = add i32 %60, %73
  %idx.ext14.i = sext i32 %sub13.i to i64
  %add.ptr15.i = getelementptr inbounds float, float* %add.ptr.i, i64 %idx.ext14.i
  %74 = load float, float* %add.ptr15.i, align 4, !tbaa !3
  %arrayidx19.i = getelementptr inbounds float, float* %61, i64 %idx.ext14.i
  %75 = load float, float* %arrayidx19.i, align 4, !tbaa !3
  %mul20.i = fmul contract float %74, %75
  %sub25.i = fsub contract float %71, %mul20.i
  store float %sub25.i, float* %arrayidx5.i, align 4, !tbaa !3
  %76 = trunc i64 %indvars.iv.i to i32
  %77 = xor i32 %76, -2
  %sub13.i.1 = add i32 %60, %77
  %idx.ext14.i.1 = sext i32 %sub13.i.1 to i64
  %add.ptr15.i.1 = getelementptr inbounds float, float* %add.ptr.i, i64 %idx.ext14.i.1
  %78 = load float, float* %add.ptr15.i.1, align 4, !tbaa !3
  %arrayidx19.i.1 = getelementptr inbounds float, float* %61, i64 %idx.ext14.i.1
  %79 = load float, float* %arrayidx19.i.1, align 4, !tbaa !3
  %mul20.i.1 = fmul contract float %78, %79
  %sub25.i.1 = fsub contract float %sub25.i, %mul20.i.1
  store float %sub25.i.1, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.i.loopexit.unr-lcssa, label %for.body8.i

for.end.i.loopexit.unr-lcssa:                     ; preds = %for.body8.i, %for.body8.lr.ph.i
  %sub25.i.lcssa.ph = phi float [ undef, %for.body8.lr.ph.i ], [ %sub25.i.1, %for.body8.i ]
  %.unr = phi float [ %69, %for.body8.lr.ph.i ], [ %sub25.i.1, %for.body8.i ]
  %indvars.iv.i.unr = phi i64 [ 0, %for.body8.lr.ph.i ], [ %indvars.iv.next.i.1, %for.body8.i ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end.i, label %for.body8.i.epil

for.body8.i.epil:                                 ; preds = %for.end.i.loopexit.unr-lcssa
  %80 = trunc i64 %indvars.iv.i.unr to i32
  %81 = xor i32 %80, -1
  %sub13.i.epil = add i32 %60, %81
  %idx.ext14.i.epil = sext i32 %sub13.i.epil to i64
  %add.ptr15.i.epil = getelementptr inbounds float, float* %add.ptr.i, i64 %idx.ext14.i.epil
  %82 = load float, float* %add.ptr15.i.epil, align 4, !tbaa !3
  %arrayidx19.i.epil = getelementptr inbounds float, float* %61, i64 %idx.ext14.i.epil
  %83 = load float, float* %arrayidx19.i.epil, align 4, !tbaa !3
  %mul20.i.epil = fmul contract float %82, %83
  %sub25.i.epil = fsub contract float %.unr, %mul20.i.epil
  store float %sub25.i.epil, float* %arrayidx5.i, align 4, !tbaa !3
  br label %for.end.i

for.end.i:                                        ; preds = %for.body8.i.epil, %for.end.i.loopexit.unr-lcssa, %for.body.i
  %84 = phi float [ %69, %for.body.i ], [ %sub25.i.lcssa.ph, %for.end.i.loopexit.unr-lcssa ], [ %sub25.i.epil, %for.body8.i.epil ]
  %add.ptr34.i = getelementptr inbounds float, float* %63, i64 %.pre70.i
  %add.ptr38.i = getelementptr inbounds float, float* %add.ptr34.i, i64 %idxprom.i
  %85 = load float, float* %add.ptr38.i, align 4, !tbaa !3
  %div.i = fdiv float %84, %85
  store float %div.i, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1
  %exitcond69.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count68.i
  br i1 %exitcond69.i, label %_Z7BackSubv.exit, label %for.body.i

_Z7BackSubv.exit:                                 ; preds = %for.end.i, %_Z10InitPerRunv.exit
  %conv80 = uitofp i32 %conv70 to double
  %mul81 = fmul contract double %conv80, 0x3EB0C6F7A0B5ED8D
  %call82 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0), double %mul81)
  %86 = load i32, i32* @totalKernelTime, align 4, !tbaa !10
  %conv83 = uitofp i32 %86 to double
  %mul84 = fmul contract double %conv83, 0x3EB0C6F7A0B5ED8D
  %call85 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), double %mul84)
  %87 = load i8*, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  tail call void @free(i8* %87) #10
  %88 = load i8*, i8** bitcast (float** @a to i8**), align 8, !tbaa !7
  tail call void @free(i8* %88) #10
  %89 = load i8*, i8** bitcast (float** @b to i8**), align 8, !tbaa !7
  tail call void @free(i8* %89) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %55) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #10
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_Z21PrintDevicePropertiesv() local_unnamed_addr #5 {
entry:
  %deviceProp = alloca %struct.cudaDeviceProp, align 8
  %nDevCount = alloca i32, align 4
  %0 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 712, i8* nonnull %0) #10
  %1 = bitcast i32* %nDevCount to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %nDevCount, align 4, !tbaa !10
  %call = call i32 @cudaGetDeviceCount(i32* nonnull %nDevCount)
  %2 = load i32, i32* %nDevCount, align 4, !tbaa !10
  %call1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* %nDevCount, align 4, !tbaa !10
  %cmp36 = icmp sgt i32 %3, 0
  br i1 %cmp36, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %totalGlobalMem = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 4
  %sharedMemPerBlock = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 5
  %regsPerBlock = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 6
  %warpSize = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 7
  %memPitch = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 8
  %maxThreadsPerBlock = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 9
  %arrayidx = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 10, i64 0
  %arrayidx14 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 10, i64 1
  %arrayidx16 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 10, i64 2
  %arrayidx18 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 11, i64 0
  %arrayidx20 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 11, i64 1
  %arrayidx22 = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 11, i64 2
  %totalConstMem = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 13
  %major = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 14
  %minor = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 15
  %clockRate = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 12
  %textureAlignment = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 16
  %deviceOverlap = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 18
  %multiProcessorCount = getelementptr inbounds %struct.cudaDeviceProp, %struct.cudaDeviceProp* %deviceProp, i64 0, i32 19
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 712, i8* nonnull %0) #10
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %nDeviceIdx.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(712) %0, i8 0, i64 712, i1 false)
  %call2 = call i32 @cudaGetDeviceProperties(%struct.cudaDeviceProp* nonnull %deviceProp, i32 %nDeviceIdx.037)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* nonnull %0)
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0))
  %4 = load i64, i64* %totalGlobalMem, align 8, !tbaa !22
  %div = lshr i64 %4, 10
  %call6 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i64 %div)
  %5 = load i64, i64* %sharedMemPerBlock, align 8, !tbaa !25
  %div7 = lshr i64 %5, 10
  %call8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i64 %div7)
  %6 = load i32, i32* %regsPerBlock, align 8, !tbaa !26
  %call9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i32 %6)
  %7 = load i32, i32* %warpSize, align 4, !tbaa !27
  %call10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %7)
  %8 = load i64, i64* %memPitch, align 8, !tbaa !28
  %call11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i64 %8)
  %9 = load i32, i32* %maxThreadsPerBlock, align 8, !tbaa !29
  %call12 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i64 0, i64 0), i32 %9)
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %11 = load i32, i32* %arrayidx14, align 4, !tbaa !10
  %12 = load i32, i32* %arrayidx16, align 4, !tbaa !10
  %call17 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %13 = load i32, i32* %arrayidx18, align 8, !tbaa !10
  %14 = load i32, i32* %arrayidx20, align 4, !tbaa !10
  %15 = load i32, i32* %arrayidx22, align 8, !tbaa !10
  %call23 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %16 = load i64, i64* %totalConstMem, align 8, !tbaa !30
  %call24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i64 %16)
  %17 = load i32, i32* %major, align 8, !tbaa !31
  %18 = load i32, i32* %minor, align 4, !tbaa !32
  %call25 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 %17, i32 %18)
  %19 = load i32, i32* %clockRate, align 4, !tbaa !33
  %call26 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i32 %19)
  %20 = load i64, i64* %textureAlignment, align 8, !tbaa !34
  %call27 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i64 %20)
  %21 = load i32, i32* %deviceOverlap, align 8, !tbaa !35
  %tobool = icmp eq i32 %21, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0)
  %call28 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* %cond)
  %22 = load i32, i32* %multiProcessorCount, align 4, !tbaa !36
  %call29 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0), i32 %22)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call30 = call i32 @cudaGetLastError()
  %call31 = call i8* @cudaGetErrorString(i32 %call30)
  %call32 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* %call31)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %nDeviceIdx.037, 1
  %23 = load i32, i32* %nDevCount, align 4, !tbaa !10
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z15InitProblemOncePc(i8* nocapture readonly %filename) local_unnamed_addr #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @fp, align 8, !tbaa !7
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i32* nonnull @Size)
  %0 = load i32, i32* @Size, align 4, !tbaa !10
  %mul = mul nsw i32 %0, %0
  %conv = zext i32 %mul to i64
  %mul2 = shl nuw nsw i64 %conv, 2
  %call3 = tail call noalias i8* @malloc(i64 %mul2) #10
  %1 = bitcast i8* %call3 to float*
  store i8* %call3, i8** bitcast (float** @a to i8**), align 8, !tbaa !7
  %cmp17.i = icmp sgt i32 %0, 0
  br i1 %cmp17.i, label %for.cond1.preheader.us.preheader.i, label %_Z7InitMatPfii.exit

for.cond1.preheader.us.preheader.i:               ; preds = %entry
  %wide.trip.count.i = zext i32 %0 to i64
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.inc6_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %i.018.us.i = phi i32 [ %inc7.us.i, %for.cond1.for.inc6_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.preheader.i ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body3.us.i ]
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !7
  %3 = load i32, i32* @Size, align 4, !tbaa !10
  %mul.us.i = mul nsw i32 %3, %i.018.us.i
  %idx.ext.us.i = sext i32 %mul.us.i to i64
  %add.ptr.us.i = getelementptr inbounds float, float* %1, i64 %idx.ext.us.i
  %add.ptr5.us.i = getelementptr inbounds float, float* %add.ptr.us.i, i64 %indvars.iv.i
  %call.us.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), float* %add.ptr5.us.i) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %for.cond1.for.inc6_crit_edge.us.i, label %for.body3.us.i

for.cond1.for.inc6_crit_edge.us.i:                ; preds = %for.body3.us.i
  %inc7.us.i = add nuw nsw i32 %i.018.us.i, 1
  %exitcond21.i = icmp eq i32 %inc7.us.i, %0
  br i1 %exitcond21.i, label %_Z7InitMatPfii.exit.loopexit, label %for.cond1.preheader.us.i

_Z7InitMatPfii.exit.loopexit:                     ; preds = %for.cond1.for.inc6_crit_edge.us.i
  %.pre = load i32, i32* @Size, align 4, !tbaa !10
  br label %_Z7InitMatPfii.exit

_Z7InitMatPfii.exit:                              ; preds = %_Z7InitMatPfii.exit.loopexit, %entry
  %4 = phi i32 [ %.pre, %_Z7InitMatPfii.exit.loopexit ], [ %0, %entry ]
  %conv4 = sext i32 %4 to i64
  %mul5 = shl nsw i64 %conv4, 2
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #10
  %5 = bitcast i8* %call6 to float*
  store i8* %call6, i8** bitcast (float** @b to i8**), align 8, !tbaa !7
  %cmp4.i = icmp sgt i32 %4, 0
  br i1 %cmp4.i, label %for.body.preheader.i, label %_Z7InitAryPfi.exit

for.body.preheader.i:                             ; preds = %_Z7InitMatPfii.exit
  %wide.trip.count.i11 = zext i32 %4 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i12 = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i13, %for.body.i ]
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !7
  %arrayidx.i = getelementptr inbounds float, float* %5, i64 %indvars.iv.i12
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), float* %arrayidx.i) #10
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1
  %exitcond.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i11
  br i1 %exitcond.i14, label %_Z7InitAryPfi.exit.loopexit, label %for.body.i

_Z7InitAryPfi.exit.loopexit:                      ; preds = %for.body.i
  %.pre15 = load i32, i32* @Size, align 4, !tbaa !10
  br label %_Z7InitAryPfi.exit

_Z7InitAryPfi.exit:                               ; preds = %_Z7InitAryPfi.exit.loopexit, %_Z7InitMatPfii.exit
  %7 = phi i32 [ %.pre15, %_Z7InitAryPfi.exit.loopexit ], [ %4, %_Z7InitMatPfii.exit ]
  %mul7 = mul nsw i32 %7, %7
  %conv8 = zext i32 %mul7 to i64
  %mul9 = shl nuw nsw i64 %conv8, 2
  %call10 = tail call noalias i8* @malloc(i64 %mul9) #10
  store i8* %call10, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @_Z10InitPerRunv() local_unnamed_addr #6 {
entry:
  %0 = load i32, i32* @Size, align 4, !tbaa !10
  %mul4 = mul i32 %0, %0
  %cmp5 = icmp eq i32 %mul4, 0
  br i1 %cmp5, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i8*, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  %2 = zext i32 %mul4 to i64
  %3 = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 %3, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_Z10ForwardSubv() local_unnamed_addr #5 {
entry:
  %m_cuda.addr.i97 = alloca float*, align 8
  %a_cuda.addr.i98 = alloca float*, align 8
  %b_cuda.addr.i = alloca float*, align 8
  %Size.addr.i99 = alloca i32, align 4
  %j1.addr.i = alloca i32, align 4
  %t.addr.i100 = alloca i32, align 4
  %grid_dim.i101 = alloca %struct.dim3, align 8
  %block_dim.i102 = alloca %struct.dim3, align 8
  %shmem_size.i103 = alloca i64, align 8
  %stream.i104 = alloca i8*, align 8
  %kernel_args3.i105 = alloca [6 x i8*], align 16
  %m_cuda.addr.i = alloca float*, align 8
  %a_cuda.addr.i = alloca float*, align 8
  %Size.addr.i = alloca i32, align 4
  %t.addr.i = alloca i32, align 4
  %grid_dim.i = alloca %struct.dim3, align 8
  %block_dim.i = alloca %struct.dim3, align 8
  %shmem_size.i = alloca i64, align 8
  %stream.i = alloca i8*, align 8
  %kernel_args3.i = alloca [4 x i8*], align 16
  %m_cuda = alloca float*, align 8
  %a_cuda = alloca float*, align 8
  %b_cuda = alloca float*, align 8
  %time_start = alloca %struct.timeval, align 8
  %time_end = alloca %struct.timeval, align 8
  %0 = bitcast float** %m_cuda to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast float** %a_cuda to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = bitcast float** %b_cuda to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = bitcast float** %m_cuda to i8**
  %4 = load i32, i32* @Size, align 4, !tbaa !10
  %mul = mul nsw i32 %4, %4
  %conv = zext i32 %mul to i64
  %mul1 = shl nuw nsw i64 %conv, 2
  %call = call i32 @cudaMalloc(i8** nonnull %3, i64 %mul1)
  %5 = bitcast float** %a_cuda to i8**
  %6 = load i32, i32* @Size, align 4, !tbaa !10
  %mul2 = mul nsw i32 %6, %6
  %conv3 = zext i32 %mul2 to i64
  %mul4 = shl nuw nsw i64 %conv3, 2
  %call5 = call i32 @cudaMalloc(i8** nonnull %5, i64 %mul4)
  %7 = bitcast float** %b_cuda to i8**
  %8 = load i32, i32* @Size, align 4, !tbaa !10
  %conv6 = sext i32 %8 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call8 = call i32 @cudaMalloc(i8** nonnull %7, i64 %mul7)
  %9 = load i8*, i8** %3, align 8, !tbaa !7
  %10 = load i8*, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  %11 = load i32, i32* @Size, align 4, !tbaa !10
  %mul9 = mul nsw i32 %11, %11
  %conv10 = zext i32 %mul9 to i64
  %mul11 = shl nuw nsw i64 %conv10, 2
  %call12 = call i32 @cudaMemcpy(i8* %9, i8* %10, i64 %mul11, i32 1)
  %12 = load i8*, i8** %5, align 8, !tbaa !7
  %13 = load i8*, i8** bitcast (float** @a to i8**), align 8, !tbaa !7
  %14 = load i32, i32* @Size, align 4, !tbaa !10
  %mul13 = mul nsw i32 %14, %14
  %conv14 = zext i32 %mul13 to i64
  %mul15 = shl nuw nsw i64 %conv14, 2
  %call16 = call i32 @cudaMemcpy(i8* %12, i8* %13, i64 %mul15, i32 1)
  %15 = load i8*, i8** %7, align 8, !tbaa !7
  %16 = load i8*, i8** bitcast (float** @b to i8**), align 8, !tbaa !7
  %17 = load i32, i32* @Size, align 4, !tbaa !10
  %conv17 = sext i32 %17 to i64
  %mul18 = shl nsw i64 %conv17, 2
  %call19 = call i32 @cudaMemcpy(i8* %15, i8* %16, i64 %mul18, i32 1)
  %18 = load i32, i32* @Size, align 4, !tbaa !10
  %19 = bitcast %struct.timeval* %time_start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #10
  %call28 = call i32 @gettimeofday(%struct.timeval* nonnull %time_start, %struct.timezone* null) #10
  %20 = load i32, i32* @Size, align 4, !tbaa !10
  %cmp133 = icmp sgt i32 %20, 1
  br i1 %cmp133, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %21 = and i32 %18, 3
  %tobool22 = icmp ne i32 %21, 0
  %conv26 = zext i1 %tobool22 to i32
  %div20 = sdiv i32 %18, 4
  %add27 = add nsw i32 %div20, %conv26
  %22 = and i32 %18, 511
  %tobool = icmp ne i32 %22, 0
  %cond = zext i1 %tobool to i32
  %div = sdiv i32 %18, 512
  %add = add nsw i32 %div, %cond
  %dimGrid.sroa.0.sroa.0.0.insert.ext = zext i32 %add to i64
  %dimGrid.sroa.0.sroa.0.0.insert.insert = or i64 %dimGrid.sroa.0.sroa.0.0.insert.ext, 4294967296
  %23 = bitcast float** %m_cuda to i64*
  %24 = bitcast float** %a_cuda to i64*
  %25 = bitcast float** %m_cuda.addr.i to i8*
  %26 = bitcast float** %a_cuda.addr.i to i8*
  %27 = bitcast i32* %Size.addr.i to i8*
  %28 = bitcast i32* %t.addr.i to i8*
  %29 = bitcast %struct.dim3* %grid_dim.i to i8*
  %30 = bitcast %struct.dim3* %block_dim.i to i8*
  %31 = bitcast i64* %shmem_size.i to i8*
  %32 = bitcast i8** %stream.i to i8*
  %33 = bitcast [4 x i8*]* %kernel_args3.i to i8*
  %34 = bitcast float** %m_cuda.addr.i to i64*
  %35 = bitcast float** %a_cuda.addr.i to i64*
  %kernel_args3.sub.i = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3.i, i64 0, i64 0
  %36 = bitcast [4 x i8*]* %kernel_args3.i to float***
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3.i, i64 0, i64 1
  %38 = bitcast i8** %37 to float***
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3.i, i64 0, i64 2
  %40 = bitcast i8** %39 to i32**
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3.i, i64 0, i64 3
  %42 = bitcast i8** %41 to i32**
  %43 = bitcast i8** %stream.i to %struct.CUstream_st**
  %grid_dim.coerce.sroa.0.0..sroa_cast.i = bitcast %struct.dim3* %grid_dim.i to i64*
  %grid_dim.coerce.sroa.2.0..sroa_idx2.i = getelementptr inbounds %struct.dim3, %struct.dim3* %grid_dim.i, i64 0, i32 2
  %block_dim.coerce.sroa.0.0..sroa_cast.i = bitcast %struct.dim3* %block_dim.i to i64*
  %block_dim.coerce.sroa.2.0..sroa_idx1.i = getelementptr inbounds %struct.dim3, %struct.dim3* %block_dim.i, i64 0, i32 2
  %dimGridXY.sroa.0.sroa.4.0.insert.ext = zext i32 %add27 to i64
  %dimGridXY.sroa.0.sroa.4.0.insert.shift = shl nuw i64 %dimGridXY.sroa.0.sroa.4.0.insert.ext, 32
  %dimGridXY.sroa.0.sroa.0.0.insert.insert = or i64 %dimGridXY.sroa.0.sroa.4.0.insert.shift, %dimGridXY.sroa.0.sroa.4.0.insert.ext
  %44 = bitcast float** %b_cuda to i64*
  %45 = bitcast float** %m_cuda.addr.i97 to i8*
  %46 = bitcast float** %a_cuda.addr.i98 to i8*
  %47 = bitcast float** %b_cuda.addr.i to i8*
  %48 = bitcast i32* %Size.addr.i99 to i8*
  %49 = bitcast i32* %j1.addr.i to i8*
  %50 = bitcast i32* %t.addr.i100 to i8*
  %51 = bitcast %struct.dim3* %grid_dim.i101 to i8*
  %52 = bitcast %struct.dim3* %block_dim.i102 to i8*
  %53 = bitcast i64* %shmem_size.i103 to i8*
  %54 = bitcast i8** %stream.i104 to i8*
  %55 = bitcast [6 x i8*]* %kernel_args3.i105 to i8*
  %56 = bitcast float** %m_cuda.addr.i97 to i64*
  %57 = bitcast float** %a_cuda.addr.i98 to i64*
  %58 = bitcast float** %b_cuda.addr.i to i64*
  %kernel_args3.sub.i106 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 0
  %59 = bitcast [6 x i8*]* %kernel_args3.i105 to float***
  %60 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 1
  %61 = bitcast i8** %60 to float***
  %62 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 2
  %63 = bitcast i8** %62 to float***
  %64 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 3
  %65 = bitcast i8** %64 to i32**
  %66 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 4
  %67 = bitcast i8** %66 to i32**
  %68 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3.i105, i64 0, i64 5
  %69 = bitcast i8** %68 to i32**
  %70 = bitcast i8** %stream.i104 to %struct.CUstream_st**
  %grid_dim.coerce.sroa.0.0..sroa_cast.i107 = bitcast %struct.dim3* %grid_dim.i101 to i64*
  %grid_dim.coerce.sroa.2.0..sroa_idx2.i109 = getelementptr inbounds %struct.dim3, %struct.dim3* %grid_dim.i101, i64 0, i32 2
  %block_dim.coerce.sroa.0.0..sroa_cast.i111 = bitcast %struct.dim3* %block_dim.i102 to i64*
  %block_dim.coerce.sroa.2.0..sroa_idx1.i113 = getelementptr inbounds %struct.dim3, %struct.dim3* %block_dim.i102, i64 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %kcall.end39
  %71 = load i32, i32* @Size, align 4, !tbaa !10
  %sub = add nsw i32 %71, -1
  %cmp = icmp slt i32 %inc, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %t.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call30 = call i32 @__cudaPushCallConfiguration(i64 %dimGrid.sroa.0.sroa.0.0.insert.insert, i32 1, i64 4294967808, i32 1, i64 0, i8* null)
  %tobool31 = icmp eq i32 %call30, 0
  br i1 %tobool31, label %kcall.configok, label %kcall.end

kcall.configok:                                   ; preds = %for.body
  %72 = load i64, i64* %23, align 8, !tbaa !7
  %73 = load i64, i64* %24, align 8, !tbaa !7
  %74 = load i32, i32* @Size, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %29)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %30)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33)
  store i64 %72, i64* %34, align 8, !tbaa !7
  store i64 %73, i64* %35, align 8, !tbaa !7
  store i32 %74, i32* %Size.addr.i, align 4, !tbaa !10
  store i32 %t.0134, i32* %t.addr.i, align 4, !tbaa !10
  store float** %m_cuda.addr.i, float*** %36, align 16
  store float** %a_cuda.addr.i, float*** %38, align 8
  store i32* %Size.addr.i, i32** %40, align 16
  store i32* %t.addr.i, i32** %42, align 8
  %75 = call i32 @__cudaPopCallConfiguration(%struct.dim3* nonnull %grid_dim.i, %struct.dim3* nonnull %block_dim.i, i64* nonnull %shmem_size.i, i8** nonnull %stream.i)
  %76 = load i64, i64* %shmem_size.i, align 8
  %77 = load %struct.CUstream_st*, %struct.CUstream_st** %43, align 8
  %grid_dim.coerce.sroa.0.0.copyload.i = load i64, i64* %grid_dim.coerce.sroa.0.0..sroa_cast.i, align 8
  %grid_dim.coerce.sroa.2.0.copyload.i = load i32, i32* %grid_dim.coerce.sroa.2.0..sroa_idx2.i, align 8
  %block_dim.coerce.sroa.0.0.copyload.i = load i64, i64* %block_dim.coerce.sroa.0.0..sroa_cast.i, align 8
  %block_dim.coerce.sroa.2.0.copyload.i = load i32, i32* %block_dim.coerce.sroa.2.0..sroa_idx1.i, align 8
  %call.i96 = call i32 @cudaLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)* @_Z4Fan1PfS_ii to i8*), i64 %grid_dim.coerce.sroa.0.0.copyload.i, i32 %grid_dim.coerce.sroa.2.0.copyload.i, i64 %block_dim.coerce.sroa.0.0.copyload.i, i32 %block_dim.coerce.sroa.2.0.copyload.i, i8** nonnull %kernel_args3.sub.i, i64 %76, %struct.CUstream_st* %77)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %29)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %30)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33)
  br label %kcall.end

kcall.end:                                        ; preds = %for.body, %kcall.configok
  %call32 = call i32 @cudaThreadSynchronize()
  %call35 = call i32 @__cudaPushCallConfiguration(i64 %dimGridXY.sroa.0.sroa.0.0.insert.insert, i32 1, i64 17179869188, i32 1, i64 0, i8* null)
  %tobool36 = icmp eq i32 %call35, 0
  br i1 %tobool36, label %kcall.configok37, label %kcall.end39

kcall.configok37:                                 ; preds = %kcall.end
  %78 = load i64, i64* %23, align 8, !tbaa !7
  %79 = load i64, i64* %24, align 8, !tbaa !7
  %80 = load i64, i64* %44, align 8, !tbaa !7
  %81 = load i32, i32* @Size, align 4, !tbaa !10
  %sub38 = sub nsw i32 %81, %t.0134
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %49)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %51)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %52)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54)
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %55)
  store i64 %78, i64* %56, align 8, !tbaa !7
  store i64 %79, i64* %57, align 8, !tbaa !7
  store i64 %80, i64* %58, align 8, !tbaa !7
  store i32 %81, i32* %Size.addr.i99, align 4, !tbaa !10
  store i32 %sub38, i32* %j1.addr.i, align 4, !tbaa !10
  store i32 %t.0134, i32* %t.addr.i100, align 4, !tbaa !10
  store float** %m_cuda.addr.i97, float*** %59, align 16
  store float** %a_cuda.addr.i98, float*** %61, align 8
  store float** %b_cuda.addr.i, float*** %63, align 16
  store i32* %Size.addr.i99, i32** %65, align 8
  store i32* %j1.addr.i, i32** %67, align 16
  store i32* %t.addr.i100, i32** %69, align 8
  %82 = call i32 @__cudaPopCallConfiguration(%struct.dim3* nonnull %grid_dim.i101, %struct.dim3* nonnull %block_dim.i102, i64* nonnull %shmem_size.i103, i8** nonnull %stream.i104)
  %83 = load i64, i64* %shmem_size.i103, align 8
  %84 = load %struct.CUstream_st*, %struct.CUstream_st** %70, align 8
  %grid_dim.coerce.sroa.0.0.copyload.i108 = load i64, i64* %grid_dim.coerce.sroa.0.0..sroa_cast.i107, align 8
  %grid_dim.coerce.sroa.2.0.copyload.i110 = load i32, i32* %grid_dim.coerce.sroa.2.0..sroa_idx2.i109, align 8
  %block_dim.coerce.sroa.0.0.copyload.i112 = load i64, i64* %block_dim.coerce.sroa.0.0..sroa_cast.i111, align 8
  %block_dim.coerce.sroa.2.0.copyload.i114 = load i32, i32* %block_dim.coerce.sroa.2.0..sroa_idx1.i113, align 8
  %call.i115 = call i32 @cudaLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32, i32)* @_Z4Fan2PfS_S_iii to i8*), i64 %grid_dim.coerce.sroa.0.0.copyload.i108, i32 %grid_dim.coerce.sroa.2.0.copyload.i110, i64 %block_dim.coerce.sroa.0.0.copyload.i112, i32 %block_dim.coerce.sroa.2.0.copyload.i114, i8** nonnull %kernel_args3.sub.i106, i64 %83, %struct.CUstream_st* %84)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %49)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %51)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %52)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %55)
  br label %kcall.end39

kcall.end39:                                      ; preds = %kcall.end, %kcall.configok37
  %call40 = call i32 @cudaThreadSynchronize()
  %call.i = call i32 @cudaGetLastError()
  %cmp.i = icmp eq i32 %call.i, 0
  %inc = add nuw nsw i32 %t.0134, 1
  br i1 %cmp.i, label %for.cond, label %if.then.i

if.then.i:                                        ; preds = %kcall.end39
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1.i = call i8* @cudaGetErrorString(i32 %call.i)
  %call2.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* %call1.i) #12
  call void @exit(i32 1) #11
  unreachable

for.end:                                          ; preds = %for.cond, %entry
  %86 = bitcast %struct.timeval* %time_end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #10
  %call41 = call i32 @gettimeofday(%struct.timeval* nonnull %time_end, %struct.timezone* null) #10
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_end, i64 0, i32 0
  %87 = load i64, i64* %tv_sec, align 8, !tbaa !18
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %time_end, i64 0, i32 1
  %88 = load i64, i64* %tv_usec, align 8, !tbaa !21
  %tv_sec44 = getelementptr inbounds %struct.timeval, %struct.timeval* %time_start, i64 0, i32 0
  %89 = load i64, i64* %tv_sec44, align 8, !tbaa !18
  %tv_usec46 = getelementptr inbounds %struct.timeval, %struct.timeval* %time_start, i64 0, i32 1
  %90 = load i64, i64* %tv_usec46, align 8, !tbaa !21
  %reass.add = sub i64 %87, %89
  %reass.mul = mul i64 %reass.add, 1000000
  %add43 = sub i64 %88, %90
  %sub48 = add i64 %add43, %reass.mul
  %conv49 = trunc i64 %sub48 to i32
  store i32 %conv49, i32* @totalKernelTime, align 4, !tbaa !10
  %91 = load i8*, i8** bitcast (float** @m to i8**), align 8, !tbaa !7
  %92 = load i8*, i8** %3, align 8, !tbaa !7
  %93 = load i32, i32* @Size, align 4, !tbaa !10
  %mul50 = mul nsw i32 %93, %93
  %conv51 = zext i32 %mul50 to i64
  %mul52 = shl nuw nsw i64 %conv51, 2
  %call53 = call i32 @cudaMemcpy(i8* %91, i8* %92, i64 %mul52, i32 2)
  %94 = load i8*, i8** bitcast (float** @a to i8**), align 8, !tbaa !7
  %95 = load i8*, i8** %5, align 8, !tbaa !7
  %96 = load i32, i32* @Size, align 4, !tbaa !10
  %mul54 = mul nsw i32 %96, %96
  %conv55 = zext i32 %mul54 to i64
  %mul56 = shl nuw nsw i64 %conv55, 2
  %call57 = call i32 @cudaMemcpy(i8* %94, i8* %95, i64 %mul56, i32 2)
  %97 = load i8*, i8** bitcast (float** @b to i8**), align 8, !tbaa !7
  %98 = load i8*, i8** %7, align 8, !tbaa !7
  %99 = load i32, i32* @Size, align 4, !tbaa !10
  %conv58 = sext i32 %99 to i64
  %mul59 = shl nsw i64 %conv58, 2
  %call60 = call i32 @cudaMemcpy(i8* %97, i8* %98, i64 %mul59, i32 2)
  %100 = load i8*, i8** %3, align 8, !tbaa !7
  %call61 = call i32 @cudaFree(i8* %100)
  %101 = load i8*, i8** %5, align 8, !tbaa !7
  %call62 = call i32 @cudaFree(i8* %101)
  %102 = load i8*, i8** %7, align 8, !tbaa !7
  %call63 = call i32 @cudaFree(i8* %102)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z8PrintMatPfii(float* nocapture readonly %ary, i32 %nrow, i32 %ncol) local_unnamed_addr #0 {
entry:
  %cmp20 = icmp sgt i32 %nrow, 0
  br i1 %cmp20, label %for.cond1.preheader.lr.ph, label %for.end9

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp218 = icmp sgt i32 %ncol, 0
  br i1 %cmp218, label %for.cond1.preheader.us.preheader, label %for.cond1.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count = zext i32 %ncol to i64
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.for.end_crit_edge.us, %for.cond1.preheader.us.preheader
  %i.021.us = phi i32 [ %inc8.us, %for.cond1.for.end_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.body3.us ]
  %0 = load i32, i32* @Size, align 4, !tbaa !10
  %mul.us = mul nsw i32 %0, %i.021.us
  %idx.ext.us = sext i32 %mul.us to i64
  %add.ptr.us = getelementptr inbounds float, float* %ary, i64 %idx.ext.us
  %add.ptr5.us = getelementptr inbounds float, float* %add.ptr.us, i64 %indvars.iv
  %1 = load float, float* %add.ptr5.us, align 4, !tbaa !3
  %conv.us = fpext float %1 to double
  %call.us = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), double %conv.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond1.for.end_crit_edge.us, label %for.body3.us

for.cond1.for.end_crit_edge.us:                   ; preds = %for.body3.us
  %putchar17.us = tail call i32 @putchar(i32 10)
  %inc8.us = add nuw nsw i32 %i.021.us, 1
  %exitcond24 = icmp eq i32 %inc8.us, %nrow
  br i1 %exitcond24, label %for.end9, label %for.cond1.preheader.us

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond1.preheader
  %i.021 = phi i32 [ %inc8, %for.cond1.preheader ], [ 0, %for.cond1.preheader.lr.ph ]
  %putchar17 = tail call i32 @putchar(i32 10)
  %inc8 = add nuw nsw i32 %i.021, 1
  %exitcond25 = icmp eq i32 %inc8, %nrow
  br i1 %exitcond25, label %for.end9, label %for.cond1.preheader

for.end9:                                         ; preds = %for.cond1.preheader, %for.cond1.for.end_crit_edge.us, %entry
  %putchar = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z8PrintAryPfi(float* nocapture readonly %ary, i32 %ary_size) local_unnamed_addr #0 {
entry:
  %cmp5 = icmp sgt i32 %ary_size, 0
  br i1 %cmp5, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %ary_size to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %ary, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %0 to double
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), double %conv)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.73, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z7BackSubv() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @Size, align 4, !tbaa !10
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul) #10
  store i8* %call, i8** bitcast (float** @finalVec to i8**), align 8, !tbaa !7
  %cmp63 = icmp sgt i32 %0, 0
  %1 = bitcast i8* %call to float*
  br i1 %cmp63, label %for.body.lr.ph, label %for.end45

for.body.lr.ph:                                   ; preds = %entry
  %2 = load float*, float** @b, align 8, !tbaa !7
  %3 = load float*, float** @a, align 8
  %wide.trip.count68 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv66 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next67, %for.end ]
  %4 = trunc i64 %indvars.iv66 to i32
  %5 = xor i32 %4, -1
  %sub1 = add i32 %0, %5
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %6 = bitcast float* %arrayidx to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds float, float* %1, i64 %idxprom
  %8 = bitcast float* %arrayidx5 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !3
  %cmp761 = icmp eq i64 %indvars.iv66, 0
  %9 = bitcast i32 %7 to float
  %.pre = mul nsw i32 %sub1, %0
  %.pre70 = sext i32 %.pre to i64
  br i1 %cmp761, label %for.end, label %for.body8.lr.ph

for.body8.lr.ph:                                  ; preds = %for.body
  %add.ptr = getelementptr inbounds float, float* %3, i64 %.pre70
  %xtraiter = and i64 %indvars.iv66, 1
  %10 = icmp eq i64 %indvars.iv66, 1
  br i1 %10, label %for.end.loopexit.unr-lcssa, label %for.body8.lr.ph.new

for.body8.lr.ph.new:                              ; preds = %for.body8.lr.ph
  %unroll_iter = sub nsw i64 %indvars.iv66, %xtraiter
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph.new
  %11 = phi float [ %9, %for.body8.lr.ph.new ], [ %sub25.1, %for.body8 ]
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph.new ], [ %indvars.iv.next.1, %for.body8 ]
  %niter = phi i64 [ %unroll_iter, %for.body8.lr.ph.new ], [ %niter.nsub.1, %for.body8 ]
  %12 = trunc i64 %indvars.iv to i32
  %13 = xor i32 %12, -1
  %sub13 = add i32 %0, %13
  %idx.ext14 = sext i32 %sub13 to i64
  %add.ptr15 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext14
  %14 = load float, float* %add.ptr15, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds float, float* %1, i64 %idx.ext14
  %15 = load float, float* %arrayidx19, align 4, !tbaa !3
  %mul20 = fmul contract float %14, %15
  %sub25 = fsub contract float %11, %mul20
  store float %sub25, float* %arrayidx5, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv to i32
  %17 = xor i32 %16, -2
  %sub13.1 = add i32 %0, %17
  %idx.ext14.1 = sext i32 %sub13.1 to i64
  %add.ptr15.1 = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext14.1
  %18 = load float, float* %add.ptr15.1, align 4, !tbaa !3
  %arrayidx19.1 = getelementptr inbounds float, float* %1, i64 %idx.ext14.1
  %19 = load float, float* %arrayidx19.1, align 4, !tbaa !3
  %mul20.1 = fmul contract float %18, %19
  %sub25.1 = fsub contract float %sub25, %mul20.1
  store float %sub25.1, float* %arrayidx5, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body8

for.end.loopexit.unr-lcssa:                       ; preds = %for.body8, %for.body8.lr.ph
  %sub25.lcssa.ph = phi float [ undef, %for.body8.lr.ph ], [ %sub25.1, %for.body8 ]
  %.unr = phi float [ %9, %for.body8.lr.ph ], [ %sub25.1, %for.body8 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next.1, %for.body8 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end, label %for.body8.epil

for.body8.epil:                                   ; preds = %for.end.loopexit.unr-lcssa
  %20 = trunc i64 %indvars.iv.unr to i32
  %21 = xor i32 %20, -1
  %sub13.epil = add i32 %0, %21
  %idx.ext14.epil = sext i32 %sub13.epil to i64
  %add.ptr15.epil = getelementptr inbounds float, float* %add.ptr, i64 %idx.ext14.epil
  %22 = load float, float* %add.ptr15.epil, align 4, !tbaa !3
  %arrayidx19.epil = getelementptr inbounds float, float* %1, i64 %idx.ext14.epil
  %23 = load float, float* %arrayidx19.epil, align 4, !tbaa !3
  %mul20.epil = fmul contract float %22, %23
  %sub25.epil = fsub contract float %.unr, %mul20.epil
  store float %sub25.epil, float* %arrayidx5, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %for.body8.epil, %for.end.loopexit.unr-lcssa, %for.body
  %24 = phi float [ %9, %for.body ], [ %sub25.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %sub25.epil, %for.body8.epil ]
  %add.ptr34 = getelementptr inbounds float, float* %3, i64 %.pre70
  %add.ptr38 = getelementptr inbounds float, float* %add.ptr34, i64 %idxprom
  %25 = load float, float* %add.ptr38, align 4, !tbaa !3
  %div = fdiv float %24, %25
  store float %div, float* %arrayidx5, align 4, !tbaa !3
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69 = icmp eq i64 %indvars.iv.next67, %wide.trip.count68
  br i1 %exitcond69, label %for.end45, label %for.body

for.end45:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #7

declare dso_local i32 @cudaGetDeviceCount(i32*) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudaGetDeviceProperties(%struct.cudaDeviceProp*, i32) local_unnamed_addr #8

declare dso_local i8* @cudaGetErrorString(i32) local_unnamed_addr #8

declare dso_local i32 @cudaGetLastError() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z7InitMatPfii(float* %ary, i32 %nrow, i32 %ncol) local_unnamed_addr #0 {
entry:
  %cmp17 = icmp sgt i32 %nrow, 0
  %cmp215 = icmp sgt i32 %ncol, 0
  %or.cond = and i1 %cmp17, %cmp215
  br i1 %or.cond, label %for.cond1.preheader.us.preheader, label %for.end8

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %ncol to i64
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.for.inc6_crit_edge.us, %for.cond1.preheader.us.preheader
  %i.018.us = phi i32 [ %inc7.us, %for.cond1.for.inc6_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us, %for.cond1.preheader.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.body3.us ]
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !7
  %1 = load i32, i32* @Size, align 4, !tbaa !10
  %mul.us = mul nsw i32 %1, %i.018.us
  %idx.ext.us = sext i32 %mul.us to i64
  %add.ptr.us = getelementptr inbounds float, float* %ary, i64 %idx.ext.us
  %add.ptr5.us = getelementptr inbounds float, float* %add.ptr.us, i64 %indvars.iv
  %call.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), float* %add.ptr5.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond1.for.inc6_crit_edge.us, label %for.body3.us

for.cond1.for.inc6_crit_edge.us:                  ; preds = %for.body3.us
  %inc7.us = add nuw nsw i32 %i.018.us, 1
  %exitcond21 = icmp eq i32 %inc7.us, %nrow
  br i1 %exitcond21, label %for.end8, label %for.cond1.preheader.us

for.end8:                                         ; preds = %for.cond1.for.inc6_crit_edge.us, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z7InitAryPfi(float* %ary, i32 %ary_size) local_unnamed_addr #0 {
entry:
  %cmp4 = icmp sgt i32 %ary_size, 0
  br i1 %cmp4, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %ary_size to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds float, float* %ary, i64 %indvars.iv
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), float* %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: uwtable
define dso_local void @_Z4Fan1PfS_ii(float* %m_cuda, float* %a_cuda, i32 %Size, i32 %t) #5 {
entry:
  %m_cuda.addr = alloca float*, align 8
  %a_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %grid_dim = alloca %struct.dim3, align 8
  %block_dim = alloca %struct.dim3, align 8
  %shmem_size = alloca i64, align 8
  %stream = alloca i8*, align 8
  store float* %m_cuda, float** %m_cuda.addr, align 8, !tbaa !7
  store float* %a_cuda, float** %a_cuda.addr, align 8, !tbaa !7
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !10
  store i32 %t, i32* %t.addr, align 4, !tbaa !10
  %kernel_args3 = alloca [4 x i8*], align 16
  %kernel_args3.sub = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3, i64 0, i64 0
  %0 = bitcast [4 x i8*]* %kernel_args3 to float***
  store float** %m_cuda.addr, float*** %0, align 16
  %1 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3, i64 0, i64 1
  %2 = bitcast i8** %1 to float***
  store float** %a_cuda.addr, float*** %2, align 8
  %3 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3, i64 0, i64 2
  %4 = bitcast i8** %3 to i32**
  store i32* %Size.addr, i32** %4, align 16
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %kernel_args3, i64 0, i64 3
  %6 = bitcast i8** %5 to i32**
  store i32* %t.addr, i32** %6, align 8
  %7 = call i32 @__cudaPopCallConfiguration(%struct.dim3* nonnull %grid_dim, %struct.dim3* nonnull %block_dim, i64* nonnull %shmem_size, i8** nonnull %stream)
  %8 = load i64, i64* %shmem_size, align 8
  %9 = bitcast i8** %stream to %struct.CUstream_st**
  %10 = load %struct.CUstream_st*, %struct.CUstream_st** %9, align 8
  %grid_dim.coerce.sroa.0.0..sroa_cast = bitcast %struct.dim3* %grid_dim to i64*
  %grid_dim.coerce.sroa.0.0.copyload = load i64, i64* %grid_dim.coerce.sroa.0.0..sroa_cast, align 8
  %grid_dim.coerce.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.dim3, %struct.dim3* %grid_dim, i64 0, i32 2
  %grid_dim.coerce.sroa.2.0.copyload = load i32, i32* %grid_dim.coerce.sroa.2.0..sroa_idx2, align 8
  %block_dim.coerce.sroa.0.0..sroa_cast = bitcast %struct.dim3* %block_dim to i64*
  %block_dim.coerce.sroa.0.0.copyload = load i64, i64* %block_dim.coerce.sroa.0.0..sroa_cast, align 8
  %block_dim.coerce.sroa.2.0..sroa_idx1 = getelementptr inbounds %struct.dim3, %struct.dim3* %block_dim, i64 0, i32 2
  %block_dim.coerce.sroa.2.0.copyload = load i32, i32* %block_dim.coerce.sroa.2.0..sroa_idx1, align 8
  %call = call i32 @cudaLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)* @_Z4Fan1PfS_ii to i8*), i64 %grid_dim.coerce.sroa.0.0.copyload, i32 %grid_dim.coerce.sroa.2.0.copyload, i64 %block_dim.coerce.sroa.0.0.copyload, i32 %block_dim.coerce.sroa.2.0.copyload, i8** nonnull %kernel_args3.sub, i64 %8, %struct.CUstream_st* %10)
  ret void
}

declare dso_local i32 @__cudaPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @cudaLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.CUstream_st*) local_unnamed_addr

; Function Attrs: uwtable
define dso_local void @_Z4Fan2PfS_S_iii(float* %m_cuda, float* %a_cuda, float* %b_cuda, i32 %Size, i32 %j1, i32 %t) #5 {
entry:
  %m_cuda.addr = alloca float*, align 8
  %a_cuda.addr = alloca float*, align 8
  %b_cuda.addr = alloca float*, align 8
  %Size.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %grid_dim = alloca %struct.dim3, align 8
  %block_dim = alloca %struct.dim3, align 8
  %shmem_size = alloca i64, align 8
  %stream = alloca i8*, align 8
  store float* %m_cuda, float** %m_cuda.addr, align 8, !tbaa !7
  store float* %a_cuda, float** %a_cuda.addr, align 8, !tbaa !7
  store float* %b_cuda, float** %b_cuda.addr, align 8, !tbaa !7
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !10
  store i32 %j1, i32* %j1.addr, align 4, !tbaa !10
  store i32 %t, i32* %t.addr, align 4, !tbaa !10
  %kernel_args3 = alloca [6 x i8*], align 16
  %kernel_args3.sub = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 0
  %0 = bitcast [6 x i8*]* %kernel_args3 to float***
  store float** %m_cuda.addr, float*** %0, align 16
  %1 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 1
  %2 = bitcast i8** %1 to float***
  store float** %a_cuda.addr, float*** %2, align 8
  %3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 2
  %4 = bitcast i8** %3 to float***
  store float** %b_cuda.addr, float*** %4, align 16
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 3
  %6 = bitcast i8** %5 to i32**
  store i32* %Size.addr, i32** %6, align 8
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 4
  %8 = bitcast i8** %7 to i32**
  store i32* %j1.addr, i32** %8, align 16
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %kernel_args3, i64 0, i64 5
  %10 = bitcast i8** %9 to i32**
  store i32* %t.addr, i32** %10, align 8
  %11 = call i32 @__cudaPopCallConfiguration(%struct.dim3* nonnull %grid_dim, %struct.dim3* nonnull %block_dim, i64* nonnull %shmem_size, i8** nonnull %stream)
  %12 = load i64, i64* %shmem_size, align 8
  %13 = bitcast i8** %stream to %struct.CUstream_st**
  %14 = load %struct.CUstream_st*, %struct.CUstream_st** %13, align 8
  %grid_dim.coerce.sroa.0.0..sroa_cast = bitcast %struct.dim3* %grid_dim to i64*
  %grid_dim.coerce.sroa.0.0.copyload = load i64, i64* %grid_dim.coerce.sroa.0.0..sroa_cast, align 8
  %grid_dim.coerce.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.dim3, %struct.dim3* %grid_dim, i64 0, i32 2
  %grid_dim.coerce.sroa.2.0.copyload = load i32, i32* %grid_dim.coerce.sroa.2.0..sroa_idx2, align 8
  %block_dim.coerce.sroa.0.0..sroa_cast = bitcast %struct.dim3* %block_dim to i64*
  %block_dim.coerce.sroa.0.0.copyload = load i64, i64* %block_dim.coerce.sroa.0.0..sroa_cast, align 8
  %block_dim.coerce.sroa.2.0..sroa_idx1 = getelementptr inbounds %struct.dim3, %struct.dim3* %block_dim, i64 0, i32 2
  %block_dim.coerce.sroa.2.0.copyload = load i32, i32* %block_dim.coerce.sroa.2.0..sroa_idx1, align 8
  %call = call i32 @cudaLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32, i32)* @_Z4Fan2PfS_S_iii to i8*), i64 %grid_dim.coerce.sroa.0.0.copyload, i32 %grid_dim.coerce.sroa.2.0.copyload, i64 %block_dim.coerce.sroa.0.0.copyload, i32 %block_dim.coerce.sroa.2.0.copyload, i8** nonnull %kernel_args3.sub, i64 %12, %struct.CUstream_st* %14)
  ret void
}

declare dso_local i32 @cudaMalloc(i8**, i64) local_unnamed_addr #8

declare dso_local i32 @cudaMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #8

declare dso_local i32 @__cudaPushCallConfiguration(i64, i32, i64, i32, i64, i8*) local_unnamed_addr #8

declare dso_local i32 @cudaThreadSynchronize() local_unnamed_addr #8

; Function Attrs: uwtable
define dso_local void @_Z14checkCUDAErrorPKc(i8* %msg) local_unnamed_addr #5 {
entry:
  %call = tail call i32 @cudaGetLastError()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !7
  %call1 = tail call i8* @cudaGetErrorString(i32 %call)
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* %msg, i8* %call1) #12
  tail call void @exit(i32 1) #11
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare dso_local i32 @cudaFree(i8*) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local float @expf(float) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !17, !13}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTS7timeval", !20, i64 0, !20, i64 8}
!20 = !{!"long", !5, i64 0}
!21 = !{!19, !20, i64 8}
!22 = !{!23, !20, i64 288}
!23 = !{!"_ZTS14cudaDeviceProp", !5, i64 0, !24, i64 256, !5, i64 272, !11, i64 280, !20, i64 288, !20, i64 296, !11, i64 304, !11, i64 308, !20, i64 312, !11, i64 320, !5, i64 324, !5, i64 336, !11, i64 348, !20, i64 352, !11, i64 360, !11, i64 364, !20, i64 368, !20, i64 376, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !5, i64 420, !5, i64 428, !5, i64 436, !5, i64 448, !5, i64 456, !5, i64 468, !11, i64 480, !5, i64 484, !5, i64 492, !5, i64 504, !11, i64 512, !5, i64 516, !5, i64 524, !5, i64 536, !5, i64 544, !11, i64 556, !5, i64 560, !20, i64 568, !11, i64 576, !11, i64 580, !11, i64 584, !11, i64 588, !11, i64 592, !11, i64 596, !11, i64 600, !11, i64 604, !11, i64 608, !11, i64 612, !11, i64 616, !11, i64 620, !11, i64 624, !11, i64 628, !11, i64 632, !20, i64 640, !11, i64 648, !11, i64 652, !11, i64 656, !11, i64 660, !11, i64 664, !11, i64 668, !11, i64 672, !11, i64 676, !11, i64 680, !11, i64 684, !11, i64 688, !11, i64 692, !20, i64 696, !11, i64 704, !11, i64 708}
!24 = !{!"_ZTS9CUuuid_st", !5, i64 0}
!25 = !{!23, !20, i64 296}
!26 = !{!23, !11, i64 304}
!27 = !{!23, !11, i64 308}
!28 = !{!23, !20, i64 312}
!29 = !{!23, !11, i64 320}
!30 = !{!23, !20, i64 352}
!31 = !{!23, !11, i64 360}
!32 = !{!23, !11, i64 364}
!33 = !{!23, !11, i64 348}
!34 = !{!23, !20, i64 368}
!35 = !{!23, !11, i64 384}
!36 = !{!23, !11, i64 388}
