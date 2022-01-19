; ModuleID = 'runtime_kernel_attr.bc'
source_filename = "runtime_kernel_attr.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getFuncArgsNum = dso_local global i32 (i8*)* @getFuncArgsNumFn

declare dso_local void @_Z4Fan1PfS_ii_wrapper(i8*) unnamed_addr

declare dso_local void @_Z4Fan2PfS_S_iii_wrapper(i8*) unnamed_addr

define i32 @getFuncArgsNumFn(i8* %fnPtr) {
entry:
  %fnPtr.addr = alloca i8*, align 8
  store i8* %fnPtr, i8** %fnPtr.addr
  %0 = load i8*, i8** %fnPtr.addr
  %i = alloca i32, align 4
  store i32 0, i32* %i
  %1 = icmp eq i8* %0, bitcast (void (i8*)* @_Z4Fan1PfS_ii_wrapper to i8*)
  br i1 %1, label %if.then1, label %if.else1

if.then1:                                         ; preds = %entry
  store i32 4, i32* %i
  br label %return

if.else1:                                         ; preds = %entry
  %2 = icmp eq i8* %0, bitcast (void (i8*)* @_Z4Fan2PfS_S_iii_wrapper to i8*)
  br i1 %2, label %if.then2, label %if.else2

if.then2:                                         ; preds = %if.else1
  store i32 6, i32* %i
  br label %return

if.else2:                                         ; preds = %if.else1
  store i32 -1, i32* %i
  br label %return

return:                                           ; preds = %if.else2, %if.then2, %if.then1
  %3 = load i32, i32* %i
  ret i32 %3
}
