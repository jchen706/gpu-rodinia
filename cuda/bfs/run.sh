#!/bin/bash
clang++ -emit-llvm kernel.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/spirv_on_x86/build/Demo lud_kernel-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 1 1 1 16 16 1 
llc --filetype=obj kernel.bc
llvm-dis kernel.bc

clang++ -emit-llvm kernel2.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/spirv_on_x86/build/Demo lud_kernel-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 1 1 1 16 16 1 
llc --filetype=obj kernel2.bc
llvm-dis kernel2.bc

clang++ -fno-pie -emit-llvm bfs.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation bfs.bc kernel.bc newMain.bc newKernel.bc
/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation newMain.bc kernel2.bc newMain2.bc newKernel2.bc
# llvm-dis main.bc
llc --filetype=obj bfs.bc
llc --relocation-model=pic --filetype=obj newMain2.bc 
llvm-dis newMain2.bc
llc --relocation-model=pic --filetype=obj newKernel2.bc 
llvm-dis newKernel.bc
llc --relocation-model=pic --filetype=obj newKernel2.bc 
llvm-dis newKernel2.bc

# link the shared library
g++ -Wall -L/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/cudart/build -o demo -fPIC -no-pie newKernel.o newKernel2.o newMain2.o -lc -lcudart -Wl,-no-as-needed -Wl,-z,notext -rdynamic# ./demo