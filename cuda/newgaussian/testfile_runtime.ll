; ModuleID = 'testfile_runtime.bc'
source_filename = "runtime_kernel_attr.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare dso_local void @_Z4Fan1PfS_ii_wrapper(i8*) unnamed_addr

declare dso_local void @_Z4Fan2PfS_S_iii_wrapper(i8*) unnamed_addr

define i32 @getFuncArgsNum(i8* %fnPtr) {
entry:
  %fnPtr.addr = alloca i8*
  store i8* %fnPtr, i8** %fnPtr.addr
  %0 = load i8*, i8** %fnPtr.addr
  %i = alloca i32
  store i32 0, i32* %i
}
