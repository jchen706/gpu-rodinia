; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudaGraph = type { i64*, i64*, i64, i64 }

$_ZN9cudaGraphC2Ev = comdat any

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_Z9gen_inputiPjS_S_PbP9cudaGraph(i32 %bid, i32* %vplist, i32* %eplist, i32* %update, i8* %mask, %struct.cudaGraph* %graph) #0 {
entry:
  %bid.addr = alloca i32, align 4
  %vplist.addr = alloca i32*, align 8
  %eplist.addr = alloca i32*, align 8
  %update.addr = alloca i32*, align 8
  %mask.addr = alloca i8*, align 8
  %graph.addr = alloca %struct.cudaGraph*, align 8
  %ret = alloca i32**, align 8
  %p0 = alloca i32**, align 8
  %p1 = alloca i32**, align 8
  %p2 = alloca i32**, align 8
  %p3 = alloca i8**, align 8
  %p4 = alloca %struct.cudaGraph**, align 8
  %p5 = alloca i32*, align 8
  store i32 %bid, i32* %bid.addr, align 4
  store i32* %vplist, i32** %vplist.addr, align 8
  store i32* %eplist, i32** %eplist.addr, align 8
  store i32* %update, i32** %update.addr, align 8
  store i8* %mask, i8** %mask.addr, align 8
  store %struct.cudaGraph* %graph, %struct.cudaGraph** %graph.addr, align 8
  %call = call i8* @_Znam(i64 48) #3
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** %ret, align 8
  %call1 = call i8* @_Znwm(i64 8) #3
  %1 = bitcast i8* %call1 to i32**
  store i32** %1, i32*** %p0, align 8
  %2 = load i32*, i32** %vplist.addr, align 8
  %3 = load i32**, i32*** %p0, align 8
  store i32* %2, i32** %3, align 8
  %4 = load i32**, i32*** %p0, align 8
  %5 = bitcast i32** %4 to i32*
  %6 = load i32**, i32*** %ret, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %call2 = call i8* @_Znwm(i64 8) #3
  %7 = bitcast i8* %call2 to i32**
  store i32** %7, i32*** %p1, align 8
  %8 = load i32*, i32** %eplist.addr, align 8
  %9 = load i32**, i32*** %p1, align 8
  store i32* %8, i32** %9, align 8
  %10 = load i32**, i32*** %p1, align 8
  %11 = bitcast i32** %10 to i32*
  %12 = load i32**, i32*** %ret, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %12, i64 1
  store i32* %11, i32** %arrayidx3, align 8
  %call4 = call i8* @_Znwm(i64 8) #3
  %13 = bitcast i8* %call4 to i32**
  store i32** %13, i32*** %p2, align 8
  %14 = load i32*, i32** %update.addr, align 8
  %15 = load i32**, i32*** %p2, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32**, i32*** %p2, align 8
  %17 = bitcast i32** %16 to i32*
  %18 = load i32**, i32*** %ret, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %18, i64 2
  store i32* %17, i32** %arrayidx5, align 8
  %call6 = call i8* @_Znwm(i64 8) #3
  %19 = bitcast i8* %call6 to i8**
  store i8** %19, i8*** %p3, align 8
  %20 = load i8*, i8** %mask.addr, align 8
  %21 = load i8**, i8*** %p3, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8**, i8*** %p3, align 8
  %23 = bitcast i8** %22 to i32*
  %24 = load i32**, i32*** %ret, align 8
  %arrayidx7 = getelementptr inbounds i32*, i32** %24, i64 3
  store i32* %23, i32** %arrayidx7, align 8
  %call8 = call i8* @_Znwm(i64 8) #3
  %25 = bitcast i8* %call8 to %struct.cudaGraph**
  store %struct.cudaGraph** %25, %struct.cudaGraph*** %p4, align 8
  %26 = load %struct.cudaGraph*, %struct.cudaGraph** %graph.addr, align 8
  %27 = load %struct.cudaGraph**, %struct.cudaGraph*** %p4, align 8
  store %struct.cudaGraph* %26, %struct.cudaGraph** %27, align 8
  %28 = load %struct.cudaGraph**, %struct.cudaGraph*** %p4, align 8
  %29 = bitcast %struct.cudaGraph** %28 to i32*
  %30 = load i32**, i32*** %ret, align 8
  %arrayidx9 = getelementptr inbounds i32*, i32** %30, i64 4
  store i32* %29, i32** %arrayidx9, align 8
  %call10 = call i8* @_Znwm(i64 4) #3
  %31 = bitcast i8* %call10 to i32*
  store i32* %31, i32** %p5, align 8
  %32 = load i32, i32* %bid.addr, align 4
  %33 = load i32*, i32** %p5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %p5, align 8
  %35 = load i32**, i32*** %ret, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %35, i64 5
  store i32* %34, i32** %arrayidx11, align 8
  %36 = load i32**, i32*** %ret, align 8
  %37 = bitcast i32** %36 to i8*
  ret i8* %37
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #1

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 {
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
  %t = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @_ZN9cudaGraphC2Ev(%struct.cudaGraph* %graph)
  %call = call i8* @_Znam(i64 35108864) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %vplist, align 8
  %call1 = call i8* @_Znam(i64 35108864) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %eplist, align 8
  %call2 = call i8* @_Znam(i64 35108864) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %update, align 8
  %call3 = call i8* @_Znam(i64 8777216) #3
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
  %call4 = call i8* @_Znam(i64 8) #3
  %7 = bitcast i8* %call4 to i8**
  store i8** %7, i8*** %inp, align 8
  store i64 0, i64* %t, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %8 = load i64, i64* %t, align 8
  %cmp6 = icmp slt i64 %8, 1
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %9 = load i64, i64* %t, align 8
  %conv = trunc i64 %9 to i32
  %10 = load i32*, i32** %vplist, align 8
  %11 = load i32*, i32** %eplist, align 8
  %12 = load i32*, i32** %update, align 8
  %13 = load i8*, i8** %mask, align 8
  %call8 = call i8* @_Z9gen_inputiPjS_S_PbP9cudaGraph(i32 %conv, i32* %10, i32* %11, i32* %12, i8* %13, %struct.cudaGraph* %graph)
  %14 = load i8**, i8*** %inp, align 8
  %15 = load i64, i64* %t, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %14, i64 %15
  store i8* %call8, i8** %arrayidx9, align 8
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %16 = load i64, i64* %t, align 8
  %inc11 = add nsw i64 %16, 1
  store i64 %inc11, i64* %t, align 8
  br label %for.cond5

for.end12:                                        ; preds = %for.cond5
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9cudaGraphC2Ev(%struct.cudaGraph* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.cudaGraph*, align 8
  store %struct.cudaGraph* %this, %struct.cudaGraph** %this.addr, align 8
  %this1 = load %struct.cudaGraph*, %struct.cudaGraph** %this.addr, align 8
  %call = call i8* @_Znam(i64 70217728) #3
  %0 = bitcast i8* %call to i64*
  %vlist = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 0
  store i64* %0, i64** %vlist, align 8
  %call2 = call i8* @_Znam(i64 70218528) #3
  %1 = bitcast i8* %call2 to i64*
  %elist = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 1
  store i64* %1, i64** %elist, align 8
  %vertex_cnt = getelementptr inbounds %struct.cudaGraph, %struct.cudaGraph* %this1, i32 0, i32 2
  store i64 1024, i64* %vertex_cnt, align 8
  ret void
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { builtin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
