; ModuleID = 'gen_input.bc'
source_filename = "generate_input.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cupbopGetKernellFnArgsHandler = dso_local global i8* (i8*, i8**)* @__cupbopGetKernellFnArgs

declare dso_local void @_Z4Fan1PfS_ii_wrapper(i8*) unnamed_addr

declare dso_local void @_Z4Fan2PfS_S_iii_wrapper(i8*) unnamed_addr

declare dso_local i8* @_Znam(i64) unnamed_addr

declare dso_local i8* @_Znwm(i64) unnamed_addr

define i8* @_Z4Fan2PfS_S_iii_wrapper_getArgs(i8** %arg) {
entry:
  %arg.addr = alloca i8**
  store i8** %arg, i8*** %arg.addr
  %ret = alloca i32**
  %0 = call i8* @_Znam(i64 6)
  %1 = bitcast i8* %0 to i32**
  store i32** %1, i32*** %ret
  %m_cuda = alloca float*
  %m_cuda.ptraddr = alloca float**
  %2 = call i8* @_Znwm(i64 8)
  %3 = bitcast i8* %2 to float**
  store float** %3, float*** %m_cuda.ptraddr
  %4 = load i8**, i8*** %arg.addr
  %5 = getelementptr i8*, i8** %4, i32 0
  %6 = load i8*, i8** %5
  %7 = bitcast i8* %6 to float**
  %8 = load float*, float** %7
  store float* %8, float** %m_cuda
  %9 = load float*, float** %m_cuda
  %10 = load float**, float*** %m_cuda.ptraddr
  store float* %9, float** %10
  %11 = load float**, float*** %m_cuda.ptraddr
  %12 = bitcast float** %11 to i32*
  %13 = load i32**, i32*** %ret
  %14 = getelementptr i32*, i32** %13, i32 0
  store i32* %12, i32** %14
  %a_cuda = alloca float*
  %a_cuda.ptraddr = alloca float**
  %15 = call i8* @_Znwm(i64 8)
  %16 = bitcast i8* %15 to float**
  store float** %16, float*** %a_cuda.ptraddr
  %17 = load i8**, i8*** %arg.addr
  %18 = getelementptr i8*, i8** %17, i32 1
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to float**
  %21 = load float*, float** %20
  store float* %21, float** %a_cuda
  %22 = load float*, float** %a_cuda
  %23 = load float**, float*** %a_cuda.ptraddr
  store float* %22, float** %23
  %24 = load float**, float*** %a_cuda.ptraddr
  %25 = bitcast float** %24 to i32*
  %26 = load i32**, i32*** %ret
  %27 = getelementptr i32*, i32** %26, i32 1
  store i32* %25, i32** %27
  %b_cuda = alloca float*
  %b_cuda.ptraddr = alloca float**
  %28 = call i8* @_Znwm(i64 8)
  %29 = bitcast i8* %28 to float**
  store float** %29, float*** %b_cuda.ptraddr
  %30 = load i8**, i8*** %arg.addr
  %31 = getelementptr i8*, i8** %30, i32 2
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to float**
  %34 = load float*, float** %33
  store float* %34, float** %b_cuda
  %35 = load float*, float** %b_cuda
  %36 = load float**, float*** %b_cuda.ptraddr
  store float* %35, float** %36
  %37 = load float**, float*** %b_cuda.ptraddr
  %38 = bitcast float** %37 to i32*
  %39 = load i32**, i32*** %ret
  %40 = getelementptr i32*, i32** %39, i32 2
  store i32* %38, i32** %40
  %Size = alloca i32
  %Size.ptraddr = alloca i32*
  %41 = call i8* @_Znwm(i64 4)
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %Size.ptraddr
  %43 = load i8**, i8*** %arg.addr
  %44 = getelementptr i8*, i8** %43, i32 3
  %45 = load i8*, i8** %44
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46
  store i32 %47, i32* %Size
  %48 = load i32, i32* %Size
  %49 = load i32*, i32** %Size.ptraddr
  store i32 %48, i32* %49
  %50 = load i32*, i32** %Size.ptraddr
  %51 = bitcast i32* %50 to i32*
  %52 = load i32**, i32*** %ret
  %53 = getelementptr i32*, i32** %52, i32 3
  store i32* %51, i32** %53
  %j1 = alloca i32
  %j1.ptraddr = alloca i32*
  %54 = call i8* @_Znwm(i64 4)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %j1.ptraddr
  %56 = load i8**, i8*** %arg.addr
  %57 = getelementptr i8*, i8** %56, i32 4
  %58 = load i8*, i8** %57
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59
  store i32 %60, i32* %j1
  %61 = load i32, i32* %j1
  %62 = load i32*, i32** %j1.ptraddr
  store i32 %61, i32* %62
  %63 = load i32*, i32** %j1.ptraddr
  %64 = bitcast i32* %63 to i32*
  %65 = load i32**, i32*** %ret
  %66 = getelementptr i32*, i32** %65, i32 4
  store i32* %64, i32** %66
  %t = alloca i32
  %t.ptraddr = alloca i32*
  %67 = call i8* @_Znwm(i64 4)
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %t.ptraddr
  %69 = load i8**, i8*** %arg.addr
  %70 = getelementptr i8*, i8** %69, i32 5
  %71 = load i8*, i8** %70
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %72
  store i32 %73, i32* %t
  %74 = load i32, i32* %t
  %75 = load i32*, i32** %t.ptraddr
  store i32 %74, i32* %75
  %76 = load i32*, i32** %t.ptraddr
  %77 = bitcast i32* %76 to i32*
  %78 = load i32**, i32*** %ret
  %79 = getelementptr i32*, i32** %78, i32 5
  store i32* %77, i32** %79
  %80 = load i32**, i32*** %ret
  %81 = bitcast i32** %80 to i8*
  ret i8* %81
}

define i8* @_Z4Fan1PfS_ii_wrapper_getArgs(i8** %arg) {
entry:
  %arg.addr = alloca i8**
  store i8** %arg, i8*** %arg.addr
  %ret = alloca i32**
  %0 = call i8* @_Znam(i64 4)
  %1 = bitcast i8* %0 to i32**
  store i32** %1, i32*** %ret
  %m_cuda = alloca float*
  %m_cuda.ptraddr = alloca float**
  %2 = call i8* @_Znwm(i64 8)
  %3 = bitcast i8* %2 to float**
  store float** %3, float*** %m_cuda.ptraddr
  %4 = load i8**, i8*** %arg.addr
  %5 = getelementptr i8*, i8** %4, i32 0
  %6 = load i8*, i8** %5
  %7 = bitcast i8* %6 to float**
  %8 = load float*, float** %7
  store float* %8, float** %m_cuda
  %9 = load float*, float** %m_cuda
  %10 = load float**, float*** %m_cuda.ptraddr
  store float* %9, float** %10
  %11 = load float**, float*** %m_cuda.ptraddr
  %12 = bitcast float** %11 to i32*
  %13 = load i32**, i32*** %ret
  %14 = getelementptr i32*, i32** %13, i32 0
  store i32* %12, i32** %14
  %a_cuda = alloca float*
  %a_cuda.ptraddr = alloca float**
  %15 = call i8* @_Znwm(i64 8)
  %16 = bitcast i8* %15 to float**
  store float** %16, float*** %a_cuda.ptraddr
  %17 = load i8**, i8*** %arg.addr
  %18 = getelementptr i8*, i8** %17, i32 1
  %19 = load i8*, i8** %18
  %20 = bitcast i8* %19 to float**
  %21 = load float*, float** %20
  store float* %21, float** %a_cuda
  %22 = load float*, float** %a_cuda
  %23 = load float**, float*** %a_cuda.ptraddr
  store float* %22, float** %23
  %24 = load float**, float*** %a_cuda.ptraddr
  %25 = bitcast float** %24 to i32*
  %26 = load i32**, i32*** %ret
  %27 = getelementptr i32*, i32** %26, i32 1
  store i32* %25, i32** %27
  %Size = alloca i32
  %Size.ptraddr = alloca i32*
  %28 = call i8* @_Znwm(i64 4)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %Size.ptraddr
  %30 = load i8**, i8*** %arg.addr
  %31 = getelementptr i8*, i8** %30, i32 2
  %32 = load i8*, i8** %31
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33
  store i32 %34, i32* %Size
  %35 = load i32, i32* %Size
  %36 = load i32*, i32** %Size.ptraddr
  store i32 %35, i32* %36
  %37 = load i32*, i32** %Size.ptraddr
  %38 = bitcast i32* %37 to i32*
  %39 = load i32**, i32*** %ret
  %40 = getelementptr i32*, i32** %39, i32 2
  store i32* %38, i32** %40
  %t = alloca i32
  %t.ptraddr = alloca i32*
  %41 = call i8* @_Znwm(i64 4)
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %t.ptraddr
  %43 = load i8**, i8*** %arg.addr
  %44 = getelementptr i8*, i8** %43, i32 3
  %45 = load i8*, i8** %44
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46
  store i32 %47, i32* %t
  %48 = load i32, i32* %t
  %49 = load i32*, i32** %t.ptraddr
  store i32 %48, i32* %49
  %50 = load i32*, i32** %t.ptraddr
  %51 = bitcast i32* %50 to i32*
  %52 = load i32**, i32*** %ret
  %53 = getelementptr i32*, i32** %52, i32 3
  store i32* %51, i32** %53
  %54 = load i32**, i32*** %ret
  %55 = bitcast i32** %54 to i8*
  ret i8* %55
}

define i8* @__cupbopGetKernellFnArgs(i8* %fnPtr, i8** %args) {
entry:
  %fnPtr.addr = alloca i8*, align 8
  store i8* %fnPtr, i8** %fnPtr.addr
  %0 = load i8*, i8** %fnPtr.addr
  %args.addr = alloca i8**
  store i8** %args, i8*** %args.addr
  %1 = load i8**, i8*** %args.addr
  %2 = icmp eq i8* %0, bitcast (void (i8*)* @_Z4Fan2PfS_S_iii_wrapper to i8*)
  br i1 %2, label %if.then1, label %if.else1

if.then1:                                         ; preds = %entry
  %3 = call i8* @_Z4Fan2PfS_S_iii_wrapper_getArgs(i8** %1)
  ret i8* %3

if.else1:                                         ; preds = %entry
  %4 = icmp eq i8* %0, bitcast (void (i8*)* @_Z4Fan1PfS_ii_wrapper to i8*)
  br i1 %4, label %if.then2, label %if.else2

if.then2:                                         ; preds = %if.else1
  %5 = call i8* @_Z4Fan1PfS_ii_wrapper_getArgs(i8** %1)
  ret i8* %5

if.else2:                                         ; preds = %if.else1
  ret i8* null
}
