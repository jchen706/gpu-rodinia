; ModuleID = 'newMain.bc'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }
%struct.node = type { i8**, i32*, %struct.node*, i8, i32, %struct.node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.list_t = type { %struct.list_item*, %struct.list_item*, i32, i32 (i8*, i8*)*, void (i8*)* }
%struct.list_item = type { %struct.list_item*, %struct.list_item*, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@knodes = local_unnamed_addr global %struct.knode* null, align 8
@krecords = local_unnamed_addr global %struct.record* null, align 8
@mem = local_unnamed_addr global i8* null, align 8
@freeptr = local_unnamed_addr global i64 0, align 8
@malloc_size = local_unnamed_addr global i64 0, align 8
@size = local_unnamed_addr global i64 0, align 8
@maxheight = local_unnamed_addr global i64 0, align 8
@order = local_unnamed_addr global i32 256, align 4
@queue = local_unnamed_addr global %struct.node* null, align 8
@verbose_output = local_unnamed_addr global i8 0, align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Allocation failed at %s:%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"main.cpp\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Successfully created knode with index %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Is Leaf: %d, Num Keys: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Pointers: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0AKeys: \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\0ANumber of records = %d, sizeof(record)=%d, total=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Number of knodes = %d, sizeof(knode)=%d, total=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\0ADone Transformation. Mem used: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Tree transformation took %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"B+ Tree of Order %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\09Amittai Aviram -- amittai.aviram@yale.edu  Version %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"as an integer argument:  bpt <order>.  \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%d] \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%d ->\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Leaf [\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"%d] ->\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"WG size of kernel 1 & 2  = %d \0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Selecting device %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Input File: %s \0A\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Command File: %s \0A\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Command File error\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"Command file reading error\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"******starting******\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Getting input from file %s...\0A\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Failure to open input file.\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"Record not found under key %d.\0A\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"Record found: %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"\0A ******command: k count=%d \0A\00", align 1
@.str.88 = private unnamed_addr constant [54 x i8] c"records_elem=%d, records_unit_mem=%d, records_mem=%d\0A\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"knodes_elem=%d, knodes_unit_mem=%d, knodes_mem=%d\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"aw+\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"Fail to open %s !\0A\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"%d    %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"For range %d to %d, \00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"%d records found\0A\00", align 1
@.str.96 = private unnamed_addr constant [39 x i8] c"\0A******command: j count=%d, rSize=%d \0A\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"Search range size is larger than data set size %d.\0A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"right before kernel wrapper\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"%d    %d    %d\0A\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [16 x i8] c"Memory Overflow\00", align 1
@str.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.102 = private unnamed_addr constant [71 x i8] c"\09following Silberschatz, Korth, Sidarshan, Database Concepts, 5th ed.\0A\00", align 1
@str.103 = private unnamed_addr constant [73 x i8] c"To build a B+ tree of a different order, start again and enter the order\00", align 1
@str.104 = private unnamed_addr constant [16 x i8] c"3 <= order <=20\00", align 1
@str.105 = private unnamed_addr constant [85 x i8] c"To start with input from a file of newline-delimited integers, start again and enter\00", align 1
@str.106 = private unnamed_addr constant [62 x i8] c"the order followed by the filename:  bpt <order> <inputfile>.\00", align 1
@str.107 = private unnamed_addr constant [57 x i8] c"Enter any of the following commands after the prompt > :\00", align 1
@str.108 = private unnamed_addr constant [59 x i8] c"\09i <k>  -- Insert <k> (an integer) as both key and value).\00", align 1
@str.109 = private unnamed_addr constant [41 x i8] c"\09f <k>  -- Find the value under key <k>.\00", align 1
@str.110 = private unnamed_addr constant [74 x i8] c"\09p <k> -- Print the path from the root to key k and its associated value.\00", align 1
@str.111 = private unnamed_addr constant [52 x i8] c"\09d <k>  -- Delete key <k> and its associated value.\00", align 1
@str.112 = private unnamed_addr constant [81 x i8] c"\09x -- Destroy the whole tree.  Start again with an empty tree of the same order.\00", align 1
@str.113 = private unnamed_addr constant [25 x i8] c"\09t -- Print the B+ tree.\00", align 1
@str.114 = private unnamed_addr constant [61 x i8] c"\09l -- Print the keys of the leaves (bottom row of the tree).\00", align 1
@str.115 = private unnamed_addr constant [73 x i8] c"\09v -- Toggle output of pointer addresses (\22verbose\22) in tree and leaves.\00", align 1
@str.116 = private unnamed_addr constant [28 x i8] c"\09q -- Quit. (Or use Ctl-D.)\00", align 1
@str.117 = private unnamed_addr constant [31 x i8] c"\09? -- Print this help message.\00", align 1
@str.119 = private unnamed_addr constant [12 x i8] c"Empty tree.\00", align 1
@str.120 = private unnamed_addr constant [50 x i8] c"Search for nonexistent pointer to node in parent.\00", align 1
@str.121 = private unnamed_addr constant [17 x i8] c"Command Buffer: \00", align 1
@str.122 = private unnamed_addr constant [30 x i8] c"ERROR: Argument -file missing\00", align 1
@str.123 = private unnamed_addr constant [49 x i8] c"Transforming data to a GPU suitable structure...\00", align 1
@str.124 = private unnamed_addr constant [20 x i8] c"Waiting for command\00", align 1
@str.125 = private unnamed_addr constant [92 x i8] c"ERROR: Number of requested querries should be 65,535 at most. (limited by # of CUDA blocks)\00", align 1
@str.126 = private unnamed_addr constant [26 x i8] c"Fail to open output.txt !\00", align 1
@str.127 = private unnamed_addr constant [53 x i8] c"Usage: ./b+tree file input_file command command_list\00", align 1

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define void @_Z9list_initP6list_tPFiPKvS2_EPFvPvE(%struct.list_t* nocapture %l, i32 (i8*, i8*)* %compare, void (i8*)* %datum_delete) local_unnamed_addr #0 {
entry:
  %compare1 = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 3
  %0 = bitcast %struct.list_t* %l to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare1, align 8, !tbaa !3
  %datum_delete2 = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  store void (i8*)* %datum_delete, void (i8*)** %datum_delete2, align 8, !tbaa !9
  ret void
}

; Function Attrs: uwtable
define void @_Z11list_deleteP6list_t(%struct.list_t* nocapture %l) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool10 = icmp eq %struct.list_item* %0, null
  br i1 %tobool10, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %datum_delete = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %_Z16list_item_deleteP9list_itemPFvPvE.exit, %for.body.lr.ph
  %li.011 = phi %struct.list_item* [ %0, %for.body.lr.ph ], [ %1, %_Z16list_item_deleteP9list_itemPFvPvE.exit ]
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %li.011, i64 0, i32 1
  %1 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !11
  %2 = load void (i8*)*, void (i8*)** %datum_delete, align 8, !tbaa !9
  %tobool.i = icmp eq void (i8*)* %2, null
  br i1 %tobool.i, label %_Z16list_item_deleteP9list_itemPFvPvE.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.011, i64 0, i32 2
  %3 = load i8*, i8** %datum.i, align 8, !tbaa !13
  tail call void %2(i8* %3)
  br label %_Z16list_item_deleteP9list_itemPFvPvE.exit

_Z16list_item_deleteP9list_itemPFvPvE.exit:       ; preds = %if.then.i, %for.body
  %4 = bitcast %struct.list_item* %li.011 to i8*
  tail call void @free(i8* %4) #15
  %tobool = icmp eq %struct.list_item* %1, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %_Z16list_item_deleteP9list_itemPFvPvE.exit, %entry
  %5 = bitcast %struct.list_t* %l to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: uwtable
define void @_Z16list_item_deleteP9list_itemPFvPvE(%struct.list_item* nocapture %li, void (i8*)* %datum_delete) local_unnamed_addr #1 {
entry:
  %tobool = icmp eq void (i8*)* %datum_delete, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %li, i64 0, i32 2
  %0 = load i8*, i8** %datum, align 8, !tbaa !13
  tail call void %datum_delete(i8* %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.list_item* %li to i8*
  tail call void @free(i8* %1) #15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: uwtable
define void @_Z10list_resetP6list_t(%struct.list_t* nocapture %l) local_unnamed_addr #1 {
entry:
  %head.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head.i, align 8, !tbaa !10
  %tobool10.i = icmp eq %struct.list_item* %0, null
  br i1 %tobool10.i, label %_Z11list_deleteP6list_t.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %entry
  %datum_delete.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %_Z16list_item_deleteP9list_itemPFvPvE.exit.i, %for.body.lr.ph.i
  %li.011.i = phi %struct.list_item* [ %0, %for.body.lr.ph.i ], [ %1, %_Z16list_item_deleteP9list_itemPFvPvE.exit.i ]
  %next.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.011.i, i64 0, i32 1
  %1 = load %struct.list_item*, %struct.list_item** %next.i, align 8, !tbaa !11
  %2 = load void (i8*)*, void (i8*)** %datum_delete.i, align 8, !tbaa !9
  %tobool.i.i = icmp eq void (i8*)* %2, null
  br i1 %tobool.i.i, label %_Z16list_item_deleteP9list_itemPFvPvE.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %datum.i.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.011.i, i64 0, i32 2
  %3 = load i8*, i8** %datum.i.i, align 8, !tbaa !13
  tail call void %2(i8* %3)
  br label %_Z16list_item_deleteP9list_itemPFvPvE.exit.i

_Z16list_item_deleteP9list_itemPFvPvE.exit.i:     ; preds = %if.then.i.i, %for.body.i
  %4 = bitcast %struct.list_item* %li.011.i to i8*
  tail call void @free(i8* %4) #15
  %tobool.i = icmp eq %struct.list_item* %1, null
  br i1 %tobool.i, label %_Z11list_deleteP6list_t.exit, label %for.body.i

_Z11list_deleteP6list_t.exit:                     ; preds = %_Z16list_item_deleteP9list_itemPFvPvE.exit.i, %entry
  %5 = bitcast %struct.list_t* %l to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z21list_insert_item_headP6list_tP9list_item(%struct.list_t* nocapture %l, %struct.list_item* %i) local_unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool = icmp eq %struct.list_item* %0, null
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %pred = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 0
  %tail.sink = select i1 %tobool, %struct.list_item** %tail, %struct.list_item** %pred
  store %struct.list_item* %i, %struct.list_item** %tail.sink, align 8, !tbaa !14
  store %struct.list_item* %i, %struct.list_item** %head, align 8, !tbaa !10
  %1 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  store %struct.list_item* null, %struct.list_item** %1, align 8
  %2 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* %0, %struct.list_item** %2, align 8
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %3 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %3, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z21list_insert_item_tailP6list_tP9list_item(%struct.list_t* nocapture %l, %struct.list_item* %i) local_unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool = icmp eq %struct.list_item* %0, null
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %1, i64 0, i32 1
  store %struct.list_item* %i, %struct.list_item** %next, align 8, !tbaa !11
  %2 = ptrtoint %struct.list_item* %1 to i64
  %3 = bitcast %struct.list_item* %i to i64*
  store i64 %2, i64* %3, align 8, !tbaa !17
  store %struct.list_item* %i, %struct.list_item** %tail, align 8, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.list_item* %i, %struct.list_item** %tail, align 8, !tbaa !16
  store %struct.list_item* %i, %struct.list_item** %head, align 8, !tbaa !10
  %pred6 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  store %struct.list_item* null, %struct.list_item** %pred6, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* null, %struct.list_item** %4, align 8
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %5 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %5, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z23list_insert_item_beforeP6list_tP9list_itemS2_(%struct.list_t* nocapture %l, %struct.list_item* %next, %struct.list_item* %i) local_unnamed_addr #3 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %cmp = icmp eq %struct.list_item* %0, %next
  %next1 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* %next, %struct.list_item** %next1, align 8, !tbaa !11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pred = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  store %struct.list_item* null, %struct.list_item** %pred, align 8, !tbaa !17
  store %struct.list_item* %i, %struct.list_item** %head, align 8, !tbaa !10
  %pred3 = getelementptr inbounds %struct.list_item, %struct.list_item* %next, i64 0, i32 0
  br label %if.end

if.else:                                          ; preds = %entry
  %pred5 = getelementptr inbounds %struct.list_item, %struct.list_item* %next, i64 0, i32 0
  %1 = bitcast %struct.list_item* %next to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !17
  %3 = bitcast %struct.list_item* %i to i64*
  store i64 %2, i64* %3, align 8, !tbaa !17
  %4 = load %struct.list_item*, %struct.list_item** %pred5, align 8, !tbaa !17
  %next8 = getelementptr inbounds %struct.list_item, %struct.list_item* %4, i64 0, i32 1
  store %struct.list_item* %i, %struct.list_item** %next8, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pred5.sink = phi %struct.list_item** [ %pred5, %if.else ], [ %pred3, %if.then ]
  store %struct.list_item* %i, %struct.list_item** %pred5.sink, align 8, !tbaa !17
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %5 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %5, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z22list_insert_item_afterP6list_tP9list_itemS2_(%struct.list_t* nocapture %l, %struct.list_item* %pred, %struct.list_item* %i) local_unnamed_addr #3 {
entry:
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %0 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %cmp = icmp eq %struct.list_item* %0, %pred
  %pred1 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  store %struct.list_item* %pred, %struct.list_item** %pred1, align 8, !tbaa !17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* null, %struct.list_item** %next, align 8, !tbaa !11
  store %struct.list_item* %i, %struct.list_item** %tail, align 8, !tbaa !16
  %next3 = getelementptr inbounds %struct.list_item, %struct.list_item* %pred, i64 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  %next5 = getelementptr inbounds %struct.list_item, %struct.list_item* %pred, i64 0, i32 1
  %1 = bitcast %struct.list_item** %next5 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !11
  %next6 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  %3 = bitcast %struct.list_item** %next6 to i64*
  store i64 %2, i64* %3, align 8, !tbaa !11
  %4 = load %struct.list_item*, %struct.list_item** %next5, align 8, !tbaa !11
  %pred8 = getelementptr inbounds %struct.list_item, %struct.list_item* %4, i64 0, i32 0
  store %struct.list_item* %i, %struct.list_item** %pred8, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next5.sink = phi %struct.list_item** [ %next5, %if.else ], [ %next3, %if.then ]
  store %struct.list_item* %i, %struct.list_item** %next5.sink, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %5 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %5, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define void @_Z23list_insert_item_sortedP6list_tP9list_item(%struct.list_t* nocapture %l, %struct.list_item* %i) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %if.else17, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %compare = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 3
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc, %land.rhs.lr.ph
  %itr.053 = phi %struct.list_item* [ %0, %land.rhs.lr.ph ], [ %4, %for.inc ]
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare, align 8, !tbaa !3
  %2 = load i8*, i8** %datum.i, align 8, !tbaa !13
  %datum.i50 = getelementptr inbounds %struct.list_item, %struct.list_item* %itr.053, i64 0, i32 2
  %3 = load i8*, i8** %datum.i50, align 8, !tbaa !13
  %call4 = tail call i32 %1(i8* %2, i8* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %for.inc, label %if.then6

for.inc:                                          ; preds = %land.rhs
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %itr.053, i64 0, i32 1
  %4 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !11
  %tobool2 = icmp eq %struct.list_item* %4, null
  br i1 %tobool2, label %if.else, label %land.rhs

if.then6:                                         ; preds = %land.rhs
  %next7 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* %itr.053, %struct.list_item** %next7, align 8, !tbaa !11
  %pred = getelementptr inbounds %struct.list_item, %struct.list_item* %itr.053, i64 0, i32 0
  %5 = bitcast %struct.list_item* %itr.053 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !17
  %pred8 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  %7 = bitcast %struct.list_item* %i to i64*
  store i64 %6, i64* %7, align 8, !tbaa !17
  store %struct.list_item* %i, %struct.list_item** %pred, align 8, !tbaa !17
  %8 = load %struct.list_item*, %struct.list_item** %pred8, align 8, !tbaa !17
  %next11 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i64 0, i32 1
  store %struct.list_item* %i, %struct.list_item** %next11, align 8, !tbaa !11
  br label %if.end22

if.else:                                          ; preds = %for.inc
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %9 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %next12 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i64 0, i32 1
  store %struct.list_item* %i, %struct.list_item** %next12, align 8, !tbaa !11
  %10 = ptrtoint %struct.list_item* %9 to i64
  %11 = bitcast %struct.list_item* %i to i64*
  store i64 %10, i64* %11, align 8, !tbaa !17
  %next15 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  store %struct.list_item* null, %struct.list_item** %next15, align 8, !tbaa !11
  store %struct.list_item* %i, %struct.list_item** %tail, align 8, !tbaa !16
  br label %if.end22

if.else17:                                        ; preds = %entry
  %tail18 = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  store %struct.list_item* %i, %struct.list_item** %tail18, align 8, !tbaa !16
  store %struct.list_item* %i, %struct.list_item** %head, align 8, !tbaa !10
  %12 = bitcast %struct.list_item* %i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.else, %if.then6
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %13 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %13, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @_Z19list_item_get_datumP9list_item(%struct.list_item* nocapture readonly %li) local_unnamed_addr #4 {
entry:
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %li, i64 0, i32 2
  %0 = load i8*, i8** %datum, align 8, !tbaa !13
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define void @_Z16list_insert_headP6list_tPv(%struct.list_t* nocapture %l, i8* %v) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %datum1.i = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %datum1.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false) #15
  store i8* %v, i8** %1, align 8, !tbaa !13
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %2 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool2 = icmp eq %struct.list_item* %2, null
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = bitcast %struct.list_item* %2 to i8**
  %next = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %next to %struct.list_item**
  store %struct.list_item* %2, %struct.list_item** %4, align 8, !tbaa !11
  store i8* %call, i8** %3, align 8, !tbaa !17
  %5 = bitcast %struct.list_t* %l to i8**
  store i8* %call, i8** %5, align 8, !tbaa !10
  %pred8 = bitcast i8* %call to %struct.list_item**
  store %struct.list_item* null, %struct.list_item** %pred8, align 8, !tbaa !17
  br label %if.end12

if.else:                                          ; preds = %if.end
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %6 = bitcast %struct.list_item** %tail to i8**
  store i8* %call, i8** %6, align 8, !tbaa !16
  %7 = bitcast %struct.list_t* %l to i8**
  store i8* %call, i8** %7, align 8, !tbaa !10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then3
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %8 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %8, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define void @_Z14list_item_initP9list_itemPv(%struct.list_item* nocapture %li, i8* %datum) local_unnamed_addr #0 {
entry:
  %datum1 = getelementptr inbounds %struct.list_item, %struct.list_item* %li, i64 0, i32 2
  %0 = bitcast %struct.list_item* %li to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8* %datum, i8** %datum1, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z16list_insert_tailP6list_tPv(%struct.list_t* nocapture %l, i8* %v) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 313) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %datum1.i = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %datum1.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false) #15
  store i8* %v, i8** %1, align 8, !tbaa !13
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %2 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool2 = icmp eq %struct.list_item* %2, null
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %3, i64 0, i32 1
  %4 = bitcast %struct.list_item** %next to i8**
  store i8* %call, i8** %4, align 8, !tbaa !11
  %5 = ptrtoint %struct.list_item* %3 to i64
  %6 = bitcast i8* %call to i64*
  store i64 %5, i64* %6, align 8, !tbaa !17
  %next5 = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %next5 to %struct.list_item**
  store %struct.list_item* null, %struct.list_item** %7, align 8, !tbaa !11
  %8 = bitcast %struct.list_item** %tail to i8**
  store i8* %call, i8** %8, align 8, !tbaa !16
  br label %if.end11

if.else:                                          ; preds = %if.end
  %9 = bitcast %struct.list_item** %tail to i8**
  store i8* %call, i8** %9, align 8, !tbaa !16
  %10 = bitcast %struct.list_t* %l to i8**
  store i8* %call, i8** %10, align 8, !tbaa !10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %11 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %11, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z18list_insert_beforeP6list_tP9list_itemPv(%struct.list_t* nocapture %l, %struct.list_item* %next, i8* %v) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 334) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %datum1.i = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %datum1.i to i8**
  %2 = bitcast i8* %call to i64*
  store i64 0, i64* %2, align 8
  store i8* %v, i8** %1, align 8, !tbaa !13
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %3 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %cmp = icmp eq %struct.list_item* %3, %next
  %next3 = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %next3 to %struct.list_item**
  store %struct.list_item* %next, %struct.list_item** %4, align 8, !tbaa !11
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %pred = bitcast i8* %call to %struct.list_item**
  store %struct.list_item* null, %struct.list_item** %pred, align 8, !tbaa !17
  %5 = bitcast %struct.list_t* %l to i8**
  br label %if.end12

if.else:                                          ; preds = %if.end
  %6 = bitcast %struct.list_item* %next to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !17
  %8 = bitcast i8* %call to i64*
  store i64 %7, i64* %8, align 8, !tbaa !17
  %.cast = inttoptr i64 %7 to %struct.list_item*
  %next10 = getelementptr inbounds %struct.list_item, %struct.list_item* %.cast, i64 0, i32 1
  %9 = bitcast %struct.list_item** %next10 to i8**
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %.sink = phi i8** [ %9, %if.else ], [ %5, %if.then2 ]
  store i8* %call, i8** %.sink, align 8, !tbaa !14
  %10 = bitcast %struct.list_item* %next to i8**
  store i8* %call, i8** %10, align 8, !tbaa !17
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %11 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %11, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z17list_insert_afterP6list_tP9list_itemPv(%struct.list_t* nocapture %l, %struct.list_item* %pred, i8* %v) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 360) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %datum1.i = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %datum1.i to i8**
  %2 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %2 to i64*
  store i64 0, i64* %3, align 8
  store i8* %v, i8** %1, align 8, !tbaa !13
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %4 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %cmp = icmp eq %struct.list_item* %4, %pred
  %pred3 = bitcast i8* %call to %struct.list_item**
  store %struct.list_item* %pred, %struct.list_item** %pred3, align 8, !tbaa !17
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %next = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %next to %struct.list_item**
  store %struct.list_item* null, %struct.list_item** %5, align 8, !tbaa !11
  %6 = bitcast %struct.list_item** %tail to i8**
  store i8* %call, i8** %6, align 8, !tbaa !16
  %next5 = getelementptr inbounds %struct.list_item, %struct.list_item* %pred, i64 0, i32 1
  br label %if.end12

if.else:                                          ; preds = %if.end
  %next7 = getelementptr inbounds %struct.list_item, %struct.list_item* %pred, i64 0, i32 1
  %7 = bitcast %struct.list_item** %next7 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !11
  %next8 = getelementptr inbounds i8, i8* %call, i64 8
  %9 = bitcast i8* %next8 to i64*
  store i64 %8, i64* %9, align 8, !tbaa !11
  %10 = inttoptr i64 %8 to i8**
  store i8* %call, i8** %10, align 8, !tbaa !17
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %next7.sink = phi %struct.list_item** [ %next7, %if.else ], [ %next5, %if.then2 ]
  %11 = bitcast %struct.list_item** %next7.sink to i8**
  store i8* %call, i8** %11, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %12 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %12, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define void @_Z18list_insert_sortedP6list_tPv(%struct.list_t* nocapture %l, i8* %v) local_unnamed_addr #1 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 386) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %datum1.i = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %datum1.i to i8**
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false) #15
  store i8* %v, i8** %1, align 8, !tbaa !13
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %2 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool2 = icmp eq %struct.list_item* %2, null
  br i1 %tobool2, label %if.else22, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end
  %compare = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 3
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare, align 8, !tbaa !3
  %datum.i5865 = getelementptr inbounds %struct.list_item, %struct.list_item* %2, i64 0, i32 2
  %4 = load i8*, i8** %datum.i5865, align 8, !tbaa !13
  %call866 = tail call i32 %3(i8* %v, i8* %4)
  %cmp67 = icmp slt i32 %call866, 0
  br i1 %cmp67, label %for.inc, label %if.then10

for.inc:                                          ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %itr.06168 = phi %struct.list_item* [ %5, %for.inc.land.rhs_crit_edge ], [ %2, %land.rhs.lr.ph ]
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %itr.06168, i64 0, i32 1
  %5 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !11
  %tobool5 = icmp eq %struct.list_item* %5, null
  br i1 %tobool5, label %if.else, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  %.pre = load i8*, i8** %1, align 8, !tbaa !13
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare, align 8, !tbaa !3
  %datum.i58 = getelementptr inbounds %struct.list_item, %struct.list_item* %5, i64 0, i32 2
  %7 = load i8*, i8** %datum.i58, align 8, !tbaa !13
  %call8 = tail call i32 %6(i8* %.pre, i8* %7)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %itr.061.lcssa = phi %struct.list_item* [ %2, %land.rhs.lr.ph ], [ %5, %for.inc.land.rhs_crit_edge ]
  %next11 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %next11 to %struct.list_item**
  store %struct.list_item* %itr.061.lcssa, %struct.list_item** %8, align 8, !tbaa !11
  %9 = bitcast %struct.list_item* %itr.061.lcssa to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !17
  %pred12 = bitcast i8* %call to %struct.list_item**
  %11 = bitcast i8* %call to i64*
  store i64 %10, i64* %11, align 8, !tbaa !17
  %12 = bitcast %struct.list_item* %itr.061.lcssa to i8**
  store i8* %call, i8** %12, align 8, !tbaa !17
  %13 = load %struct.list_item*, %struct.list_item** %pred12, align 8, !tbaa !17
  %next15 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i64 0, i32 1
  %14 = bitcast %struct.list_item** %next15 to i8**
  store i8* %call, i8** %14, align 8, !tbaa !11
  br label %if.end27

if.else:                                          ; preds = %for.inc
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %15 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %next16 = getelementptr inbounds %struct.list_item, %struct.list_item* %15, i64 0, i32 1
  %16 = bitcast %struct.list_item** %next16 to i8**
  store i8* %call, i8** %16, align 8, !tbaa !11
  %17 = ptrtoint %struct.list_item* %15 to i64
  %18 = bitcast i8* %call to i64*
  store i64 %17, i64* %18, align 8, !tbaa !17
  %next19 = getelementptr inbounds i8, i8* %call, i64 8
  %19 = bitcast i8* %next19 to %struct.list_item**
  store %struct.list_item* null, %struct.list_item** %19, align 8, !tbaa !11
  %20 = bitcast %struct.list_item** %tail to i8**
  store i8* %call, i8** %20, align 8, !tbaa !16
  br label %if.end27

if.else22:                                        ; preds = %if.end
  %tail23 = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %21 = bitcast %struct.list_item** %tail23 to i8**
  store i8* %call, i8** %21, align 8, !tbaa !16
  %22 = bitcast %struct.list_t* %l to i8**
  store i8* %call, i8** %22, align 8, !tbaa !10
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %call, i8 0, i64 16, i1 false)
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.else, %if.then10
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %23 = load i32, i32* %length, align 8, !tbaa !15
  %inc = add i32 %23, 1
  store i32 %inc, i32* %length, align 8, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define void @_Z16list_remove_itemP6list_tP9list_item(%struct.list_t* nocapture %l, %struct.list_item* %i) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %cmp = icmp eq %struct.list_item* %0, %i
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  %1 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !11
  store %struct.list_item* %1, %struct.list_item** %head, align 8, !tbaa !10
  %tobool = icmp eq %struct.list_item* %1, null
  br i1 %tobool, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %pred = getelementptr inbounds %struct.list_item, %struct.list_item* %1, i64 0, i32 0
  store %struct.list_item* null, %struct.list_item** %pred, align 8, !tbaa !17
  br label %if.end23

if.else:                                          ; preds = %if.then
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  store %struct.list_item* null, %struct.list_item** %tail, align 8, !tbaa !16
  br label %if.end23

if.else6:                                         ; preds = %entry
  %tail7 = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %2 = load %struct.list_item*, %struct.list_item** %tail7, align 8, !tbaa !16
  %cmp8 = icmp eq %struct.list_item* %2, %i
  br i1 %cmp8, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.else6
  %pred11 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  %3 = load %struct.list_item*, %struct.list_item** %pred11, align 8, !tbaa !17
  store %struct.list_item* %3, %struct.list_item** %tail7, align 8, !tbaa !16
  %next14 = getelementptr inbounds %struct.list_item, %struct.list_item* %3, i64 0, i32 1
  store %struct.list_item* null, %struct.list_item** %next14, align 8, !tbaa !11
  br label %if.end23

if.else15:                                        ; preds = %if.else6
  %next16 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 1
  %4 = bitcast %struct.list_item** %next16 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !11
  %pred17 = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 0
  %6 = load %struct.list_item*, %struct.list_item** %pred17, align 8, !tbaa !17
  %next18 = getelementptr inbounds %struct.list_item, %struct.list_item* %6, i64 0, i32 1
  %7 = bitcast %struct.list_item** %next18 to i64*
  store i64 %5, i64* %7, align 8, !tbaa !11
  %8 = ptrtoint %struct.list_item* %6 to i64
  %9 = bitcast %struct.list_item** %next16 to i64**
  %10 = load i64*, i64** %9, align 8, !tbaa !11
  store i64 %8, i64* %10, align 8, !tbaa !17
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.then9, %if.else, %if.then4
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %11 = load i32, i32* %length, align 8, !tbaa !15
  %dec = add i32 %11, -1
  store i32 %dec, i32* %length, align 8, !tbaa !15
  %datum_delete = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  %12 = load void (i8*)*, void (i8*)** %datum_delete, align 8, !tbaa !9
  %tobool.i = icmp eq void (i8*)* %12, null
  br i1 %tobool.i, label %_Z16list_item_deleteP9list_itemPFvPvE.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %i, i64 0, i32 2
  %13 = load i8*, i8** %datum.i, align 8, !tbaa !13
  tail call void %12(i8* %13)
  br label %_Z16list_item_deleteP9list_itemPFvPvE.exit

_Z16list_item_deleteP9list_itemPFvPvE.exit:       ; preds = %if.then.i, %if.end23
  %14 = bitcast %struct.list_item* %i to i8*
  tail call void @free(i8* %14) #15
  ret void
}

; Function Attrs: uwtable
define void @_Z16list_remove_headP6list_t(%struct.list_t* nocapture %l) local_unnamed_addr #1 {
if.then.i:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %next.i = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 1
  %1 = load %struct.list_item*, %struct.list_item** %next.i, align 8, !tbaa !11
  store %struct.list_item* %1, %struct.list_item** %head, align 8, !tbaa !10
  %tobool.i = icmp eq %struct.list_item* %1, null
  %tail.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %pred.i = getelementptr inbounds %struct.list_item, %struct.list_item* %1, i64 0, i32 0
  %tail.i.sink = select i1 %tobool.i, %struct.list_item** %tail.i, %struct.list_item** %pred.i
  store %struct.list_item* null, %struct.list_item** %tail.i.sink, align 8, !tbaa !14
  %length.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %2 = load i32, i32* %length.i, align 8, !tbaa !15
  %dec.i = add i32 %2, -1
  store i32 %dec.i, i32* %length.i, align 8, !tbaa !15
  %datum_delete.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  %3 = load void (i8*)*, void (i8*)** %datum_delete.i, align 8, !tbaa !9
  %tobool.i.i = icmp eq void (i8*)* %3, null
  br i1 %tobool.i.i, label %_Z16list_remove_itemP6list_tP9list_item.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %datum.i.i = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %4 = load i8*, i8** %datum.i.i, align 8, !tbaa !13
  tail call void %3(i8* %4)
  br label %_Z16list_remove_itemP6list_tP9list_item.exit

_Z16list_remove_itemP6list_tP9list_item.exit:     ; preds = %if.then.i.i, %if.then.i
  %5 = bitcast %struct.list_item* %0 to i8*
  tail call void @free(i8* %5) #15
  ret void
}

; Function Attrs: uwtable
define void @_Z16list_remove_tailP6list_t(%struct.list_t* nocapture %l) local_unnamed_addr #1 {
entry:
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %0 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %head.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %1 = load %struct.list_item*, %struct.list_item** %head.i, align 8, !tbaa !10
  %cmp.i = icmp eq %struct.list_item* %1, %0
  br i1 %cmp.i, label %if.then.i, label %if.then9.i

if.then.i:                                        ; preds = %entry
  %next.i = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 1
  %2 = load %struct.list_item*, %struct.list_item** %next.i, align 8, !tbaa !11
  store %struct.list_item* %2, %struct.list_item** %head.i, align 8, !tbaa !10
  %tobool.i = icmp eq %struct.list_item* %2, null
  %pred.i = getelementptr inbounds %struct.list_item, %struct.list_item* %2, i64 0, i32 0
  %spec.select = select i1 %tobool.i, %struct.list_item** %tail, %struct.list_item** %pred.i
  br label %if.end23.i

if.then9.i:                                       ; preds = %entry
  %pred11.i = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 0
  %3 = load %struct.list_item*, %struct.list_item** %pred11.i, align 8, !tbaa !17
  store %struct.list_item* %3, %struct.list_item** %tail, align 8, !tbaa !16
  %next14.i = getelementptr inbounds %struct.list_item, %struct.list_item* %3, i64 0, i32 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then9.i, %if.then.i
  %next14.i.sink = phi %struct.list_item** [ %next14.i, %if.then9.i ], [ %spec.select, %if.then.i ]
  store %struct.list_item* null, %struct.list_item** %next14.i.sink, align 8, !tbaa !14
  %length.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %4 = load i32, i32* %length.i, align 8, !tbaa !15
  %dec.i = add i32 %4, -1
  store i32 %dec.i, i32* %length.i, align 8, !tbaa !15
  %datum_delete.i = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 4
  %5 = load void (i8*)*, void (i8*)** %datum_delete.i, align 8, !tbaa !9
  %tobool.i.i = icmp eq void (i8*)* %5, null
  br i1 %tobool.i.i, label %_Z16list_remove_itemP6list_tP9list_item.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  %datum.i.i = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %6 = load i8*, i8** %datum.i.i, align 8, !tbaa !13
  tail call void %5(i8* %6)
  br label %_Z16list_remove_itemP6list_tP9list_item.exit

_Z16list_remove_itemP6list_tP9list_item.exit:     ; preds = %if.then.i.i, %if.end23.i
  %7 = bitcast %struct.list_item* %0 to i8*
  tail call void @free(i8* %7) #15
  ret void
}

; Function Attrs: uwtable
define %struct.list_item* @_Z14list_find_itemP6list_tPv(%struct.list_t* nocapture readonly %l, i8* %datum) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %compare = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 3
  %li.08 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !14
  %tobool9 = icmp eq %struct.list_item* %li.08, null
  br i1 %tobool9, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %for.inc, %entry
  %li.010 = phi %struct.list_item* [ %li.0, %for.inc ], [ %li.08, %entry ]
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare, align 8, !tbaa !3
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.010, i64 0, i32 2
  %1 = load i8*, i8** %datum.i, align 8, !tbaa !13
  %call1 = tail call i32 %0(i8* %datum, i8* %1)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %li.010, i64 0, i32 1
  %li.0 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %li.0, null
  br i1 %tobool, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %land.rhs, %entry
  %li.0.lcssa = phi %struct.list_item* [ null, %entry ], [ %li.010, %land.rhs ], [ null, %for.inc ]
  ret %struct.list_item* %li.0.lcssa
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.list_item* @_Z18list_get_head_itemP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  ret %struct.list_item* %0
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.list_item* @_Z18list_get_tail_itemP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %0 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  ret %struct.list_item* %0
}

; Function Attrs: uwtable
define i8* @_Z9list_findP6list_tPv(%struct.list_t* nocapture readonly %l, i8* %datum) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %li.011 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !14
  %tobool12 = icmp eq %struct.list_item* %li.011, null
  br i1 %tobool12, label %cond.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %compare = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 3
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %li.013, i64 0, i32 1
  %li.0 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %li.0, null
  br i1 %tobool, label %cond.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond, %land.rhs.lr.ph
  %li.013 = phi %struct.list_item* [ %li.011, %land.rhs.lr.ph ], [ %li.0, %for.cond ]
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare, align 8, !tbaa !3
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.013, i64 0, i32 2
  %1 = load i8*, i8** %datum.i, align 8, !tbaa !13
  %call1 = tail call i32 %0(i8* %datum, i8* %1)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cond.true, label %for.cond

cond.true:                                        ; preds = %land.rhs
  %datum.i.le = getelementptr inbounds %struct.list_item, %struct.list_item* %li.013, i64 0, i32 2
  %2 = load i8*, i8** %datum.i.le, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.cond, %entry
  %cond = phi i8* [ %2, %cond.true ], [ null, %entry ], [ null, %for.cond ]
  ret i8* %cond
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @_Z13list_get_headP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %1 = load i8*, i8** %datum, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @_Z13list_get_tailP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %0 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %1 = load i8*, i8** %datum, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z15list_get_lengthP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %0 = load i32, i32* %length, align 8, !tbaa !15
  ret i32 %0
}

; Function Attrs: norecurse nounwind readonly uwtable
define zeroext i1 @_Z13list_is_emptyP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %0 = load i32, i32* %length, align 8, !tbaa !15
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: norecurse nounwind readonly uwtable
define zeroext i1 @_Z14list_not_emptyP6list_t(%struct.list_t* nocapture readonly %l) local_unnamed_addr #4 {
entry:
  %length = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 2
  %0 = load i32, i32* %length, align 8, !tbaa !15
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: uwtable
define void @_Z16list_visit_itemsP6list_tPFvPvE(%struct.list_t* nocapture readonly %l, void (i8*)* nocapture %visitor) local_unnamed_addr #1 {
entry:
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %li.04 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !14
  %tobool5 = icmp eq %struct.list_item* %li.04, null
  br i1 %tobool5, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %li.06 = phi %struct.list_item* [ %li.0, %for.body ], [ %li.04, %entry ]
  %datum.i = getelementptr inbounds %struct.list_item, %struct.list_item* %li.06, i64 0, i32 2
  %0 = load i8*, i8** %datum.i, align 8, !tbaa !13
  tail call void %visitor(i8* %0)
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %li.06, i64 0, i32 1
  %li.0 = load %struct.list_item*, %struct.list_item** %next, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %li.0, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z18list_iterator_initP6list_tPP9list_item(%struct.list_t* readonly %l, %struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %tobool = icmp eq %struct.list_t* %l, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %head = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 0
  %0 = load %struct.list_item*, %struct.list_item** %head, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi %struct.list_item* [ %0, %cond.true ], [ null, %entry ]
  store %struct.list_item* %cond, %struct.list_item** %li, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define void @_Z20list_iterator_deletePP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #0 {
entry:
  store %struct.list_item* null, %struct.list_item** %li, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z18list_iterator_nextPP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 1
  %1 = bitcast %struct.list_item** %next to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !11
  %3 = bitcast %struct.list_item** %li to i64*
  store i64 %2, i64* %3, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z18list_iterator_prevPP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.list_item* %0 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !17
  %3 = bitcast %struct.list_item** %li to i64*
  store i64 %2, i64* %3, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @_Z23list_iterator_get_datumPP9list_item(%struct.list_item** nocapture readonly %li) local_unnamed_addr #4 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %1 = load i8*, i8** %datum, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: norecurse nounwind readonly uwtable
define zeroext i1 @_Z22list_iterator_is_validPP9list_item(%struct.list_item** nocapture readonly %li) local_unnamed_addr #4 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %cmp = icmp ne %struct.list_item* %0, null
  ret i1 %cmp
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z26list_reverse_iterator_initP6list_tPP9list_item(%struct.list_t* readonly %l, %struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %tobool = icmp eq %struct.list_t* %l, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %tail = getelementptr inbounds %struct.list_t, %struct.list_t* %l, i64 0, i32 1
  %0 = load %struct.list_item*, %struct.list_item** %tail, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi %struct.list_item* [ %0, %cond.true ], [ null, %entry ]
  store %struct.list_item* %cond, %struct.list_item** %li, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define void @_Z28list_reverse_iterator_deletePP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #0 {
entry:
  store %struct.list_item* null, %struct.list_item** %li, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z26list_reverse_iterator_nextPP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.list_item* %0 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !17
  %3 = bitcast %struct.list_item** %li to i64*
  store i64 %2, i64* %3, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z26list_reverse_iterator_prevPP9list_item(%struct.list_item** nocapture %li) local_unnamed_addr #3 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 1
  %1 = bitcast %struct.list_item** %next to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !11
  %3 = bitcast %struct.list_item** %li to i64*
  store i64 %2, i64* %3, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @_Z31list_reverse_iterator_get_datumPP9list_item(%struct.list_item** nocapture readonly %li) local_unnamed_addr #4 {
entry:
  %0 = load %struct.list_item*, %struct.list_item** %li, align 8, !tbaa !14
  %tobool = icmp eq %struct.list_item* %0, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %datum = getelementptr inbounds %struct.list_item, %struct.list_item* %0, i64 0, i32 2
  %1 = load i8*, i8** %datum, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: norecurse nounwind readnone uwtable
define zeroext i1 @_Z30list_reverse_iterator_is_validPP9list_item(%struct.list_item** readnone %li) local_unnamed_addr #9 {
entry:
  %cmp = icmp ne %struct.list_item** %li, null
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define i8* @_Z7kmalloci(i32 %size) local_unnamed_addr #5 {
entry:
  %0 = load i64, i64* @freeptr, align 8, !tbaa !18
  %conv = sext i32 %size to i64
  %add = add nsw i64 %0, %conv
  store i64 %add, i64* @freeptr, align 8, !tbaa !18
  %1 = load i64, i64* @malloc_size, align 8, !tbaa !18
  %2 = load i64, i64* bitcast (i8** @mem to i64*), align 8, !tbaa !14
  %add1 = add nsw i64 %2, %1
  %cmp = icmp sgt i64 %add, %add1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #17
  unreachable

if.end:                                           ; preds = %entry
  %3 = inttoptr i64 %0 to i8*
  ret i8* %3
}

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @_Z17transform_to_cudaP4nodeb(%struct.node* %root, i1 zeroext %verbose) local_unnamed_addr #5 {
entry:
  %one = alloca %struct.timeval, align 8
  %two = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %one to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast %struct.timeval* %two to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %one, %struct.timezone* null) #15
  %2 = load i32, i32* @order, align 4, !tbaa !20
  %3 = load i64, i64* @size, align 8, !tbaa !18
  %conv.i = sitofp i64 %3 to double
  %call.i = tail call double @log(double %conv.i) #15
  %4 = load i32, i32* @order, align 4, !tbaa !20
  %conv = sitofp i32 %4 to double
  %div = fmul double %conv, 5.000000e-01
  %call2 = tail call double @log(double %div) #15
  %div3 = fdiv double %call.i, %call2
  %sub = fadd double %div3, -1.000000e+00
  %conv.i256 = sitofp i32 %2 to double
  %call.i257 = tail call double @pow(double %conv.i256, double %sub) #15
  %add = fadd double %call.i257, 1.000000e+00
  %conv5 = fptosi double %add to i64
  %5 = load i64, i64* @size, align 8, !tbaa !18
  %mul = shl i64 %5, 2
  %mul6 = mul i64 %conv5, 2068
  %add7 = add i64 %mul6, %mul
  store i64 %add7, i64* @malloc_size, align 8, !tbaa !18
  %call8 = tail call noalias i8* @malloc(i64 %add7) #15
  %tobool = icmp eq i8* %call8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 657) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  store i8* %call8, i8** @mem, align 8, !tbaa !14
  %7 = ptrtoint i8* %call8 to i64
  %.tr = trunc i64 %5 to i32
  %conv14 = shl i32 %.tr, 2
  %conv.i258 = sext i32 %conv14 to i64
  %add.i = add nsw i64 %7, %conv.i258
  store i64 %add.i, i64* @freeptr, align 8, !tbaa !18
  %cmp.i = icmp slt i64 %add7, %conv.i258
  br i1 %cmp.i, label %if.then.i, label %_Z7kmalloci.exit

if.then.i:                                        ; preds = %if.end
  %puts.i = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0)) #15
  tail call void @exit(i32 1) #17
  unreachable

_Z7kmalloci.exit:                                 ; preds = %if.end
  %add1.i = add nsw i64 %add7, %7
  store i8* %call8, i8** bitcast (%struct.record** @krecords to i8**), align 8, !tbaa !14
  %sext = mul i64 %conv5, 8881992368128
  %conv.i259 = ashr exact i64 %sext, 32
  %add.i260 = add nsw i64 %add.i, %conv.i259
  store i64 %add.i260, i64* @freeptr, align 8, !tbaa !18
  %cmp.i262 = icmp sgt i64 %add.i260, %add1.i
  br i1 %cmp.i262, label %if.then.i264, label %_Z7enqueueP4node.exit

if.then.i264:                                     ; preds = %_Z7kmalloci.exit
  %puts.i263 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str, i64 0, i64 0)) #15
  tail call void @exit(i32 1) #17
  unreachable

_Z7enqueueP4node.exit:                            ; preds = %_Z7kmalloci.exit
  %8 = inttoptr i64 %add.i to i8*
  store i8* %8, i8** bitcast (%struct.knode** @knodes to i8**), align 8, !tbaa !14
  store %struct.node* %root, %struct.node** @queue, align 8, !tbaa !14
  %next.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i, align 8, !tbaa !21
  %.cast = inttoptr i64 %add.i to %struct.knode*
  %location = getelementptr inbounds %struct.knode, %struct.knode* %.cast, i64 0, i32 0
  store i32 0, i32* %location, align 4, !tbaa !24
  %cmp20312 = icmp eq %struct.node* %root, null
  br i1 %cmp20312, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %_Z7enqueueP4node.exit
  %9 = inttoptr i64 %add.i to %struct.knode*
  br label %while.body

while.body:                                       ; preds = %if.end144.while.body_crit_edge, %while.body.preheader
  %10 = phi %struct.knode* [ %.pre, %if.end144.while.body_crit_edge ], [ %9, %while.body.preheader ]
  %11 = phi %struct.node* [ %70, %if.end144.while.body_crit_edge ], [ %root, %while.body.preheader ]
  %nodeindex.0319 = phi i64 [ %nodeindex.2, %if.end144.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %recordindex.0318 = phi i64 [ %recordindex.2, %if.end144.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %queueindex.0313 = phi i64 [ %inc23, %if.end144.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %next.i268 = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 5
  %12 = bitcast %struct.node** %next.i268 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !21
  store i64 %13, i64* bitcast (%struct.node** @queue to i64*), align 8, !tbaa !14
  store %struct.node* null, %struct.node** %next.i268, align 8, !tbaa !21
  %inc23 = add nuw nsw i64 %queueindex.0313, 1
  %conv24 = trunc i64 %queueindex.0313 to i32
  %location25 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 0
  store i32 %conv24, i32* %location25, align 4, !tbaa !24
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 3
  %14 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %is_leaf27 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 3
  store i8 %14, i8* %is_leaf27, align 4, !tbaa !28
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 4
  %15 = load i32, i32* %num_keys, align 4, !tbaa !29
  %add29 = add nsw i32 %15, 2
  %num_keys30 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 4
  store i32 %add29, i32* %num_keys30, align 4, !tbaa !30
  %arrayidx31 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 0
  store i32 -2147483648, i32* %arrayidx31, align 4, !tbaa !20
  %sub34 = add nsw i32 %15, 1
  %idxprom = sext i32 %sub34 to i64
  %arrayidx35 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 %idxprom
  store i32 2147483647, i32* %arrayidx35, align 4, !tbaa !20
  %16 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %17 = load i32, i32* @order, align 4, !tbaa !20
  %cmp37294 = icmp slt i32 %16, %17
  %18 = inttoptr i64 %13 to %struct.node*
  br i1 %cmp37294, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %while.body
  %19 = sext i32 %16 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv323 = phi i64 [ %19, %for.body.preheader ], [ %indvars.iv.next324, %for.body ]
  %arrayidx40 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 %indvars.iv323
  store i32 2147483647, i32* %arrayidx40, align 4, !tbaa !20
  %indvars.iv.next324 = add nsw i64 %indvars.iv323, 1
  %20 = load i32, i32* @order, align 4, !tbaa !20
  %21 = sext i32 %20 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next324, %21
  br i1 %cmp37, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %while.body
  %tobool43 = icmp eq i8 %14, 0
  br i1 %tobool43, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.end
  %conv46 = trunc i64 %nodeindex.0319 to i32
  %arrayidx47 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 0
  store i32 %conv46, i32* %arrayidx47, align 4, !tbaa !20
  %nodeindex.1301 = add nsw i64 %nodeindex.0319, 1
  %22 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %cmp51303 = icmp sgt i32 %22, 2
  br i1 %cmp51303, label %for.body52.lr.ph, label %for.end70

for.body52.lr.ph:                                 ; preds = %if.then44
  %keys53 = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 1
  %23 = load i32*, i32** %keys53, align 8, !tbaa !31
  %pointers = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 0
  br label %for.body52

for.body52:                                       ; preds = %_Z7enqueueP4node.exit279, %for.body52.lr.ph
  %24 = phi %struct.node* [ %18, %for.body52.lr.ph ], [ %33, %_Z7enqueueP4node.exit279 ]
  %25 = phi %struct.node* [ %18, %for.body52.lr.ph ], [ %34, %_Z7enqueueP4node.exit279 ]
  %26 = phi %struct.node* [ %18, %for.body52.lr.ph ], [ %35, %_Z7enqueueP4node.exit279 ]
  %indvars.iv328 = phi i64 [ 1, %for.body52.lr.ph ], [ %indvars.iv.next329, %_Z7enqueueP4node.exit279 ]
  %nodeindex.1305 = phi i64 [ %nodeindex.1301, %for.body52.lr.ph ], [ %nodeindex.1, %_Z7enqueueP4node.exit279 ]
  %27 = add nsw i64 %indvars.iv328, -1
  %arrayidx56 = getelementptr inbounds i32, i32* %23, i64 %27
  %28 = load i32, i32* %arrayidx56, align 4, !tbaa !20
  %arrayidx59 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 %indvars.iv328
  store i32 %28, i32* %arrayidx59, align 4, !tbaa !20
  %29 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx62 = getelementptr inbounds i8*, i8** %29, i64 %27
  %30 = bitcast i8** %arrayidx62 to %struct.node**
  %31 = load %struct.node*, %struct.node** %30, align 8, !tbaa !14
  %cmp.i269 = icmp eq %struct.node* %26, null
  br i1 %cmp.i269, label %_Z7enqueueP4node.exit279, label %while.cond.i275

while.cond.i275:                                  ; preds = %while.cond.i275, %for.body52
  %c.0.i272 = phi %struct.node* [ %32, %while.cond.i275 ], [ %26, %for.body52 ]
  %next1.i273 = getelementptr inbounds %struct.node, %struct.node* %c.0.i272, i64 0, i32 5
  %32 = load %struct.node*, %struct.node** %next1.i273, align 8, !tbaa !21
  %cmp2.i274 = icmp eq %struct.node* %32, null
  br i1 %cmp2.i274, label %while.end.i278, label %while.cond.i275

while.end.i278:                                   ; preds = %while.cond.i275
  %next1.i273.le = getelementptr inbounds %struct.node, %struct.node* %c.0.i272, i64 0, i32 5
  br label %_Z7enqueueP4node.exit279

_Z7enqueueP4node.exit279:                         ; preds = %while.end.i278, %for.body52
  %queue.sink = phi %struct.node** [ %next1.i273.le, %while.end.i278 ], [ @queue, %for.body52 ]
  %33 = phi %struct.node* [ %24, %while.end.i278 ], [ %31, %for.body52 ]
  %34 = phi %struct.node* [ %25, %while.end.i278 ], [ %31, %for.body52 ]
  %35 = phi %struct.node* [ %26, %while.end.i278 ], [ %31, %for.body52 ]
  store %struct.node* %31, %struct.node** %queue.sink, align 8, !tbaa !14
  %next.i270 = getelementptr inbounds %struct.node, %struct.node* %31, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i270, align 8, !tbaa !21
  %conv64 = trunc i64 %nodeindex.1305 to i32
  %arrayidx67 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 %indvars.iv328
  store i32 %conv64, i32* %arrayidx67, align 4, !tbaa !20
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1
  %nodeindex.1 = add nsw i64 %nodeindex.1305, 1
  %36 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %sub50 = add nsw i32 %36, -1
  %37 = sext i32 %sub50 to i64
  %cmp51 = icmp slt i64 %indvars.iv.next329, %37
  br i1 %cmp51, label %for.body52, label %for.end70

for.end70:                                        ; preds = %_Z7enqueueP4node.exit279, %if.then44
  %38 = phi %struct.node* [ %18, %if.then44 ], [ %33, %_Z7enqueueP4node.exit279 ]
  %39 = phi i32 [ %22, %if.then44 ], [ %36, %_Z7enqueueP4node.exit279 ]
  %40 = phi %struct.node* [ %18, %if.then44 ], [ %34, %_Z7enqueueP4node.exit279 ]
  %i.1.lcssa = phi i64 [ 1, %if.then44 ], [ %indvars.iv.next329, %_Z7enqueueP4node.exit279 ]
  %nodeindex.1.lcssa = phi i64 [ %nodeindex.1301, %if.then44 ], [ %nodeindex.1, %_Z7enqueueP4node.exit279 ]
  %pointers71 = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 0
  %41 = load i8**, i8*** %pointers71, align 8, !tbaa !32
  %sub72 = shl i64 %i.1.lcssa, 32
  %sext339 = add i64 %sub72, -4294967296
  %idxprom73 = ashr exact i64 %sext339, 32
  %arrayidx74 = getelementptr inbounds i8*, i8** %41, i64 %idxprom73
  %42 = bitcast i8** %arrayidx74 to %struct.node**
  %43 = load %struct.node*, %struct.node** %42, align 8, !tbaa !14
  %cmp.i280 = icmp eq %struct.node* %40, null
  br i1 %cmp.i280, label %if.then.i282, label %while.cond.i286

if.then.i282:                                     ; preds = %for.end70
  store %struct.node* %43, %struct.node** @queue, align 8, !tbaa !14
  %next.i281 = getelementptr inbounds %struct.node, %struct.node* %43, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i281, align 8, !tbaa !21
  br label %if.end103

while.cond.i286:                                  ; preds = %while.cond.i286, %for.end70
  %c.0.i283 = phi %struct.node* [ %44, %while.cond.i286 ], [ %40, %for.end70 ]
  %next1.i284 = getelementptr inbounds %struct.node, %struct.node* %c.0.i283, i64 0, i32 5
  %44 = load %struct.node*, %struct.node** %next1.i284, align 8, !tbaa !21
  %cmp2.i285 = icmp eq %struct.node* %44, null
  br i1 %cmp2.i285, label %while.end.i289, label %while.cond.i286

while.end.i289:                                   ; preds = %while.cond.i286
  %next1.i284.le = getelementptr inbounds %struct.node, %struct.node* %c.0.i283, i64 0, i32 5
  store %struct.node* %43, %struct.node** %next1.i284.le, align 8, !tbaa !21
  %next5.i288 = getelementptr inbounds %struct.node, %struct.node* %43, i64 0, i32 5
  store %struct.node* null, %struct.node** %next5.i288, align 8, !tbaa !21
  br label %if.end103

if.else:                                          ; preds = %for.end
  %arrayidx76 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 0
  store i32 0, i32* %arrayidx76, align 4, !tbaa !20
  %45 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %cmp80297 = icmp sgt i32 %45, 2
  br i1 %cmp80297, label %for.body81.lr.ph, label %if.end103

for.body81.lr.ph:                                 ; preds = %if.else
  %keys82 = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 1
  %46 = load i32*, i32** %keys82, align 8, !tbaa !31
  %pointers89 = getelementptr inbounds %struct.node, %struct.node* %11, i64 0, i32 0
  %47 = load i8**, i8*** %pointers89, align 8, !tbaa !32
  %48 = load %struct.record*, %struct.record** @krecords, align 8, !tbaa !14
  br label %for.body81

for.body81:                                       ; preds = %for.body81, %for.body81.lr.ph
  %indvars.iv325 = phi i64 [ 1, %for.body81.lr.ph ], [ %indvars.iv.next326, %for.body81 ]
  %recordindex.1298 = phi i64 [ %recordindex.0318, %for.body81.lr.ph ], [ %inc95, %for.body81 ]
  %49 = add nsw i64 %indvars.iv325, -1
  %arrayidx85 = getelementptr inbounds i32, i32* %46, i64 %49
  %50 = load i32, i32* %arrayidx85, align 4, !tbaa !20
  %arrayidx88 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 %indvars.iv325
  store i32 %50, i32* %arrayidx88, align 4, !tbaa !20
  %arrayidx92 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = bitcast i8** %arrayidx92 to %struct.record**
  %52 = load %struct.record*, %struct.record** %51, align 8, !tbaa !14
  %value = getelementptr inbounds %struct.record, %struct.record* %52, i64 0, i32 0
  %53 = load i32, i32* %value, align 4, !tbaa !33
  %value94 = getelementptr inbounds %struct.record, %struct.record* %48, i64 %recordindex.1298, i32 0
  store i32 %53, i32* %value94, align 4, !tbaa !33
  %inc95 = add nsw i64 %recordindex.1298, 1
  %conv96 = trunc i64 %recordindex.1298 to i32
  %arrayidx99 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 %indvars.iv325
  store i32 %conv96, i32* %arrayidx99, align 4, !tbaa !20
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1
  %54 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %sub79 = add nsw i32 %54, -1
  %55 = sext i32 %sub79 to i64
  %cmp80 = icmp slt i64 %indvars.iv.next326, %55
  br i1 %cmp80, label %for.body81, label %if.end103

if.end103:                                        ; preds = %for.body81, %if.else, %while.end.i289, %if.then.i282
  %56 = phi %struct.node* [ %43, %if.then.i282 ], [ %38, %while.end.i289 ], [ %18, %if.else ], [ %18, %for.body81 ]
  %57 = phi i32 [ %39, %if.then.i282 ], [ %39, %while.end.i289 ], [ %45, %if.else ], [ %54, %for.body81 ]
  %recordindex.2 = phi i64 [ %recordindex.0318, %if.then.i282 ], [ %recordindex.0318, %while.end.i289 ], [ %recordindex.0318, %if.else ], [ %inc95, %for.body81 ]
  %nodeindex.2 = phi i64 [ %nodeindex.1.lcssa, %if.then.i282 ], [ %nodeindex.1.lcssa, %while.end.i289 ], [ %nodeindex.0319, %if.else ], [ %nodeindex.0319, %for.body81 ]
  %conv104 = trunc i64 %inc23 to i32
  %sub107 = add nsw i32 %57, -1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 %idxprom108
  store i32 %conv104, i32* %arrayidx109, align 4, !tbaa !20
  br i1 %verbose, label %if.then111, label %if.end144

if.then111:                                       ; preds = %if.end103
  %58 = load i32, i32* %location25, align 4, !tbaa !24
  %call113 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %59 = load i8, i8* %is_leaf27, align 4, !tbaa !28, !range !27
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %call118 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %61)
  %call119 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %cmp122308 = icmp sgt i32 %62, 0
  br i1 %cmp122308, label %for.body123, label %for.end130

for.body123:                                      ; preds = %for.body123, %if.then111
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %for.body123 ], [ 0, %if.then111 ]
  %arrayidx126 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 1, i64 %indvars.iv331
  %63 = load i32, i32* %arrayidx126, align 4, !tbaa !20
  %call127 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1
  %64 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %65 = sext i32 %64 to i64
  %cmp122 = icmp slt i64 %indvars.iv.next332, %65
  br i1 %cmp122, label %for.body123, label %for.end130

for.end130:                                       ; preds = %for.body123, %if.then111
  %call131 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %66 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %cmp134310 = icmp sgt i32 %66, 0
  br i1 %cmp134310, label %for.body135, label %for.end142

for.body135:                                      ; preds = %for.body135, %for.end130
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %for.body135 ], [ 0, %for.end130 ]
  %arrayidx138 = getelementptr inbounds %struct.knode, %struct.knode* %10, i64 %queueindex.0313, i32 2, i64 %indvars.iv333
  %67 = load i32, i32* %arrayidx138, align 4, !tbaa !20
  %call139 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1
  %68 = load i32, i32* %num_keys30, align 4, !tbaa !30
  %69 = sext i32 %68 to i64
  %cmp134 = icmp slt i64 %indvars.iv.next334, %69
  br i1 %cmp134, label %for.body135, label %for.end142

for.end142:                                       ; preds = %for.body135, %for.end130
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.100, i64 0, i64 0))
  %.pre335 = load %struct.node*, %struct.node** @queue, align 8, !tbaa !14
  br label %if.end144

if.end144:                                        ; preds = %for.end142, %if.end103
  %70 = phi %struct.node* [ %.pre335, %for.end142 ], [ %56, %if.end103 ]
  %cmp20 = icmp eq %struct.node* %70, null
  br i1 %cmp20, label %while.end.loopexit, label %if.end144.while.body_crit_edge

if.end144.while.body_crit_edge:                   ; preds = %if.end144
  %.pre = load %struct.knode*, %struct.knode** @knodes, align 8, !tbaa !14
  br label %while.body

while.end.loopexit:                               ; preds = %if.end144
  %.pre336 = load i64, i64* @size, align 8, !tbaa !18
  %.pre337 = shl i64 %.pre336, 2
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %_Z7enqueueP4node.exit
  %mul145.pre-phi = phi i64 [ %.pre337, %while.end.loopexit ], [ %mul, %_Z7enqueueP4node.exit ]
  %71 = phi i64 [ %.pre336, %while.end.loopexit ], [ %5, %_Z7enqueueP4node.exit ]
  %nodeindex.0.lcssa = phi i64 [ %nodeindex.2, %while.end.loopexit ], [ 1, %_Z7enqueueP4node.exit ]
  %mul146 = mul i64 %nodeindex.0.lcssa, 2068
  %add147 = add i64 %mul145.pre-phi, %mul146
  br i1 %verbose, label %for.cond150.preheader, label %if.end166

for.cond150.preheader:                            ; preds = %while.end
  %cmp152291 = icmp sgt i64 %71, 0
  br i1 %cmp152291, label %for.body153, label %for.end160

for.body153:                                      ; preds = %for.body153, %for.cond150.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body153 ], [ 0, %for.cond150.preheader ]
  %72 = load %struct.record*, %struct.record** @krecords, align 8, !tbaa !14
  %value156 = getelementptr inbounds %struct.record, %struct.record* %72, i64 %indvars.iv, i32 0
  %73 = load i32, i32* %value156, align 4, !tbaa !33
  %call157 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %74 = load i64, i64* @size, align 8, !tbaa !18
  %cmp152 = icmp sgt i64 %74, %indvars.iv.next
  br i1 %cmp152, label %for.body153, label %for.end160.loopexit

for.end160.loopexit:                              ; preds = %for.body153
  %.pre338 = shl i64 %74, 2
  br label %for.end160

for.end160:                                       ; preds = %for.end160.loopexit, %for.cond150.preheader
  %mul161.pre-phi = phi i64 [ %.pre338, %for.end160.loopexit ], [ %mul145.pre-phi, %for.cond150.preheader ]
  %.lcssa = phi i64 [ %74, %for.end160.loopexit ], [ %71, %for.cond150.preheader ]
  %call162 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 %.lcssa, i64 4, i64 %mul161.pre-phi)
  %call164 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i64 %nodeindex.0.lcssa, i64 2068, i64 %mul146)
  %call165 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %add147)
  br label %if.end166

if.end166:                                        ; preds = %for.end160, %while.end
  %call167 = call i32 @gettimeofday(%struct.timeval* nonnull %two, %struct.timezone* null) #15
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %one, i64 0, i32 0
  %75 = load i64, i64* %tv_sec, align 8, !tbaa !35
  %conv168 = sitofp i64 %75 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %one, i64 0, i32 1
  %76 = load i64, i64* %tv_usec, align 8, !tbaa !37
  %conv169 = sitofp i64 %76 to double
  %mul170 = fmul double %conv169, 0x3EB0C6F7A0B5ED8D
  %add171 = fadd double %mul170, %conv168
  %tv_sec172 = getelementptr inbounds %struct.timeval, %struct.timeval* %two, i64 0, i32 0
  %77 = load i64, i64* %tv_sec172, align 8, !tbaa !35
  %conv173 = sitofp i64 %77 to double
  %tv_usec174 = getelementptr inbounds %struct.timeval, %struct.timeval* %two, i64 0, i32 1
  %78 = load i64, i64* %tv_usec174, align 8, !tbaa !37
  %conv175 = sitofp i64 %78 to double
  %mul176 = fmul double %conv175, 0x3EB0C6F7A0B5ED8D
  %add177 = fadd double %mul176, %conv173
  %sub178 = fsub double %add177, %add171
  %call179 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), double %sub178)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i64 %add147
}

; Function Attrs: nofree nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare double @log(double) local_unnamed_addr #6

; Function Attrs: nofree norecurse nounwind uwtable
define void @_Z7enqueueP4node(%struct.node* %new_node) local_unnamed_addr #3 {
entry:
  %0 = load %struct.node*, %struct.node** @queue, align 8, !tbaa !14
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.end, label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %c.0 = phi %struct.node* [ %1, %while.cond ], [ %0, %entry ]
  %next1 = getelementptr inbounds %struct.node, %struct.node* %c.0, i64 0, i32 5
  %1 = load %struct.node*, %struct.node** %next1, align 8, !tbaa !21
  %cmp2 = icmp eq %struct.node* %1, null
  br i1 %cmp2, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %next1.le = getelementptr inbounds %struct.node, %struct.node* %c.0, i64 0, i32 5
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %next1.le.sink = phi %struct.node** [ %next1.le, %while.end ], [ @queue, %entry ]
  store %struct.node* %new_node, %struct.node** %next1.le.sink, align 8, !tbaa !14
  %next5 = getelementptr inbounds %struct.node, %struct.node* %new_node, i64 0, i32 5
  store %struct.node* null, %struct.node** %next5, align 8, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define %struct.node* @_Z7dequeuev() local_unnamed_addr #3 {
entry:
  %0 = load %struct.node*, %struct.node** @queue, align 8, !tbaa !14
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 5
  %1 = bitcast %struct.node** %next to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !21
  store i64 %2, i64* bitcast (%struct.node** @queue to i64*), align 8, !tbaa !14
  store %struct.node* null, %struct.node** %next, align 8, !tbaa !21
  ret %struct.node* %0
}

; Function Attrs: nounwind uwtable
define noalias %struct.list_t* @_Z9findRangeP4nodeii(%struct.node* readonly %root, i32 %start, i32 %end) local_unnamed_addr #5 {
entry:
  %cmp.i = icmp eq %struct.node* %root, null
  br i1 %cmp.i, label %cleanup, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %is_leaf90.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf90.i, align 8, !tbaa !26, !range !27
  %tobool391.i = icmp eq i8 %0, 0
  br i1 %tobool391.i, label %while.body.i, label %if.end

while.body.i:                                     ; preds = %if.end28.i, %while.cond.preheader.i
  %c.092.i = phi %struct.node* [ %8, %if.end28.i ], [ %root, %while.cond.preheader.i ]
  %num_keys15.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 4
  %1 = load i32, i32* %num_keys15.i, align 4, !tbaa !29
  %cmp1686.i = icmp sgt i32 %1, 0
  br i1 %cmp1686.i, label %while.body17.lr.ph.i, label %if.end28.i

while.body17.lr.ph.i:                             ; preds = %while.body.i
  %keys18.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 1
  %2 = load i32*, i32** %keys18.i, align 8, !tbaa !31
  %3 = zext i32 %1 to i64
  br label %while.body17.i

while.body17.i:                                   ; preds = %if.then22.i, %while.body17.lr.ph.i
  %indvars.iv103.i = phi i64 [ 0, %while.body17.lr.ph.i ], [ %indvars.iv.next104.i, %if.then22.i ]
  %arrayidx20.i = getelementptr inbounds i32, i32* %2, i64 %indvars.iv103.i
  %4 = load i32, i32* %arrayidx20.i, align 4, !tbaa !20
  %cmp21.i = icmp sgt i32 %4, %start
  br i1 %cmp21.i, label %if.end28.loopexit.split.loop.exit112.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body17.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond = icmp eq i64 %indvars.iv.next104.i, %3
  br i1 %exitcond, label %if.end28.i, label %while.body17.i

if.end28.loopexit.split.loop.exit112.i:           ; preds = %while.body17.i
  %5 = trunc i64 %indvars.iv103.i to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.loopexit.split.loop.exit112.i, %if.then22.i, %while.body.i
  %i.1.lcssa.i = phi i32 [ 0, %while.body.i ], [ %5, %if.end28.loopexit.split.loop.exit112.i ], [ %1, %if.then22.i ]
  %pointers.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 0
  %6 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  %idxprom29.i = zext i32 %i.1.lcssa.i to i64
  %arrayidx30.i = getelementptr inbounds i8*, i8** %6, i64 %idxprom29.i
  %7 = bitcast i8** %arrayidx30.i to %struct.node**
  %8 = load %struct.node*, %struct.node** %7, align 8, !tbaa !14
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %8, i64 0, i32 3
  %9 = load i8, i8* %is_leaf.i, align 8, !tbaa !26, !range !27
  %tobool3.i = icmp eq i8 %9, 0
  br i1 %tobool3.i, label %while.body.i, label %_Z9find_leafP4nodeib.exit

_Z9find_leafP4nodeib.exit:                        ; preds = %if.end28.i
  %cmp = icmp eq %struct.node* %8, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %_Z9find_leafP4nodeib.exit, %while.cond.preheader.i
  %retval.0.i39 = phi %struct.node* [ %8, %_Z9find_leafP4nodeib.exit ], [ %root, %while.cond.preheader.i ]
  %call1 = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 40) #15
  %tobool = icmp eq i8* %call1, null
  br i1 %tobool, label %if.then2, label %for.cond.preheader.lr.ph

if.then2:                                         ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 765) #16
  tail call void @exit(i32 -1) #17
  unreachable

for.cond.preheader.lr.ph:                         ; preds = %if.end
  %11 = bitcast i8* %call1 to %struct.list_t*
  %compare1.i = getelementptr inbounds i8, i8* %call1, i64 24
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %call1, i8 0, i64 20, i1 false) #15
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %compare1.i, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %12, -1
  %idxprom16 = sext i32 %sub to i64
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end, %for.cond.preheader.lr.ph
  %c.048 = phi %struct.node* [ %retval.0.i39, %for.cond.preheader.lr.ph ], [ %19, %for.end ]
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %c.048, i64 0, i32 4
  %13 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp741 = icmp sgt i32 %13, 0
  br i1 %cmp741, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %keys = getelementptr inbounds %struct.node, %struct.node* %c.048, i64 0, i32 1
  %14 = load i32*, i32** %keys, align 8, !tbaa !31
  %15 = sext i32 %13 to i64
  br label %for.body

for.body:                                         ; preds = %if.then13, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.then13 ]
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %indvars.iv
  %16 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %cmp8 = icmp slt i32 %16, %start
  %cmp12 = icmp sgt i32 %16, %end
  %or.cond = or i1 %cmp8, %cmp12
  br i1 %or.cond, label %cleanup, label %if.then13

if.then13:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp7 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %if.then13
  %pointers = getelementptr inbounds %struct.node, %struct.node* %c.048, i64 0, i32 0
  %17 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx17 = getelementptr inbounds i8*, i8** %17, i64 %idxprom16
  %18 = bitcast i8** %arrayidx17 to %struct.node**
  %19 = load %struct.node*, %struct.node** %18, align 8, !tbaa !14
  %cmp6 = icmp eq %struct.node* %19, null
  br i1 %cmp6, label %cleanup, label %for.cond.preheader

cleanup:                                          ; preds = %for.end, %for.body, %for.cond.preheader, %_Z9find_leafP4nodeib.exit, %entry
  %retval.0 = phi %struct.list_t* [ null, %_Z9find_leafP4nodeib.exit ], [ null, %entry ], [ %11, %for.body ], [ %11, %for.cond.preheader ], [ %11, %for.end ]
  ret %struct.list_t* %retval.0
}

; Function Attrs: nofree nounwind uwtable
define %struct.node* @_Z9find_leafP4nodeib(%struct.node* readonly %root, i32 %key, i1 zeroext %verbose) local_unnamed_addr #10 {
entry:
  %cmp = icmp eq %struct.node* %root, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %is_leaf90 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf90, align 8, !tbaa !26, !range !27
  %tobool391 = icmp eq i8 %0, 0
  br i1 %tobool391, label %while.body.lr.ph, label %while.end31

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  br i1 %verbose, label %while.body.us, label %while.body

while.body.us:                                    ; preds = %if.then26.us, %while.body.lr.ph
  %c.092.us = phi %struct.node* [ %9, %if.then26.us ], [ %root, %while.body.lr.ph ]
  %putchar.us = tail call i32 @putchar(i32 91)
  %num_keys.us = getelementptr inbounds %struct.node, %struct.node* %c.092.us, i64 0, i32 4
  %1 = load i32, i32* %num_keys.us, align 4, !tbaa !29
  %cmp782.us = icmp sgt i32 %1, 1
  %keys.us = getelementptr inbounds %struct.node, %struct.node* %c.092.us, i64 0, i32 1
  %2 = load i32*, i32** %keys.us, align 8, !tbaa !31
  %3 = load i32, i32* %2, align 4, !tbaa !20
  br i1 %cmp782.us, label %for.body.us, label %for.end.us

for.end.us:                                       ; preds = %for.body.us, %while.body.us
  %.lcssa77.us = phi i32 [ %3, %while.body.us ], [ %15, %for.body.us ]
  %call12.us = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %.lcssa77.us)
  %4 = load i32, i32* %num_keys.us, align 4, !tbaa !29
  %cmp1686.us = icmp sgt i32 %4, 0
  br i1 %cmp1686.us, label %while.body17.lr.ph.us, label %if.then26.us

while.body17.us:                                  ; preds = %while.body17.lr.ph.us, %if.then22.us
  %indvars.iv101 = phi i64 [ 0, %while.body17.lr.ph.us ], [ %indvars.iv.next102, %if.then22.us ]
  %i.187.us = phi i32 [ 0, %while.body17.lr.ph.us ], [ %inc23.us, %if.then22.us ]
  %arrayidx20.us = getelementptr inbounds i32, i32* %16, i64 %indvars.iv101
  %5 = load i32, i32* %arrayidx20.us, align 4, !tbaa !20
  %cmp21.us = icmp sgt i32 %5, %key
  br i1 %cmp21.us, label %if.then26.us.loopexit.split.loop.exit, label %if.then22.us

if.then22.us:                                     ; preds = %while.body17.us
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %inc23.us = add nuw nsw i32 %i.187.us, 1
  %cmp16.us = icmp slt i64 %indvars.iv.next102, %17
  br i1 %cmp16.us, label %while.body17.us, label %if.then26.us

if.then26.us.loopexit.split.loop.exit:            ; preds = %while.body17.us
  %6 = trunc i64 %indvars.iv101 to i32
  br label %if.then26.us

if.then26.us:                                     ; preds = %if.then26.us.loopexit.split.loop.exit, %if.then22.us, %for.end.us
  %i.1.lcssa.us = phi i32 [ 0, %for.end.us ], [ %6, %if.then26.us.loopexit.split.loop.exit ], [ %inc23.us, %if.then22.us ]
  %call27.us = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32 %i.1.lcssa.us)
  %pointers.us = getelementptr inbounds %struct.node, %struct.node* %c.092.us, i64 0, i32 0
  %7 = load i8**, i8*** %pointers.us, align 8, !tbaa !32
  %idxprom29.us = zext i32 %i.1.lcssa.us to i64
  %arrayidx30.us = getelementptr inbounds i8*, i8** %7, i64 %idxprom29.us
  %8 = bitcast i8** %arrayidx30.us to %struct.node**
  %9 = load %struct.node*, %struct.node** %8, align 8, !tbaa !14
  %is_leaf.us = getelementptr inbounds %struct.node, %struct.node* %9, i64 0, i32 3
  %10 = load i8, i8* %is_leaf.us, align 8, !tbaa !26, !range !27
  %tobool3.us = icmp eq i8 %10, 0
  br i1 %tobool3.us, label %while.body.us, label %while.end31

for.body.us:                                      ; preds = %for.body.us, %while.body.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body.us ], [ 0, %while.body.us ]
  %11 = phi i32 [ %15, %for.body.us ], [ %3, %while.body.us ]
  %call8.us = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %11)
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %12 = load i32, i32* %num_keys.us, align 4, !tbaa !29
  %sub.us = add nsw i32 %12, -1
  %13 = sext i32 %sub.us to i64
  %cmp7.us = icmp slt i64 %indvars.iv.next100, %13
  %14 = load i32*, i32** %keys.us, align 8, !tbaa !31
  %arrayidx.us = getelementptr inbounds i32, i32* %14, i64 %indvars.iv.next100
  %15 = load i32, i32* %arrayidx.us, align 4, !tbaa !20
  br i1 %cmp7.us, label %for.body.us, label %for.end.us

while.body17.lr.ph.us:                            ; preds = %for.end.us
  %16 = load i32*, i32** %keys.us, align 8, !tbaa !31
  %17 = sext i32 %4 to i64
  br label %while.body17.us

if.then:                                          ; preds = %entry
  br i1 %verbose, label %if.then1, label %cleanup

if.then1:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.119, i64 0, i64 0))
  br label %cleanup

while.body:                                       ; preds = %if.end28, %while.body.lr.ph
  %c.092 = phi %struct.node* [ %25, %if.end28 ], [ %root, %while.body.lr.ph ]
  %num_keys15 = getelementptr inbounds %struct.node, %struct.node* %c.092, i64 0, i32 4
  %18 = load i32, i32* %num_keys15, align 4, !tbaa !29
  %cmp1686 = icmp sgt i32 %18, 0
  br i1 %cmp1686, label %while.body17.lr.ph, label %if.end28

while.body17.lr.ph:                               ; preds = %while.body
  %keys18 = getelementptr inbounds %struct.node, %struct.node* %c.092, i64 0, i32 1
  %19 = load i32*, i32** %keys18, align 8, !tbaa !31
  %20 = sext i32 %18 to i64
  br label %while.body17

while.body17:                                     ; preds = %if.then22, %while.body17.lr.ph
  %indvars.iv103 = phi i64 [ 0, %while.body17.lr.ph ], [ %indvars.iv.next104, %if.then22 ]
  %i.187 = phi i32 [ 0, %while.body17.lr.ph ], [ %inc23, %if.then22 ]
  %arrayidx20 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv103
  %21 = load i32, i32* %arrayidx20, align 4, !tbaa !20
  %cmp21 = icmp sgt i32 %21, %key
  br i1 %cmp21, label %if.end28.loopexit.split.loop.exit112, label %if.then22

if.then22:                                        ; preds = %while.body17
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %inc23 = add nuw nsw i32 %i.187, 1
  %cmp16 = icmp slt i64 %indvars.iv.next104, %20
  br i1 %cmp16, label %while.body17, label %if.end28

if.end28.loopexit.split.loop.exit112:             ; preds = %while.body17
  %22 = trunc i64 %indvars.iv103 to i32
  br label %if.end28

if.end28:                                         ; preds = %if.end28.loopexit.split.loop.exit112, %if.then22, %while.body
  %i.1.lcssa = phi i32 [ 0, %while.body ], [ %22, %if.end28.loopexit.split.loop.exit112 ], [ %inc23, %if.then22 ]
  %pointers = getelementptr inbounds %struct.node, %struct.node* %c.092, i64 0, i32 0
  %23 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom29 = zext i32 %i.1.lcssa to i64
  %arrayidx30 = getelementptr inbounds i8*, i8** %23, i64 %idxprom29
  %24 = bitcast i8** %arrayidx30 to %struct.node**
  %25 = load %struct.node*, %struct.node** %24, align 8, !tbaa !14
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %25, i64 0, i32 3
  %26 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool3 = icmp eq i8 %26, 0
  br i1 %tobool3, label %while.body, label %while.end31

while.end31:                                      ; preds = %if.end28, %if.then26.us, %while.cond.preheader
  %c.0.lcssa = phi %struct.node* [ %root, %while.cond.preheader ], [ %9, %if.then26.us ], [ %25, %if.end28 ]
  br i1 %verbose, label %if.then33, label %cleanup

if.then33:                                        ; preds = %while.end31
  %call34 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  %num_keys36 = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa, i64 0, i32 4
  %27 = load i32, i32* %num_keys36, align 4, !tbaa !29
  %cmp3879 = icmp sgt i32 %27, 1
  %keys40 = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa, i64 0, i32 1
  %28 = load i32*, i32** %keys40, align 8, !tbaa !31
  %29 = load i32, i32* %28, align 4, !tbaa !20
  br i1 %cmp3879, label %for.body39, label %for.end46

for.body39:                                       ; preds = %for.body39, %if.then33
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body39 ], [ 0, %if.then33 ]
  %30 = phi i32 [ %34, %for.body39 ], [ %29, %if.then33 ]
  %call43 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = load i32, i32* %num_keys36, align 4, !tbaa !29
  %sub37 = add nsw i32 %31, -1
  %32 = sext i32 %sub37 to i64
  %cmp38 = icmp slt i64 %indvars.iv.next, %32
  %33 = load i32*, i32** %keys40, align 8, !tbaa !31
  %arrayidx42 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv.next
  %34 = load i32, i32* %arrayidx42, align 4, !tbaa !20
  br i1 %cmp38, label %for.body39, label %for.end46

for.end46:                                        ; preds = %for.body39, %if.then33
  %.lcssa = phi i32 [ %29, %if.then33 ], [ %34, %for.body39 ]
  %call50 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i32 %.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %for.end46, %while.end31, %if.then1, %if.then
  %retval.0 = phi %struct.node* [ null, %if.then1 ], [ null, %if.then ], [ %c.0.lcssa, %for.end46 ], [ %c.0.lcssa, %while.end31 ]
  ret %struct.node* %retval.0
}

; Function Attrs: nofree nounwind uwtable
define void @_Z7usage_1v() local_unnamed_addr #10 {
entry:
  %0 = load i32, i32* @order, align 4, !tbaa !20
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %0)
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @str.102, i64 0, i64 0))
  %puts8 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @str.103, i64 0, i64 0))
  %call4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %puts9 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.104, i64 0, i64 0))
  %puts10 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([85 x i8], [85 x i8]* @str.105, i64 0, i64 0))
  %puts11 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @str.106, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @_Z7usage_2v() local_unnamed_addr #10 {
entry:
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.107, i64 0, i64 0))
  %puts11 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.108, i64 0, i64 0))
  %puts12 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str.109, i64 0, i64 0))
  %puts13 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([74 x i8], [74 x i8]* @str.110, i64 0, i64 0))
  %puts14 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.111, i64 0, i64 0))
  %puts15 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([81 x i8], [81 x i8]* @str.112, i64 0, i64 0))
  %puts16 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.113, i64 0, i64 0))
  %puts17 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.114, i64 0, i64 0))
  %puts18 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @str.115, i64 0, i64 0))
  %puts19 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.116, i64 0, i64 0))
  %puts20 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.117, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @_Z12print_leavesP4node(%struct.node* readonly %root) local_unnamed_addr #10 {
entry:
  %cmp = icmp eq %struct.node* %root, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %is_leaf41 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf41, align 8, !tbaa !26, !range !27
  %tobool42 = icmp eq i8 %0, 0
  br i1 %tobool42, label %while.body, label %while.cond1.preheader

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.119, i64 0, i64 0))
  br label %cleanup

while.body:                                       ; preds = %while.body, %while.cond.preheader
  %c.043 = phi %struct.node* [ %3, %while.body ], [ %root, %while.cond.preheader ]
  %1 = bitcast %struct.node* %c.043 to %struct.node***
  %2 = load %struct.node**, %struct.node*** %1, align 8, !tbaa !32
  %3 = load %struct.node*, %struct.node** %2, align 8, !tbaa !14
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 3
  %4 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %while.body, label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.body, %while.cond.preheader
  %c.1.ph = phi %struct.node* [ %root, %while.cond.preheader ], [ %3, %while.body ]
  br label %while.cond1.outer

while.cond1.outer:                                ; preds = %if.then15, %while.cond1.preheader
  %c.1.ph49 = phi %struct.node* [ %c.1.ph, %while.cond1.preheader ], [ %20, %if.then15 ]
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %c.1.ph49, i64 0, i32 4
  %keys = getelementptr inbounds %struct.node, %struct.node* %c.1.ph49, i64 0, i32 1
  br label %while.cond1

while.cond1:                                      ; preds = %for.end, %while.cond1.outer
  %5 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp336 = icmp sgt i32 %5, 0
  %6 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  %tobool437 = icmp ne i8 %6, 0
  br i1 %cmp336, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %while.cond1
  %7 = phi i8 [ %11, %for.inc ], [ %6, %while.cond1 ]
  %8 = phi i32 [ %12, %for.inc ], [ %5, %while.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.cond1 ]
  %tobool440 = phi i1 [ %tobool4, %for.inc ], [ %tobool437, %while.cond1 ]
  br i1 %tobool440, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  %9 = load i32*, i32** %keys, align 8, !tbaa !31
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx6, align 4, !tbaa !20
  %call7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %10)
  %.pre = load i32, i32* %num_keys, align 4, !tbaa !29
  %.pre46 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body
  %11 = phi i8 [ %7, %for.body ], [ %.pre46, %if.then5 ]
  %12 = phi i32 [ %8, %for.body ], [ %.pre, %if.then5 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = sext i32 %12 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %13
  %tobool4 = icmp ne i8 %11, 0
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %while.cond1
  %tobool4.lcssa = phi i1 [ %tobool437, %while.cond1 ], [ %tobool4, %for.inc ]
  br i1 %tobool4.lcssa, label %if.then10, label %while.cond1

if.then10:                                        ; preds = %for.end
  %pointers11 = getelementptr inbounds %struct.node, %struct.node* %c.1.ph49, i64 0, i32 0
  %14 = load i8**, i8*** %pointers11, align 8, !tbaa !32
  %15 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %15, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds i8*, i8** %14, i64 %idxprom12
  %16 = load i8*, i8** %arrayidx13, align 8, !tbaa !14
  %cmp14 = icmp eq i8* %16, null
  br i1 %cmp14, label %while.end23, label %if.then15

if.then15:                                        ; preds = %if.then10
  %call16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %17 = load i8**, i8*** %pointers11, align 8, !tbaa !32
  %18 = load i32, i32* @order, align 4, !tbaa !20
  %sub18 = add nsw i32 %18, -1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds i8*, i8** %17, i64 %idxprom19
  %19 = bitcast i8** %arrayidx20 to %struct.node**
  %20 = load %struct.node*, %struct.node** %19, align 8, !tbaa !14
  br label %while.cond1.outer

while.end23:                                      ; preds = %if.then10
  %putchar = tail call i32 @putchar(i32 10)
  br label %cleanup

cleanup:                                          ; preds = %while.end23, %if.then
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z6heightP4node(%struct.node* nocapture readonly %root) local_unnamed_addr #4 {
entry:
  %is_leaf5 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf5, align 8, !tbaa !26, !range !27
  %tobool6 = icmp eq i8 %0, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %entry
  %c.08 = phi %struct.node* [ %3, %while.body ], [ %root, %entry ]
  %h.07 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %1 = bitcast %struct.node* %c.08 to %struct.node***
  %2 = load %struct.node**, %struct.node*** %1, align 8, !tbaa !32
  %3 = load %struct.node*, %struct.node** %2, align 8, !tbaa !14
  %inc = add nuw nsw i32 %h.07, 1
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 3
  %4 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %h.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %h.0.lcssa
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z12path_to_rootP4nodeS0_(%struct.node* readnone %root, %struct.node* readonly %child) local_unnamed_addr #4 {
entry:
  %cmp5 = icmp eq %struct.node* %child, %root
  br i1 %cmp5, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %c.07 = phi %struct.node* [ %0, %while.body ], [ %child, %entry ]
  %length.06 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %parent = getelementptr inbounds %struct.node, %struct.node* %c.07, i64 0, i32 2
  %0 = load %struct.node*, %struct.node** %parent, align 8, !tbaa !39
  %inc = add nuw nsw i32 %length.06, 1
  %cmp = icmp eq %struct.node* %0, %root
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %length.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %length.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @_Z10print_treeP4node(%struct.node* %root) local_unnamed_addr #10 {
entry:
  %cmp = icmp eq %struct.node* %root, null
  br i1 %cmp, label %if.then, label %_Z7enqueueP4node.exit

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.119, i64 0, i64 0))
  br label %cleanup

_Z7enqueueP4node.exit:                            ; preds = %entry
  store %struct.node* %root, %struct.node** @queue, align 8, !tbaa !14
  %next.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i, align 8, !tbaa !21
  br label %while.body

while.body:                                       ; preds = %if.end54, %_Z7enqueueP4node.exit
  %rank.0107 = phi i32 [ 0, %_Z7enqueueP4node.exit ], [ %rank.1, %if.end54 ]
  %0 = phi %struct.node* [ %root, %_Z7enqueueP4node.exit ], [ %.pr, %if.end54 ]
  %next.i100 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 5
  %1 = bitcast %struct.node** %next.i100 to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !21
  store i64 %2, i64* bitcast (%struct.node** @queue to i64*), align 8, !tbaa !14
  store %struct.node* null, %struct.node** %next.i100, align 8, !tbaa !21
  %parent = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %3 = load %struct.node*, %struct.node** %parent, align 8, !tbaa !39
  %cmp3 = icmp eq %struct.node* %3, null
  br i1 %cmp3, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %4 = bitcast %struct.node* %0 to i8*
  %pointers = getelementptr inbounds %struct.node, %struct.node* %3, i64 0, i32 0
  %5 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %6 = load i8*, i8** %5, align 8, !tbaa !14
  %cmp5 = icmp eq i8* %6, %4
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  %cmp5.i = icmp eq %struct.node* %0, %root
  br i1 %cmp5.i, label %_Z12path_to_rootP4nodeS0_.exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then6
  %cmp.i98114 = icmp eq %struct.node* %3, %root
  br i1 %cmp.i98114, label %_Z12path_to_rootP4nodeS0_.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %inc.i115 = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 1, %while.body.i.preheader ]
  %7 = phi %struct.node* [ %.pre, %while.body.i.while.body.i_crit_edge ], [ %3, %while.body.i.preheader ]
  %parent.i.phi.trans.insert = getelementptr inbounds %struct.node, %struct.node* %7, i64 0, i32 2
  %.pre = load %struct.node*, %struct.node** %parent.i.phi.trans.insert, align 8, !tbaa !39
  %inc.i = add nuw nsw i32 %inc.i115, 1
  %cmp.i98 = icmp eq %struct.node* %.pre, %root
  br i1 %cmp.i98, label %_Z12path_to_rootP4nodeS0_.exit, label %while.body.i.while.body.i_crit_edge

_Z12path_to_rootP4nodeS0_.exit:                   ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader, %if.then6
  %length.0.lcssa.i = phi i32 [ 0, %if.then6 ], [ 1, %while.body.i.preheader ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %cmp8 = icmp eq i32 %length.0.lcssa.i, %rank.0107
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %_Z12path_to_rootP4nodeS0_.exit
  %putchar86 = tail call i32 @putchar(i32 10)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %_Z12path_to_rootP4nodeS0_.exit, %land.lhs.true, %while.body
  %rank.1 = phi i32 [ %length.0.lcssa.i, %if.then9 ], [ %rank.0107, %_Z12path_to_rootP4nodeS0_.exit ], [ %rank.0107, %land.lhs.true ], [ %rank.0107, %while.body ]
  %8 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct.node* nonnull %0)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end12
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 4
  %9 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp16101 = icmp sgt i32 %9, 0
  br i1 %cmp16101, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %pointers19 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %keys = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end22, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end22 ]
  %10 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  %tobool17 = icmp eq i8 %10, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %for.body
  %11 = load i8**, i8*** %pointers19, align 8, !tbaa !32
  %arrayidx20 = getelementptr inbounds i8*, i8** %11, i64 %indvars.iv
  %12 = load i8*, i8** %arrayidx20, align 8, !tbaa !14
  %call21 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* %12)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.body
  %13 = load i32*, i32** %keys, align 8, !tbaa !31
  %arrayidx24 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  %14 = load i32, i32* %arrayidx24, align 4, !tbaa !20
  %call25 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = load i32, i32* %num_keys, align 4, !tbaa !29
  %16 = sext i32 %15 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next, %16
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %if.end22, %if.end15
  %.lcssa = phi i32 [ %9, %if.end15 ], [ %15, %if.end22 ]
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 3
  %17 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool26 = icmp eq i8 %17, 0
  %tobool26.not = xor i1 %tobool26, true
  %cmp30104 = icmp slt i32 %.lcssa, 0
  %or.cond = or i1 %cmp30104, %tobool26.not
  br i1 %or.cond, label %if.end38, label %for.body31.lr.ph

for.body31.lr.ph:                                 ; preds = %for.end
  %pointers32 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %18 = add nuw i32 %.lcssa, 1
  %wide.trip.count = zext i32 %18 to i64
  %.pre111 = load %struct.node*, %struct.node** @queue, align 8, !tbaa !14
  %xtraiter = and i64 %wide.trip.count, 1
  %19 = icmp eq i32 %.lcssa, 0
  br i1 %19, label %if.end38.loopexit.unr-lcssa, label %for.body31.lr.ph.new

for.body31.lr.ph.new:                             ; preds = %for.body31.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body31

for.body31:                                       ; preds = %_Z7enqueueP4node.exit97.1, %for.body31.lr.ph.new
  %20 = phi %struct.node* [ %.pre111, %for.body31.lr.ph.new ], [ %38, %_Z7enqueueP4node.exit97.1 ]
  %indvars.iv109 = phi i64 [ 0, %for.body31.lr.ph.new ], [ %indvars.iv.next110.1, %_Z7enqueueP4node.exit97.1 ]
  %niter = phi i64 [ %unroll_iter, %for.body31.lr.ph.new ], [ %niter.nsub.1, %_Z7enqueueP4node.exit97.1 ]
  %21 = load i8**, i8*** %pointers32, align 8, !tbaa !32
  %arrayidx34 = getelementptr inbounds i8*, i8** %21, i64 %indvars.iv109
  %22 = bitcast i8** %arrayidx34 to %struct.node**
  %23 = load %struct.node*, %struct.node** %22, align 8, !tbaa !14
  %cmp.i87 = icmp eq %struct.node* %20, null
  br i1 %cmp.i87, label %_Z7enqueueP4node.exit97, label %while.cond.i93

while.cond.i93:                                   ; preds = %while.cond.i93, %for.body31
  %c.0.i90 = phi %struct.node* [ %24, %while.cond.i93 ], [ %20, %for.body31 ]
  %next1.i91 = getelementptr inbounds %struct.node, %struct.node* %c.0.i90, i64 0, i32 5
  %24 = load %struct.node*, %struct.node** %next1.i91, align 8, !tbaa !21
  %cmp2.i92 = icmp eq %struct.node* %24, null
  br i1 %cmp2.i92, label %while.end.i96, label %while.cond.i93

while.end.i96:                                    ; preds = %while.cond.i93
  %next1.i91.le = getelementptr inbounds %struct.node, %struct.node* %c.0.i90, i64 0, i32 5
  br label %_Z7enqueueP4node.exit97

_Z7enqueueP4node.exit97:                          ; preds = %while.end.i96, %for.body31
  %queue.sink = phi %struct.node** [ %next1.i91.le, %while.end.i96 ], [ @queue, %for.body31 ]
  %25 = phi %struct.node* [ %20, %while.end.i96 ], [ %23, %for.body31 ]
  store %struct.node* %23, %struct.node** %queue.sink, align 8, !tbaa !14
  %next.i88 = getelementptr inbounds %struct.node, %struct.node* %23, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i88, align 8, !tbaa !21
  %indvars.iv.next110 = or i64 %indvars.iv109, 1
  %26 = load i8**, i8*** %pointers32, align 8, !tbaa !32
  %arrayidx34.1 = getelementptr inbounds i8*, i8** %26, i64 %indvars.iv.next110
  %27 = bitcast i8** %arrayidx34.1 to %struct.node**
  %28 = load %struct.node*, %struct.node** %27, align 8, !tbaa !14
  %cmp.i87.1 = icmp eq %struct.node* %25, null
  br i1 %cmp.i87.1, label %_Z7enqueueP4node.exit97.1, label %while.cond.i93.1

if.end38.loopexit.unr-lcssa:                      ; preds = %_Z7enqueueP4node.exit97.1, %for.body31.lr.ph
  %.unr = phi %struct.node* [ %.pre111, %for.body31.lr.ph ], [ %38, %_Z7enqueueP4node.exit97.1 ]
  %indvars.iv109.unr = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next110.1, %_Z7enqueueP4node.exit97.1 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end38, label %for.body31.epil

for.body31.epil:                                  ; preds = %if.end38.loopexit.unr-lcssa
  %29 = load i8**, i8*** %pointers32, align 8, !tbaa !32
  %arrayidx34.epil = getelementptr inbounds i8*, i8** %29, i64 %indvars.iv109.unr
  %30 = bitcast i8** %arrayidx34.epil to %struct.node**
  %31 = load %struct.node*, %struct.node** %30, align 8, !tbaa !14
  %cmp.i87.epil = icmp eq %struct.node* %.unr, null
  br i1 %cmp.i87.epil, label %_Z7enqueueP4node.exit97.epil, label %while.cond.i93.epil

while.cond.i93.epil:                              ; preds = %while.cond.i93.epil, %for.body31.epil
  %c.0.i90.epil = phi %struct.node* [ %32, %while.cond.i93.epil ], [ %.unr, %for.body31.epil ]
  %next1.i91.epil = getelementptr inbounds %struct.node, %struct.node* %c.0.i90.epil, i64 0, i32 5
  %32 = load %struct.node*, %struct.node** %next1.i91.epil, align 8, !tbaa !21
  %cmp2.i92.epil = icmp eq %struct.node* %32, null
  br i1 %cmp2.i92.epil, label %while.end.i96.epil, label %while.cond.i93.epil

while.end.i96.epil:                               ; preds = %while.cond.i93.epil
  %next1.i91.le.epil = getelementptr inbounds %struct.node, %struct.node* %c.0.i90.epil, i64 0, i32 5
  br label %_Z7enqueueP4node.exit97.epil

_Z7enqueueP4node.exit97.epil:                     ; preds = %while.end.i96.epil, %for.body31.epil
  %queue.sink.epil = phi %struct.node** [ %next1.i91.le.epil, %while.end.i96.epil ], [ @queue, %for.body31.epil ]
  store %struct.node* %31, %struct.node** %queue.sink.epil, align 8, !tbaa !14
  %next.i88.epil = getelementptr inbounds %struct.node, %struct.node* %31, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i88.epil, align 8, !tbaa !21
  br label %if.end38

if.end38:                                         ; preds = %_Z7enqueueP4node.exit97.epil, %if.end38.loopexit.unr-lcssa, %for.end
  %33 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  %tobool39 = icmp eq i8 %33, 0
  br i1 %tobool39, label %if.end54, label %if.then40

if.then40:                                        ; preds = %if.end38
  %pointers44 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %34 = load i8**, i8*** %pointers44, align 8, !tbaa !32
  %35 = load i32, i32* @order, align 4
  %sub = add nsw i32 %35, -1
  %sub.sink = select i1 %tobool26, i32 %.lcssa, i32 %sub
  %idxprom45 = sext i32 %sub.sink to i64
  %arrayidx46 = getelementptr inbounds i8*, i8** %34, i64 %idxprom45
  %36 = load i8*, i8** %arrayidx46, align 8, !tbaa !14
  %call47 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* %36)
  br label %if.end54

if.end54:                                         ; preds = %if.then40, %if.end38
  %call55 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %.pr = load %struct.node*, %struct.node** @queue, align 8, !tbaa !14
  %cmp1 = icmp eq %struct.node* %.pr, null
  br i1 %cmp1, label %while.end, label %while.body

while.end:                                        ; preds = %if.end54
  %putchar = tail call i32 @putchar(i32 10)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void

while.cond.i93.1:                                 ; preds = %while.cond.i93.1, %_Z7enqueueP4node.exit97
  %c.0.i90.1 = phi %struct.node* [ %37, %while.cond.i93.1 ], [ %25, %_Z7enqueueP4node.exit97 ]
  %next1.i91.1 = getelementptr inbounds %struct.node, %struct.node* %c.0.i90.1, i64 0, i32 5
  %37 = load %struct.node*, %struct.node** %next1.i91.1, align 8, !tbaa !21
  %cmp2.i92.1 = icmp eq %struct.node* %37, null
  br i1 %cmp2.i92.1, label %while.end.i96.1, label %while.cond.i93.1

while.end.i96.1:                                  ; preds = %while.cond.i93.1
  %next1.i91.le.1 = getelementptr inbounds %struct.node, %struct.node* %c.0.i90.1, i64 0, i32 5
  br label %_Z7enqueueP4node.exit97.1

_Z7enqueueP4node.exit97.1:                        ; preds = %while.end.i96.1, %_Z7enqueueP4node.exit97
  %queue.sink.1 = phi %struct.node** [ %next1.i91.le.1, %while.end.i96.1 ], [ @queue, %_Z7enqueueP4node.exit97 ]
  %38 = phi %struct.node* [ %25, %while.end.i96.1 ], [ %28, %_Z7enqueueP4node.exit97 ]
  store %struct.node* %28, %struct.node** %queue.sink.1, align 8, !tbaa !14
  %next.i88.1 = getelementptr inbounds %struct.node, %struct.node* %28, i64 0, i32 5
  store %struct.node* null, %struct.node** %next.i88.1, align 8, !tbaa !21
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end38.loopexit.unr-lcssa, label %for.body31
}

; Function Attrs: nofree nounwind uwtable
define %struct.record* @_Z4findP4nodeib(%struct.node* readonly %root, i32 %key, i1 zeroext %verbose) local_unnamed_addr #10 {
entry:
  %call = tail call %struct.node* @_Z9find_leafP4nodeib(%struct.node* %root, i32 %key, i1 zeroext %verbose)
  %cmp = icmp eq %struct.node* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp122 = icmp sgt i32 %0, 0
  br i1 %cmp122, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %keys = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 1
  %1 = load i32*, i32** %keys, align 8, !tbaa !31
  %2 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %cmp2 = icmp eq i32 %3, %key
  br i1 %cmp2, label %for.end.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %i.023, 1
  %cmp1 = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp1, label %for.body, label %for.end

for.end.loopexit.split.loop.exit:                 ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %for.inc, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %4, %for.end.loopexit.split.loop.exit ], [ %inc, %for.inc ]
  %cmp6 = icmp eq i32 %i.0.lcssa, %0
  br i1 %cmp6, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end
  %pointers = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 0
  %5 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom8 = zext i32 %i.0.lcssa to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %5, i64 %idxprom8
  %6 = bitcast i8** %arrayidx9 to %struct.record**
  %7 = load %struct.record*, %struct.record** %6, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end, %entry
  %retval.0 = phi %struct.record* [ %7, %if.else ], [ null, %entry ], [ null, %for.end ]
  ret %struct.record* %retval.0
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @_Z3cuti(i32 %length) local_unnamed_addr #9 {
entry:
  %0 = and i32 %length, 1
  %div = sdiv i32 %length, 2
  %retval.0 = add nsw i32 %div, %0
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define noalias %struct.record* @_Z11make_recordi(i32 %value) local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(4) i8* @malloc(i64 4) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1029) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.else:                                          ; preds = %entry
  %1 = bitcast i8* %call to %struct.record*
  %value3 = bitcast i8* %call to i32*
  store i32 %value, i32* %value3, align 4, !tbaa !33
  ret %struct.record* %1
}

; Function Attrs: nofree nounwind
declare void @perror(i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias %struct.node* @_Z9make_nodev() local_unnamed_addr #5 {
entry:
  %call = tail call noalias dereferenceable_or_null(40) i8* @malloc(i64 40) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1045) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.node*
  %2 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %2, -1
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 2
  %call5 = tail call noalias i8* @malloc(i64 %mul) #15
  %tobool6 = icmp eq i8* %call5, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1050) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end9:                                          ; preds = %if.end
  %keys = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %keys to i8**
  store i8* %call5, i8** %4, align 8, !tbaa !31
  %conv16 = sext i32 %2 to i64
  %mul17 = shl nsw i64 %conv16, 3
  %call18 = tail call noalias i8* @malloc(i64 %mul17) #15
  %tobool19 = icmp eq i8* %call18, null
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1055) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end22:                                         ; preds = %if.end9
  %6 = bitcast i8* %call to i8**
  store i8* %call18, i8** %6, align 8, !tbaa !32
  %7 = getelementptr inbounds i8, i8* %call, i64 24
  store i8 0, i8* %7, align 8, !tbaa !26
  %num_keys = getelementptr inbounds i8, i8* %call, i64 28
  %8 = bitcast i8* %num_keys to i32*
  store i32 0, i32* %8, align 4, !tbaa !29
  %parent = getelementptr inbounds i8, i8* %call, i64 16
  %9 = bitcast i8* %parent to %struct.node**
  store %struct.node* null, %struct.node** %9, align 8, !tbaa !39
  %next = getelementptr inbounds i8, i8* %call, i64 32
  %10 = bitcast i8* %next to %struct.node**
  store %struct.node* null, %struct.node** %10, align 8, !tbaa !21
  ret %struct.node* %1
}

; Function Attrs: nounwind uwtable
define noalias %struct.node* @_Z9make_leafv() local_unnamed_addr #5 {
entry:
  %call = tail call %struct.node* @_Z9make_nodev()
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 3
  store i8 1, i8* %is_leaf, align 8, !tbaa !26
  ret %struct.node* %call
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @_Z14get_left_indexP4nodeS0_(%struct.node* nocapture readonly %parent, %struct.node* readnone %left) local_unnamed_addr #4 {
entry:
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %parent, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp6 = icmp slt i32 %0, 0
  br i1 %cmp6, label %while.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %pointers = getelementptr inbounds %struct.node, %struct.node* %parent, i64 0, i32 0
  %1 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %2 = bitcast %struct.node* %left to i8*
  %3 = sext i32 %0 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %land.rhs.lr.ph ]
  %left_index.07 = phi i32 [ %inc, %while.body ], [ 0, %land.rhs.lr.ph ]
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp1 = icmp eq i8* %4, %2
  br i1 %cmp1, label %while.end.loopexit.split.loop.exit, label %while.body

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %left_index.07, 1
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %land.rhs, label %while.end

while.end.loopexit.split.loop.exit:               ; preds = %land.rhs
  %5 = trunc i64 %indvars.iv to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit, %while.body, %entry
  %left_index.0.lcssa = phi i32 [ 0, %entry ], [ %5, %while.end.loopexit.split.loop.exit ], [ %inc, %while.body ]
  ret i32 %left_index.0.lcssa
}

; Function Attrs: nofree norecurse nounwind uwtable
define %struct.node* @_Z16insert_into_leafP4nodeiP6record(%struct.node* returned %leaf, i32 %key, %struct.record* %pointer) local_unnamed_addr #3 {
entry:
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp50 = icmp sgt i32 %0, 0
  %keys = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 1
  %1 = load i32*, i32** %keys, align 8, !tbaa !31
  br i1 %cmp50, label %land.rhs.lr.ph, label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = sext i32 %0 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.lr.ph
  %indvars.iv59 = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next60, %while.body ]
  %insertion_point.051 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %indvars.iv59
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %3, %key
  br i1 %cmp1, label %while.body, label %while.end.split.loop.exit

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %inc = add nuw nsw i32 %insertion_point.051, 1
  %cmp = icmp slt i64 %indvars.iv.next60, %2
  br i1 %cmp, label %land.rhs, label %while.end

while.end.split.loop.exit:                        ; preds = %land.rhs
  %4 = trunc i64 %indvars.iv59 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit, %while.body
  %insertion_point.0.lcssa = phi i32 [ %4, %while.end.split.loop.exit ], [ %inc, %while.body ]
  %cmp348 = icmp sgt i32 %0, %insertion_point.0.lcssa
  %keys4 = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 1
  br i1 %cmp348, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %pointers = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 0
  %5 = sext i32 %0 to i64
  %6 = sext i32 %insertion_point.0.lcssa to i64
  %7 = sub nsw i64 %5, %6
  %8 = xor i64 %6, -1
  %xtraiter = and i64 %7, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.lr.ph
  %indvars.iv.next.prol = add nsw i64 %5, -1
  %arrayidx6.prol = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.prol
  %9 = load i32, i32* %arrayidx6.prol, align 4, !tbaa !20
  %arrayidx9.prol = getelementptr inbounds i32, i32* %1, i64 %5
  store i32 %9, i32* %arrayidx9.prol, align 4, !tbaa !20
  %10 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx12.prol = getelementptr inbounds i8*, i8** %10, i64 %indvars.iv.next.prol
  %11 = bitcast i8** %arrayidx12.prol to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !14
  %arrayidx15.prol = getelementptr inbounds i8*, i8** %10, i64 %5
  %13 = bitcast i8** %arrayidx15.prol to i64*
  store i64 %12, i64* %13, align 8, !tbaa !14
  %14 = load i32*, i32** %keys4, align 8, !tbaa !31
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next.prol, %for.body.prol ]
  %.unr = phi i32* [ %1, %for.body.lr.ph ], [ %14, %for.body.prol ]
  %.lcssa70.unr = phi i32* [ undef, %for.body.lr.ph ], [ %14, %for.body.prol ]
  %15 = sub nsw i64 0, %5
  %16 = icmp eq i64 %8, %15
  br i1 %16, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %for.body.prol.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %17 = phi i32* [ %29, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next
  %18 = load i32, i32* %arrayidx6, align 4, !tbaa !20
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %indvars.iv
  store i32 %18, i32* %arrayidx9, align 4, !tbaa !20
  %19 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx12 = getelementptr inbounds i8*, i8** %19, i64 %indvars.iv.next
  %20 = bitcast i8** %arrayidx12 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !14
  %arrayidx15 = getelementptr inbounds i8*, i8** %19, i64 %indvars.iv
  %22 = bitcast i8** %arrayidx15 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !14
  %23 = load i32*, i32** %keys4, align 8, !tbaa !31
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %arrayidx6.1 = getelementptr inbounds i32, i32* %23, i64 %indvars.iv.next.1
  %24 = load i32, i32* %arrayidx6.1, align 4, !tbaa !20
  %arrayidx9.1 = getelementptr inbounds i32, i32* %23, i64 %indvars.iv.next
  store i32 %24, i32* %arrayidx9.1, align 4, !tbaa !20
  %25 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx12.1 = getelementptr inbounds i8*, i8** %25, i64 %indvars.iv.next.1
  %26 = bitcast i8** %arrayidx12.1 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !14
  %arrayidx15.1 = getelementptr inbounds i8*, i8** %25, i64 %indvars.iv.next
  %28 = bitcast i8** %arrayidx15.1 to i64*
  store i64 %27, i64* %28, align 8, !tbaa !14
  %cmp3.1 = icmp sgt i64 %indvars.iv.next.1, %6
  %29 = load i32*, i32** %keys4, align 8, !tbaa !31
  br i1 %cmp3.1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %while.end, %entry
  %insertion_point.0.lcssa64 = phi i32 [ %insertion_point.0.lcssa, %while.end ], [ 0, %entry ], [ %insertion_point.0.lcssa, %for.body ], [ %insertion_point.0.lcssa, %for.body.prol.loopexit ]
  %.lcssa = phi i32* [ %1, %while.end ], [ %1, %entry ], [ %.lcssa70.unr, %for.body.prol.loopexit ], [ %29, %for.body ]
  %idxprom17 = zext i32 %insertion_point.0.lcssa64 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %.lcssa, i64 %idxprom17
  store i32 %key, i32* %arrayidx18, align 4, !tbaa !20
  %pointers19 = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 0
  %30 = load i8**, i8*** %pointers19, align 8, !tbaa !32
  %arrayidx21 = getelementptr inbounds i8*, i8** %30, i64 %idxprom17
  %31 = bitcast i8** %arrayidx21 to %struct.record**
  store %struct.record* %pointer, %struct.record** %31, align 8, !tbaa !14
  %32 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %num_keys, align 4, !tbaa !29
  ret %struct.node* %leaf
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z32insert_into_leaf_after_splittingP4nodeS0_iP6record(%struct.node* %root, %struct.node* %leaf, i32 %key, %struct.record* %pointer) local_unnamed_addr #5 {
entry:
  %call.i = tail call %struct.node* @_Z9make_nodev() #15
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 3
  store i8 1, i8* %is_leaf.i, align 8, !tbaa !26
  %0 = load i32, i32* @order, align 4, !tbaa !20
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = tail call noalias i8* @malloc(i64 %mul) #15
  %tobool = icmp eq i8* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1124) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %call1 to i32*
  %mul7 = shl nsw i64 %conv, 3
  %call8 = tail call noalias i8* @malloc(i64 %mul7) #15
  %tobool9 = icmp eq i8* %call8, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1130) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end12:                                         ; preds = %if.end
  %keys = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 1
  %4 = load i32*, i32** %keys, align 8, !tbaa !31
  %sub = add nsw i32 %0, -1
  %5 = sext i32 %sub to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end12
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %while.cond ], [ 0, %if.end12 ]
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %indvars.iv218
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %cmp17 = icmp slt i32 %6, %key
  %cmp18 = icmp slt i64 %indvars.iv218, %5
  %7 = and i1 %cmp18, %cmp17
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1
  br i1 %7, label %while.cond, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %8 = bitcast i8* %call8 to i8**
  %9 = trunc i64 %indvars.iv218 to i32
  %idxprom.le = and i64 %indvars.iv218, 4294967295
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 4
  %10 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp19200 = icmp sgt i32 %10, 0
  br i1 %cmp19200, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pointers = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 0
  %11 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %12 = zext i32 %10 to i64
  %xtraiter225 = and i64 %12, 1
  %13 = icmp eq i32 %10, 1
  br i1 %13, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter227 = sub nsw i64 %12, %xtraiter225
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv216 = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next217.1, %for.body ]
  %j.0201 = phi i32 [ 0, %for.body.lr.ph.new ], [ %inc34.1, %for.body ]
  %niter228 = phi i64 [ %unroll_iter227, %for.body.lr.ph.new ], [ %niter228.nsub.1, %for.body ]
  %cmp20 = icmp eq i32 %j.0201, %9
  %inc22 = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %j.0201, %inc22
  %arrayidx26 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv216
  %14 = load i32, i32* %arrayidx26, align 4, !tbaa !20
  %idxprom27 = sext i32 %spec.select to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %2, i64 %idxprom27
  store i32 %14, i32* %arrayidx28, align 4, !tbaa !20
  %arrayidx30 = getelementptr inbounds i8*, i8** %11, i64 %indvars.iv216
  %15 = bitcast i8** %arrayidx30 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !14
  %arrayidx32 = getelementptr inbounds i8*, i8** %8, i64 %idxprom27
  %17 = bitcast i8** %arrayidx32 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !14
  %indvars.iv.next217 = or i64 %indvars.iv216, 1
  %inc34 = add nsw i32 %spec.select, 1
  %cmp20.1 = icmp eq i32 %inc34, %9
  %inc22.1 = zext i1 %cmp20.1 to i32
  %spec.select.1 = add nsw i32 %inc34, %inc22.1
  %arrayidx26.1 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv.next217
  %18 = load i32, i32* %arrayidx26.1, align 4, !tbaa !20
  %idxprom27.1 = sext i32 %spec.select.1 to i64
  %arrayidx28.1 = getelementptr inbounds i32, i32* %2, i64 %idxprom27.1
  store i32 %18, i32* %arrayidx28.1, align 4, !tbaa !20
  %arrayidx30.1 = getelementptr inbounds i8*, i8** %11, i64 %indvars.iv.next217
  %19 = bitcast i8** %arrayidx30.1 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !14
  %arrayidx32.1 = getelementptr inbounds i8*, i8** %8, i64 %idxprom27.1
  %21 = bitcast i8** %arrayidx32.1 to i64*
  store i64 %20, i64* %21, align 8, !tbaa !14
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2
  %inc34.1 = add nsw i32 %spec.select.1, 1
  %niter228.nsub.1 = add i64 %niter228, -2
  %niter228.ncmp.1 = icmp eq i64 %niter228.nsub.1, 0
  br i1 %niter228.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %indvars.iv216.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next217.1, %for.body ]
  %j.0201.unr = phi i32 [ 0, %for.body.lr.ph ], [ %inc34.1, %for.body ]
  %lcmp.mod226 = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %cmp20.epil = icmp eq i32 %j.0201.unr, %9
  %inc22.epil = zext i1 %cmp20.epil to i32
  %spec.select.epil = add nsw i32 %j.0201.unr, %inc22.epil
  %arrayidx26.epil = getelementptr inbounds i32, i32* %4, i64 %indvars.iv216.unr
  %22 = load i32, i32* %arrayidx26.epil, align 4, !tbaa !20
  %idxprom27.epil = sext i32 %spec.select.epil to i64
  %arrayidx28.epil = getelementptr inbounds i32, i32* %2, i64 %idxprom27.epil
  store i32 %22, i32* %arrayidx28.epil, align 4, !tbaa !20
  %arrayidx30.epil = getelementptr inbounds i8*, i8** %11, i64 %indvars.iv216.unr
  %23 = bitcast i8** %arrayidx30.epil to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !14
  %arrayidx32.epil = getelementptr inbounds i8*, i8** %8, i64 %idxprom27.epil
  %25 = bitcast i8** %arrayidx32.epil to i64*
  store i64 %24, i64* %25, align 8, !tbaa !14
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %for.cond.preheader
  %arrayidx36 = getelementptr inbounds i32, i32* %2, i64 %idxprom.le
  store i32 %key, i32* %arrayidx36, align 4, !tbaa !20
  %arrayidx38 = getelementptr inbounds i8*, i8** %8, i64 %idxprom.le
  %26 = bitcast i8** %arrayidx38 to %struct.record**
  store %struct.record* %pointer, %struct.record** %26, align 8, !tbaa !14
  store i32 0, i32* %num_keys, align 4, !tbaa !29
  %27 = and i32 %sub, 1
  %div.i = sdiv i32 %sub, 2
  %retval.0.i = add nsw i32 %div.i, %27
  %cmp43198 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp43198, label %for.body44.lr.ph, label %for.cond60.preheader

for.body44.lr.ph:                                 ; preds = %for.end
  %pointers47 = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 0
  %wide.trip.count214 = zext i32 %retval.0.i to i64
  %xtraiter223 = and i64 %wide.trip.count214, 1
  %28 = icmp eq i32 %retval.0.i, 1
  br i1 %28, label %for.cond60.preheader.loopexit.unr-lcssa, label %for.body44.lr.ph.new

for.body44.lr.ph.new:                             ; preds = %for.body44.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count214, %xtraiter223
  br label %for.body44

for.cond60.preheader.loopexit.unr-lcssa:          ; preds = %for.body44, %for.body44.lr.ph
  %indvars.iv212.unr = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next213.1, %for.body44 ]
  %lcmp.mod224 = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224, label %for.cond60.preheader.loopexit, label %for.body44.epil

for.body44.epil:                                  ; preds = %for.cond60.preheader.loopexit.unr-lcssa
  %arrayidx46.epil = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv212.unr
  %29 = bitcast i8** %arrayidx46.epil to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !14
  %31 = load i8**, i8*** %pointers47, align 8, !tbaa !32
  %arrayidx49.epil = getelementptr inbounds i8*, i8** %31, i64 %indvars.iv212.unr
  %32 = bitcast i8** %arrayidx49.epil to i64*
  store i64 %30, i64* %32, align 8, !tbaa !14
  %arrayidx51.epil = getelementptr inbounds i32, i32* %2, i64 %indvars.iv212.unr
  %33 = load i32, i32* %arrayidx51.epil, align 4, !tbaa !20
  %34 = load i32*, i32** %keys, align 8, !tbaa !31
  %arrayidx54.epil = getelementptr inbounds i32, i32* %34, i64 %indvars.iv212.unr
  store i32 %33, i32* %arrayidx54.epil, align 4, !tbaa !20
  %35 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc56.epil = add nsw i32 %35, 1
  store i32 %inc56.epil, i32* %num_keys, align 4, !tbaa !29
  br label %for.cond60.preheader.loopexit

for.cond60.preheader.loopexit:                    ; preds = %for.body44.epil, %for.cond60.preheader.loopexit.unr-lcssa
  %.pre = load i32, i32* @order, align 4, !tbaa !20
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.cond60.preheader.loopexit, %for.end
  %36 = phi i32 [ %.pre, %for.cond60.preheader.loopexit ], [ %0, %for.end ]
  %cmp61195 = icmp slt i32 %retval.0.i, %36
  br i1 %cmp61195, label %for.body62.lr.ph, label %for.end78

for.body62.lr.ph:                                 ; preds = %for.cond60.preheader
  %pointers65 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 0
  %keys70 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 1
  %num_keys73 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 4
  %37 = sext i32 %retval.0.i to i64
  br label %for.body62

for.body44:                                       ; preds = %for.body44, %for.body44.lr.ph.new
  %indvars.iv212 = phi i64 [ 0, %for.body44.lr.ph.new ], [ %indvars.iv.next213.1, %for.body44 ]
  %niter = phi i64 [ %unroll_iter, %for.body44.lr.ph.new ], [ %niter.nsub.1, %for.body44 ]
  %arrayidx46 = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv212
  %38 = bitcast i8** %arrayidx46 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !14
  %40 = load i8**, i8*** %pointers47, align 8, !tbaa !32
  %arrayidx49 = getelementptr inbounds i8*, i8** %40, i64 %indvars.iv212
  %41 = bitcast i8** %arrayidx49 to i64*
  store i64 %39, i64* %41, align 8, !tbaa !14
  %arrayidx51 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv212
  %42 = load i32, i32* %arrayidx51, align 4, !tbaa !20
  %43 = load i32*, i32** %keys, align 8, !tbaa !31
  %arrayidx54 = getelementptr inbounds i32, i32* %43, i64 %indvars.iv212
  store i32 %42, i32* %arrayidx54, align 4, !tbaa !20
  %44 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc56 = add nsw i32 %44, 1
  store i32 %inc56, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next213 = or i64 %indvars.iv212, 1
  %arrayidx46.1 = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv.next213
  %45 = bitcast i8** %arrayidx46.1 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !14
  %47 = load i8**, i8*** %pointers47, align 8, !tbaa !32
  %arrayidx49.1 = getelementptr inbounds i8*, i8** %47, i64 %indvars.iv.next213
  %48 = bitcast i8** %arrayidx49.1 to i64*
  store i64 %46, i64* %48, align 8, !tbaa !14
  %arrayidx51.1 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next213
  %49 = load i32, i32* %arrayidx51.1, align 4, !tbaa !20
  %50 = load i32*, i32** %keys, align 8, !tbaa !31
  %arrayidx54.1 = getelementptr inbounds i32, i32* %50, i64 %indvars.iv.next213
  store i32 %49, i32* %arrayidx54.1, align 4, !tbaa !20
  %51 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc56.1 = add nsw i32 %51, 1
  store i32 %inc56.1, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond60.preheader.loopexit.unr-lcssa, label %for.body44

for.body62:                                       ; preds = %for.body62, %for.body62.lr.ph
  %indvars.iv210 = phi i64 [ 0, %for.body62.lr.ph ], [ %indvars.iv.next211, %for.body62 ]
  %indvars.iv208 = phi i64 [ %37, %for.body62.lr.ph ], [ %indvars.iv.next209, %for.body62 ]
  %arrayidx64 = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv208
  %52 = bitcast i8** %arrayidx64 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !14
  %54 = load i8**, i8*** %pointers65, align 8, !tbaa !32
  %arrayidx67 = getelementptr inbounds i8*, i8** %54, i64 %indvars.iv210
  %55 = bitcast i8** %arrayidx67 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !14
  %arrayidx69 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv208
  %56 = load i32, i32* %arrayidx69, align 4, !tbaa !20
  %57 = load i32*, i32** %keys70, align 8, !tbaa !31
  %arrayidx72 = getelementptr inbounds i32, i32* %57, i64 %indvars.iv210
  store i32 %56, i32* %arrayidx72, align 4, !tbaa !20
  %58 = load i32, i32* %num_keys73, align 4, !tbaa !29
  %inc74 = add nsw i32 %58, 1
  store i32 %inc74, i32* %num_keys73, align 4, !tbaa !29
  %indvars.iv.next209 = add nsw i64 %indvars.iv208, 1
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  %59 = load i32, i32* @order, align 4, !tbaa !20
  %60 = sext i32 %59 to i64
  %cmp61 = icmp slt i64 %indvars.iv.next209, %60
  br i1 %cmp61, label %for.body62, label %for.end78

for.end78:                                        ; preds = %for.body62, %for.cond60.preheader
  tail call void @free(i8* nonnull %call8) #15
  tail call void @free(i8* nonnull %call1) #15
  %pointers79 = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 0
  %61 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %62 = load i32, i32* @order, align 4, !tbaa !20
  %sub80 = add i32 %62, -1
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds i8*, i8** %61, i64 %idxprom81
  %63 = bitcast i8** %arrayidx82 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !14
  %pointers83 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 0
  %65 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx86 = getelementptr inbounds i8*, i8** %65, i64 %idxprom81
  %66 = bitcast i8** %arrayidx86 to i64*
  store i64 %64, i64* %66, align 8, !tbaa !14
  %67 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx90 = getelementptr inbounds i8*, i8** %67, i64 %idxprom81
  %68 = bitcast i8** %arrayidx90 to %struct.node**
  store %struct.node* %call.i, %struct.node** %68, align 8, !tbaa !14
  %69 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp94193 = icmp slt i32 %69, %sub80
  br i1 %cmp94193, label %for.body95.preheader, label %for.end101

for.body95.preheader:                             ; preds = %for.end78
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %idxprom81, %70
  %72 = xor i64 %70, -1
  %73 = add nsw i64 %72, %idxprom81
  %xtraiter220 = and i64 %71, 3
  %lcmp.mod221 = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221, label %for.body95.prol.loopexit, label %for.body95.prol

for.body95.prol:                                  ; preds = %for.body95.prol, %for.body95.preheader
  %indvars.iv204.prol = phi i64 [ %indvars.iv.next205.prol, %for.body95.prol ], [ %70, %for.body95.preheader ]
  %prol.iter222 = phi i64 [ %prol.iter222.sub, %for.body95.prol ], [ %xtraiter220, %for.body95.preheader ]
  %74 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx98.prol = getelementptr inbounds i8*, i8** %74, i64 %indvars.iv204.prol
  store i8* null, i8** %arrayidx98.prol, align 8, !tbaa !14
  %indvars.iv.next205.prol = add nsw i64 %indvars.iv204.prol, 1
  %prol.iter222.sub = add i64 %prol.iter222, -1
  %prol.iter222.cmp = icmp eq i64 %prol.iter222.sub, 0
  br i1 %prol.iter222.cmp, label %for.body95.prol.loopexit, label %for.body95.prol, !llvm.loop !40

for.body95.prol.loopexit:                         ; preds = %for.body95.prol, %for.body95.preheader
  %indvars.iv204.unr = phi i64 [ %70, %for.body95.preheader ], [ %indvars.iv.next205.prol, %for.body95.prol ]
  %75 = icmp ult i64 %73, 3
  br i1 %75, label %for.end101, label %for.body95

for.body95:                                       ; preds = %for.body95, %for.body95.prol.loopexit
  %indvars.iv204 = phi i64 [ %indvars.iv.next205.3, %for.body95 ], [ %indvars.iv204.unr, %for.body95.prol.loopexit ]
  %76 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx98 = getelementptr inbounds i8*, i8** %76, i64 %indvars.iv204
  store i8* null, i8** %arrayidx98, align 8, !tbaa !14
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1
  %77 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx98.1 = getelementptr inbounds i8*, i8** %77, i64 %indvars.iv.next205
  store i8* null, i8** %arrayidx98.1, align 8, !tbaa !14
  %indvars.iv.next205.1 = add nsw i64 %indvars.iv204, 2
  %78 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx98.2 = getelementptr inbounds i8*, i8** %78, i64 %indvars.iv.next205.1
  store i8* null, i8** %arrayidx98.2, align 8, !tbaa !14
  %indvars.iv.next205.2 = add nsw i64 %indvars.iv204, 3
  %79 = load i8**, i8*** %pointers79, align 8, !tbaa !32
  %arrayidx98.3 = getelementptr inbounds i8*, i8** %79, i64 %indvars.iv.next205.2
  store i8* null, i8** %arrayidx98.3, align 8, !tbaa !14
  %indvars.iv.next205.3 = add nsw i64 %indvars.iv204, 4
  %exitcond207.3 = icmp eq i64 %indvars.iv.next205.3, %idxprom81
  br i1 %exitcond207.3, label %for.end101, label %for.body95

for.end101:                                       ; preds = %for.body95, %for.body95.prol.loopexit, %for.end78
  %num_keys102 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 4
  %80 = load i32, i32* %num_keys102, align 4, !tbaa !29
  %cmp105191 = icmp slt i32 %80, %sub80
  br i1 %cmp105191, label %for.body106.preheader, label %for.end112

for.body106.preheader:                            ; preds = %for.end101
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %idxprom81, %81
  %83 = xor i64 %81, -1
  %84 = add nsw i64 %83, %idxprom81
  %xtraiter = and i64 %82, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body106.prol.loopexit, label %for.body106.prol

for.body106.prol:                                 ; preds = %for.body106.prol, %for.body106.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body106.prol ], [ %81, %for.body106.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body106.prol ], [ %xtraiter, %for.body106.preheader ]
  %85 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx109.prol = getelementptr inbounds i8*, i8** %85, i64 %indvars.iv.prol
  store i8* null, i8** %arrayidx109.prol, align 8, !tbaa !14
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body106.prol.loopexit, label %for.body106.prol, !llvm.loop !42

for.body106.prol.loopexit:                        ; preds = %for.body106.prol, %for.body106.preheader
  %indvars.iv.unr = phi i64 [ %81, %for.body106.preheader ], [ %indvars.iv.next.prol, %for.body106.prol ]
  %86 = icmp ult i64 %84, 3
  br i1 %86, label %for.end112, label %for.body106

for.body106:                                      ; preds = %for.body106, %for.body106.prol.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body106 ], [ %indvars.iv.unr, %for.body106.prol.loopexit ]
  %87 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx109 = getelementptr inbounds i8*, i8** %87, i64 %indvars.iv
  store i8* null, i8** %arrayidx109, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %88 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx109.1 = getelementptr inbounds i8*, i8** %88, i64 %indvars.iv.next
  store i8* null, i8** %arrayidx109.1, align 8, !tbaa !14
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %89 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx109.2 = getelementptr inbounds i8*, i8** %89, i64 %indvars.iv.next.1
  store i8* null, i8** %arrayidx109.2, align 8, !tbaa !14
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %90 = load i8**, i8*** %pointers83, align 8, !tbaa !32
  %arrayidx109.3 = getelementptr inbounds i8*, i8** %90, i64 %indvars.iv.next.2
  store i8* null, i8** %arrayidx109.3, align 8, !tbaa !14
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %idxprom81
  br i1 %exitcond.3, label %for.end112, label %for.body106

for.end112:                                       ; preds = %for.body106, %for.body106.prol.loopexit, %for.end101
  %parent = getelementptr inbounds %struct.node, %struct.node* %leaf, i64 0, i32 2
  %91 = bitcast %struct.node** %parent to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !39
  %parent113 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 2
  %93 = bitcast %struct.node** %parent113 to i64*
  store i64 %92, i64* %93, align 8, !tbaa !39
  %keys114 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 1
  %94 = load i32*, i32** %keys114, align 8, !tbaa !31
  %95 = load i32, i32* %94, align 4, !tbaa !20
  %call116 = tail call %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* %root, %struct.node* %leaf, i32 %95, %struct.node* nonnull %call.i)
  ret %struct.node* %call116
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* %root, %struct.node* %left, i32 %key, %struct.node* %right) local_unnamed_addr #5 {
entry:
  %parent1 = getelementptr inbounds %struct.node, %struct.node* %left, i64 0, i32 2
  %0 = load %struct.node*, %struct.node** %parent1, align 8, !tbaa !39
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call %struct.node* @_Z9make_nodev() #15
  %keys.i18 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 1
  %1 = load i32*, i32** %keys.i18, align 8, !tbaa !31
  store i32 %key, i32* %1, align 4, !tbaa !20
  %pointers.i19 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 0
  %2 = bitcast %struct.node* %call.i to %struct.node***
  %3 = load %struct.node**, %struct.node*** %2, align 8, !tbaa !32
  store %struct.node* %left, %struct.node** %3, align 8, !tbaa !14
  %4 = load i8**, i8*** %pointers.i19, align 8, !tbaa !32
  %arrayidx3.i20 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = bitcast i8** %arrayidx3.i20 to %struct.node**
  store %struct.node* %right, %struct.node** %5, align 8, !tbaa !14
  %num_keys.i21 = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 4
  %6 = load i32, i32* %num_keys.i21, align 4, !tbaa !29
  %inc.i22 = add nsw i32 %6, 1
  store i32 %inc.i22, i32* %num_keys.i21, align 4, !tbaa !29
  %parent.i = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent.i, align 8, !tbaa !39
  store %struct.node* %call.i, %struct.node** %parent1, align 8, !tbaa !39
  %parent5.i = getelementptr inbounds %struct.node, %struct.node* %right, i64 0, i32 2
  store %struct.node* %call.i, %struct.node** %parent5.i, align 8, !tbaa !39
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_keys.i23 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 4
  %7 = load i32, i32* %num_keys.i23, align 4, !tbaa !29
  %cmp6.i = icmp slt i32 %7, 0
  br i1 %cmp6.i, label %_Z14get_left_indexP4nodeS0_.exit, label %land.rhs.lr.ph.i

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %pointers.i24 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %8 = load i8**, i8*** %pointers.i24, align 8, !tbaa !32
  %9 = bitcast %struct.node* %left to i8*
  %10 = zext i32 %7 to i64
  %11 = add nuw i32 %7, 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.lr.ph.i
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i27, %while.body.i ], [ 0, %land.rhs.lr.ph.i ]
  %arrayidx.i26 = getelementptr inbounds i8*, i8** %8, i64 %indvars.iv.i25
  %12 = load i8*, i8** %arrayidx.i26, align 8, !tbaa !14
  %cmp1.i = icmp eq i8* %12, %9
  br i1 %cmp1.i, label %while.end.loopexit.split.loop.exit.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1
  %exitcond = icmp eq i64 %indvars.iv.i25, %10
  br i1 %exitcond, label %_Z14get_left_indexP4nodeS0_.exit, label %land.rhs.i

while.end.loopexit.split.loop.exit.i:             ; preds = %land.rhs.i
  %13 = trunc i64 %indvars.iv.i25 to i32
  br label %_Z14get_left_indexP4nodeS0_.exit

_Z14get_left_indexP4nodeS0_.exit:                 ; preds = %while.end.loopexit.split.loop.exit.i, %while.body.i, %if.end
  %left_index.0.lcssa.i = phi i32 [ 0, %if.end ], [ %13, %while.end.loopexit.split.loop.exit.i ], [ %11, %while.body.i ]
  %14 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %14, -1
  %cmp3 = icmp slt i32 %7, %sub
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %_Z14get_left_indexP4nodeS0_.exit
  %cmp32.i = icmp sgt i32 %7, %left_index.0.lcssa.i
  %pointers.i = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %15 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %entry.for.end_crit_edge.i

entry.for.end_crit_edge.i:                        ; preds = %if.then4
  %.pre.i = sext i32 %left_index.0.lcssa.i to i64
  br label %_Z16insert_into_nodeP4nodeS0_iiS0_.exit

for.body.lr.ph.i:                                 ; preds = %if.then4
  %keys.i = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %16 = sext i32 %7 to i64
  %17 = sext i32 %left_index.0.lcssa.i to i64
  %18 = sub nsw i64 %16, %17
  %19 = xor i64 %17, -1
  %xtraiter = and i64 %18, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.i.prol.loopexit, label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.lr.ph.i
  %arrayidx.i.prol = getelementptr inbounds i8*, i8** %15, i64 %16
  %20 = bitcast i8** %arrayidx.i.prol to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !14
  %22 = add nsw i64 %16, 1
  %arrayidx3.i.prol = getelementptr inbounds i8*, i8** %15, i64 %22
  %23 = bitcast i8** %arrayidx3.i.prol to i64*
  store i64 %21, i64* %23, align 8, !tbaa !14
  %24 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %indvars.iv.next.i.prol = add nsw i64 %16, -1
  %arrayidx5.i.prol = getelementptr inbounds i32, i32* %24, i64 %indvars.iv.next.i.prol
  %25 = load i32, i32* %arrayidx5.i.prol, align 4, !tbaa !20
  %arrayidx8.i.prol = getelementptr inbounds i32, i32* %24, i64 %16
  store i32 %25, i32* %arrayidx8.i.prol, align 4, !tbaa !20
  %26 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  br label %for.body.i.prol.loopexit

for.body.i.prol.loopexit:                         ; preds = %for.body.i.prol, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %16, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  %.unr = phi i8** [ %15, %for.body.lr.ph.i ], [ %26, %for.body.i.prol ]
  %.lcssa.unr = phi i8** [ undef, %for.body.lr.ph.i ], [ %26, %for.body.i.prol ]
  %27 = sub nsw i64 0, %16
  %28 = icmp eq i64 %19, %27
  br i1 %28, label %_Z16insert_into_nodeP4nodeS0_iiS0_.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.prol.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %for.body.i ], [ %indvars.iv.i.unr, %for.body.i.prol.loopexit ]
  %29 = phi i8** [ %42, %for.body.i ], [ %.unr, %for.body.i.prol.loopexit ]
  %arrayidx.i = getelementptr inbounds i8*, i8** %29, i64 %indvars.iv.i
  %30 = bitcast i8** %arrayidx.i to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !14
  %32 = add nsw i64 %indvars.iv.i, 1
  %arrayidx3.i = getelementptr inbounds i8*, i8** %29, i64 %32
  %33 = bitcast i8** %arrayidx3.i to i64*
  store i64 %31, i64* %33, align 8, !tbaa !14
  %34 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %arrayidx5.i = getelementptr inbounds i32, i32* %34, i64 %indvars.iv.next.i
  %35 = load i32, i32* %arrayidx5.i, align 4, !tbaa !20
  %arrayidx8.i = getelementptr inbounds i32, i32* %34, i64 %indvars.iv.i
  store i32 %35, i32* %arrayidx8.i, align 4, !tbaa !20
  %36 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  %arrayidx.i.1 = getelementptr inbounds i8*, i8** %36, i64 %indvars.iv.next.i
  %37 = bitcast i8** %arrayidx.i.1 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !14
  %arrayidx3.i.1 = getelementptr inbounds i8*, i8** %36, i64 %indvars.iv.i
  %39 = bitcast i8** %arrayidx3.i.1 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !14
  %40 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %arrayidx5.i.1 = getelementptr inbounds i32, i32* %40, i64 %indvars.iv.next.i.1
  %41 = load i32, i32* %arrayidx5.i.1, align 4, !tbaa !20
  %arrayidx8.i.1 = getelementptr inbounds i32, i32* %40, i64 %indvars.iv.next.i
  store i32 %41, i32* %arrayidx8.i.1, align 4, !tbaa !20
  %cmp.i.1 = icmp sgt i64 %indvars.iv.next.i.1, %17
  %42 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  br i1 %cmp.i.1, label %for.body.i, label %_Z16insert_into_nodeP4nodeS0_iiS0_.exit

_Z16insert_into_nodeP4nodeS0_iiS0_.exit:          ; preds = %for.body.i, %for.body.i.prol.loopexit, %entry.for.end_crit_edge.i
  %idxprom14.pre-phi.i = phi i64 [ %.pre.i, %entry.for.end_crit_edge.i ], [ %17, %for.body.i ], [ %17, %for.body.i.prol.loopexit ]
  %.lcssa.i = phi i8** [ %15, %entry.for.end_crit_edge.i ], [ %.lcssa.unr, %for.body.i.prol.loopexit ], [ %42, %for.body.i ]
  %add10.i = add nsw i32 %left_index.0.lcssa.i, 1
  %idxprom11.i = sext i32 %add10.i to i64
  %arrayidx12.i = getelementptr inbounds i8*, i8** %.lcssa.i, i64 %idxprom11.i
  %43 = bitcast i8** %arrayidx12.i to %struct.node**
  store %struct.node* %right, %struct.node** %43, align 8, !tbaa !14
  %keys13.i = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %44 = load i32*, i32** %keys13.i, align 8, !tbaa !31
  %arrayidx15.i = getelementptr inbounds i32, i32* %44, i64 %idxprom14.pre-phi.i
  store i32 %key, i32* %arrayidx15.i, align 4, !tbaa !20
  %45 = load i32, i32* %num_keys.i23, align 4, !tbaa !29
  %inc.i = add nsw i32 %45, 1
  store i32 %inc.i, i32* %num_keys.i23, align 4, !tbaa !29
  br label %cleanup

if.end6:                                          ; preds = %_Z14get_left_indexP4nodeS0_.exit
  %call7 = tail call %struct.node* @_Z32insert_into_node_after_splittingP4nodeS0_iiS0_(%struct.node* %root, %struct.node* nonnull %0, i32 %left_index.0.lcssa.i, i32 %key, %struct.node* %right)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %_Z16insert_into_nodeP4nodeS0_iiS0_.exit, %if.then
  %retval.0 = phi %struct.node* [ %call.i, %if.then ], [ %root, %_Z16insert_into_nodeP4nodeS0_iiS0_.exit ], [ %call7, %if.end6 ]
  ret %struct.node* %retval.0
}

; Function Attrs: nofree norecurse nounwind uwtable
define %struct.node* @_Z16insert_into_nodeP4nodeS0_iiS0_(%struct.node* readnone returned %root, %struct.node* nocapture %n, i32 %left_index, i32 %key, %struct.node* %right) local_unnamed_addr #3 {
entry:
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp32 = icmp sgt i32 %0, %left_index
  %pointers = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %1 = load i8**, i8*** %pointers, align 8, !tbaa !32
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %.pre = sext i32 %left_index to i64
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %2 = sext i32 %0 to i64
  %3 = sext i32 %left_index to i64
  %4 = sub nsw i64 %2, %3
  %5 = xor i64 %3, -1
  %xtraiter = and i64 %4, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.lr.ph
  %arrayidx.prol = getelementptr inbounds i8*, i8** %1, i64 %2
  %6 = bitcast i8** %arrayidx.prol to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %8 = add nsw i64 %2, 1
  %arrayidx3.prol = getelementptr inbounds i8*, i8** %1, i64 %8
  %9 = bitcast i8** %arrayidx3.prol to i64*
  store i64 %7, i64* %9, align 8, !tbaa !14
  %10 = load i32*, i32** %keys, align 8, !tbaa !31
  %indvars.iv.next.prol = add nsw i64 %2, -1
  %arrayidx5.prol = getelementptr inbounds i32, i32* %10, i64 %indvars.iv.next.prol
  %11 = load i32, i32* %arrayidx5.prol, align 4, !tbaa !20
  %arrayidx8.prol = getelementptr inbounds i32, i32* %10, i64 %2
  store i32 %11, i32* %arrayidx8.prol, align 4, !tbaa !20
  %12 = load i8**, i8*** %pointers, align 8, !tbaa !32
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next.prol, %for.body.prol ]
  %.unr = phi i8** [ %1, %for.body.lr.ph ], [ %12, %for.body.prol ]
  %.lcssa38.unr = phi i8** [ undef, %for.body.lr.ph ], [ %12, %for.body.prol ]
  %13 = sub nsw i64 0, %2
  %14 = icmp eq i64 %5, %13
  br i1 %14, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %for.body.prol.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %15 = phi i8** [ %28, %for.body ], [ %.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %indvars.iv
  %16 = bitcast i8** %arrayidx to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !14
  %18 = add nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds i8*, i8** %15, i64 %18
  %19 = bitcast i8** %arrayidx3 to i64*
  store i64 %17, i64* %19, align 8, !tbaa !14
  %20 = load i32*, i32** %keys, align 8, !tbaa !31
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx5 = getelementptr inbounds i32, i32* %20, i64 %indvars.iv.next
  %21 = load i32, i32* %arrayidx5, align 4, !tbaa !20
  %arrayidx8 = getelementptr inbounds i32, i32* %20, i64 %indvars.iv
  store i32 %21, i32* %arrayidx8, align 4, !tbaa !20
  %22 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx.1 = getelementptr inbounds i8*, i8** %22, i64 %indvars.iv.next
  %23 = bitcast i8** %arrayidx.1 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !14
  %arrayidx3.1 = getelementptr inbounds i8*, i8** %22, i64 %indvars.iv
  %25 = bitcast i8** %arrayidx3.1 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !14
  %26 = load i32*, i32** %keys, align 8, !tbaa !31
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %arrayidx5.1 = getelementptr inbounds i32, i32* %26, i64 %indvars.iv.next.1
  %27 = load i32, i32* %arrayidx5.1, align 4, !tbaa !20
  %arrayidx8.1 = getelementptr inbounds i32, i32* %26, i64 %indvars.iv.next
  store i32 %27, i32* %arrayidx8.1, align 4, !tbaa !20
  %cmp.1 = icmp sgt i64 %indvars.iv.next.1, %3
  %28 = load i8**, i8*** %pointers, align 8, !tbaa !32
  br i1 %cmp.1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit, %entry.for.end_crit_edge
  %idxprom14.pre-phi = phi i64 [ %.pre, %entry.for.end_crit_edge ], [ %3, %for.body ], [ %3, %for.body.prol.loopexit ]
  %.lcssa = phi i8** [ %1, %entry.for.end_crit_edge ], [ %.lcssa38.unr, %for.body.prol.loopexit ], [ %28, %for.body ]
  %add10 = add nsw i32 %left_index, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %.lcssa, i64 %idxprom11
  %29 = bitcast i8** %arrayidx12 to %struct.node**
  store %struct.node* %right, %struct.node** %29, align 8, !tbaa !14
  %keys13 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %30 = load i32*, i32** %keys13, align 8, !tbaa !31
  %arrayidx15 = getelementptr inbounds i32, i32* %30, i64 %idxprom14.pre-phi
  store i32 %key, i32* %arrayidx15, align 4, !tbaa !20
  %31 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %num_keys, align 4, !tbaa !29
  ret %struct.node* %root
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z32insert_into_node_after_splittingP4nodeS0_iiS0_(%struct.node* %root, %struct.node* %old_node, i32 %left_index, i32 %key, %struct.node* %right) local_unnamed_addr #5 {
entry:
  %0 = load i32, i32* @order, align 4, !tbaa !20
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #15
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1226) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = bitcast i8* %call to %struct.node**
  %conv5 = sext i32 %0 to i64
  %mul6 = shl nsw i64 %conv5, 2
  %call7 = tail call noalias i8* @malloc(i64 %mul6) #15
  %tobool8 = icmp eq i8* %call7, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1231) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end11:                                         ; preds = %if.end
  %4 = bitcast i8* %call7 to i32*
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 4
  %5 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp17202 = icmp slt i32 %5, 0
  br i1 %cmp17202, label %for.end41, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end11
  %add18 = add nsw i32 %left_index, 1
  %pointers = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 0
  %6 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %7 = zext i32 %5 to i64
  %8 = add nuw nsw i64 %7, 1
  %xtraiter228 = and i64 %8, 1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %for.cond26.preheader.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter230 = sub nuw nsw i64 %8, %xtraiter228
  br label %for.body

for.cond26.preheader.unr-lcssa:                   ; preds = %for.body, %for.body.lr.ph
  %indvars.iv217.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next218.1, %for.body ]
  %j.0203.unr = phi i32 [ 0, %for.body.lr.ph ], [ %inc25.1, %for.body ]
  %lcmp.mod229 = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229, label %for.cond26.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond26.preheader.unr-lcssa
  %cmp19.epil = icmp eq i32 %j.0203.unr, %add18
  %inc.epil = zext i1 %cmp19.epil to i32
  %spec.select.epil = add nsw i32 %j.0203.unr, %inc.epil
  %arrayidx.epil = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv217.unr
  %10 = bitcast i8** %arrayidx.epil to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !14
  %idxprom22.epil = sext i32 %spec.select.epil to i64
  %arrayidx23.epil = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %idxprom22.epil
  %12 = bitcast %struct.node** %arrayidx23.epil to i64*
  store i64 %11, i64* %12, align 8, !tbaa !14
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.body.epil, %for.cond26.preheader.unr-lcssa
  %cmp28199 = icmp sgt i32 %5, 0
  br i1 %cmp28199, label %for.body29.lr.ph, label %for.end41

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %keys = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 1
  %13 = load i32*, i32** %keys, align 8, !tbaa !31
  %wide.trip.count215 = zext i32 %5 to i64
  %xtraiter224 = and i64 %wide.trip.count215, 1
  %14 = icmp eq i32 %5, 1
  br i1 %14, label %for.end41.loopexit.unr-lcssa, label %for.body29.lr.ph.new

for.body29.lr.ph.new:                             ; preds = %for.body29.lr.ph
  %unroll_iter226 = sub nsw i64 %wide.trip.count215, %xtraiter224
  br label %for.body29

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv217 = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next218.1, %for.body ]
  %j.0203 = phi i32 [ 0, %for.body.lr.ph.new ], [ %inc25.1, %for.body ]
  %niter231 = phi i64 [ %unroll_iter230, %for.body.lr.ph.new ], [ %niter231.nsub.1, %for.body ]
  %cmp19 = icmp eq i32 %j.0203, %add18
  %inc = zext i1 %cmp19 to i32
  %spec.select = add nsw i32 %j.0203, %inc
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv217
  %15 = bitcast i8** %arrayidx to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !14
  %idxprom22 = sext i32 %spec.select to i64
  %arrayidx23 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %idxprom22
  %17 = bitcast %struct.node** %arrayidx23 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !14
  %indvars.iv.next218 = or i64 %indvars.iv217, 1
  %inc25 = add nsw i32 %spec.select, 1
  %cmp19.1 = icmp eq i32 %spec.select, %left_index
  %inc.1 = zext i1 %cmp19.1 to i32
  %spec.select.1 = add nsw i32 %inc25, %inc.1
  %arrayidx.1 = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv.next218
  %18 = bitcast i8** %arrayidx.1 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !14
  %idxprom22.1 = sext i32 %spec.select.1 to i64
  %arrayidx23.1 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %idxprom22.1
  %20 = bitcast %struct.node** %arrayidx23.1 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !14
  %indvars.iv.next218.1 = add nuw nsw i64 %indvars.iv217, 2
  %inc25.1 = add nsw i32 %spec.select.1, 1
  %niter231.nsub.1 = add i64 %niter231, -2
  %niter231.ncmp.1 = icmp eq i64 %niter231.nsub.1, 0
  br i1 %niter231.ncmp.1, label %for.cond26.preheader.unr-lcssa, label %for.body

for.body29:                                       ; preds = %for.body29, %for.body29.lr.ph.new
  %indvars.iv213 = phi i64 [ 0, %for.body29.lr.ph.new ], [ %indvars.iv.next214.1, %for.body29 ]
  %j.2200 = phi i32 [ 0, %for.body29.lr.ph.new ], [ %inc40.1, %for.body29 ]
  %niter227 = phi i64 [ %unroll_iter226, %for.body29.lr.ph.new ], [ %niter227.nsub.1, %for.body29 ]
  %cmp30 = icmp eq i32 %j.2200, %left_index
  %inc32 = zext i1 %cmp30 to i32
  %spec.select183 = add nsw i32 %j.2200, %inc32
  %arrayidx35 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv213
  %21 = load i32, i32* %arrayidx35, align 4, !tbaa !20
  %idxprom36 = sext i32 %spec.select183 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %4, i64 %idxprom36
  store i32 %21, i32* %arrayidx37, align 4, !tbaa !20
  %indvars.iv.next214 = or i64 %indvars.iv213, 1
  %inc40 = add nsw i32 %spec.select183, 1
  %cmp30.1 = icmp eq i32 %inc40, %left_index
  %inc32.1 = zext i1 %cmp30.1 to i32
  %spec.select183.1 = add nsw i32 %inc40, %inc32.1
  %arrayidx35.1 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv.next214
  %22 = load i32, i32* %arrayidx35.1, align 4, !tbaa !20
  %idxprom36.1 = sext i32 %spec.select183.1 to i64
  %arrayidx37.1 = getelementptr inbounds i32, i32* %4, i64 %idxprom36.1
  store i32 %22, i32* %arrayidx37.1, align 4, !tbaa !20
  %indvars.iv.next214.1 = add nuw nsw i64 %indvars.iv213, 2
  %inc40.1 = add nsw i32 %spec.select183.1, 1
  %niter227.nsub.1 = add i64 %niter227, -2
  %niter227.ncmp.1 = icmp eq i64 %niter227.nsub.1, 0
  br i1 %niter227.ncmp.1, label %for.end41.loopexit.unr-lcssa, label %for.body29

for.end41.loopexit.unr-lcssa:                     ; preds = %for.body29, %for.body29.lr.ph
  %indvars.iv213.unr = phi i64 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next214.1, %for.body29 ]
  %j.2200.unr = phi i32 [ 0, %for.body29.lr.ph ], [ %inc40.1, %for.body29 ]
  %lcmp.mod225 = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225, label %for.end41, label %for.body29.epil

for.body29.epil:                                  ; preds = %for.end41.loopexit.unr-lcssa
  %cmp30.epil = icmp eq i32 %j.2200.unr, %left_index
  %inc32.epil = zext i1 %cmp30.epil to i32
  %spec.select183.epil = add nsw i32 %j.2200.unr, %inc32.epil
  %arrayidx35.epil = getelementptr inbounds i32, i32* %13, i64 %indvars.iv213.unr
  %23 = load i32, i32* %arrayidx35.epil, align 4, !tbaa !20
  %idxprom36.epil = sext i32 %spec.select183.epil to i64
  %arrayidx37.epil = getelementptr inbounds i32, i32* %4, i64 %idxprom36.epil
  store i32 %23, i32* %arrayidx37.epil, align 4, !tbaa !20
  br label %for.end41

for.end41:                                        ; preds = %for.body29.epil, %for.end41.loopexit.unr-lcssa, %for.cond26.preheader, %if.end11
  %add42 = add nsw i32 %left_index, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %idxprom43
  store %struct.node* %right, %struct.node** %arrayidx44, align 8, !tbaa !14
  %idxprom45 = sext i32 %left_index to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %4, i64 %idxprom45
  store i32 %key, i32* %arrayidx46, align 4, !tbaa !20
  %24 = and i32 %0, 1
  %div.i = sdiv i32 %0, 2
  %call48 = tail call %struct.node* @_Z9make_nodev()
  store i32 0, i32* %num_keys, align 4, !tbaa !29
  %retval.0.i = add nsw i32 %24, -1
  %sub = add nsw i32 %retval.0.i, %div.i
  %cmp51194 = icmp sgt i32 %sub, 0
  %25 = bitcast i8* %call to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !14
  %pointers55 = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 0
  %27 = bitcast %struct.node* %old_node to i64**
  %28 = load i64*, i64** %27, align 8, !tbaa !32
  store i64 %26, i64* %28, align 8, !tbaa !14
  br i1 %cmp51194, label %for.body52.lr.ph, label %for.end67

for.body52.lr.ph:                                 ; preds = %for.end41
  %keys60 = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 1
  %29 = add nsw i32 %div.i, %24
  %30 = add nsw i32 %29, -1
  %wide.trip.count = zext i32 %30 to i64
  %xtraiter220 = and i64 %wide.trip.count, 1
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %for.end67.loopexit.unr-lcssa, label %for.body52.lr.ph.new

for.body52.lr.ph.new:                             ; preds = %for.body52.lr.ph
  %unroll_iter222 = sub nsw i64 %wide.trip.count, %xtraiter220
  br label %for.body52

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph.new
  %indvars.iv211 = phi i64 [ 0, %for.body52.lr.ph.new ], [ %indvars.iv.next212.1, %for.body52 ]
  %niter223 = phi i64 [ %unroll_iter222, %for.body52.lr.ph.new ], [ %niter223.nsub.1, %for.body52 ]
  %arrayidx59 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv211
  %32 = load i32, i32* %arrayidx59, align 4, !tbaa !20
  %33 = load i32*, i32** %keys60, align 8, !tbaa !31
  %arrayidx62 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv211
  store i32 %32, i32* %arrayidx62, align 4, !tbaa !20
  %34 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc64 = add nsw i32 %34, 1
  store i32 %inc64, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next212 = or i64 %indvars.iv211, 1
  %arrayidx54 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %indvars.iv.next212
  %35 = bitcast %struct.node** %arrayidx54 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !14
  %37 = load i8**, i8*** %pointers55, align 8, !tbaa !32
  %arrayidx57 = getelementptr inbounds i8*, i8** %37, i64 %indvars.iv.next212
  %38 = bitcast i8** %arrayidx57 to i64*
  store i64 %36, i64* %38, align 8, !tbaa !14
  %arrayidx59.1 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv.next212
  %39 = load i32, i32* %arrayidx59.1, align 4, !tbaa !20
  %40 = load i32*, i32** %keys60, align 8, !tbaa !31
  %arrayidx62.1 = getelementptr inbounds i32, i32* %40, i64 %indvars.iv.next212
  store i32 %39, i32* %arrayidx62.1, align 4, !tbaa !20
  %41 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc64.1 = add nsw i32 %41, 1
  store i32 %inc64.1, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2
  %arrayidx54.1 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %indvars.iv.next212.1
  %42 = bitcast %struct.node** %arrayidx54.1 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !14
  %44 = load i8**, i8*** %pointers55, align 8, !tbaa !32
  %arrayidx57.1 = getelementptr inbounds i8*, i8** %44, i64 %indvars.iv.next212.1
  %45 = bitcast i8** %arrayidx57.1 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !14
  %niter223.nsub.1 = add i64 %niter223, -2
  %niter223.ncmp.1 = icmp eq i64 %niter223.nsub.1, 0
  br i1 %niter223.ncmp.1, label %for.end67.loopexit.unr-lcssa, label %for.body52

for.end67.loopexit.unr-lcssa:                     ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv211.unr = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next212.1, %for.body52 ]
  %lcmp.mod221 = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221, label %for.end67, label %for.body52.epil

for.body52.epil:                                  ; preds = %for.end67.loopexit.unr-lcssa
  %arrayidx59.epil = getelementptr inbounds i32, i32* %4, i64 %indvars.iv211.unr
  %46 = load i32, i32* %arrayidx59.epil, align 4, !tbaa !20
  %47 = load i32*, i32** %keys60, align 8, !tbaa !31
  %arrayidx62.epil = getelementptr inbounds i32, i32* %47, i64 %indvars.iv211.unr
  store i32 %46, i32* %arrayidx62.epil, align 4, !tbaa !20
  %48 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc64.epil = add nsw i32 %48, 1
  store i32 %inc64.epil, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next212.epil = add nuw nsw i64 %indvars.iv211.unr, 1
  %arrayidx54.epil = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %indvars.iv.next212.epil
  %49 = bitcast %struct.node** %arrayidx54.epil to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !14
  %51 = load i8**, i8*** %pointers55, align 8, !tbaa !32
  %arrayidx57.epil = getelementptr inbounds i8*, i8** %51, i64 %indvars.iv.next212.epil
  %52 = bitcast i8** %arrayidx57.epil to i64*
  store i64 %50, i64* %52, align 8, !tbaa !14
  br label %for.end67

for.end67:                                        ; preds = %for.body52.epil, %for.end67.loopexit.unr-lcssa, %for.end41
  %i.2.lcssa = phi i32 [ 1, %for.end41 ], [ %29, %for.end67.loopexit.unr-lcssa ], [ %29, %for.body52.epil ]
  %idxprom74 = sext i32 %sub to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %4, i64 %idxprom74
  %53 = load i32, i32* %arrayidx75, align 4, !tbaa !20
  %54 = load i32, i32* @order, align 4, !tbaa !20
  %cmp78187 = icmp slt i32 %i.2.lcssa, %54
  %idxprom80188 = zext i32 %i.2.lcssa to i64
  %arrayidx81189 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %idxprom80188
  %55 = bitcast %struct.node** %arrayidx81189 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !14
  %pointers82 = getelementptr inbounds %struct.node, %struct.node* %call48, i64 0, i32 0
  %57 = bitcast %struct.node* %call48 to i64**
  %58 = load i64*, i64** %57, align 8, !tbaa !32
  store i64 %56, i64* %58, align 8, !tbaa !14
  br i1 %cmp78187, label %for.body79.lr.ph, label %for.end95

for.body79.lr.ph:                                 ; preds = %for.end67
  %keys87 = getelementptr inbounds %struct.node, %struct.node* %call48, i64 0, i32 1
  %num_keys90 = getelementptr inbounds %struct.node, %struct.node* %call48, i64 0, i32 4
  br label %for.body79

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv209 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next210, %for.body79 ]
  %indvars.iv207 = phi i64 [ %idxprom80188, %for.body79.lr.ph ], [ %indvars.iv.next208, %for.body79 ]
  %arrayidx86 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv207
  %59 = load i32, i32* %arrayidx86, align 4, !tbaa !20
  %60 = load i32*, i32** %keys87, align 8, !tbaa !31
  %arrayidx89 = getelementptr inbounds i32, i32* %60, i64 %indvars.iv209
  store i32 %59, i32* %arrayidx89, align 4, !tbaa !20
  %61 = load i32, i32* %num_keys90, align 4, !tbaa !29
  %inc91 = add nsw i32 %61, 1
  store i32 %inc91, i32* %num_keys90, align 4, !tbaa !29
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %62 = load i32, i32* @order, align 4, !tbaa !20
  %63 = sext i32 %62 to i64
  %cmp78 = icmp slt i64 %indvars.iv.next208, %63
  %arrayidx81 = getelementptr inbounds %struct.node*, %struct.node** %2, i64 %indvars.iv.next208
  %64 = bitcast %struct.node** %arrayidx81 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !14
  %66 = load i8**, i8*** %pointers82, align 8, !tbaa !32
  %arrayidx84 = getelementptr inbounds i8*, i8** %66, i64 %indvars.iv.next210
  %67 = bitcast i8** %arrayidx84 to i64*
  store i64 %65, i64* %67, align 8, !tbaa !14
  br i1 %cmp78, label %for.body79, label %for.end95

for.end95:                                        ; preds = %for.body79, %for.end67
  tail call void @free(i8* nonnull %call) #15
  tail call void @free(i8* nonnull %call7) #15
  %parent = getelementptr inbounds %struct.node, %struct.node* %old_node, i64 0, i32 2
  %68 = bitcast %struct.node** %parent to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !39
  %parent101 = getelementptr inbounds %struct.node, %struct.node* %call48, i64 0, i32 2
  %70 = bitcast %struct.node** %parent101 to i64*
  store i64 %69, i64* %70, align 8, !tbaa !39
  %num_keys103 = getelementptr inbounds %struct.node, %struct.node* %call48, i64 0, i32 4
  %71 = load i32, i32* %num_keys103, align 4, !tbaa !29
  %cmp104184 = icmp slt i32 %71, 0
  br i1 %cmp104184, label %for.end112, label %for.body105.lr.ph

for.body105.lr.ph:                                ; preds = %for.end95
  %72 = load i8**, i8*** %pointers82, align 8, !tbaa !32
  %73 = zext i32 %71 to i64
  %74 = add nuw nsw i64 %73, 1
  %xtraiter = and i64 %74, 7
  %75 = icmp ult i32 %71, 7
  br i1 %75, label %for.end112.loopexit.unr-lcssa, label %for.body105.lr.ph.new

for.body105.lr.ph.new:                            ; preds = %for.body105.lr.ph
  %unroll_iter = sub nsw i64 %74, %xtraiter
  br label %for.body105

for.body105:                                      ; preds = %for.body105, %for.body105.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body105.lr.ph.new ], [ %indvars.iv.next.7, %for.body105 ]
  %niter = phi i64 [ %unroll_iter, %for.body105.lr.ph.new ], [ %niter.nsub.7, %for.body105 ]
  %arrayidx108 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv
  %76 = bitcast i8** %arrayidx108 to %struct.node**
  %77 = load %struct.node*, %struct.node** %76, align 8, !tbaa !14
  %parent109 = getelementptr inbounds %struct.node, %struct.node* %77, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109, align 8, !tbaa !39
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx108.1 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next
  %78 = bitcast i8** %arrayidx108.1 to %struct.node**
  %79 = load %struct.node*, %struct.node** %78, align 8, !tbaa !14
  %parent109.1 = getelementptr inbounds %struct.node, %struct.node* %79, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.1, align 8, !tbaa !39
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %arrayidx108.2 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.1
  %80 = bitcast i8** %arrayidx108.2 to %struct.node**
  %81 = load %struct.node*, %struct.node** %80, align 8, !tbaa !14
  %parent109.2 = getelementptr inbounds %struct.node, %struct.node* %81, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.2, align 8, !tbaa !39
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %arrayidx108.3 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.2
  %82 = bitcast i8** %arrayidx108.3 to %struct.node**
  %83 = load %struct.node*, %struct.node** %82, align 8, !tbaa !14
  %parent109.3 = getelementptr inbounds %struct.node, %struct.node* %83, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.3, align 8, !tbaa !39
  %indvars.iv.next.3 = or i64 %indvars.iv, 4
  %arrayidx108.4 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.3
  %84 = bitcast i8** %arrayidx108.4 to %struct.node**
  %85 = load %struct.node*, %struct.node** %84, align 8, !tbaa !14
  %parent109.4 = getelementptr inbounds %struct.node, %struct.node* %85, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.4, align 8, !tbaa !39
  %indvars.iv.next.4 = or i64 %indvars.iv, 5
  %arrayidx108.5 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.4
  %86 = bitcast i8** %arrayidx108.5 to %struct.node**
  %87 = load %struct.node*, %struct.node** %86, align 8, !tbaa !14
  %parent109.5 = getelementptr inbounds %struct.node, %struct.node* %87, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.5, align 8, !tbaa !39
  %indvars.iv.next.5 = or i64 %indvars.iv, 6
  %arrayidx108.6 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.5
  %88 = bitcast i8** %arrayidx108.6 to %struct.node**
  %89 = load %struct.node*, %struct.node** %88, align 8, !tbaa !14
  %parent109.6 = getelementptr inbounds %struct.node, %struct.node* %89, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.6, align 8, !tbaa !39
  %indvars.iv.next.6 = or i64 %indvars.iv, 7
  %arrayidx108.7 = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.next.6
  %90 = bitcast i8** %arrayidx108.7 to %struct.node**
  %91 = load %struct.node*, %struct.node** %90, align 8, !tbaa !14
  %parent109.7 = getelementptr inbounds %struct.node, %struct.node* %91, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.7, align 8, !tbaa !39
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %for.end112.loopexit.unr-lcssa, label %for.body105

for.end112.loopexit.unr-lcssa:                    ; preds = %for.body105, %for.body105.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next.7, %for.body105 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end112, label %for.body105.epil

for.body105.epil:                                 ; preds = %for.body105.epil, %for.end112.loopexit.unr-lcssa
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body105.epil ], [ %indvars.iv.unr, %for.end112.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body105.epil ], [ %xtraiter, %for.end112.loopexit.unr-lcssa ]
  %arrayidx108.epil = getelementptr inbounds i8*, i8** %72, i64 %indvars.iv.epil
  %92 = bitcast i8** %arrayidx108.epil to %struct.node**
  %93 = load %struct.node*, %struct.node** %92, align 8, !tbaa !14
  %parent109.epil = getelementptr inbounds %struct.node, %struct.node* %93, i64 0, i32 2
  store %struct.node* %call48, %struct.node** %parent109.epil, align 8, !tbaa !39
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.end112, label %for.body105.epil, !llvm.loop !43

for.end112:                                       ; preds = %for.body105.epil, %for.end112.loopexit.unr-lcssa, %for.end95
  %call113 = tail call %struct.node* @_Z18insert_into_parentP4nodeS0_iS0_(%struct.node* %root, %struct.node* %old_node, i32 %53, %struct.node* nonnull %call48)
  ret %struct.node* %call113
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z20insert_into_new_rootP4nodeiS0_(%struct.node* %left, i32 %key, %struct.node* %right) local_unnamed_addr #5 {
entry:
  %call = tail call %struct.node* @_Z9make_nodev()
  %keys = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 1
  %0 = load i32*, i32** %keys, align 8, !tbaa !31
  store i32 %key, i32* %0, align 4, !tbaa !20
  %pointers = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 0
  %1 = bitcast %struct.node* %call to %struct.node***
  %2 = load %struct.node**, %struct.node*** %1, align 8, !tbaa !32
  store %struct.node* %left, %struct.node** %2, align 8, !tbaa !14
  %3 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = bitcast i8** %arrayidx3 to %struct.node**
  store %struct.node* %right, %struct.node** %4, align 8, !tbaa !14
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 4
  %5 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %num_keys, align 4, !tbaa !29
  %parent = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent, align 8, !tbaa !39
  %parent4 = getelementptr inbounds %struct.node, %struct.node* %left, i64 0, i32 2
  store %struct.node* %call, %struct.node** %parent4, align 8, !tbaa !39
  %parent5 = getelementptr inbounds %struct.node, %struct.node* %right, i64 0, i32 2
  store %struct.node* %call, %struct.node** %parent5, align 8, !tbaa !39
  ret %struct.node* %call
}

; Function Attrs: nounwind uwtable
define noalias %struct.node* @_Z14start_new_treeiP6record(i32 %key, %struct.record* %pointer) local_unnamed_addr #5 {
entry:
  %call.i = tail call %struct.node* @_Z9make_nodev() #15
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 3
  store i8 1, i8* %is_leaf.i, align 8, !tbaa !26
  %keys = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 1
  %0 = load i32*, i32** %keys, align 8, !tbaa !31
  store i32 %key, i32* %0, align 4, !tbaa !20
  %1 = bitcast %struct.node* %call.i to %struct.record***
  %2 = load %struct.record**, %struct.record*** %1, align 8, !tbaa !32
  store %struct.record* %pointer, %struct.record** %2, align 8, !tbaa !14
  %3 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %3, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx310 = getelementptr inbounds %struct.record*, %struct.record** %2, i64 %idxprom
  %arrayidx3 = bitcast %struct.record** %arrayidx310 to i8**
  store i8* null, i8** %arrayidx3, align 8, !tbaa !14
  %parent = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent, align 8, !tbaa !39
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %call.i, i64 0, i32 4
  %4 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %num_keys, align 4, !tbaa !29
  ret %struct.node* %call.i
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z6insertP4nodeii(%struct.node* %root, i32 %key, i32 %value) local_unnamed_addr #5 {
entry:
  %cmp.i28 = icmp eq %struct.node* %root, null
  br i1 %cmp.i28, label %if.end, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %is_leaf90.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf90.i, align 8, !tbaa !26, !range !27
  %tobool391.i = icmp eq i8 %0, 0
  br i1 %tobool391.i, label %while.body.i, label %for.cond.preheader.i

while.body.i:                                     ; preds = %if.end28.i, %while.cond.preheader.i
  %c.092.i = phi %struct.node* [ %8, %if.end28.i ], [ %root, %while.cond.preheader.i ]
  %num_keys15.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 4
  %1 = load i32, i32* %num_keys15.i, align 4, !tbaa !29
  %cmp1686.i = icmp sgt i32 %1, 0
  br i1 %cmp1686.i, label %while.body17.lr.ph.i, label %if.end28.i

while.body17.lr.ph.i:                             ; preds = %while.body.i
  %keys18.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 1
  %2 = load i32*, i32** %keys18.i, align 8, !tbaa !31
  %3 = zext i32 %1 to i64
  br label %while.body17.i

while.body17.i:                                   ; preds = %if.then22.i, %while.body17.lr.ph.i
  %indvars.iv103.i = phi i64 [ 0, %while.body17.lr.ph.i ], [ %indvars.iv.next104.i, %if.then22.i ]
  %arrayidx20.i = getelementptr inbounds i32, i32* %2, i64 %indvars.iv103.i
  %4 = load i32, i32* %arrayidx20.i, align 4, !tbaa !20
  %cmp21.i = icmp sgt i32 %4, %key
  br i1 %cmp21.i, label %if.end28.loopexit.split.loop.exit112.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body17.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond107 = icmp eq i64 %indvars.iv.next104.i, %3
  br i1 %exitcond107, label %if.end28.i, label %while.body17.i

if.end28.loopexit.split.loop.exit112.i:           ; preds = %while.body17.i
  %5 = trunc i64 %indvars.iv103.i to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.loopexit.split.loop.exit112.i, %if.then22.i, %while.body.i
  %i.1.lcssa.i = phi i32 [ 0, %while.body.i ], [ %5, %if.end28.loopexit.split.loop.exit112.i ], [ %1, %if.then22.i ]
  %pointers.i29 = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 0
  %6 = load i8**, i8*** %pointers.i29, align 8, !tbaa !32
  %idxprom29.i = zext i32 %i.1.lcssa.i to i64
  %arrayidx30.i = getelementptr inbounds i8*, i8** %6, i64 %idxprom29.i
  %7 = bitcast i8** %arrayidx30.i to %struct.node**
  %8 = load %struct.node*, %struct.node** %7, align 8, !tbaa !14
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %8, i64 0, i32 3
  %9 = load i8, i8* %is_leaf.i, align 8, !tbaa !26, !range !27
  %tobool3.i = icmp eq i8 %9, 0
  br i1 %tobool3.i, label %while.body.i, label %_Z9find_leafP4nodeib.exit

_Z9find_leafP4nodeib.exit:                        ; preds = %if.end28.i
  %cmp.i = icmp eq %struct.node* %8, null
  br i1 %cmp.i, label %if.end, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %_Z9find_leafP4nodeib.exit, %while.cond.preheader.i
  %retval.0.i3090 = phi %struct.node* [ %8, %_Z9find_leafP4nodeib.exit ], [ %root, %while.cond.preheader.i ]
  %num_keys.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i3090, i64 0, i32 4
  %10 = load i32, i32* %num_keys.i, align 4, !tbaa !29
  %cmp122.i = icmp sgt i32 %10, 0
  br i1 %cmp122.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %keys.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i3090, i64 0, i32 1
  %11 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %12 = zext i32 %10 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32, i32* %11, i64 %indvars.iv.i
  %13 = load i32, i32* %arrayidx.i, align 4, !tbaa !20
  %cmp2.i = icmp eq i32 %13, %key
  br i1 %cmp2.i, label %for.end.loopexit.split.loop.exit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond106 = icmp eq i64 %indvars.iv.next.i, %12
  br i1 %exitcond106, label %if.end, label %for.body.i

for.end.loopexit.split.loop.exit.i:               ; preds = %for.body.i
  %14 = trunc i64 %indvars.iv.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.split.loop.exit.i, %for.cond.preheader.i
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %14, %for.end.loopexit.split.loop.exit.i ]
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %10
  br i1 %cmp6.i, label %if.end, label %_Z4findP4nodeib.exit

_Z4findP4nodeib.exit:                             ; preds = %for.end.i
  %pointers.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i3090, i64 0, i32 0
  %15 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  %idxprom8.i = zext i32 %i.0.lcssa.i to i64
  %arrayidx9.i = getelementptr inbounds i8*, i8** %15, i64 %idxprom8.i
  %16 = bitcast i8** %arrayidx9.i to %struct.record**
  %17 = load %struct.record*, %struct.record** %16, align 8, !tbaa !14
  %cmp = icmp eq %struct.record* %17, null
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %_Z4findP4nodeib.exit, %for.end.i, %for.inc.i, %_Z9find_leafP4nodeib.exit, %entry
  %call.i = tail call noalias dereferenceable_or_null(4) i8* @malloc(i64 4) #15
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then.i31, label %_Z11make_recordi.exit

if.then.i31:                                      ; preds = %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1029) #18
  tail call void @exit(i32 -1) #17
  unreachable

_Z11make_recordi.exit:                            ; preds = %if.end
  %19 = bitcast i8* %call.i to %struct.record*
  %value3.i = bitcast i8* %call.i to i32*
  store i32 %value, i32* %value3.i, align 4, !tbaa !33
  br i1 %cmp.i28, label %if.then3, label %while.cond.preheader.i39

if.then3:                                         ; preds = %_Z11make_recordi.exit
  %call.i.i = tail call %struct.node* @_Z9make_nodev() #15
  %is_leaf.i.i = getelementptr inbounds %struct.node, %struct.node* %call.i.i, i64 0, i32 3
  store i8 1, i8* %is_leaf.i.i, align 8, !tbaa !26
  %keys.i33 = getelementptr inbounds %struct.node, %struct.node* %call.i.i, i64 0, i32 1
  %20 = load i32*, i32** %keys.i33, align 8, !tbaa !31
  store i32 %key, i32* %20, align 4, !tbaa !20
  %21 = bitcast %struct.node* %call.i.i to %struct.record***
  %22 = load %struct.record**, %struct.record*** %21, align 8, !tbaa !32
  %23 = bitcast %struct.record** %22 to i8**
  store i8* %call.i, i8** %23, align 8, !tbaa !14
  %24 = load i32, i32* @order, align 4, !tbaa !20
  %sub.i = add nsw i32 %24, -1
  %idxprom.i = sext i32 %sub.i to i64
  %arrayidx310.i = getelementptr inbounds %struct.record*, %struct.record** %22, i64 %idxprom.i
  %arrayidx3.i = bitcast %struct.record** %arrayidx310.i to i8**
  store i8* null, i8** %arrayidx3.i, align 8, !tbaa !14
  %parent.i = getelementptr inbounds %struct.node, %struct.node* %call.i.i, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent.i, align 8, !tbaa !39
  %num_keys.i34 = getelementptr inbounds %struct.node, %struct.node* %call.i.i, i64 0, i32 4
  %25 = load i32, i32* %num_keys.i34, align 4, !tbaa !29
  %inc.i35 = add nsw i32 %25, 1
  store i32 %inc.i35, i32* %num_keys.i34, align 4, !tbaa !29
  br label %cleanup

while.cond.preheader.i39:                         ; preds = %_Z11make_recordi.exit
  %is_leaf90.i37 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %26 = load i8, i8* %is_leaf90.i37, align 8, !tbaa !26, !range !27
  %tobool391.i38 = icmp eq i8 %26, 0
  br i1 %tobool391.i38, label %while.body.i45, label %_Z9find_leafP4nodeib.exit68

while.body.i45:                                   ; preds = %if.end28.i64, %while.cond.preheader.i39
  %c.092.i42 = phi %struct.node* [ %34, %if.end28.i64 ], [ %root, %while.cond.preheader.i39 ]
  %num_keys15.i43 = getelementptr inbounds %struct.node, %struct.node* %c.092.i42, i64 0, i32 4
  %27 = load i32, i32* %num_keys15.i43, align 4, !tbaa !29
  %cmp1686.i44 = icmp sgt i32 %27, 0
  br i1 %cmp1686.i44, label %while.body17.lr.ph.i47, label %if.end28.i64

while.body17.lr.ph.i47:                           ; preds = %while.body.i45
  %keys18.i46 = getelementptr inbounds %struct.node, %struct.node* %c.092.i42, i64 0, i32 1
  %28 = load i32*, i32** %keys18.i46, align 8, !tbaa !31
  %29 = zext i32 %27 to i64
  br label %while.body17.i52

while.body17.i52:                                 ; preds = %if.then22.i56, %while.body17.lr.ph.i47
  %indvars.iv103.i48 = phi i64 [ 0, %while.body17.lr.ph.i47 ], [ %indvars.iv.next104.i53, %if.then22.i56 ]
  %arrayidx20.i50 = getelementptr inbounds i32, i32* %28, i64 %indvars.iv103.i48
  %30 = load i32, i32* %arrayidx20.i50, align 4, !tbaa !20
  %cmp21.i51 = icmp sgt i32 %30, %key
  br i1 %cmp21.i51, label %if.end28.loopexit.split.loop.exit112.i57, label %if.then22.i56

if.then22.i56:                                    ; preds = %while.body17.i52
  %indvars.iv.next104.i53 = add nuw nsw i64 %indvars.iv103.i48, 1
  %exitcond105 = icmp eq i64 %indvars.iv.next104.i53, %29
  br i1 %exitcond105, label %if.end28.i64, label %while.body17.i52

if.end28.loopexit.split.loop.exit112.i57:         ; preds = %while.body17.i52
  %31 = trunc i64 %indvars.iv103.i48 to i32
  br label %if.end28.i64

if.end28.i64:                                     ; preds = %if.end28.loopexit.split.loop.exit112.i57, %if.then22.i56, %while.body.i45
  %i.1.lcssa.i58 = phi i32 [ 0, %while.body.i45 ], [ %31, %if.end28.loopexit.split.loop.exit112.i57 ], [ %27, %if.then22.i56 ]
  %pointers.i59 = getelementptr inbounds %struct.node, %struct.node* %c.092.i42, i64 0, i32 0
  %32 = load i8**, i8*** %pointers.i59, align 8, !tbaa !32
  %idxprom29.i60 = zext i32 %i.1.lcssa.i58 to i64
  %arrayidx30.i61 = getelementptr inbounds i8*, i8** %32, i64 %idxprom29.i60
  %33 = bitcast i8** %arrayidx30.i61 to %struct.node**
  %34 = load %struct.node*, %struct.node** %33, align 8, !tbaa !14
  %is_leaf.i62 = getelementptr inbounds %struct.node, %struct.node* %34, i64 0, i32 3
  %35 = load i8, i8* %is_leaf.i62, align 8, !tbaa !26, !range !27
  %tobool3.i63 = icmp eq i8 %35, 0
  br i1 %tobool3.i63, label %while.body.i45, label %_Z9find_leafP4nodeib.exit68

_Z9find_leafP4nodeib.exit68:                      ; preds = %if.end28.i64, %while.cond.preheader.i39
  %c.0.lcssa.i65 = phi %struct.node* [ %root, %while.cond.preheader.i39 ], [ %34, %if.end28.i64 ]
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa.i65, i64 0, i32 4
  %36 = load i32, i32* %num_keys, align 4, !tbaa !29
  %37 = load i32, i32* @order, align 4, !tbaa !20
  %sub = add nsw i32 %37, -1
  %cmp7 = icmp slt i32 %36, %sub
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %_Z9find_leafP4nodeib.exit68
  %cmp50.i = icmp sgt i32 %36, 0
  %keys.i70 = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa.i65, i64 0, i32 1
  %38 = load i32*, i32** %keys.i70, align 8, !tbaa !31
  br i1 %cmp50.i, label %land.rhs.lr.ph.i, label %_Z16insert_into_leafP4nodeiP6record.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then8
  %39 = zext i32 %36 to i64
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i75, %land.rhs.lr.ph.i
  %indvars.iv59.i = phi i64 [ 0, %land.rhs.lr.ph.i ], [ %indvars.iv.next60.i, %while.body.i75 ]
  %arrayidx.i71 = getelementptr inbounds i32, i32* %38, i64 %indvars.iv59.i
  %40 = load i32, i32* %arrayidx.i71, align 4, !tbaa !20
  %cmp1.i72 = icmp slt i32 %40, %key
  br i1 %cmp1.i72, label %while.body.i75, label %while.end.i

while.body.i75:                                   ; preds = %land.rhs.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %exitcond = icmp eq i64 %indvars.iv.next60.i, %39
  br i1 %exitcond, label %_Z16insert_into_leafP4nodeiP6record.exit, label %land.rhs.i

while.end.i:                                      ; preds = %land.rhs.i
  %41 = trunc i64 %indvars.iv59.i to i32
  %cmp348.i = icmp sgt i32 %36, %41
  br i1 %cmp348.i, label %for.body.lr.ph.i77, label %_Z16insert_into_leafP4nodeiP6record.exit

for.body.lr.ph.i77:                               ; preds = %while.end.i
  %pointers.i76 = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa.i65, i64 0, i32 0
  %sext = shl i64 %indvars.iv59.i, 32
  %42 = ashr exact i64 %sext, 32
  %sext133 = shl i64 %indvars.iv59.i, 32
  %43 = ashr exact i64 %sext133, 32
  %44 = sub nsw i64 %39, %43
  %45 = xor i64 %43, -1
  %xtraiter = and i64 %44, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.i81.prol.loopexit, label %for.body.i81.prol

for.body.i81.prol:                                ; preds = %for.body.lr.ph.i77
  %indvars.iv.next.i79.prol = add nsw i64 %39, -1
  %arrayidx6.i.prol = getelementptr inbounds i32, i32* %38, i64 %indvars.iv.next.i79.prol
  %46 = load i32, i32* %arrayidx6.i.prol, align 4, !tbaa !20
  %arrayidx9.i80.prol = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %46, i32* %arrayidx9.i80.prol, align 4, !tbaa !20
  %47 = load i8**, i8*** %pointers.i76, align 8, !tbaa !32
  %arrayidx12.i.prol = getelementptr inbounds i8*, i8** %47, i64 %indvars.iv.next.i79.prol
  %48 = bitcast i8** %arrayidx12.i.prol to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !14
  %arrayidx15.i.prol = getelementptr inbounds i8*, i8** %47, i64 %39
  %50 = bitcast i8** %arrayidx15.i.prol to i64*
  store i64 %49, i64* %50, align 8, !tbaa !14
  %51 = load i32*, i32** %keys.i70, align 8, !tbaa !31
  br label %for.body.i81.prol.loopexit

for.body.i81.prol.loopexit:                       ; preds = %for.body.i81.prol, %for.body.lr.ph.i77
  %indvars.iv.i78.unr = phi i64 [ %39, %for.body.lr.ph.i77 ], [ %indvars.iv.next.i79.prol, %for.body.i81.prol ]
  %.unr = phi i32* [ %38, %for.body.lr.ph.i77 ], [ %51, %for.body.i81.prol ]
  %.lcssa.unr = phi i32* [ undef, %for.body.lr.ph.i77 ], [ %51, %for.body.i81.prol ]
  %52 = sub nsw i64 0, %39
  %53 = icmp eq i64 %45, %52
  br i1 %53, label %_Z16insert_into_leafP4nodeiP6record.exit, label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81, %for.body.i81.prol.loopexit
  %indvars.iv.i78 = phi i64 [ %indvars.iv.next.i79.1, %for.body.i81 ], [ %indvars.iv.i78.unr, %for.body.i81.prol.loopexit ]
  %54 = phi i32* [ %66, %for.body.i81 ], [ %.unr, %for.body.i81.prol.loopexit ]
  %indvars.iv.next.i79 = add nsw i64 %indvars.iv.i78, -1
  %arrayidx6.i = getelementptr inbounds i32, i32* %54, i64 %indvars.iv.next.i79
  %55 = load i32, i32* %arrayidx6.i, align 4, !tbaa !20
  %arrayidx9.i80 = getelementptr inbounds i32, i32* %54, i64 %indvars.iv.i78
  store i32 %55, i32* %arrayidx9.i80, align 4, !tbaa !20
  %56 = load i8**, i8*** %pointers.i76, align 8, !tbaa !32
  %arrayidx12.i = getelementptr inbounds i8*, i8** %56, i64 %indvars.iv.next.i79
  %57 = bitcast i8** %arrayidx12.i to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !14
  %arrayidx15.i = getelementptr inbounds i8*, i8** %56, i64 %indvars.iv.i78
  %59 = bitcast i8** %arrayidx15.i to i64*
  store i64 %58, i64* %59, align 8, !tbaa !14
  %60 = load i32*, i32** %keys.i70, align 8, !tbaa !31
  %indvars.iv.next.i79.1 = add nsw i64 %indvars.iv.i78, -2
  %arrayidx6.i.1 = getelementptr inbounds i32, i32* %60, i64 %indvars.iv.next.i79.1
  %61 = load i32, i32* %arrayidx6.i.1, align 4, !tbaa !20
  %arrayidx9.i80.1 = getelementptr inbounds i32, i32* %60, i64 %indvars.iv.next.i79
  store i32 %61, i32* %arrayidx9.i80.1, align 4, !tbaa !20
  %62 = load i8**, i8*** %pointers.i76, align 8, !tbaa !32
  %arrayidx12.i.1 = getelementptr inbounds i8*, i8** %62, i64 %indvars.iv.next.i79.1
  %63 = bitcast i8** %arrayidx12.i.1 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !14
  %arrayidx15.i.1 = getelementptr inbounds i8*, i8** %62, i64 %indvars.iv.next.i79
  %65 = bitcast i8** %arrayidx15.i.1 to i64*
  store i64 %64, i64* %65, align 8, !tbaa !14
  %cmp3.i.1 = icmp sgt i64 %indvars.iv.next.i79.1, %42
  %66 = load i32*, i32** %keys.i70, align 8, !tbaa !31
  br i1 %cmp3.i.1, label %for.body.i81, label %_Z16insert_into_leafP4nodeiP6record.exit

_Z16insert_into_leafP4nodeiP6record.exit:         ; preds = %for.body.i81, %for.body.i81.prol.loopexit, %while.end.i, %while.body.i75, %if.then8
  %insertion_point.0.lcssa64.i = phi i32 [ %41, %while.end.i ], [ 0, %if.then8 ], [ %41, %for.body.i81 ], [ %41, %for.body.i81.prol.loopexit ], [ %36, %while.body.i75 ]
  %.lcssa.i = phi i32* [ %38, %while.end.i ], [ %38, %if.then8 ], [ %.lcssa.unr, %for.body.i81.prol.loopexit ], [ %66, %for.body.i81 ], [ %38, %while.body.i75 ]
  %idxprom17.i = zext i32 %insertion_point.0.lcssa64.i to i64
  %arrayidx18.i = getelementptr inbounds i32, i32* %.lcssa.i, i64 %idxprom17.i
  store i32 %key, i32* %arrayidx18.i, align 4, !tbaa !20
  %pointers19.i = getelementptr inbounds %struct.node, %struct.node* %c.0.lcssa.i65, i64 0, i32 0
  %67 = load i8**, i8*** %pointers19.i, align 8, !tbaa !32
  %arrayidx21.i = getelementptr inbounds i8*, i8** %67, i64 %idxprom17.i
  store i8* %call.i, i8** %arrayidx21.i, align 8, !tbaa !14
  %68 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc23.i82 = add nsw i32 %68, 1
  store i32 %inc23.i82, i32* %num_keys, align 4, !tbaa !29
  br label %cleanup

if.end10:                                         ; preds = %_Z9find_leafP4nodeib.exit68
  %call11 = tail call %struct.node* @_Z32insert_into_leaf_after_splittingP4nodeS0_iP6record(%struct.node* nonnull %root, %struct.node* %c.0.lcssa.i65, i32 %key, %struct.record* nonnull %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %_Z16insert_into_leafP4nodeiP6record.exit, %if.then3, %_Z4findP4nodeib.exit
  %retval.0 = phi %struct.node* [ %call.i.i, %if.then3 ], [ %root, %_Z16insert_into_leafP4nodeiP6record.exit ], [ %call11, %if.end10 ], [ %root, %_Z4findP4nodeib.exit ]
  ret %struct.node* %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @_Z18get_neighbor_indexP4node(%struct.node* readonly %n) local_unnamed_addr #5 {
entry:
  %parent = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 2
  %0 = load %struct.node*, %struct.node** %parent, align 8, !tbaa !39
  %num_keys9 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 4
  %1 = load i32, i32* %num_keys9, align 4, !tbaa !29
  %cmp10 = icmp slt i32 %1, 0
  br i1 %cmp10, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.node* %n to i8*
  %pointers.phi.trans.insert = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %.pre = load i8**, i8*** %pointers.phi.trans.insert, align 8, !tbaa !32
  %3 = sext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i8*, i8** %.pre, i64 %indvars.iv
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp2 = icmp eq i8* %4, %2
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  %sub = add nsw i32 %5, -1
  ret i32 %sub

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.120, i64 0, i64 0))
  tail call void @exit(i32 1) #17
  unreachable
}

; Function Attrs: nofree norecurse nounwind uwtable
define %struct.node* @_Z22remove_entry_from_nodeP4nodeiS0_(%struct.node* returned %n, i32 %key, %struct.node* readnone %pointer) local_unnamed_addr #3 {
entry:
  %keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %0 = load i32*, i32** %keys, align 8, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv113
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %cmp = icmp eq i32 %1, %key
  %indvars.iv.next114 = add nuw i64 %indvars.iv113, 1
  br i1 %cmp, label %for.cond.preheader, label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  %2 = trunc i64 %indvars.iv.next114 to i32
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %3 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp298 = icmp sgt i32 %3, %2
  br i1 %cmp298, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %sext115 = shl i64 %indvars.iv.next114, 32
  %4 = ashr exact i64 %sext115, 32
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv110 = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next111, %for.body ]
  %idxprom4 = and i64 %indvars.iv110, 4294967295
  %arrayidx5 = getelementptr inbounds i32, i32* %0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4, !tbaa !20
  %6 = add nsw i64 %indvars.iv110, -1
  %arrayidx8 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 %5, i32* %arrayidx8, align 4, !tbaa !20
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %7 = load i32, i32* %num_keys, align 4, !tbaa !29
  %8 = sext i32 %7 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next111, %8
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %.lcssa = phi i32 [ %3, %for.cond.preheader ], [ %7, %for.body ]
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 3
  %9 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  %pointers = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %12 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %13 = bitcast %struct.node* %pointer to i8*
  br label %while.cond12

while.cond12:                                     ; preds = %while.cond12, %for.end
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %while.cond12 ], [ 0, %for.end ]
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv108
  %14 = load i8*, i8** %arrayidx14, align 8, !tbaa !14
  %cmp15 = icmp eq i8* %14, %13
  %indvars.iv.next109 = add nuw i64 %indvars.iv108, 1
  br i1 %cmp15, label %for.cond20.preheader, label %while.cond12

for.cond20.preheader:                             ; preds = %while.cond12
  %cond = add i32 %.lcssa, %11
  %15 = trunc i64 %indvars.iv.next109 to i32
  %cmp2196 = icmp sgt i32 %cond, %15
  br i1 %cmp2196, label %for.body22.preheader, label %for.end32

for.body22.preheader:                             ; preds = %for.cond20.preheader
  %sext = shl i64 %indvars.iv.next109, 32
  %16 = ashr exact i64 %sext, 32
  %wide.trip.count = sext i32 %cond to i64
  %idxprom24120 = and i64 %16, 4294967295
  %arrayidx25121 = getelementptr inbounds i8*, i8** %12, i64 %idxprom24120
  %17 = bitcast i8** %arrayidx25121 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !14
  %19 = add nsw i64 %16, -1
  %arrayidx29122 = getelementptr inbounds i8*, i8** %12, i64 %19
  %20 = bitcast i8** %arrayidx29122 to i64*
  store i64 %18, i64* %20, align 8, !tbaa !14
  %indvars.iv.next106123 = add nsw i64 %16, 1
  %exitcond124 = icmp eq i64 %indvars.iv.next106123, %wide.trip.count
  br i1 %exitcond124, label %for.end32, label %for.body22.for.body22_crit_edge.preheader

for.body22.for.body22_crit_edge.preheader:        ; preds = %for.body22.preheader
  %21 = xor i64 %16, 3
  %22 = add nsw i64 %21, %wide.trip.count
  %23 = add nsw i64 %wide.trip.count, -2
  %24 = sub nsw i64 %23, %16
  %xtraiter128 = and i64 %22, 3
  %lcmp.mod129 = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129, label %for.body22.for.body22_crit_edge.prol.loopexit, label %for.body22.for.body22_crit_edge.prol

for.body22.for.body22_crit_edge.prol:             ; preds = %for.body22.for.body22_crit_edge.prol, %for.body22.for.body22_crit_edge.preheader
  %indvars.iv.next106125.prol = phi i64 [ %indvars.iv.next106.prol, %for.body22.for.body22_crit_edge.prol ], [ %indvars.iv.next106123, %for.body22.for.body22_crit_edge.preheader ]
  %prol.iter130 = phi i64 [ %prol.iter130.sub, %for.body22.for.body22_crit_edge.prol ], [ %xtraiter128, %for.body22.for.body22_crit_edge.preheader ]
  %.pre.prol = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom24.prol = and i64 %indvars.iv.next106125.prol, 4294967295
  %arrayidx25.prol = getelementptr inbounds i8*, i8** %.pre.prol, i64 %idxprom24.prol
  %25 = bitcast i8** %arrayidx25.prol to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !14
  %27 = add nsw i64 %indvars.iv.next106125.prol, -1
  %arrayidx29.prol = getelementptr inbounds i8*, i8** %.pre.prol, i64 %27
  %28 = bitcast i8** %arrayidx29.prol to i64*
  store i64 %26, i64* %28, align 8, !tbaa !14
  %indvars.iv.next106.prol = add nsw i64 %indvars.iv.next106125.prol, 1
  %prol.iter130.sub = add i64 %prol.iter130, -1
  %prol.iter130.cmp = icmp eq i64 %prol.iter130.sub, 0
  br i1 %prol.iter130.cmp, label %for.body22.for.body22_crit_edge.prol.loopexit, label %for.body22.for.body22_crit_edge.prol, !llvm.loop !44

for.body22.for.body22_crit_edge.prol.loopexit:    ; preds = %for.body22.for.body22_crit_edge.prol, %for.body22.for.body22_crit_edge.preheader
  %indvars.iv.next106125.unr = phi i64 [ %indvars.iv.next106123, %for.body22.for.body22_crit_edge.preheader ], [ %indvars.iv.next106.prol, %for.body22.for.body22_crit_edge.prol ]
  %29 = icmp ult i64 %24, 3
  br i1 %29, label %for.end32, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22.for.body22_crit_edge, %for.body22.for.body22_crit_edge.prol.loopexit
  %indvars.iv.next106125 = phi i64 [ %indvars.iv.next106.3, %for.body22.for.body22_crit_edge ], [ %indvars.iv.next106125.unr, %for.body22.for.body22_crit_edge.prol.loopexit ]
  %.pre = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom24 = and i64 %indvars.iv.next106125, 4294967295
  %arrayidx25 = getelementptr inbounds i8*, i8** %.pre, i64 %idxprom24
  %30 = bitcast i8** %arrayidx25 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !14
  %32 = add nsw i64 %indvars.iv.next106125, -1
  %arrayidx29 = getelementptr inbounds i8*, i8** %.pre, i64 %32
  %33 = bitcast i8** %arrayidx29 to i64*
  store i64 %31, i64* %33, align 8, !tbaa !14
  %indvars.iv.next106 = add nsw i64 %indvars.iv.next106125, 1
  %.pre.1 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom24.1 = and i64 %indvars.iv.next106, 4294967295
  %arrayidx25.1 = getelementptr inbounds i8*, i8** %.pre.1, i64 %idxprom24.1
  %34 = bitcast i8** %arrayidx25.1 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !14
  %arrayidx29.1 = getelementptr inbounds i8*, i8** %.pre.1, i64 %indvars.iv.next106125
  %36 = bitcast i8** %arrayidx29.1 to i64*
  store i64 %35, i64* %36, align 8, !tbaa !14
  %indvars.iv.next106.1 = add nsw i64 %indvars.iv.next106125, 2
  %.pre.2 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom24.2 = and i64 %indvars.iv.next106.1, 4294967295
  %arrayidx25.2 = getelementptr inbounds i8*, i8** %.pre.2, i64 %idxprom24.2
  %37 = bitcast i8** %arrayidx25.2 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !14
  %arrayidx29.2 = getelementptr inbounds i8*, i8** %.pre.2, i64 %indvars.iv.next106
  %39 = bitcast i8** %arrayidx29.2 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !14
  %indvars.iv.next106.2 = add nsw i64 %indvars.iv.next106125, 3
  %.pre.3 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %idxprom24.3 = and i64 %indvars.iv.next106.2, 4294967295
  %arrayidx25.3 = getelementptr inbounds i8*, i8** %.pre.3, i64 %idxprom24.3
  %40 = bitcast i8** %arrayidx25.3 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !14
  %arrayidx29.3 = getelementptr inbounds i8*, i8** %.pre.3, i64 %indvars.iv.next106.1
  %42 = bitcast i8** %arrayidx29.3 to i64*
  store i64 %41, i64* %42, align 8, !tbaa !14
  %indvars.iv.next106.3 = add nsw i64 %indvars.iv.next106125, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count
  br i1 %exitcond.3, label %for.end32, label %for.body22.for.body22_crit_edge

for.end32:                                        ; preds = %for.body22.for.body22_crit_edge, %for.body22.for.body22_crit_edge.prol.loopexit, %for.body22.preheader, %for.cond20.preheader
  %dec = add i32 %.lcssa, -1
  store i32 %dec, i32* %num_keys, align 4, !tbaa !29
  %tobool35 = icmp eq i8 %9, 0
  %43 = load i32, i32* @order, align 4, !tbaa !20
  %cmp5091 = icmp slt i32 %.lcssa, %43
  br i1 %tobool35, label %for.cond49.preheader, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.end32
  br i1 %cmp5091, label %for.body40.lr.ph, label %if.end

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %sub38 = add nsw i32 %43, -1
  %44 = sext i32 %dec to i64
  %45 = sext i32 %sub38 to i64
  br label %for.body40

for.cond49.preheader:                             ; preds = %for.end32
  br i1 %cmp5091, label %for.body51.lr.ph, label %if.end

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %46 = sext i32 %.lcssa to i64
  %47 = sext i32 %43 to i64
  %48 = sub nsw i64 %47, %46
  %49 = xor i64 %46, -1
  %50 = add nsw i64 %49, %47
  %xtraiter = and i64 %48, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body51.prol.loopexit, label %for.body51.prol

for.body51.prol:                                  ; preds = %for.body51.prol, %for.body51.lr.ph
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body51.prol ], [ %46, %for.body51.lr.ph ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body51.prol ], [ %xtraiter, %for.body51.lr.ph ]
  %51 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx54.prol = getelementptr inbounds i8*, i8** %51, i64 %indvars.iv.prol
  store i8* null, i8** %arrayidx54.prol, align 8, !tbaa !14
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body51.prol.loopexit, label %for.body51.prol, !llvm.loop !45

for.body51.prol.loopexit:                         ; preds = %for.body51.prol, %for.body51.lr.ph
  %indvars.iv.unr = phi i64 [ %46, %for.body51.lr.ph ], [ %indvars.iv.next.prol, %for.body51.prol ]
  %52 = icmp ult i64 %50, 3
  br i1 %52, label %if.end, label %for.body51

for.body40:                                       ; preds = %for.body40, %for.body40.lr.ph
  %indvars.iv103 = phi i64 [ %44, %for.body40.lr.ph ], [ %indvars.iv.next104, %for.body40 ]
  %53 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx43 = getelementptr inbounds i8*, i8** %53, i64 %indvars.iv103
  store i8* null, i8** %arrayidx43, align 8, !tbaa !14
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %cmp39 = icmp slt i64 %indvars.iv.next104, %45
  br i1 %cmp39, label %for.body40, label %if.end

for.body51:                                       ; preds = %for.body51, %for.body51.prol.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body51 ], [ %indvars.iv.unr, %for.body51.prol.loopexit ]
  %54 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx54 = getelementptr inbounds i8*, i8** %54, i64 %indvars.iv
  store i8* null, i8** %arrayidx54, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %55 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx54.1 = getelementptr inbounds i8*, i8** %55, i64 %indvars.iv.next
  store i8* null, i8** %arrayidx54.1, align 8, !tbaa !14
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %56 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx54.2 = getelementptr inbounds i8*, i8** %56, i64 %indvars.iv.next.1
  store i8* null, i8** %arrayidx54.2, align 8, !tbaa !14
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %57 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx54.3 = getelementptr inbounds i8*, i8** %57, i64 %indvars.iv.next.2
  store i8* null, i8** %arrayidx54.3, align 8, !tbaa !14
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %cmp50.3 = icmp slt i64 %indvars.iv.next.3, %47
  br i1 %cmp50.3, label %for.body51, label %if.end

if.end:                                           ; preds = %for.body51, %for.body40, %for.body51.prol.loopexit, %for.cond49.preheader, %for.cond37.preheader
  ret %struct.node* %n
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z11adjust_rootP4node(%struct.node* %root) local_unnamed_addr #5 {
entry:
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %1 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %2 = bitcast %struct.node* %root to %struct.node***
  %3 = load %struct.node**, %struct.node*** %2, align 8, !tbaa !32
  %4 = load %struct.node*, %struct.node** %3, align 8, !tbaa !14
  %parent = getelementptr inbounds %struct.node, %struct.node* %4, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent, align 8, !tbaa !39
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %new_root.0 = phi %struct.node* [ %4, %if.then1 ], [ null, %if.end ]
  %keys = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 1
  %5 = bitcast i32** %keys to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !31
  tail call void @free(i8* %6) #15
  %7 = bitcast %struct.node* %root to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !32
  tail call void @free(i8* %8) #15
  %9 = bitcast %struct.node* %root to i8*
  tail call void @free(i8* %9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry
  %retval.0 = phi %struct.node* [ %new_root.0, %if.end2 ], [ %root, %entry ]
  ret %struct.node* %retval.0
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z14coalesce_nodesP4nodeS0_S0_ii(%struct.node* %root, %struct.node* %n, %struct.node* %neighbor, i32 %neighbor_index, i32 %k_prime) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq i32 %neighbor_index, -1
  %spec.select = select i1 %cmp, %struct.node* %n, %struct.node* %neighbor
  %spec.select225 = select i1 %cmp, %struct.node* %neighbor, %struct.node* %n
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 4
  %0 = load i32, i32* %num_keys, align 4, !tbaa !29
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 3
  %1 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then1, label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %entry
  %num_keys81 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 4
  %2 = load i32, i32* %num_keys81, align 4, !tbaa !29
  %cmp82247 = icmp sgt i32 %2, 0
  br i1 %cmp82247, label %for.body83.lr.ph, label %if.end110.thread

for.body83.lr.ph:                                 ; preds = %for.cond80.preheader
  %keys84 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 1
  %keys87 = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 1
  %pointers90 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 0
  %pointers93 = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 0
  %3 = sext i32 %0 to i64
  br label %for.body83

if.then1:                                         ; preds = %entry
  %keys = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 1
  %4 = load i32*, i32** %keys, align 8, !tbaa !31
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %k_prime, i32* %arrayidx, align 4, !tbaa !20
  %5 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %num_keys, align 4, !tbaa !29
  %num_keys3 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 4
  %6 = load i32, i32* %num_keys3, align 4, !tbaa !29
  %add = add nsw i32 %6, %inc
  %7 = load i32, i32* @order, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %add, %7
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then1
  %div.i = sdiv i32 %7, 2
  %retval.0.i = or i32 %7, -2
  %sub = add nsw i32 %retval.0.i, %div.i
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then1
  %n_end.0 = phi i32 [ %sub, %if.then7 ], [ %6, %if.then1 ]
  %split.0 = phi i8 [ 1, %if.then7 ], [ 0, %if.then1 ]
  %i.0239 = add i32 %0, 1
  %cmp10240 = icmp sgt i32 %n_end.0, 0
  br i1 %cmp10240, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %keys11 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 1
  %pointers = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 0
  %pointers19 = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 0
  %8 = sext i32 %i.0239 to i64
  %wide.trip.count = zext i32 %n_end.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i32* [ %4, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv262 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next263, %for.body.for.body_crit_edge ]
  %indvars.iv260 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next261, %for.body.for.body_crit_edge ]
  %10 = load i32*, i32** %keys11, align 8, !tbaa !31
  %arrayidx13 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv262
  %11 = load i32, i32* %arrayidx13, align 4, !tbaa !20
  %arrayidx16 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv260
  store i32 %11, i32* %arrayidx16, align 4, !tbaa !20
  %12 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx18 = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv262
  %13 = bitcast i8** %arrayidx18 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !14
  %15 = load i8**, i8*** %pointers19, align 8, !tbaa !32
  %arrayidx21 = getelementptr inbounds i8*, i8** %15, i64 %indvars.iv260
  %16 = bitcast i8** %arrayidx21 to i64*
  store i64 %14, i64* %16, align 8, !tbaa !14
  %17 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, i32* %num_keys, align 4, !tbaa !29
  %18 = load i32, i32* %num_keys3, align 4, !tbaa !29
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %num_keys3, align 4, !tbaa !29
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1
  %exitcond = icmp eq i64 %indvars.iv.next263, %wide.trip.count
  br i1 %exitcond, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i32*, i32** %keys, align 8, !tbaa !31
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  %19 = trunc i64 %indvars.iv.next261 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end8
  %20 = phi i32 [ %dec, %for.end.loopexit ], [ %6, %if.end8 ]
  %j.0.lcssa = phi i32 [ %n_end.0, %for.end.loopexit ], [ 0, %if.end8 ]
  %i.0.lcssa = phi i32 [ %19, %for.end.loopexit ], [ %i.0239, %if.end8 ]
  %pointers28 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 0
  %21 = load i8**, i8*** %pointers28, align 8, !tbaa !32
  %idxprom29 = zext i32 %j.0.lcssa to i64
  %arrayidx30 = getelementptr inbounds i8*, i8** %21, i64 %idxprom29
  %22 = bitcast i8** %arrayidx30 to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !14
  %pointers31 = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 0
  %24 = load i8**, i8*** %pointers31, align 8, !tbaa !32
  %idxprom32 = sext i32 %i.0.lcssa to i64
  %arrayidx33 = getelementptr inbounds i8*, i8** %24, i64 %idxprom32
  %25 = bitcast i8** %arrayidx33 to i64*
  store i64 %23, i64* %25, align 8, !tbaa !14
  %tobool34 = icmp eq i8 %split.0, 0
  br i1 %tobool34, label %if.end68, label %if.then35

if.then35:                                        ; preds = %for.end
  %keys36 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 1
  %26 = load i32*, i32** %keys36, align 8, !tbaa !31
  %idxprom37 = zext i32 %j.0.lcssa to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %26, i64 %idxprom37
  %27 = load i32, i32* %arrayidx38, align 4, !tbaa !20
  %j.1233 = add nuw nsw i32 %j.0.lcssa, 1
  %cmp42234 = icmp sgt i32 %20, 0
  br i1 %cmp42234, label %for.body43.preheader, label %for.end59

for.body43.preheader:                             ; preds = %if.then35
  %28 = add nuw nsw i64 %idxprom37, 1
  %arrayidx46273 = getelementptr inbounds i32, i32* %26, i64 %28
  %29 = load i32, i32* %arrayidx46273, align 4, !tbaa !20
  store i32 %29, i32* %26, align 4, !tbaa !20
  %30 = load i8**, i8*** %pointers28, align 8, !tbaa !32
  %arrayidx52274 = getelementptr inbounds i8*, i8** %30, i64 %28
  %31 = bitcast i8** %arrayidx52274 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !14
  %33 = bitcast i8** %30 to i64*
  store i64 %32, i64* %33, align 8, !tbaa !14
  %indvars.iv.next257275 = add nuw nsw i64 %idxprom37, 2
  %34 = load i32, i32* %num_keys3, align 4, !tbaa !29
  %cmp42276 = icmp sgt i32 %34, 1
  br i1 %cmp42276, label %for.body43.for.body43_crit_edge, label %for.end59.loopexit

for.body43.for.body43_crit_edge:                  ; preds = %for.body43.for.body43_crit_edge, %for.body43.preheader
  %indvars.iv.next257278 = phi i64 [ %indvars.iv.next257, %for.body43.for.body43_crit_edge ], [ %indvars.iv.next257275, %for.body43.preheader ]
  %indvars.iv.next259277 = phi i64 [ %indvars.iv.next259, %for.body43.for.body43_crit_edge ], [ 1, %for.body43.preheader ]
  %.pre268 = load i32*, i32** %keys36, align 8, !tbaa !31
  %arrayidx46 = getelementptr inbounds i32, i32* %.pre268, i64 %indvars.iv.next257278
  %35 = load i32, i32* %arrayidx46, align 4, !tbaa !20
  %arrayidx49 = getelementptr inbounds i32, i32* %.pre268, i64 %indvars.iv.next259277
  store i32 %35, i32* %arrayidx49, align 4, !tbaa !20
  %36 = load i8**, i8*** %pointers28, align 8, !tbaa !32
  %arrayidx52 = getelementptr inbounds i8*, i8** %36, i64 %indvars.iv.next257278
  %37 = bitcast i8** %arrayidx52 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !14
  %arrayidx55 = getelementptr inbounds i8*, i8** %36, i64 %indvars.iv.next259277
  %39 = bitcast i8** %arrayidx55 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !14
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv.next259277, 1
  %indvars.iv.next257 = add i64 %indvars.iv.next257278, 1
  %40 = load i32, i32* %num_keys3, align 4, !tbaa !29
  %41 = sext i32 %40 to i64
  %cmp42 = icmp slt i64 %indvars.iv.next259, %41
  br i1 %cmp42, label %for.body43.for.body43_crit_edge, label %for.body43.for.end59.loopexit_crit_edge

for.body43.for.end59.loopexit_crit_edge:          ; preds = %for.body43.for.body43_crit_edge
  %phitmp281 = and i64 %indvars.iv.next259, 4294967295
  br label %for.end59.loopexit

for.end59.loopexit:                               ; preds = %for.body43.for.end59.loopexit_crit_edge, %for.body43.preheader
  %indvars.iv.next259.lcssa = phi i64 [ %phitmp281, %for.body43.for.end59.loopexit_crit_edge ], [ 1, %for.body43.preheader ]
  %indvars.iv.next257.lcssa = phi i64 [ %indvars.iv.next257, %for.body43.for.end59.loopexit_crit_edge ], [ %indvars.iv.next257275, %for.body43.preheader ]
  %.lcssa272 = phi i32 [ %40, %for.body43.for.end59.loopexit_crit_edge ], [ %34, %for.body43.preheader ]
  %42 = trunc i64 %indvars.iv.next257.lcssa to i32
  br label %for.end59

for.end59:                                        ; preds = %for.end59.loopexit, %if.then35
  %i.1.lcssa = phi i64 [ 0, %if.then35 ], [ %indvars.iv.next259.lcssa, %for.end59.loopexit ]
  %j.1.lcssa = phi i32 [ %j.1233, %if.then35 ], [ %42, %for.end59.loopexit ]
  %.lcssa = phi i32 [ %20, %if.then35 ], [ %.lcssa272, %for.end59.loopexit ]
  %43 = load i8**, i8*** %pointers28, align 8, !tbaa !32
  %idxprom61 = zext i32 %j.1.lcssa to i64
  %arrayidx62 = getelementptr inbounds i8*, i8** %43, i64 %idxprom61
  %44 = bitcast i8** %arrayidx62 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !14
  %arrayidx65 = getelementptr inbounds i8*, i8** %43, i64 %i.1.lcssa
  %46 = bitcast i8** %arrayidx65 to i64*
  store i64 %45, i64* %46, align 8, !tbaa !14
  %dec67 = add nsw i32 %.lcssa, -1
  store i32 %dec67, i32* %num_keys3, align 4, !tbaa !29
  br label %if.end68

if.end68:                                         ; preds = %for.end59, %for.end
  %new_k_prime.0 = phi i32 [ %27, %for.end59 ], [ undef, %for.end ]
  %47 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp72231 = icmp slt i32 %47, 0
  br i1 %cmp72231, label %if.end110, label %for.body73.lr.ph

for.body73.lr.ph:                                 ; preds = %if.end68
  %48 = load i8**, i8*** %pointers31, align 8, !tbaa !32
  %49 = zext i32 %47 to i64
  %50 = add nuw nsw i64 %49, 1
  %xtraiter = and i64 %50, 7
  %51 = icmp ult i32 %47, 7
  br i1 %51, label %if.end110.loopexit.unr-lcssa, label %for.body73.lr.ph.new

for.body73.lr.ph.new:                             ; preds = %for.body73.lr.ph
  %unroll_iter = sub nsw i64 %50, %xtraiter
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.body73.lr.ph.new
  %indvars.iv254 = phi i64 [ 0, %for.body73.lr.ph.new ], [ %indvars.iv.next255.7, %for.body73 ]
  %niter = phi i64 [ %unroll_iter, %for.body73.lr.ph.new ], [ %niter.nsub.7, %for.body73 ]
  %arrayidx76 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv254
  %52 = bitcast i8** %arrayidx76 to %struct.node**
  %53 = load %struct.node*, %struct.node** %52, align 8, !tbaa !14
  %parent = getelementptr inbounds %struct.node, %struct.node* %53, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent, align 8, !tbaa !39
  %indvars.iv.next255 = or i64 %indvars.iv254, 1
  %arrayidx76.1 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255
  %54 = bitcast i8** %arrayidx76.1 to %struct.node**
  %55 = load %struct.node*, %struct.node** %54, align 8, !tbaa !14
  %parent.1 = getelementptr inbounds %struct.node, %struct.node* %55, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.1, align 8, !tbaa !39
  %indvars.iv.next255.1 = or i64 %indvars.iv254, 2
  %arrayidx76.2 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.1
  %56 = bitcast i8** %arrayidx76.2 to %struct.node**
  %57 = load %struct.node*, %struct.node** %56, align 8, !tbaa !14
  %parent.2 = getelementptr inbounds %struct.node, %struct.node* %57, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.2, align 8, !tbaa !39
  %indvars.iv.next255.2 = or i64 %indvars.iv254, 3
  %arrayidx76.3 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.2
  %58 = bitcast i8** %arrayidx76.3 to %struct.node**
  %59 = load %struct.node*, %struct.node** %58, align 8, !tbaa !14
  %parent.3 = getelementptr inbounds %struct.node, %struct.node* %59, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.3, align 8, !tbaa !39
  %indvars.iv.next255.3 = or i64 %indvars.iv254, 4
  %arrayidx76.4 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.3
  %60 = bitcast i8** %arrayidx76.4 to %struct.node**
  %61 = load %struct.node*, %struct.node** %60, align 8, !tbaa !14
  %parent.4 = getelementptr inbounds %struct.node, %struct.node* %61, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.4, align 8, !tbaa !39
  %indvars.iv.next255.4 = or i64 %indvars.iv254, 5
  %arrayidx76.5 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.4
  %62 = bitcast i8** %arrayidx76.5 to %struct.node**
  %63 = load %struct.node*, %struct.node** %62, align 8, !tbaa !14
  %parent.5 = getelementptr inbounds %struct.node, %struct.node* %63, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.5, align 8, !tbaa !39
  %indvars.iv.next255.5 = or i64 %indvars.iv254, 6
  %arrayidx76.6 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.5
  %64 = bitcast i8** %arrayidx76.6 to %struct.node**
  %65 = load %struct.node*, %struct.node** %64, align 8, !tbaa !14
  %parent.6 = getelementptr inbounds %struct.node, %struct.node* %65, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.6, align 8, !tbaa !39
  %indvars.iv.next255.6 = or i64 %indvars.iv254, 7
  %arrayidx76.7 = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv.next255.6
  %66 = bitcast i8** %arrayidx76.7 to %struct.node**
  %67 = load %struct.node*, %struct.node** %66, align 8, !tbaa !14
  %parent.7 = getelementptr inbounds %struct.node, %struct.node* %67, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.7, align 8, !tbaa !39
  %indvars.iv.next255.7 = add nuw nsw i64 %indvars.iv254, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %if.end110.loopexit.unr-lcssa, label %for.body73

for.body83:                                       ; preds = %for.body83, %for.body83.lr.ph
  %indvars.iv266 = phi i64 [ %3, %for.body83.lr.ph ], [ %indvars.iv.next267, %for.body83 ]
  %indvars.iv264 = phi i64 [ 0, %for.body83.lr.ph ], [ %indvars.iv.next265, %for.body83 ]
  %68 = load i32*, i32** %keys84, align 8, !tbaa !31
  %arrayidx86 = getelementptr inbounds i32, i32* %68, i64 %indvars.iv264
  %69 = load i32, i32* %arrayidx86, align 4, !tbaa !20
  %70 = load i32*, i32** %keys87, align 8, !tbaa !31
  %arrayidx89 = getelementptr inbounds i32, i32* %70, i64 %indvars.iv266
  store i32 %69, i32* %arrayidx89, align 4, !tbaa !20
  %71 = load i8**, i8*** %pointers90, align 8, !tbaa !32
  %arrayidx92 = getelementptr inbounds i8*, i8** %71, i64 %indvars.iv264
  %72 = bitcast i8** %arrayidx92 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !14
  %74 = load i8**, i8*** %pointers93, align 8, !tbaa !32
  %arrayidx95 = getelementptr inbounds i8*, i8** %74, i64 %indvars.iv266
  %75 = bitcast i8** %arrayidx95 to i64*
  store i64 %73, i64* %75, align 8, !tbaa !14
  %76 = load i32, i32* %num_keys, align 4, !tbaa !29
  %inc97 = add nsw i32 %76, 1
  store i32 %inc97, i32* %num_keys, align 4, !tbaa !29
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 1
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1
  %77 = load i32, i32* %num_keys81, align 4, !tbaa !29
  %78 = sext i32 %77 to i64
  %cmp82 = icmp slt i64 %indvars.iv.next265, %78
  br i1 %cmp82, label %for.body83, label %if.end110.thread

if.end110.thread:                                 ; preds = %for.body83, %for.cond80.preheader
  %pointers102 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 0
  %79 = load i8**, i8*** %pointers102, align 8, !tbaa !32
  %80 = load i32, i32* @order, align 4, !tbaa !20
  %sub103 = add nsw i32 %80, -1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i8*, i8** %79, i64 %idxprom104
  %81 = bitcast i8** %arrayidx105 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !14
  %pointers106 = getelementptr inbounds %struct.node, %struct.node* %spec.select, i64 0, i32 0
  %83 = load i8**, i8*** %pointers106, align 8, !tbaa !32
  %arrayidx109 = getelementptr inbounds i8*, i8** %83, i64 %idxprom104
  %84 = bitcast i8** %arrayidx109 to i64*
  store i64 %82, i64* %84, align 8, !tbaa !14
  br label %if.then112

if.end110.loopexit.unr-lcssa:                     ; preds = %for.body73, %for.body73.lr.ph
  %indvars.iv254.unr = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next255.7, %for.body73 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end110, label %for.body73.epil

for.body73.epil:                                  ; preds = %for.body73.epil, %if.end110.loopexit.unr-lcssa
  %indvars.iv254.epil = phi i64 [ %indvars.iv.next255.epil, %for.body73.epil ], [ %indvars.iv254.unr, %if.end110.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body73.epil ], [ %xtraiter, %if.end110.loopexit.unr-lcssa ]
  %arrayidx76.epil = getelementptr inbounds i8*, i8** %48, i64 %indvars.iv254.epil
  %85 = bitcast i8** %arrayidx76.epil to %struct.node**
  %86 = load %struct.node*, %struct.node** %85, align 8, !tbaa !14
  %parent.epil = getelementptr inbounds %struct.node, %struct.node* %86, i64 0, i32 2
  store %struct.node* %spec.select, %struct.node** %parent.epil, align 8, !tbaa !39
  %indvars.iv.next255.epil = add nuw nsw i64 %indvars.iv254.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %if.end110, label %for.body73.epil, !llvm.loop !46

if.end110:                                        ; preds = %for.body73.epil, %if.end110.loopexit.unr-lcssa, %if.end68
  br i1 %tobool34, label %if.then112, label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %if.end110
  %parent119 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 2
  %87 = load %struct.node*, %struct.node** %parent119, align 8, !tbaa !39
  %num_keys120 = getelementptr inbounds %struct.node, %struct.node* %87, i64 0, i32 4
  %88 = load i32, i32* %num_keys120, align 4, !tbaa !29
  %pointers124 = getelementptr inbounds %struct.node, %struct.node* %87, i64 0, i32 0
  %89 = bitcast %struct.node* %spec.select225 to i8*
  %90 = sext i32 %88 to i64
  br label %for.cond118

if.then112:                                       ; preds = %if.end110, %if.end110.thread
  %parent113 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 2
  %91 = load %struct.node*, %struct.node** %parent113, align 8, !tbaa !39
  %92 = bitcast %struct.node* %spec.select225 to i8*
  %call114 = tail call %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* %root, %struct.node* %91, i32 %k_prime, i8* %92)
  %keys115 = getelementptr inbounds %struct.node, %struct.node* %spec.select225, i64 0, i32 1
  %93 = bitcast i32** %keys115 to i8**
  %94 = load i8*, i8** %93, align 8, !tbaa !31
  tail call void @free(i8* %94) #15
  %95 = bitcast %struct.node* %spec.select225 to i8**
  %96 = load i8*, i8** %95, align 8, !tbaa !32
  tail call void @free(i8* %96) #15
  tail call void @free(i8* %92) #15
  br label %if.end138

for.cond118:                                      ; preds = %for.body122, %for.cond118.preheader
  %indvars.iv = phi i64 [ 0, %for.cond118.preheader ], [ %indvars.iv.next, %for.body122 ]
  %cmp121 = icmp slt i64 %indvars.iv, %90
  br i1 %cmp121, label %for.body122, label %if.end138

for.body122:                                      ; preds = %for.cond118
  %97 = load i8**, i8*** %pointers124, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx127 = getelementptr inbounds i8*, i8** %97, i64 %indvars.iv.next
  %98 = load i8*, i8** %arrayidx127, align 8, !tbaa !14
  %cmp128 = icmp eq i8* %98, %89
  br i1 %cmp128, label %if.then129, label %for.cond118

if.then129:                                       ; preds = %for.body122
  %keys131 = getelementptr inbounds %struct.node, %struct.node* %87, i64 0, i32 1
  %99 = load i32*, i32** %keys131, align 8, !tbaa !31
  %idxprom132 = and i64 %indvars.iv, 4294967295
  %arrayidx133 = getelementptr inbounds i32, i32* %99, i64 %idxprom132
  store i32 %new_k_prime.0, i32* %arrayidx133, align 4, !tbaa !20
  br label %if.end138

if.end138:                                        ; preds = %if.then129, %for.cond118, %if.then112
  %root.addr.0 = phi %struct.node* [ %root, %if.then129 ], [ %call114, %if.then112 ], [ %root, %for.cond118 ]
  ret %struct.node* %root.addr.0
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* %root, %struct.node* %n, i32 %key, i8* %pointer) local_unnamed_addr #5 {
entry:
  %0 = bitcast i8* %pointer to %struct.node*
  %call = tail call %struct.node* @_Z22remove_entry_from_nodeP4nodeiS0_(%struct.node* %n, i32 %key, %struct.node* %0)
  %cmp = icmp eq %struct.node* %call, %root
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num_keys.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 4
  %1 = load i32, i32* %num_keys.i, align 4, !tbaa !29
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %2 = load i8, i8* %is_leaf.i, align 8, !tbaa !26, !range !27
  %tobool.i = icmp eq i8 %2, 0
  br i1 %tobool.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  %3 = bitcast %struct.node* %root to %struct.node***
  %4 = load %struct.node**, %struct.node*** %3, align 8, !tbaa !32
  %5 = load %struct.node*, %struct.node** %4, align 8, !tbaa !14
  %parent.i = getelementptr inbounds %struct.node, %struct.node* %5, i64 0, i32 2
  store %struct.node* null, %struct.node** %parent.i, align 8, !tbaa !39
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i
  %new_root.0.i = phi %struct.node* [ %5, %if.then1.i ], [ null, %if.end.i ]
  %keys.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 1
  %6 = bitcast i32** %keys.i to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !31
  tail call void @free(i8* %7) #15
  %8 = bitcast %struct.node* %root to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !32
  tail call void @free(i8* %9) #15
  %10 = bitcast %struct.node* %root to i8*
  tail call void @free(i8* %10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 3
  %11 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %11, 0
  %12 = load i32, i32* @order, align 4, !tbaa !20
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sub = add nsw i32 %12, -1
  %13 = and i32 %sub, 1
  %div.i = sdiv i32 %sub, 2
  %retval.0.i68 = add nsw i32 %div.i, %13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = and i32 %12, 1
  %div.i69 = sdiv i32 %12, 2
  %retval.0.i70 = add nsw i32 %14, -1
  %sub4 = add nsw i32 %retval.0.i70, %div.i69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %retval.0.i68, %cond.true ], [ %sub4, %cond.false ]
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 4
  %15 = load i32, i32* %num_keys, align 4, !tbaa !29
  %cmp5 = icmp slt i32 %15, %cond
  br i1 %cmp5, label %if.end7, label %cleanup

if.end7:                                          ; preds = %cond.end
  %parent.i71 = getelementptr inbounds %struct.node, %struct.node* %call, i64 0, i32 2
  %16 = load %struct.node*, %struct.node** %parent.i71, align 8, !tbaa !39
  %num_keys9.i = getelementptr inbounds %struct.node, %struct.node* %16, i64 0, i32 4
  %17 = load i32, i32* %num_keys9.i, align 4, !tbaa !29
  %cmp10.i = icmp slt i32 %17, 0
  br i1 %cmp10.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end7
  %18 = bitcast %struct.node* %call to i8*
  %pointers.phi.trans.insert.i = getelementptr inbounds %struct.node, %struct.node* %16, i64 0, i32 0
  %.pre.i = load i8**, i8*** %pointers.phi.trans.insert.i, align 8, !tbaa !32
  %19 = zext i32 %17 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.body.lr.ph.i ]
  %arrayidx.i = getelementptr inbounds i8*, i8** %.pre.i, i64 %indvars.iv.i
  %20 = load i8*, i8** %arrayidx.i, align 8, !tbaa !14
  %cmp2.i = icmp eq i8* %20, %18
  br i1 %cmp2.i, label %_Z18get_neighbor_indexP4node.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %19
  br i1 %exitcond, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.end7
  %puts.i = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.120, i64 0, i64 0)) #15
  tail call void @exit(i32 1) #17
  unreachable

_Z18get_neighbor_indexP4node.exit:                ; preds = %for.body.i
  %21 = trunc i64 %indvars.iv.i to i32
  %sub.i = add nsw i32 %21, -1
  %cmp9 = icmp eq i32 %21, 0
  %cond13 = select i1 %cmp9, i32 0, i32 %sub.i
  %keys = getelementptr inbounds %struct.node, %struct.node* %16, i64 0, i32 1
  %22 = load i32*, i32** %keys, align 8, !tbaa !31
  %idxprom = sext i32 %cond13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %narrow = select i1 %cmp9, i32 1, i32 %sub.i
  %cond24.in.in.v = sext i32 %narrow to i64
  %cond24.in.in = getelementptr inbounds i8*, i8** %.pre.i, i64 %cond24.in.in.v
  %cond24.in = bitcast i8** %cond24.in.in to %struct.node**
  %cond24 = load %struct.node*, %struct.node** %cond24.in, align 8, !tbaa !14
  %sext = add nsw i8 %11, -1
  %sub29 = sext i8 %sext to i32
  %cond31 = add nsw i32 %12, %sub29
  %num_keys32 = getelementptr inbounds %struct.node, %struct.node* %cond24, i64 0, i32 4
  %24 = load i32, i32* %num_keys32, align 4, !tbaa !29
  %add = add nsw i32 %24, %15
  %cmp34 = icmp slt i32 %add, %cond31
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %_Z18get_neighbor_indexP4node.exit
  %call36 = tail call %struct.node* @_Z14coalesce_nodesP4nodeS0_S0_ii(%struct.node* %root, %struct.node* %call, %struct.node* %cond24, i32 %sub.i, i32 %23)
  br label %cleanup

if.else:                                          ; preds = %_Z18get_neighbor_indexP4node.exit
  %call37 = tail call %struct.node* @_Z18redistribute_nodesP4nodeS0_S0_iii(%struct.node* %root, %struct.node* %call, %struct.node* %cond24, i32 %sub.i, i32 %cond13, i32 %23)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %cond.end, %if.end2.i, %if.then
  %retval.0 = phi %struct.node* [ %call36, %if.then35 ], [ %call37, %if.else ], [ %root, %cond.end ], [ %new_root.0.i, %if.end2.i ], [ %root, %if.then ]
  ret %struct.node* %retval.0
}

; Function Attrs: nofree norecurse nounwind uwtable
define %struct.node* @_Z18redistribute_nodesP4nodeS0_S0_iii(%struct.node* readnone returned %root, %struct.node* %n, %struct.node* nocapture %neighbor, i32 %neighbor_index, i32 %k_prime_index, i32 %k_prime) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %neighbor_index, -1
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 3
  %0 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp ne i8 %0, 0
  br i1 %cmp, label %if.else72, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  %num_keys6.phi.trans.insert = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %.pre = load i32, i32* %num_keys6.phi.trans.insert, align 4, !tbaa !29
  br label %if.end

if.then1:                                         ; preds = %if.then
  %pointers = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %1 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %num_keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %2 = load i32, i32* %num_keys, align 4, !tbaa !29
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %3 = bitcast i8** %arrayidx to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !14
  %add = add nsw i32 %2, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %1, i64 %idxprom4
  %5 = bitcast i8** %arrayidx5 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %6 = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %2, %if.then1 ]
  %cmp7233 = icmp sgt i32 %6, 0
  br i1 %cmp7233, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %keys = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %pointers13 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %7 = zext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv235 = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next236, %for.body ]
  %i.0234 = phi i32 [ %6, %for.body.lr.ph ], [ %sub, %for.body ]
  %8 = load i32*, i32** %keys, align 8, !tbaa !31
  %sub = add nsw i32 %i.0234, -1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4, !tbaa !20
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 %indvars.iv235
  store i32 %9, i32* %arrayidx12, align 4, !tbaa !20
  %10 = load i8**, i8*** %pointers13, align 8, !tbaa !32
  %arrayidx16 = getelementptr inbounds i8*, i8** %10, i64 %idxprom8
  %11 = bitcast i8** %arrayidx16 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !14
  %arrayidx19 = getelementptr inbounds i8*, i8** %10, i64 %indvars.iv235
  %13 = bitcast i8** %arrayidx19 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !14
  %cmp7 = icmp sgt i64 %indvars.iv235, 1
  %indvars.iv.next236 = add nsw i64 %indvars.iv235, -1
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %tobool21 = icmp eq i8 %0, 0
  %pointers46 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 0
  %14 = load i8**, i8*** %pointers46, align 8, !tbaa !32
  %num_keys47 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 4
  %15 = load i32, i32* %num_keys47, align 4, !tbaa !29
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.end
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds i8*, i8** %14, i64 %idxprom25
  %16 = bitcast i8** %arrayidx26 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !14
  %18 = bitcast %struct.node* %n to i64**
  %19 = load i64*, i64** %18, align 8, !tbaa !32
  store i64 %17, i64* %19, align 8, !tbaa !14
  %20 = bitcast %struct.node* %n to %struct.node***
  %21 = load %struct.node**, %struct.node*** %20, align 8, !tbaa !32
  %22 = load %struct.node*, %struct.node** %21, align 8, !tbaa !14
  %parent = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2
  store %struct.node* %n, %struct.node** %parent, align 8, !tbaa !39
  %23 = load i8**, i8*** %pointers46, align 8, !tbaa !32
  %arrayidx34 = getelementptr inbounds i8*, i8** %23, i64 %idxprom25
  store i8* null, i8** %arrayidx34, align 8, !tbaa !14
  %keys35 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %24 = load i32*, i32** %keys35, align 8, !tbaa !31
  store i32 %k_prime, i32* %24, align 4, !tbaa !20
  %keys37 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 1
  %25 = load i32*, i32** %keys37, align 8, !tbaa !31
  %26 = load i32, i32* %num_keys47, align 4, !tbaa !29
  %sub39 = add nsw i32 %26, -1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %25, i64 %idxprom40
  %27 = load i32, i32* %arrayidx41, align 4, !tbaa !20
  %parent42 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 2
  %28 = load %struct.node*, %struct.node** %parent42, align 8, !tbaa !39
  %keys43 = getelementptr inbounds %struct.node, %struct.node* %28, i64 0, i32 1
  %29 = load i32*, i32** %keys43, align 8, !tbaa !31
  %idxprom44 = sext i32 %k_prime_index to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %29, i64 %idxprom44
  store i32 %27, i32* %arrayidx45, align 4, !tbaa !20
  br label %if.end150

if.else:                                          ; preds = %for.end
  %sub48 = add nsw i32 %15, -1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8*, i8** %14, i64 %idxprom49
  %30 = bitcast i8** %arrayidx50 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !14
  %32 = bitcast %struct.node* %n to i64**
  %33 = load i64*, i64** %32, align 8, !tbaa !32
  store i64 %31, i64* %33, align 8, !tbaa !14
  %34 = load i8**, i8*** %pointers46, align 8, !tbaa !32
  %arrayidx57 = getelementptr inbounds i8*, i8** %34, i64 %idxprom49
  store i8* null, i8** %arrayidx57, align 8, !tbaa !14
  %keys58 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 1
  %35 = load i32*, i32** %keys58, align 8, !tbaa !31
  %arrayidx62 = getelementptr inbounds i32, i32* %35, i64 %idxprom49
  %36 = load i32, i32* %arrayidx62, align 4, !tbaa !20
  %keys63 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %37 = load i32*, i32** %keys63, align 8, !tbaa !31
  store i32 %36, i32* %37, align 4, !tbaa !20
  %parent67 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 2
  %38 = load %struct.node*, %struct.node** %parent67, align 8, !tbaa !39
  %keys68 = getelementptr inbounds %struct.node, %struct.node* %38, i64 0, i32 1
  %39 = load i32*, i32** %keys68, align 8, !tbaa !31
  %idxprom69 = sext i32 %k_prime_index to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %39, i64 %idxprom69
  store i32 %36, i32* %arrayidx70, align 4, !tbaa !20
  br label %if.end150

if.else72:                                        ; preds = %entry
  br i1 %tobool, label %if.then75, label %if.else94

if.then75:                                        ; preds = %if.else72
  %keys76 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 1
  %40 = load i32*, i32** %keys76, align 8, !tbaa !31
  %41 = load i32, i32* %40, align 4, !tbaa !20
  %keys78 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %42 = load i32*, i32** %keys78, align 8, !tbaa !31
  %num_keys79 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %43 = load i32, i32* %num_keys79, align 4, !tbaa !29
  %idxprom80 = sext i32 %43 to i64
  %arrayidx81 = getelementptr inbounds i32, i32* %42, i64 %idxprom80
  store i32 %41, i32* %arrayidx81, align 4, !tbaa !20
  %44 = bitcast %struct.node* %neighbor to i64**
  %45 = load i64*, i64** %44, align 8, !tbaa !32
  %46 = load i64, i64* %45, align 8, !tbaa !14
  %pointers84 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %47 = load i8**, i8*** %pointers84, align 8, !tbaa !32
  %48 = load i32, i32* %num_keys79, align 4, !tbaa !29
  %idxprom86 = sext i32 %48 to i64
  %arrayidx87 = getelementptr inbounds i8*, i8** %47, i64 %idxprom86
  %49 = bitcast i8** %arrayidx87 to i64*
  store i64 %46, i64* %49, align 8, !tbaa !14
  %50 = load i32*, i32** %keys76, align 8, !tbaa !31
  %arrayidx89 = getelementptr inbounds i32, i32* %50, i64 1
  br label %if.end118

if.else94:                                        ; preds = %if.else72
  %keys95 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 1
  %51 = load i32*, i32** %keys95, align 8, !tbaa !31
  %num_keys96 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %52 = load i32, i32* %num_keys96, align 4, !tbaa !29
  %idxprom97 = sext i32 %52 to i64
  %arrayidx98 = getelementptr inbounds i32, i32* %51, i64 %idxprom97
  store i32 %k_prime, i32* %arrayidx98, align 4, !tbaa !20
  %53 = bitcast %struct.node* %neighbor to i64**
  %54 = load i64*, i64** %53, align 8, !tbaa !32
  %55 = load i64, i64* %54, align 8, !tbaa !14
  %pointers101 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 0
  %56 = load i8**, i8*** %pointers101, align 8, !tbaa !32
  %57 = load i32, i32* %num_keys96, align 4, !tbaa !29
  %add103 = add nsw i32 %57, 1
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds i8*, i8** %56, i64 %idxprom104
  %58 = bitcast i8** %arrayidx105 to i64*
  store i64 %55, i64* %58, align 8, !tbaa !14
  %59 = load i8**, i8*** %pointers101, align 8, !tbaa !32
  %arrayidx110 = getelementptr inbounds i8*, i8** %59, i64 %idxprom104
  %60 = bitcast i8** %arrayidx110 to %struct.node**
  %61 = load %struct.node*, %struct.node** %60, align 8, !tbaa !14
  %parent111 = getelementptr inbounds %struct.node, %struct.node* %61, i64 0, i32 2
  store %struct.node* %n, %struct.node** %parent111, align 8, !tbaa !39
  %keys112 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 1
  %62 = load i32*, i32** %keys112, align 8, !tbaa !31
  br label %if.end118

if.end118:                                        ; preds = %if.else94, %if.then75
  %.sink244 = phi i32* [ %62, %if.else94 ], [ %arrayidx89, %if.then75 ]
  %63 = phi i32* [ %62, %if.else94 ], [ %50, %if.then75 ]
  %64 = load i32, i32* %.sink244, align 4, !tbaa !20
  %parent114 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 2
  %65 = load %struct.node*, %struct.node** %parent114, align 8, !tbaa !39
  %keys115 = getelementptr inbounds %struct.node, %struct.node* %65, i64 0, i32 1
  %66 = load i32*, i32** %keys115, align 8, !tbaa !31
  %idxprom116 = sext i32 %k_prime_index to i64
  %arrayidx117 = getelementptr inbounds i32, i32* %66, i64 %idxprom116
  store i32 %64, i32* %arrayidx117, align 4, !tbaa !20
  %num_keys120 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 4
  %67 = load i32, i32* %num_keys120, align 4, !tbaa !29
  %cmp121231 = icmp sgt i32 %67, 0
  br i1 %cmp121231, label %for.body122.lr.ph, label %for.end138

for.body122.lr.ph:                                ; preds = %if.end118
  %keys123 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 1
  %pointers130 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 0
  %arrayidx126238 = getelementptr inbounds i32, i32* %63, i64 1
  %68 = load i32, i32* %arrayidx126238, align 4, !tbaa !20
  store i32 %68, i32* %63, align 4, !tbaa !20
  %69 = load i8**, i8*** %pointers130, align 8, !tbaa !32
  %arrayidx133239 = getelementptr inbounds i8*, i8** %69, i64 1
  %70 = bitcast i8** %arrayidx133239 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !14
  %72 = bitcast i8** %69 to i64*
  store i64 %71, i64* %72, align 8, !tbaa !14
  %73 = load i32, i32* %num_keys120, align 4, !tbaa !29
  %cmp121240 = icmp sgt i32 %73, 1
  br i1 %cmp121240, label %for.body122.for.body122_crit_edge, label %for.end138

for.body122.for.body122_crit_edge:                ; preds = %for.body122.for.body122_crit_edge, %for.body122.lr.ph
  %indvars.iv.next241 = phi i64 [ %indvars.iv.next, %for.body122.for.body122_crit_edge ], [ 1, %for.body122.lr.ph ]
  %.pre237 = load i32*, i32** %keys123, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next241, 1
  %arrayidx126 = getelementptr inbounds i32, i32* %.pre237, i64 %indvars.iv.next
  %74 = load i32, i32* %arrayidx126, align 4, !tbaa !20
  %arrayidx129 = getelementptr inbounds i32, i32* %.pre237, i64 %indvars.iv.next241
  store i32 %74, i32* %arrayidx129, align 4, !tbaa !20
  %75 = load i8**, i8*** %pointers130, align 8, !tbaa !32
  %arrayidx133 = getelementptr inbounds i8*, i8** %75, i64 %indvars.iv.next
  %76 = bitcast i8** %arrayidx133 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !14
  %arrayidx136 = getelementptr inbounds i8*, i8** %75, i64 %indvars.iv.next241
  %78 = bitcast i8** %arrayidx136 to i64*
  store i64 %77, i64* %78, align 8, !tbaa !14
  %79 = load i32, i32* %num_keys120, align 4, !tbaa !29
  %80 = sext i32 %79 to i64
  %cmp121 = icmp slt i64 %indvars.iv.next, %80
  br i1 %cmp121, label %for.body122.for.body122_crit_edge, label %for.body122.for.end138.loopexit_crit_edge

for.body122.for.end138.loopexit_crit_edge:        ; preds = %for.body122.for.body122_crit_edge
  %phitmp = trunc i64 %indvars.iv.next to i32
  br label %for.end138

for.end138:                                       ; preds = %for.body122.for.end138.loopexit_crit_edge, %for.body122.lr.ph, %if.end118
  %i.1.lcssa = phi i32 [ 0, %if.end118 ], [ %phitmp, %for.body122.for.end138.loopexit_crit_edge ], [ 1, %for.body122.lr.ph ]
  %tobool140 = icmp eq i8 %0, 0
  br i1 %tobool140, label %if.then141, label %if.end150

if.then141:                                       ; preds = %for.end138
  %pointers142 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 0
  %81 = load i8**, i8*** %pointers142, align 8, !tbaa !32
  %add143 = add nuw nsw i32 %i.1.lcssa, 1
  %idxprom144 = zext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds i8*, i8** %81, i64 %idxprom144
  %82 = bitcast i8** %arrayidx145 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !14
  %idxprom147 = zext i32 %i.1.lcssa to i64
  %arrayidx148 = getelementptr inbounds i8*, i8** %81, i64 %idxprom147
  %84 = bitcast i8** %arrayidx148 to i64*
  store i64 %83, i64* %84, align 8, !tbaa !14
  br label %if.end150

if.end150:                                        ; preds = %if.then141, %for.end138, %if.else, %if.then22
  %num_keys151 = getelementptr inbounds %struct.node, %struct.node* %n, i64 0, i32 4
  %85 = load i32, i32* %num_keys151, align 4, !tbaa !29
  %inc152 = add nsw i32 %85, 1
  store i32 %inc152, i32* %num_keys151, align 4, !tbaa !29
  %num_keys153 = getelementptr inbounds %struct.node, %struct.node* %neighbor, i64 0, i32 4
  %86 = load i32, i32* %num_keys153, align 4, !tbaa !29
  %dec154 = add nsw i32 %86, -1
  store i32 %dec154, i32* %num_keys153, align 4, !tbaa !29
  ret %struct.node* %root
}

; Function Attrs: nounwind uwtable
define %struct.node* @_Z9deleteValP4nodei(%struct.node* %root, i32 %key) local_unnamed_addr #5 {
entry:
  %cmp.i14 = icmp eq %struct.node* %root, null
  br i1 %cmp.i14, label %if.end, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %is_leaf90.i = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf90.i, align 8, !tbaa !26, !range !27
  %tobool391.i = icmp eq i8 %0, 0
  br i1 %tobool391.i, label %while.body.i, label %for.cond.preheader.i

while.body.i:                                     ; preds = %if.end28.i, %while.cond.preheader.i
  %c.092.i = phi %struct.node* [ %8, %if.end28.i ], [ %root, %while.cond.preheader.i ]
  %num_keys15.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 4
  %1 = load i32, i32* %num_keys15.i, align 4, !tbaa !29
  %cmp1686.i = icmp sgt i32 %1, 0
  br i1 %cmp1686.i, label %while.body17.lr.ph.i, label %if.end28.i

while.body17.lr.ph.i:                             ; preds = %while.body.i
  %keys18.i = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 1
  %2 = load i32*, i32** %keys18.i, align 8, !tbaa !31
  %3 = zext i32 %1 to i64
  br label %while.body17.i

while.body17.i:                                   ; preds = %if.then22.i, %while.body17.lr.ph.i
  %indvars.iv103.i = phi i64 [ 0, %while.body17.lr.ph.i ], [ %indvars.iv.next104.i, %if.then22.i ]
  %arrayidx20.i = getelementptr inbounds i32, i32* %2, i64 %indvars.iv103.i
  %4 = load i32, i32* %arrayidx20.i, align 4, !tbaa !20
  %cmp21.i = icmp sgt i32 %4, %key
  br i1 %cmp21.i, label %if.end28.loopexit.split.loop.exit112.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body17.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond74 = icmp eq i64 %indvars.iv.next104.i, %3
  br i1 %exitcond74, label %if.end28.i, label %while.body17.i

if.end28.loopexit.split.loop.exit112.i:           ; preds = %while.body17.i
  %5 = trunc i64 %indvars.iv103.i to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.loopexit.split.loop.exit112.i, %if.then22.i, %while.body.i
  %i.1.lcssa.i = phi i32 [ 0, %while.body.i ], [ %5, %if.end28.loopexit.split.loop.exit112.i ], [ %1, %if.then22.i ]
  %pointers.i15 = getelementptr inbounds %struct.node, %struct.node* %c.092.i, i64 0, i32 0
  %6 = load i8**, i8*** %pointers.i15, align 8, !tbaa !32
  %idxprom29.i = zext i32 %i.1.lcssa.i to i64
  %arrayidx30.i = getelementptr inbounds i8*, i8** %6, i64 %idxprom29.i
  %7 = bitcast i8** %arrayidx30.i to %struct.node**
  %8 = load %struct.node*, %struct.node** %7, align 8, !tbaa !14
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %8, i64 0, i32 3
  %9 = load i8, i8* %is_leaf.i, align 8, !tbaa !26, !range !27
  %tobool3.i = icmp eq i8 %9, 0
  br i1 %tobool3.i, label %while.body.i, label %_Z9find_leafP4nodeib.exit

_Z9find_leafP4nodeib.exit:                        ; preds = %if.end28.i
  %cmp.i = icmp eq %struct.node* %8, null
  br i1 %cmp.i, label %while.cond.preheader.i20, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %_Z9find_leafP4nodeib.exit, %while.cond.preheader.i
  %retval.0.i1656 = phi %struct.node* [ %8, %_Z9find_leafP4nodeib.exit ], [ %root, %while.cond.preheader.i ]
  %num_keys.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i1656, i64 0, i32 4
  %10 = load i32, i32* %num_keys.i, align 4, !tbaa !29
  %cmp122.i = icmp sgt i32 %10, 0
  br i1 %cmp122.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %keys.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i1656, i64 0, i32 1
  %11 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %12 = zext i32 %10 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32, i32* %11, i64 %indvars.iv.i
  %13 = load i32, i32* %arrayidx.i, align 4, !tbaa !20
  %cmp2.i = icmp eq i32 %13, %key
  br i1 %cmp2.i, label %for.end.loopexit.split.loop.exit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond73 = icmp eq i64 %indvars.iv.next.i, %12
  br i1 %exitcond73, label %while.cond.preheader.i20, label %for.body.i

for.end.loopexit.split.loop.exit.i:               ; preds = %for.body.i
  %14 = trunc i64 %indvars.iv.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.split.loop.exit.i, %for.cond.preheader.i
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %14, %for.end.loopexit.split.loop.exit.i ]
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %10
  br i1 %cmp6.i, label %while.cond.preheader.i20, label %if.else.i

if.else.i:                                        ; preds = %for.end.i
  %pointers.i = getelementptr inbounds %struct.node, %struct.node* %retval.0.i1656, i64 0, i32 0
  %15 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  %idxprom8.i = zext i32 %i.0.lcssa.i to i64
  %arrayidx9.i = getelementptr inbounds i8*, i8** %15, i64 %idxprom8.i
  %16 = bitcast i8** %arrayidx9.i to %struct.record**
  %17 = load %struct.record*, %struct.record** %16, align 8, !tbaa !14
  br label %while.cond.preheader.i20

while.cond.preheader.i20:                         ; preds = %if.else.i, %for.end.i, %for.inc.i, %_Z9find_leafP4nodeib.exit
  %retval.0.i = phi %struct.record* [ %17, %if.else.i ], [ null, %_Z9find_leafP4nodeib.exit ], [ null, %for.end.i ], [ null, %for.inc.i ]
  br i1 %tobool391.i, label %while.body.i26, label %_Z9find_leafP4nodeib.exit49

while.body.i26:                                   ; preds = %if.end28.i45, %while.cond.preheader.i20
  %c.092.i23 = phi %struct.node* [ %25, %if.end28.i45 ], [ %root, %while.cond.preheader.i20 ]
  %num_keys15.i24 = getelementptr inbounds %struct.node, %struct.node* %c.092.i23, i64 0, i32 4
  %18 = load i32, i32* %num_keys15.i24, align 4, !tbaa !29
  %cmp1686.i25 = icmp sgt i32 %18, 0
  br i1 %cmp1686.i25, label %while.body17.lr.ph.i28, label %if.end28.i45

while.body17.lr.ph.i28:                           ; preds = %while.body.i26
  %keys18.i27 = getelementptr inbounds %struct.node, %struct.node* %c.092.i23, i64 0, i32 1
  %19 = load i32*, i32** %keys18.i27, align 8, !tbaa !31
  %20 = zext i32 %18 to i64
  br label %while.body17.i33

while.body17.i33:                                 ; preds = %if.then22.i37, %while.body17.lr.ph.i28
  %indvars.iv103.i29 = phi i64 [ 0, %while.body17.lr.ph.i28 ], [ %indvars.iv.next104.i34, %if.then22.i37 ]
  %arrayidx20.i31 = getelementptr inbounds i32, i32* %19, i64 %indvars.iv103.i29
  %21 = load i32, i32* %arrayidx20.i31, align 4, !tbaa !20
  %cmp21.i32 = icmp sgt i32 %21, %key
  br i1 %cmp21.i32, label %if.end28.loopexit.split.loop.exit112.i38, label %if.then22.i37

if.then22.i37:                                    ; preds = %while.body17.i33
  %indvars.iv.next104.i34 = add nuw nsw i64 %indvars.iv103.i29, 1
  %exitcond = icmp eq i64 %indvars.iv.next104.i34, %20
  br i1 %exitcond, label %if.end28.i45, label %while.body17.i33

if.end28.loopexit.split.loop.exit112.i38:         ; preds = %while.body17.i33
  %22 = trunc i64 %indvars.iv103.i29 to i32
  br label %if.end28.i45

if.end28.i45:                                     ; preds = %if.end28.loopexit.split.loop.exit112.i38, %if.then22.i37, %while.body.i26
  %i.1.lcssa.i39 = phi i32 [ 0, %while.body.i26 ], [ %22, %if.end28.loopexit.split.loop.exit112.i38 ], [ %18, %if.then22.i37 ]
  %pointers.i40 = getelementptr inbounds %struct.node, %struct.node* %c.092.i23, i64 0, i32 0
  %23 = load i8**, i8*** %pointers.i40, align 8, !tbaa !32
  %idxprom29.i41 = zext i32 %i.1.lcssa.i39 to i64
  %arrayidx30.i42 = getelementptr inbounds i8*, i8** %23, i64 %idxprom29.i41
  %24 = bitcast i8** %arrayidx30.i42 to %struct.node**
  %25 = load %struct.node*, %struct.node** %24, align 8, !tbaa !14
  %is_leaf.i43 = getelementptr inbounds %struct.node, %struct.node* %25, i64 0, i32 3
  %26 = load i8, i8* %is_leaf.i43, align 8, !tbaa !26, !range !27
  %tobool3.i44 = icmp eq i8 %26, 0
  br i1 %tobool3.i44, label %while.body.i26, label %_Z9find_leafP4nodeib.exit49

_Z9find_leafP4nodeib.exit49:                      ; preds = %if.end28.i45, %while.cond.preheader.i20
  %retval.0.i48 = phi %struct.node* [ %root, %while.cond.preheader.i20 ], [ %25, %if.end28.i45 ]
  %cmp = icmp ne %struct.record* %retval.0.i, null
  %cmp2 = icmp ne %struct.node* %retval.0.i48, null
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %_Z9find_leafP4nodeib.exit49
  %27 = bitcast %struct.record* %retval.0.i to i8*
  tail call void @free(i8* %27) #15
  %call3 = tail call %struct.node* @_Z12delete_entryP4nodeS0_iPv(%struct.node* nonnull %root, %struct.node* nonnull %retval.0.i48, i32 %key, i8* nonnull %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %_Z9find_leafP4nodeib.exit49, %entry
  %root.addr.0 = phi %struct.node* [ %call3, %if.then ], [ %root, %_Z9find_leafP4nodeib.exit49 ], [ null, %entry ]
  ret %struct.node* %root.addr.0
}

; Function Attrs: nounwind uwtable
define void @_Z18destroy_tree_nodesP4node(%struct.node* nocapture %root) local_unnamed_addr #5 {
entry:
  %is_leaf = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 3
  %0 = load i8, i8* %is_leaf, align 8, !tbaa !26, !range !27
  %tobool = icmp eq i8 %0, 0
  %num_keys2 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 4
  %1 = load i32, i32* %num_keys2, align 4, !tbaa !29
  br i1 %tobool, label %for.cond1.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pointers = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 0
  br label %for.body

for.cond1.preheader:                              ; preds = %entry
  %cmp326 = icmp slt i32 %1, 0
  br i1 %cmp326, label %if.end, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %pointers5 = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 0
  br label %for.body4

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv31 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next32, %for.body ]
  %2 = load i8**, i8*** %pointers, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %indvars.iv31
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  tail call void @free(i8* %3) #15
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %4 = load i32, i32* %num_keys2, align 4, !tbaa !29
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv.next32, %5
  br i1 %cmp, label %for.body, label %if.end

for.body4:                                        ; preds = %for.body4, %for.body4.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body4.lr.ph ]
  %6 = load i8**, i8*** %pointers5, align 8, !tbaa !32
  %arrayidx7 = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv
  %7 = bitcast i8** %arrayidx7 to %struct.node**
  %8 = load %struct.node*, %struct.node** %7, align 8, !tbaa !14
  tail call void @_Z18destroy_tree_nodesP4node(%struct.node* %8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %num_keys2, align 4, !tbaa !29
  %10 = sext i32 %9 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp3, label %for.body4, label %if.end

if.end:                                           ; preds = %for.body4, %for.body, %for.cond1.preheader, %for.cond.preheader
  %11 = bitcast %struct.node* %root to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !32
  tail call void @free(i8* %12) #15
  %keys = getelementptr inbounds %struct.node, %struct.node* %root, i64 0, i32 1
  %13 = bitcast i32** %keys to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !31
  tail call void @free(i8* %14) #15
  %15 = bitcast %struct.node* %root to i8*
  tail call void @free(i8* %15) #15
  ret void
}

; Function Attrs: nounwind uwtable
define noalias %struct.node* @_Z12destroy_treeP4node(%struct.node* nocapture %root) local_unnamed_addr #5 {
entry:
  tail call void @_Z18destroy_tree_nodesP4node(%struct.node* %root)
  ret %struct.node* null
}

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #11 {
entry:
  %input = alloca i32, align 4
  %instruction = alloca i8, align 1
  %count = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %count276 = alloca i32, align 4
  %rSize = alloca i32, align 4
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i64 0, i64 0), i32 256)
  %call1 = tail call i32 @cudaSetDevice(i32 0)
  %call2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i32 0)
  %cmp763 = icmp sgt i32 %argc, 1
  br i1 %cmp763, label %for.body, label %if.then32

for.body:                                         ; preds = %for.inc, %entry
  %cur_arg.0766 = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  %input_file.0765 = phi i8* [ %input_file.1, %for.inc ], [ null, %entry ]
  %command_file.0764 = phi i8* [ %command_file.1, %for.inc ], [ null, %entry ]
  %idxprom = sext i32 %cur_arg.0766 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %call3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)) #19
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else12

if.then6:                                         ; preds = %for.body
  %add = add nsw i32 %cur_arg.0766, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom8
  %1 = load i8*, i8** %arrayidx9, align 8, !tbaa !14
  br label %for.inc

if.else12:                                        ; preds = %for.body
  %call15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0)) #19
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then20, label %for.inc

if.then20:                                        ; preds = %if.else12
  %add18 = add nsw i32 %cur_arg.0766, 1
  %idxprom22 = sext i32 %add18 to i64
  %arrayidx23 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom22
  %2 = load i8*, i8** %arrayidx23, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.else12, %if.then6
  %command_file.1 = phi i8* [ %command_file.0764, %if.then6 ], [ %2, %if.then20 ], [ %command_file.0764, %if.else12 ]
  %input_file.1 = phi i8* [ %1, %if.then6 ], [ %input_file.0765, %if.then20 ], [ %input_file.0765, %if.else12 ]
  %cur_arg.1 = phi i32 [ %add, %if.then6 ], [ %add18, %if.then20 ], [ %cur_arg.0766, %if.else12 ]
  %inc = add nsw i32 %cur_arg.1, 1
  %cmp = icmp slt i32 %inc, %argc
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp30 = icmp eq i8* %input_file.1, null
  %cmp31 = icmp eq i8* %command_file.1, null
  %or.cond = or i1 %cmp31, %cmp30
  br i1 %or.cond, label %if.then32, label %if.end34

if.then32:                                        ; preds = %for.end, %entry
  %cmp30803 = phi i1 [ %cmp30, %for.end ], [ true, %entry ]
  %input_file.0.lcssa801 = phi i8* [ %input_file.1, %for.end ], [ null, %entry ]
  %command_file.0.lcssa799 = phi i8* [ %command_file.1, %for.end ], [ null, %entry ]
  %puts716 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @str.127, i64 0, i64 0))
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %for.end
  %cmp30802 = phi i1 [ %cmp30, %for.end ], [ %cmp30803, %if.then32 ]
  %input_file.0.lcssa800 = phi i8* [ %input_file.1, %for.end ], [ %input_file.0.lcssa801, %if.then32 ]
  %command_file.0.lcssa798 = phi i8* [ %command_file.1, %for.end ], [ %command_file.0.lcssa799, %if.then32 ]
  %call35 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %input_file.0.lcssa800)
  %call36 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), i8* %command_file.0.lcssa798)
  %call37 = tail call %struct._IO_FILE* @fopen(i8* %command_file.0.lcssa798, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0))
  %cmp38 = icmp eq %struct._IO_FILE* %call37, null
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end34
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %3) #16
  tail call void @exit(i32 1) #17
  unreachable

if.end41:                                         ; preds = %if.end34
  %call42 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call37, i64 0, i32 2)
  %call43 = tail call i64 @ftell(%struct._IO_FILE* nonnull %call37)
  tail call void @rewind(%struct._IO_FILE* nonnull %call37)
  %call44 = tail call noalias i8* @malloc(i64 %call43) #15
  %tobool = icmp eq i8* %call44, null
  br i1 %tobool, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end41
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1940) #16
  tail call void @exit(i32 -1) #17
  unreachable

if.end51:                                         ; preds = %if.end41
  %6 = tail call i64 @fread_unlocked(i8* nonnull %call44, i64 1, i64 %call43, %struct._IO_FILE* nonnull %call37)
  %cmp53 = icmp eq i64 %6, %call43
  br i1 %cmp53, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end51
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %7) #16
  tail call void @exit(i32 3) #17
  unreachable

if.end56:                                         ; preds = %if.end51
  %call57 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call37)
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.121, i64 0, i64 0))
  %call59 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %call44)
  %call60 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0))
  %cmp61 = icmp eq %struct._IO_FILE* %call60, null
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end56
  %puts715 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.126, i64 0, i64 0))
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end56
  %9 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %call60)
  %call66 = tail call i32 @fclose(%struct._IO_FILE* %call60)
  %10 = bitcast i32* %input to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #15
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %instruction) #15
  store i32 256, i32* @order, align 4, !tbaa !20
  store i8 0, i8* @verbose_output, align 1, !tbaa !38
  br i1 %cmp30802, label %if.else80, label %if.then68

if.then68:                                        ; preds = %if.end64
  %call69 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %input_file.0.lcssa800)
  %call70 = tail call %struct._IO_FILE* @fopen(i8* nonnull %input_file.0.lcssa800, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i64 0, i64 0))
  %cmp71 = icmp eq %struct._IO_FILE* %call70, null
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then68
  tail call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0)) #16
  tail call void @exit(i32 1) #17
  unreachable

if.end73:                                         ; preds = %if.then68
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i32* nonnull %input)
  %11 = load i32, i32* %input, align 4, !tbaa !20
  %conv = sext i32 %11 to i64
  store i64 %conv, i64* @size, align 8, !tbaa !18
  %call75759 = call i32 @feof(%struct._IO_FILE* nonnull %call70) #15
  %tobool76760 = icmp eq i32 %call75759, 0
  br i1 %tobool76760, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %if.end73
  %root.0761 = phi %struct.node* [ %call78, %while.body ], [ null, %if.end73 ]
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %call70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0), i32* nonnull %input)
  %12 = load i32, i32* %input, align 4, !tbaa !20
  %call78 = call %struct.node* @_Z6insertP4nodeii(%struct.node* %root.0761, i32 %12, i32 %12)
  %call75 = call i32 @feof(%struct._IO_FILE* nonnull %call70) #15
  %tobool76 = icmp eq i32 %call75, 0
  br i1 %tobool76, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end73
  %root.0.lcssa = phi %struct.node* [ null, %if.end73 ], [ %call78, %while.body ]
  %call79 = call i32 @fclose(%struct._IO_FILE* nonnull %call70)
  %puts710 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.123, i64 0, i64 0))
  %call84 = call i64 @_Z17transform_to_cudaP4nodeb(%struct.node* %root.0.lcssa, i1 zeroext false)
  %is_leaf5.i = getelementptr inbounds %struct.node, %struct.node* %root.0.lcssa, i64 0, i32 3
  %13 = load i8, i8* %is_leaf5.i, align 8, !tbaa !26, !range !27
  %tobool6.i = icmp eq i8 %13, 0
  br i1 %tobool6.i, label %while.body.i, label %_Z6heightP4node.exit

while.body.i:                                     ; preds = %while.body.i, %while.end
  %c.08.i = phi %struct.node* [ %16, %while.body.i ], [ %root.0.lcssa, %while.end ]
  %h.07.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %while.end ]
  %14 = bitcast %struct.node* %c.08.i to %struct.node***
  %15 = load %struct.node**, %struct.node*** %14, align 8, !tbaa !32
  %16 = load %struct.node*, %struct.node** %15, align 8, !tbaa !14
  %inc.i = add nuw nsw i32 %h.07.i, 1
  %is_leaf.i = getelementptr inbounds %struct.node, %struct.node* %16, i64 0, i32 3
  %17 = load i8, i8* %is_leaf.i, align 8, !tbaa !26, !range !27
  %tobool.i = icmp eq i8 %17, 0
  br i1 %tobool.i, label %while.body.i, label %_Z6heightP4node.exit.loopexit

_Z6heightP4node.exit.loopexit:                    ; preds = %while.body.i
  %phitmp = zext i32 %inc.i to i64
  br label %_Z6heightP4node.exit

_Z6heightP4node.exit:                             ; preds = %_Z6heightP4node.exit.loopexit, %while.end
  %h.0.lcssa.i = phi i64 [ 0, %while.end ], [ %phitmp, %_Z6heightP4node.exit.loopexit ]
  store i64 %h.0.lcssa.i, i64* @maxheight, align 8, !tbaa !18
  %18 = load i64, i64* bitcast (%struct.knode** @knodes to i64*), align 8, !tbaa !14
  %19 = load i64, i64* bitcast (i8** @mem to i64*), align 8, !tbaa !14
  %sub = sub nsw i64 %18, %19
  %puts711 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.124, i64 0, i64 0))
  %call88 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0))
  %call90754 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %call44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %instruction) #15
  %cmp91755 = icmp eq i32 %call90754, -1
  br i1 %cmp91755, label %while.end474, label %while.body92.lr.ph

while.body92.lr.ph:                               ; preds = %_Z6heightP4node.exit
  %20 = bitcast i32* %count276 to i8*
  %21 = bitcast i32* %rSize to i8*
  %sub311 = sub nsw i64 %call84, %sub
  %div312 = udiv i64 %sub311, 2068
  %conv315 = trunc i64 %div312 to i32
  %conv316 = trunc i64 %sub311 to i32
  %22 = bitcast i32* %start to i8*
  %23 = bitcast i32* %end to i8*
  %24 = bitcast i32* %count to i8*
  %div = lshr i64 %sub, 2
  %conv174 = trunc i64 %div to i32
  %conv175 = trunc i64 %sub to i32
  br label %while.body92

if.else80:                                        ; preds = %if.end64
  %puts709 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.122, i64 0, i64 0))
  br label %cleanup489

while.body92:                                     ; preds = %sw.epilog, %while.body92.lr.ph
  %root.1757 = phi %struct.node* [ %root.0.lcssa, %while.body92.lr.ph ], [ %root.2, %sw.epilog ]
  %commandPointer.0756 = phi i8* [ %call44, %while.body92.lr.ph ], [ %commandPointer.4, %sw.epilog ]
  %incdec.ptr = getelementptr inbounds i8, i8* %commandPointer.0756, i64 1
  %25 = load i8, i8* %instruction, align 1, !tbaa !47
  %conv93 = sext i8 %25 to i32
  switch i32 %conv93, label %sw.epilog [
    i32 105, label %sw.bb
    i32 102, label %sw.bb102
    i32 112, label %sw.bb102
    i32 100, label %sw.bb118
    i32 120, label %while.cond127
    i32 108, label %while.cond134
    i32 116, label %while.cond140
    i32 118, label %while.cond146
    i32 113, label %while.cond154
    i32 107, label %sw.bb159
    i32 114, label %sw.bb265
    i32 106, label %sw.bb275
  ]

sw.bb:                                            ; preds = %while.body92
  %call94 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %input)
  br label %while.cond95

while.cond95:                                     ; preds = %while.cond95, %sw.bb
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i = call i32 @_IO_getc(%struct._IO_FILE* %26)
  %cmp97 = icmp eq i32 %call.i, 10
  br i1 %cmp97, label %while.end99, label %while.cond95

while.end99:                                      ; preds = %while.cond95
  %27 = load i32, i32* %input, align 4, !tbaa !20
  %call100 = call %struct.node* @_Z6insertP4nodeii(%struct.node* %root.1757, i32 %27, i32 %27)
  call void @_Z10print_treeP4node(%struct.node* %call100)
  br label %sw.epilog

sw.bb102:                                         ; preds = %while.body92, %while.body92
  %call103 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %input)
  br label %while.cond104

while.cond104:                                    ; preds = %while.cond104, %sw.bb102
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i719 = call i32 @_IO_getc(%struct._IO_FILE* %28)
  %cmp106 = icmp eq i32 %call.i719, 10
  br i1 %cmp106, label %while.end108, label %while.cond104

while.end108:                                     ; preds = %while.cond104
  %29 = load i32, i32* %input, align 4, !tbaa !20
  %30 = load i8, i8* %instruction, align 1, !tbaa !47
  %cmp110 = icmp eq i8 %30, 112
  %call.i720 = call %struct.node* @_Z9find_leafP4nodeib(%struct.node* %root.1757, i32 %29, i1 zeroext %cmp110) #15
  %cmp.i = icmp eq %struct.node* %call.i720, null
  br i1 %cmp.i, label %if.then113, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.end108
  %num_keys.i = getelementptr inbounds %struct.node, %struct.node* %call.i720, i64 0, i32 4
  %31 = load i32, i32* %num_keys.i, align 4, !tbaa !29
  %cmp122.i = icmp sgt i32 %31, 0
  br i1 %cmp122.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %keys.i = getelementptr inbounds %struct.node, %struct.node* %call.i720, i64 0, i32 1
  %32 = load i32*, i32** %keys.i, align 8, !tbaa !31
  %33 = zext i32 %31 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds i32, i32* %32, i64 %indvars.iv.i
  %34 = load i32, i32* %arrayidx.i, align 4, !tbaa !20
  %cmp2.i = icmp eq i32 %34, %29
  br i1 %cmp2.i, label %for.end.loopexit.split.loop.exit.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i, %33
  br i1 %exitcond, label %if.then113, label %for.body.i

for.end.loopexit.split.loop.exit.i:               ; preds = %for.body.i
  %35 = trunc i64 %indvars.iv.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.split.loop.exit.i, %for.cond.preheader.i
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %35, %for.end.loopexit.split.loop.exit.i ]
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %31
  br i1 %cmp6.i, label %if.then113, label %_Z4findP4nodeib.exit

_Z4findP4nodeib.exit:                             ; preds = %for.end.i
  %pointers.i = getelementptr inbounds %struct.node, %struct.node* %call.i720, i64 0, i32 0
  %36 = load i8**, i8*** %pointers.i, align 8, !tbaa !32
  %idxprom8.i = zext i32 %i.0.lcssa.i to i64
  %arrayidx9.i = getelementptr inbounds i8*, i8** %36, i64 %idxprom8.i
  %37 = bitcast i8** %arrayidx9.i to %struct.record**
  %38 = load %struct.record*, %struct.record** %37, align 8, !tbaa !14
  %cmp112 = icmp eq %struct.record* %38, null
  br i1 %cmp112, label %if.then113, label %if.else115

if.then113:                                       ; preds = %_Z4findP4nodeib.exit, %for.end.i, %for.inc.i, %while.end108
  %39 = load i32, i32* %input, align 4, !tbaa !20
  %call114 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i64 0, i64 0), i32 %39)
  br label %sw.epilog

if.else115:                                       ; preds = %_Z4findP4nodeib.exit
  %value = getelementptr inbounds %struct.record, %struct.record* %38, i64 0, i32 0
  %40 = load i32, i32* %value, align 4, !tbaa !33
  %call116 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i64 0, i64 0), i32 %40)
  br label %sw.epilog

sw.bb118:                                         ; preds = %while.body92
  %call119 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %input)
  br label %while.cond120

while.cond120:                                    ; preds = %while.cond120, %sw.bb118
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i722 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  %cmp122 = icmp eq i32 %call.i722, 10
  br i1 %cmp122, label %while.end124, label %while.cond120

while.end124:                                     ; preds = %while.cond120
  %42 = load i32, i32* %input, align 4, !tbaa !20
  %call125 = call %struct.node* @_Z9deleteValP4nodei(%struct.node* %root.1757, i32 %42)
  call void @_Z10print_treeP4node(%struct.node* %call125)
  br label %sw.epilog

while.cond127:                                    ; preds = %while.cond127, %while.body92
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i723 = call i32 @_IO_getc(%struct._IO_FILE* %43)
  %cmp129 = icmp eq i32 %call.i723, 10
  br i1 %cmp129, label %while.end131, label %while.cond127

while.end131:                                     ; preds = %while.cond127
  call void @_Z18destroy_tree_nodesP4node(%struct.node* %root.1757) #15
  %puts.i = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.119, i64 0, i64 0)) #15
  br label %sw.epilog

while.cond134:                                    ; preds = %while.cond134, %while.body92
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i724 = call i32 @_IO_getc(%struct._IO_FILE* %44)
  %cmp136 = icmp eq i32 %call.i724, 10
  br i1 %cmp136, label %while.end138, label %while.cond134

while.end138:                                     ; preds = %while.cond134
  call void @_Z12print_leavesP4node(%struct.node* %root.1757)
  br label %sw.epilog

while.cond140:                                    ; preds = %while.cond140, %while.body92
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i725 = call i32 @_IO_getc(%struct._IO_FILE* %45)
  %cmp142 = icmp eq i32 %call.i725, 10
  br i1 %cmp142, label %while.end144, label %while.cond140

while.end144:                                     ; preds = %while.cond140
  call void @_Z10print_treeP4node(%struct.node* %root.1757)
  br label %sw.epilog

while.cond146:                                    ; preds = %while.cond146, %while.body92
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i726 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  %cmp148 = icmp eq i32 %call.i726, 10
  br i1 %cmp148, label %while.end150, label %while.cond146

while.end150:                                     ; preds = %while.cond146
  %47 = load i8, i8* @verbose_output, align 1, !tbaa !38, !range !27
  %48 = xor i8 %47, 1
  store i8 %48, i8* @verbose_output, align 1, !tbaa !38
  br label %sw.epilog

while.cond154:                                    ; preds = %while.cond154, %while.body92
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !14
  %call.i727 = call i32 @_IO_getc(%struct._IO_FILE* %49)
  %cmp156 = icmp eq i32 %call.i727, 10
  br i1 %cmp156, label %cleanup489, label %while.cond154

sw.bb159:                                         ; preds = %while.body92
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #15
  %call160 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %incdec.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %count) #15
  br label %while.cond161

while.cond161:                                    ; preds = %while.body166, %sw.bb159
  %commandPointer.1 = phi i8* [ %incdec.ptr, %sw.bb159 ], [ %incdec.ptr167, %while.body166 ]
  %50 = load i8, i8* %commandPointer.1, align 1, !tbaa !47
  switch i8 %50, label %while.body166 [
    i8 32, label %while.end168
    i8 10, label %while.end168
  ]

while.body166:                                    ; preds = %while.cond161
  %incdec.ptr167 = getelementptr inbounds i8, i8* %commandPointer.1, i64 1
  br label %while.cond161

while.end168:                                     ; preds = %while.cond161, %while.cond161
  %51 = load i32, i32* %count, align 4, !tbaa !20
  %call169 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.86, i64 0, i64 0), i32 %51)
  %52 = load i32, i32* %count, align 4, !tbaa !20
  %cmp170 = icmp sgt i32 %52, 65535
  br i1 %cmp170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %while.end168
  %puts714 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([92 x i8], [92 x i8]* @str.125, i64 0, i64 0))
  call void @exit(i32 0) #17
  unreachable

if.end173:                                        ; preds = %while.end168
  %53 = load %struct.record*, %struct.record** bitcast (i8** @mem to %struct.record**), align 8, !tbaa !14
  %call176 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.88, i64 0, i64 0), i32 %conv174, i32 4, i32 %conv175)
  %54 = load i64, i64* bitcast (i8** @mem to i64*), align 8, !tbaa !14
  %add177 = add nsw i64 %54, %sub
  %55 = inttoptr i64 %add177 to %struct.knode*
  %call183 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i64 0, i64 0), i32 %conv315, i32 2068, i32 %conv316)
  %56 = load i32, i32* %count, align 4, !tbaa !20
  %conv185 = sext i32 %56 to i64
  %mul186 = shl nsw i64 %conv185, 3
  %call187 = call noalias i8* @malloc(i64 %mul186) #15
  %tobool188 = icmp eq i8* %call187, null
  br i1 %tobool188, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end173
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2175) #16
  call void @exit(i32 -1) #17
  unreachable

if.end191:                                        ; preds = %if.end173
  %58 = bitcast i8* %call187 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call187, i8 0, i64 %mul186, i1 false)
  %call198 = call noalias i8* @malloc(i64 %mul186) #15
  %tobool199 = icmp eq i8* %call198, null
  br i1 %tobool199, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.end191
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2181) #16
  call void @exit(i32 -1) #17
  unreachable

if.end202:                                        ; preds = %if.end191
  %60 = bitcast i8* %call198 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call198, i8 0, i64 %mul186, i1 false)
  %mul208 = shl nsw i64 %conv185, 2
  %call209 = call noalias i8* @malloc(i64 %mul208) #15
  %tobool210 = icmp eq i8* %call209, null
  br i1 %tobool210, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end202
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2187) #16
  call void @exit(i32 -1) #17
  unreachable

if.end213:                                        ; preds = %if.end202
  %62 = bitcast i8* %call209 to i32*
  %cmp216747 = icmp sgt i32 %56, 0
  br i1 %cmp216747, label %for.body217, label %for.end228

for.body217:                                      ; preds = %for.body217, %if.end213
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %for.body217 ], [ 0, %if.end213 ]
  %call218 = call i32 @rand() #15
  %conv219 = sitofp i32 %call218 to float
  %div220 = fmul float %conv219, 0x3E00000000000000
  %63 = load i64, i64* @size, align 8, !tbaa !18
  %conv221 = sitofp i64 %63 to float
  %mul222 = fmul float %div220, %conv221
  %conv223 = fptosi float %mul222 to i32
  %arrayidx225 = getelementptr inbounds i32, i32* %62, i64 %indvars.iv785
  store i32 %conv223, i32* %arrayidx225, align 4, !tbaa !20
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1
  %64 = load i32, i32* %count, align 4, !tbaa !20
  %65 = sext i32 %64 to i64
  %cmp216 = icmp slt i64 %indvars.iv.next786, %65
  br i1 %cmp216, label %for.body217, label %for.end228.loopexit

for.end228.loopexit:                              ; preds = %for.body217
  %66 = sext i32 %64 to i64
  %.pre = shl nsw i64 %66, 2
  br label %for.end228

for.end228:                                       ; preds = %for.end228.loopexit, %if.end213
  %mul231.pre-phi = phi i64 [ %.pre, %for.end228.loopexit ], [ %mul208, %if.end213 ]
  %.lcssa730 = phi i32 [ %64, %for.end228.loopexit ], [ %56, %if.end213 ]
  %call232 = call noalias i8* @malloc(i64 %mul231.pre-phi) #15
  %tobool233 = icmp eq i8* %call232, null
  br i1 %tobool233, label %if.then234, label %if.end236

if.then234:                                       ; preds = %for.end228
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2195) #16
  call void @exit(i32 -1) #17
  unreachable

if.end236:                                        ; preds = %for.end228
  %68 = bitcast i8* %call232 to %struct.record*
  %cmp239750 = icmp sgt i32 %.lcssa730, 0
  br i1 %cmp239750, label %for.body240.preheader, label %for.end246

for.body240.preheader:                            ; preds = %if.end236
  %wide.trip.count789 = zext i32 %.lcssa730 to i64
  %69 = shl nuw nsw i64 %wide.trip.count789, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %call232, i8 -1, i64 %69, i1 false)
  br label %for.end246

for.end246:                                       ; preds = %for.body240.preheader, %if.end236
  %70 = load i32, i32* @order, align 4, !tbaa !20
  %71 = load i64, i64* @maxheight, align 8, !tbaa !18
  call void @_Z23kernel_gpu_cuda_wrapperP6recordlP5knodelliliPlS3_PiS0_(%struct.record* %53, i64 %sub, %struct.knode* %55, i64 %div312, i64 %sub311, i32 %70, i64 %71, i32 %.lcssa730, i64* nonnull %58, i64* nonnull %60, i32* nonnull %62, %struct.record* nonnull %68)
  %call247 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0))
  %cmp248 = icmp eq %struct._IO_FILE* %call247, null
  br i1 %cmp248, label %if.then249, label %if.end251

if.then249:                                       ; preds = %for.end246
  %call250 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  br label %if.end251

if.end251:                                        ; preds = %if.then249, %for.end246
  %72 = load i32, i32* %count, align 4, !tbaa !20
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.86, i64 0, i64 0), i32 %72)
  %73 = load i32, i32* %count, align 4, !tbaa !20
  %cmp254752 = icmp sgt i32 %73, 0
  br i1 %cmp254752, label %for.body255, label %for.end262

for.body255:                                      ; preds = %for.body255, %if.end251
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %for.body255 ], [ 0, %if.end251 ]
  %value258 = getelementptr inbounds %struct.record, %struct.record* %68, i64 %indvars.iv790, i32 0
  %74 = load i32, i32* %value258, align 4, !tbaa !33
  %75 = trunc i64 %indvars.iv790 to i32
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call247, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i64 0, i64 0), i32 %75, i32 %74)
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1
  %76 = load i32, i32* %count, align 4, !tbaa !20
  %77 = sext i32 %76 to i64
  %cmp254 = icmp slt i64 %indvars.iv.next791, %77
  br i1 %cmp254, label %for.body255, label %for.end262

for.end262:                                       ; preds = %for.body255, %if.end251
  %78 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call247)
  %call264 = call i32 @fclose(%struct._IO_FILE* %call247)
  call void @free(i8* %call187) #15
  call void @free(i8* %call198) #15
  call void @free(i8* %call209) #15
  call void @free(i8* nonnull %call232) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #15
  br label %sw.epilog

sw.bb265:                                         ; preds = %while.body92
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #15
  %call266 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %start)
  %call267 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %end)
  %79 = load i32, i32* %start, align 4, !tbaa !20
  %80 = load i32, i32* %end, align 4, !tbaa !20
  %cmp268 = icmp sgt i32 %79, %80
  br i1 %cmp268, label %if.then269, label %if.end270

if.then269:                                       ; preds = %sw.bb265
  store i32 %79, i32* %input, align 4, !tbaa !20
  store i32 %80, i32* %start, align 4, !tbaa !20
  store i32 %79, i32* %end, align 4, !tbaa !20
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %sw.bb265
  %81 = phi i32 [ %79, %if.then269 ], [ %80, %sw.bb265 ]
  %82 = phi i32 [ %80, %if.then269 ], [ %79, %sw.bb265 ]
  %call271 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i64 0, i64 0), i32 %82, i32 %81)
  %83 = load i32, i32* %start, align 4, !tbaa !20
  %84 = load i32, i32* %end, align 4, !tbaa !20
  %call272 = call %struct.list_t* @_Z9findRangeP4nodeii(%struct.node* %root.1757, i32 %83, i32 %84)
  %length.i = getelementptr inbounds %struct.list_t, %struct.list_t* %call272, i64 0, i32 2
  %85 = load i32, i32* %length.i, align 8, !tbaa !15
  %call274 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i64 0, i64 0), i32 %85)
  %86 = bitcast %struct.list_t* %call272 to i8*
  call void @free(i8* %86) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #15
  br label %sw.epilog

sw.bb275:                                         ; preds = %while.body92
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #15
  %call277 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %incdec.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %count276) #15
  br label %while.cond278

while.cond278:                                    ; preds = %while.body285, %sw.bb275
  %commandPointer.2 = phi i8* [ %incdec.ptr, %sw.bb275 ], [ %incdec.ptr286, %while.body285 ]
  %87 = load i8, i8* %commandPointer.2, align 1, !tbaa !47
  switch i8 %87, label %while.body285 [
    i8 32, label %while.end287
    i8 10, label %while.end287
  ]

while.body285:                                    ; preds = %while.cond278
  %incdec.ptr286 = getelementptr inbounds i8, i8* %commandPointer.2, i64 1
  br label %while.cond278

while.end287:                                     ; preds = %while.cond278, %while.cond278
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #15
  %call288 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %commandPointer.2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i32* nonnull %rSize) #15
  br label %while.cond289

while.cond289:                                    ; preds = %while.body296, %while.end287
  %commandPointer.3 = phi i8* [ %commandPointer.2, %while.end287 ], [ %incdec.ptr297, %while.body296 ]
  %88 = load i8, i8* %commandPointer.3, align 1, !tbaa !47
  switch i8 %88, label %while.body296 [
    i8 32, label %while.end298
    i8 10, label %while.end298
  ]

while.body296:                                    ; preds = %while.cond289
  %incdec.ptr297 = getelementptr inbounds i8, i8* %commandPointer.3, i64 1
  br label %while.cond289

while.end298:                                     ; preds = %while.cond289, %while.cond289
  %89 = load i32, i32* %count276, align 4, !tbaa !20
  %90 = load i32, i32* %rSize, align 4, !tbaa !20
  %call299 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i64 0, i64 0), i32 %89, i32 %90)
  %91 = load i32, i32* %rSize, align 4, !tbaa !20
  %conv300 = sext i32 %91 to i64
  %92 = load i64, i64* @size, align 8, !tbaa !18
  %cmp301 = icmp slt i64 %92, %conv300
  %cmp303 = icmp slt i32 %91, 0
  %or.cond497 = or i1 %cmp303, %cmp301
  br i1 %or.cond497, label %if.then304, label %if.end307

if.then304:                                       ; preds = %while.end298
  %conv305 = trunc i64 %92 to i32
  %call306 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.97, i64 0, i64 0), i32 %conv305)
  call void @exit(i32 0) #17
  unreachable

if.end307:                                        ; preds = %while.end298
  %93 = load i64, i64* bitcast (i8** @mem to i64*), align 8, !tbaa !14
  %add309 = add nsw i64 %93, %sub
  %94 = inttoptr i64 %add309 to %struct.knode*
  %call317 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i64 0, i64 0), i32 %conv315, i32 2068, i32 %conv316)
  %95 = load i32, i32* %count276, align 4, !tbaa !20
  %conv320 = sext i32 %95 to i64
  %mul321 = shl nsw i64 %conv320, 3
  %call322 = call noalias i8* @malloc(i64 %mul321) #15
  %tobool323 = icmp eq i8* %call322, null
  br i1 %tobool323, label %if.then324, label %if.end326

if.then324:                                       ; preds = %if.end307
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2304) #16
  call void @exit(i32 -1) #17
  unreachable

if.end326:                                        ; preds = %if.end307
  %97 = bitcast i8* %call322 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call322, i8 0, i64 %mul321, i1 false)
  %call334 = call noalias i8* @malloc(i64 %mul321) #15
  %tobool335 = icmp eq i8* %call334, null
  br i1 %tobool335, label %if.then336, label %if.end338

if.then336:                                       ; preds = %if.end326
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2310) #16
  call void @exit(i32 -1) #17
  unreachable

if.end338:                                        ; preds = %if.end326
  %99 = bitcast i8* %call334 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call334, i8 0, i64 %mul321, i1 false)
  %call345 = call noalias i8* @malloc(i64 %mul321) #15
  %tobool346 = icmp eq i8* %call345, null
  br i1 %tobool346, label %if.then347, label %if.end349

if.then347:                                       ; preds = %if.end338
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2316) #16
  call void @exit(i32 -1) #17
  unreachable

if.end349:                                        ; preds = %if.end338
  %101 = bitcast i8* %call345 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call345, i8 0, i64 %mul321, i1 false)
  %call356 = call noalias i8* @malloc(i64 %mul321) #15
  %tobool357 = icmp eq i8* %call356, null
  br i1 %tobool357, label %if.then358, label %if.end360

if.then358:                                       ; preds = %if.end349
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2322) #16
  call void @exit(i32 -1) #17
  unreachable

if.end360:                                        ; preds = %if.end349
  %103 = bitcast i8* %call356 to i64*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call356, i8 0, i64 %mul321, i1 false)
  %mul367 = shl nsw i64 %conv320, 2
  %call368 = call noalias i8* @malloc(i64 %mul367) #15
  %tobool369 = icmp eq i8* %call368, null
  br i1 %tobool369, label %if.then370, label %if.end372

if.then370:                                       ; preds = %if.end360
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2328) #16
  call void @exit(i32 -1) #17
  unreachable

if.end372:                                        ; preds = %if.end360
  %105 = bitcast i8* %call368 to i32*
  %call378 = call noalias i8* @malloc(i64 %mul367) #15
  %tobool379 = icmp eq i8* %call378, null
  br i1 %tobool379, label %if.then380, label %if.end382

if.then380:                                       ; preds = %if.end372
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2330) #16
  call void @exit(i32 -1) #17
  unreachable

if.end382:                                        ; preds = %if.end372
  %107 = bitcast i8* %call378 to i32*
  %cmp386741 = icmp sgt i32 %95, 0
  br i1 %cmp386741, label %for.body387, label %for.end424

for.body387:                                      ; preds = %for.inc422, %if.end382
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc422 ], [ 0, %if.end382 ]
  %call388 = call i32 @rand() #15
  %conv389 = sitofp i32 %call388 to float
  %div390 = fmul float %conv389, 0x3E00000000000000
  %108 = load i64, i64* @size, align 8, !tbaa !18
  %conv391 = sitofp i64 %108 to float
  %mul392 = fmul float %div390, %conv391
  %conv393 = fptosi float %mul392 to i32
  %arrayidx395 = getelementptr inbounds i32, i32* %105, i64 %indvars.iv
  store i32 %conv393, i32* %arrayidx395, align 4, !tbaa !20
  %109 = load i32, i32* %rSize, align 4, !tbaa !20
  %add398 = add nsw i32 %109, %conv393
  %arrayidx400 = getelementptr inbounds i32, i32* %107, i64 %indvars.iv
  store i32 %add398, i32* %arrayidx400, align 4, !tbaa !20
  %conv403 = sext i32 %add398 to i64
  %cmp404 = icmp sgt i64 %108, %conv403
  br i1 %cmp404, label %for.inc422, label %if.then405

if.then405:                                       ; preds = %for.body387
  %110 = trunc i64 %108 to i32
  %111 = add i32 %conv393, %110
  %conv414 = sub i32 %111, %add398
  store i32 %conv414, i32* %arrayidx395, align 4, !tbaa !20
  %conv418 = add i32 %110, -1
  store i32 %conv418, i32* %arrayidx400, align 4, !tbaa !20
  br label %for.inc422

for.inc422:                                       ; preds = %if.then405, %for.body387
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %112 = load i32, i32* %count276, align 4, !tbaa !20
  %113 = sext i32 %112 to i64
  %cmp386 = icmp slt i64 %indvars.iv.next, %113
  br i1 %cmp386, label %for.body387, label %for.end424.loopexit

for.end424.loopexit:                              ; preds = %for.inc422
  %114 = sext i32 %112 to i64
  %.pre792 = shl nsw i64 %114, 2
  br label %for.end424

for.end424:                                       ; preds = %for.end424.loopexit, %if.end382
  %mul427.pre-phi = phi i64 [ %.pre792, %for.end424.loopexit ], [ %mul367, %if.end382 ]
  %.lcssa = phi i32 [ %112, %for.end424.loopexit ], [ %95, %if.end382 ]
  %call428 = call noalias i8* @malloc(i64 %mul427.pre-phi) #15
  %tobool429 = icmp eq i8* %call428, null
  br i1 %tobool429, label %if.then430, label %if.end432

if.then430:                                       ; preds = %for.end424
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2344) #16
  call void @exit(i32 -1) #17
  unreachable

if.end432:                                        ; preds = %for.end424
  %116 = bitcast i8* %call428 to i32*
  %call437 = call noalias i8* @malloc(i64 %mul427.pre-phi) #15
  %tobool438 = icmp eq i8* %call437, null
  br i1 %tobool438, label %if.then439, label %if.end441

if.then439:                                       ; preds = %if.end432
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call440 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 2346) #16
  call void @exit(i32 -1) #17
  unreachable

if.end441:                                        ; preds = %if.end432
  %118 = bitcast i8* %call437 to i32*
  %cmp444743 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp444743, label %for.body445.preheader, label %for.end452

for.body445.preheader:                            ; preds = %if.end441
  %wide.trip.count = zext i32 %.lcssa to i64
  %119 = shl nuw nsw i64 %wide.trip.count, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %call428, i8 0, i64 %119, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %call437, i8 0, i64 %119, i1 false)
  br label %for.end452

for.end452:                                       ; preds = %for.body445.preheader, %if.end441
  %call453 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i64 0, i64 0))
  %120 = load i32, i32* @order, align 4, !tbaa !20
  %121 = load i64, i64* @maxheight, align 8, !tbaa !18
  %122 = load i32, i32* %count276, align 4, !tbaa !20
  call void @_Z25kernel_gpu_cuda_wrapper_2P5knodelliliPlS1_S1_S1_PiS2_S2_S2_(%struct.knode* %94, i64 %div312, i64 %sub311, i32 %120, i64 %121, i32 %122, i64* nonnull %97, i64* nonnull %99, i64* nonnull %101, i64* nonnull %103, i32* nonnull %105, i32* nonnull %107, i32* nonnull %116, i32* nonnull %118)
  %call454 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0))
  %cmp455 = icmp eq %struct._IO_FILE* %call454, null
  br i1 %cmp455, label %if.then456, label %if.end458

if.then456:                                       ; preds = %for.end452
  %call457 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  br label %if.end458

if.end458:                                        ; preds = %if.then456, %for.end452
  %123 = load i32, i32* %count276, align 4, !tbaa !20
  %124 = load i32, i32* %rSize, align 4, !tbaa !20
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call454, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.96, i64 0, i64 0), i32 %123, i32 %124)
  %125 = load i32, i32* %count276, align 4, !tbaa !20
  %cmp461745 = icmp sgt i32 %125, 0
  br i1 %cmp461745, label %for.body462, label %for.end470

for.body462:                                      ; preds = %for.body462, %if.end458
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %for.body462 ], [ 0, %if.end458 ]
  %arrayidx464 = getelementptr inbounds i32, i32* %116, i64 %indvars.iv783
  %126 = load i32, i32* %arrayidx464, align 4, !tbaa !20
  %arrayidx466 = getelementptr inbounds i32, i32* %118, i64 %indvars.iv783
  %127 = load i32, i32* %arrayidx466, align 4, !tbaa !20
  %128 = trunc i64 %indvars.iv783 to i32
  %call467 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call454, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 %128, i32 %126, i32 %127)
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1
  %129 = load i32, i32* %count276, align 4, !tbaa !20
  %130 = sext i32 %129 to i64
  %cmp461 = icmp slt i64 %indvars.iv.next784, %130
  br i1 %cmp461, label %for.body462, label %for.end470

for.end470:                                       ; preds = %for.body462, %if.end458
  %131 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %call454)
  %call472 = call i32 @fclose(%struct._IO_FILE* %call454)
  call void @free(i8* %call322) #15
  call void @free(i8* %call334) #15
  call void @free(i8* %call345) #15
  call void @free(i8* %call356) #15
  call void @free(i8* %call368) #15
  call void @free(i8* %call378) #15
  call void @free(i8* nonnull %call428) #15
  call void @free(i8* nonnull %call437) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end470, %if.end270, %for.end262, %while.end150, %while.end144, %while.end138, %while.end131, %while.end124, %if.else115, %if.then113, %while.end99, %while.body92
  %commandPointer.4 = phi i8* [ %incdec.ptr, %while.body92 ], [ %commandPointer.3, %for.end470 ], [ %incdec.ptr, %if.end270 ], [ %commandPointer.1, %for.end262 ], [ %incdec.ptr, %while.end150 ], [ %incdec.ptr, %while.end144 ], [ %incdec.ptr, %while.end138 ], [ %incdec.ptr, %while.end131 ], [ %incdec.ptr, %while.end124 ], [ %incdec.ptr, %if.then113 ], [ %incdec.ptr, %if.else115 ], [ %incdec.ptr, %while.end99 ]
  %root.2 = phi %struct.node* [ %root.1757, %while.body92 ], [ %root.1757, %for.end470 ], [ %root.1757, %if.end270 ], [ %root.1757, %for.end262 ], [ %root.1757, %while.end150 ], [ %root.1757, %while.end144 ], [ %root.1757, %while.end138 ], [ null, %while.end131 ], [ %call125, %while.end124 ], [ %root.1757, %if.then113 ], [ %root.1757, %if.else115 ], [ %call100, %while.end99 ]
  %call473 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0))
  %call90 = call i32 (i8*, i8*, ...) @sscanf(i8* %commandPointer.4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %instruction) #15
  %cmp91 = icmp eq i32 %call90, -1
  br i1 %cmp91, label %while.end474, label %while.body92

while.end474:                                     ; preds = %sw.epilog, %_Z6heightP4node.exit
  %putchar = call i32 @putchar(i32 10)
  %132 = load i8*, i8** @mem, align 8, !tbaa !14
  call void @free(i8* %132) #15
  br label %cleanup489

cleanup489:                                       ; preds = %while.end474, %while.cond154, %if.else80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %instruction) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #15
  ret i32 0
}

declare i32 @cudaSetDevice(i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i64 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @rewind(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @scanf(i8* nocapture readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

declare void @_Z23kernel_gpu_cuda_wrapperP6recordlP5knodelliliPlS3_PiS0_(%struct.record*, i64, %struct.knode*, i64, i64, i32, i64, i32, i64*, i64*, i32*, %struct.record*) local_unnamed_addr #12

declare void @_Z25kernel_gpu_cuda_wrapper_2P5knodelliliPlS1_S1_S1_PiS2_S2_S2_(%struct.knode*, i64, i64, i32, i64, i32, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare double @pow(double, double) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

attributes #0 = { nofree norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3 = !{!4, !5, i64 24}
!4 = !{!"_ZTS6list_t", !5, i64 0, !5, i64 8, !8, i64 16, !5, i64 24, !5, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 32}
!10 = !{!4, !5, i64 0}
!11 = !{!12, !5, i64 8}
!12 = !{!"_ZTS9list_item", !5, i64 0, !5, i64 8, !5, i64 16}
!13 = !{!12, !5, i64 16}
!14 = !{!5, !5, i64 0}
!15 = !{!4, !8, i64 16}
!16 = !{!4, !5, i64 8}
!17 = !{!12, !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !5, i64 32}
!22 = !{!"_ZTS4node", !5, i64 0, !5, i64 8, !5, i64 16, !23, i64 24, !8, i64 28, !5, i64 32}
!23 = !{!"bool", !6, i64 0}
!24 = !{!25, !8, i64 0}
!25 = !{!"_ZTS5knode", !8, i64 0, !6, i64 4, !6, i64 1032, !23, i64 2060, !8, i64 2064}
!26 = !{!22, !23, i64 24}
!27 = !{i8 0, i8 2}
!28 = !{!25, !23, i64 2060}
!29 = !{!22, !8, i64 28}
!30 = !{!25, !8, i64 2064}
!31 = !{!22, !5, i64 8}
!32 = !{!22, !5, i64 0}
!33 = !{!34, !8, i64 0}
!34 = !{!"_ZTS6record", !8, i64 0}
!35 = !{!36, !19, i64 0}
!36 = !{!"_ZTS7timeval", !19, i64 0, !19, i64 8}
!37 = !{!36, !19, i64 8}
!38 = !{!23, !23, i64 0}
!39 = !{!22, !5, i64 16}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !41}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = !{!6, !6, i64 0}
