; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"F1\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"F2\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"F3\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Success\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@args = dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"host test Arg p: %p \0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"host test t Arg p: %p \0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"host test r Arg p: %p \0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" host: float arg: %p \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c" host: float arg d: %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"test Arg p: %p \0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"test t Arg p: %p \0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"test r Arg p: %p \0A\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z4fun1v() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z4fun2v() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z4fun3v() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_Z4TestPKv(i8* %funcPtr) #0 {
entry:
  %funcPtr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %funcPtr, i8** %funcPtr.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %funcPtr.addr, align 8
  %cmp = icmp eq i8* %0, bitcast (void ()* @_Z4fun1v to i8*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end9

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %funcPtr.addr, align 8
  %cmp1 = icmp eq i8* %1, bitcast (void ()* @_Z4fun2v to i8*)
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  store i32 2, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %2 = load i8*, i8** %funcPtr.addr, align 8
  %cmp5 = icmp eq i8* %2, bitcast (void ()* @_Z4fun3v to i8*)
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else4
  store i32 3, i32* %i, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %3 = load i32, i32* %i, align 4
  ret i32 %3
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8hostTestPPv(i8** %arg) #0 {
entry:
  %arg.addr = alloca i8**, align 8
  %t = alloca float**, align 8
  %r = alloca float*, align 8
  store i8** %arg, i8*** %arg.addr, align 8
  %call = call noalias i8* @malloc(i64 8) #4
  %0 = bitcast i8* %call to i8**
  store i8** %0, i8*** @args, align 8
  %1 = load i8**, i8*** %arg.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %add.ptr, align 8
  %3 = load i8**, i8*** @args, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  store i8* %2, i8** %arrayidx, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* bitcast (i8*** @args to i8*))
  %4 = load i8**, i8*** @args, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = bitcast i8** %arrayidx2 to i8*
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %5)
  %6 = load i8**, i8*** %arg.addr, align 8
  %add.ptr4 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %add.ptr4, align 8
  %8 = bitcast i8* %7 to float**
  store float** %8, float*** %t, align 8
  %9 = bitcast float*** %t to i8*
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %9)
  %10 = load float**, float*** %t, align 8
  %11 = load float*, float** %10, align 8
  store float* %11, float** %r, align 8
  %12 = bitcast float** %r to i8*
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %12)
  %13 = load float**, float*** %t, align 8
  %14 = bitcast float** %13 to i8*
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %14)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z4hostPf(float* %arg) #0 {
entry:
  %arg.addr = alloca float*, align 8
  %c = alloca float**, align 8
  %k = alloca [1 x i8*], align 8
  store float* %arg, float** %arg.addr, align 8
  store float** %arg.addr, float*** %c, align 8
  %0 = load float**, float*** %c, align 8
  %1 = bitcast float** %0 to i8*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %k, i64 0, i64 0
  store i8* %1, i8** %arrayidx, align 8
  %arraydecay = getelementptr inbounds [1 x i8*], [1 x i8*]* %k, i64 0, i64 0
  call void @_Z8hostTestPPv(i8** %arraydecay)
  %2 = bitcast float** %arg.addr to i8*
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %2)
  %3 = load float*, float** %arg.addr, align 8
  %4 = bitcast float* %3 to i8*
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %4)
  %5 = load float*, float** %arg.addr, align 8
  %6 = load float, float* %5, align 4
  %conv = fpext float %6 to double
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), double %conv)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z7testArgv() #0 {
entry:
  %t = alloca float**, align 8
  %r = alloca float*, align 8
  %0 = load i8**, i8*** @args, align 8
  %1 = bitcast i8** %0 to i8*
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* bitcast (i8*** @args to i8*))
  %2 = load i8**, i8*** @args, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = bitcast i8** %arrayidx to i8*
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %3)
  %4 = load i8**, i8*** @args, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %add.ptr, align 8
  %6 = bitcast i8* %5 to float**
  store float** %6, float*** %t, align 8
  %7 = bitcast float*** %t to i8*
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %7)
  %8 = load float**, float*** %t, align 8
  %9 = load float*, float** %8, align 8
  store float* %9, float** %r, align 8
  %10 = bitcast float** %r to i8*
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %10)
  %11 = load float**, float*** %t, align 8
  %12 = bitcast float** %11 to i8*
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %12)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #3 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca float*, align 8
  %x = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast float** %m to i8**
  store i8** %0, i8*** %x, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %1 = load i8**, i8*** %x, align 8
  store i8* %call, i8** %1, align 8
  %2 = load float*, float** %m, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %3 = load float*, float** %m, align 8
  %arrayidx1 = getelementptr inbounds float, float* %3, i64 1
  store float 2.000000e+00, float* %arrayidx1, align 4
  %4 = load float*, float** %m, align 8
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 2
  store float 4.000000e+00, float* %arrayidx2, align 4
  %5 = load float*, float** %m, align 8
  %arrayidx3 = getelementptr inbounds float, float* %5, i64 3
  store float 5.000000e+00, float* %arrayidx3, align 4
  %6 = load float*, float** %m, align 8
  call void @_Z4hostPf(float* %6)
  call void @_Z7testArgv()
  ret i32 0
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
