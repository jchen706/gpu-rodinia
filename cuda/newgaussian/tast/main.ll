; ModuleID = 'main.bc'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudaGraph = type { i64*, i64*, i64, i64 }

$_ZN9cudaGraphC2Ev = comdat any

@.str = private unnamed_addr constant [12 x i8] c" mask: %d \0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" bid: %d \0A\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_Z9gen_inputPPv(i8** %arg) #0 {
entry:
  %arg.addr = alloca i8**, align 8
  %ret = alloca i32**, align 8
  %p0 = alloca i32**, align 8
  %vplist = alloca i32*, align 8
  %p1 = alloca i32**, align 8
  %eplist = alloca i32*, align 8
  %p2 = alloca i32**, align 8
  %update = alloca i32*, align 8
  %p3 = alloca i8**, align 8
  %mask = alloca i8*, align 8
  %p4 = alloca %struct.cudaGraph**, align 8
  %graph = alloca %struct.cudaGraph*, align 8
  %p5 = alloca i32*, align 8
  %bid = alloca i32, align 4
  store i8** %arg, i8*** %arg.addr, align 8
  %call = call i8* @_Znam(i64 48) #4
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** %ret, align 8
  %call1 = call i8* @_Znwm(i64 8) #4
  %1 = bitcast i8* %call1 to i32**
  store i32** %1, i32*** %p0, align 8
  %2 = load i8**, i8*** %arg.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %add.ptr, align 8
  %4 = bitcast i8* %3 to i32**
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %vplist, align 8
  %6 = load i32*, i32** %vplist, align 8
  %7 = load i32**, i32*** %p0, align 8
  store i32* %6, i32** %7, align 8
  %8 = load i32**, i32*** %p0, align 8
  %9 = bitcast i32** %8 to i32*
  %10 = load i32**, i32*** %ret, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %10, i64 0
  store i32* %9, i32** %arrayidx, align 8
  %call2 = call i8* @_Znwm(i64 8) #4
  %11 = bitcast i8* %call2 to i32**
  store i32** %11, i32*** %p1, align 8
  %12 = load i8**, i8*** %arg.addr, align 8
  %add.ptr3 = getelementptr inbounds i8*, i8** %12, i64 2
  %13 = load i8*, i8** %add.ptr3, align 8
  %14 = bitcast i8* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %eplist, align 8
  %16 = load i32*, i32** %eplist, align 8
  %17 = load i32**, i32*** %p1, align 8
  store i32* %16, i32** %17, align 8
  %18 = load i32**, i32*** %p1, align 8
  %19 = bitcast i32** %18 to i32*
  %20 = load i32**, i32*** %ret, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %20, i64 1
  store i32* %19, i32** %arrayidx4, align 8
  %call5 = call i8* @_Znwm(i64 8) #4
  %21 = bitcast i8* %call5 to i32**
  store i32** %21, i32*** %p2, align 8
  %22 = load i8**, i8*** %arg.addr, align 8
  %add.ptr6 = getelementptr inbounds i8*, i8** %22, i64 3
  %23 = load i8*, i8** %add.ptr6, align 8
  %24 = bitcast i8* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %update, align 8
  %26 = load i32*, i32** %update, align 8
  %27 = load i32**, i32*** %p2, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32**, i32*** %p2, align 8
  %29 = bitcast i32** %28 to i32*
  %30 = load i32**, i32*** %ret, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %30, i64 2
  store i32* %29, i32** %arrayidx7, align 8
  %call8 = call i8* @_Znwm(i64 8) #4
  %31 = bitcast i8* %call8 to i8**
  store i8** %31, i8*** %p3, align 8
  %32 = load i8**, i8*** %arg.addr, align 8
  %add.ptr9 = getelementptr inbounds i8*, i8** %32, i64 4
  %33 = load i8*, i8** %add.ptr9, align 8
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %mask, align 8
  %36 = load i8*, i8** %mask, align 8
  %37 = load i8, i8* %36, align 1
  %tobool = trunc i8 %37 to i1
  %conv = zext i1 %tobool to i32
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %conv)
  %38 = load i8*, i8** %mask, align 8
  %39 = load i8**, i8*** %p3, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i8**, i8*** %p3, align 8
  %41 = bitcast i8** %40 to i32*
  %42 = load i32**, i32*** %ret, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %42, i64 3
  store i32* %41, i32** %arrayidx11, align 8
  %call12 = call i8* @_Znwm(i64 8) #4
  %43 = bitcast i8* %call12 to %struct.cudaGraph**
  store %struct.cudaGraph** %43, %struct.cudaGraph*** %p4, align 8
  %44 = load i8**, i8*** %arg.addr, align 8
  %add.ptr13 = getelementptr inbounds i8*, i8** %44, i64 5
  %45 = load i8*, i8** %add.ptr13, align 8
  %46 = bitcast i8* %45 to %struct.cudaGraph**
  %47 = load %struct.cudaGraph*, %struct.cudaGraph** %46, align 8
  store %struct.cudaGraph* %47, %struct.cudaGraph** %graph, align 8
  %48 = load %struct.cudaGraph*, %struct.cudaGraph** %graph, align 8
  %49 = load %struct.cudaGraph**, %struct.cudaGraph*** %p4, align 8
  store %struct.cudaGraph* %48, %struct.cudaGraph** %49, align 8
  %50 = load %struct.cudaGraph**, %struct.cudaGraph*** %p4, align 8
  %51 = bitcast %struct.cudaGraph** %50 to i32*
  %52 = load i32**, i32*** %ret, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %52, i64 4
  store i32* %51, i32** %arrayidx14, align 8
  %call15 = call i8* @_Znwm(i64 4) #4
  %53 = bitcast i8* %call15 to i32*
  store i32* %53, i32** %p5, align 8
  %54 = load i8**, i8*** %arg.addr, align 8
  %add.ptr16 = getelementptr inbounds i8*, i8** %54, i64 0
  %55 = load i8*, i8** %add.ptr16, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %bid, align 4
  %58 = load i32, i32* %bid, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %59 = load i32, i32* %bid, align 4
  %60 = load i32*, i32** %p5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %p5, align 8
  %62 = load i32**, i32*** %ret, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %62, i64 5
  store i32* %61, i32** %arrayidx18, align 8
  %63 = load i32**, i32*** %ret, align 8
  %64 = bitcast i32** %63 to i8*
  ret i8* %64
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #1

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_Z7checkFnPPv(i8** %arg) #0 {
entry:
  %arg.addr = alloca i8**, align 8
  store i8** %arg, i8*** %arg.addr, align 8
  %0 = load i8**, i8*** %arg.addr, align 8
  %call = call i8* @_Z9gen_inputPPv(i8** %0)
  ret i8* %call
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #3 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %graph = alloca %struct.cudaGraph, align 8
  %vplist = alloca i32*, align 8
  %eplist = alloca i32*, align 8
  %update = alloca i32*, align 8
  %mask = alloca i8*, align 8
  %i = alloca i32, align 4
  %threads = alloca [1 x i64], align 8
  %rc = alloca i32, align 4
  %inp = alloca i8**, align 8
  %args = alloca i8*, align 8
  %t = alloca i64, align 8
  %arg = alloca [6 x i8*], align 16
  %ar = alloca i8**, align 8
  %bid = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @_ZN9cudaGraphC2Ev(%struct.cudaGraph* %graph)
  %call = call i8* @_Znam(i64 35108864) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %vplist, align 8
  %call1 = call i8* @_Znam(i64 35108864) #4
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %eplist, align 8
  %call2 = call i8* @_Znam(i64 35108864) #4
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %update, align 8
  %call3 = call i8* @_Znam(i64 8777216) #4
  store i8* %call3, i8** %mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 8777216
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %mask, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call i8* @_Znam(i64 8) #4
  %7 = bitcast i8* %call4 to i8**
  store i8** %7, i8*** %inp, align 8
  store i64 9, i64* %t, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %8 = load i64, i64* %t, align 8
  %cmp6 = icmp slt i64 %8, 10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayinit.begin = getelementptr inbounds [6 x i8*], [6 x i8*]* %arg, i64 0, i64 0
  %9 = bitcast i64* %t to i8*
  store i8* %9, i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  %10 = bitcast i32** %vplist to i8*
  store i8* %10, i8** %arrayinit.element, align 8
  %arrayinit.element8 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %11 = bitcast i32** %eplist to i8*
  store i8* %11, i8** %arrayinit.element8, align 8
  %arrayinit.element9 = getelementptr inbounds i8*, i8** %arrayinit.element8, i64 1
  %12 = bitcast i32** %update to i8*
  store i8* %12, i8** %arrayinit.element9, align 8
  %arrayinit.element10 = getelementptr inbounds i8*, i8** %arrayinit.element9, i64 1
  %13 = bitcast i8** %mask to i8*
  store i8* %13, i8** %arrayinit.element10, align 8
  %arrayinit.element11 = getelementptr inbounds i8*, i8** %arrayinit.element10, i64 1
  %14 = bitcast %struct.cudaGraph* %graph to i8*
  store i8* %14, i8** %arrayinit.element11, align 8
  %arraydecay = getelementptr inbounds [6 x i8*], [6 x i8*]* %arg, i64 0, i64 0
  %call12 = call i8* @_Z7checkFnPPv(i8** %arraydecay)
  store i8* %call12, i8** %args, align 8
  br label %for.end15

for.inc13:                                        ; No predecessors!
  %15 = load i64, i64* %t, align 8
  %inc14 = add nsw i64 %15, 1
  store i64 %inc14, i64* %t, align 8
  br label %for.cond5

for.end15:                                        ; preds = %for.body7, %for.cond5
  %16 = load i8*, i8** %args, align 8
  %17 = bitcast i8* %16 to i8**
  store i8** %17, i8*** %ar, align 8
  %18 = load i8**, i8*** %ar, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %18, i64 5
  %19 = load i8*, i8** %add.ptr, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %bid, align 4
  %22 = load i32, i32* %bid, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9cudaGraphC2Ev(%struct.cudaGraph* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.cudaGraph*, align 8
  store %struct.cudaGraph* %this, %struct.cudaGraph** %this.addr, align 8
  %this1 = load %struct.cudaGraph*, %struct.cudaGraph** %this.addr, align 8
  %call = call i8* @_Znam(i64 70217728) #4
  %0 = bitcast i8* %call to i64*
  %vlist = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 0
  store i64* %0, i64** %vlist, align 8
  %call2 = call i8* @_Znam(i64 70218528) #4
  %1 = bitcast i8* %call2 to i64*
  %elist = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 1
  store i64* %1, i64** %elist, align 8
  %vertex_cnt = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 2
  store i64 1024, i64* %vertex_cnt, align 8
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
