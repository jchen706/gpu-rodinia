#!/bin/bash
clang++ -emit-llvm lud_kernel.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/spirv_on_x86/build/Demo lud_kernel-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 1 1 1 16 16 1 
llc --filetype=obj kernel.bc
llvm-dis kernel.bc

clang++ -fno-pie -emit-llvm main.cpp --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation main.bc kernel.bc newMain.bc newKernel.bc
# llvm-dis main.bc
llc --filetype=obj main.bc
llc --relocation-model=pic --filetype=obj newMain.bc 
llvm-dis newMain.bc
llc --relocation-model=pic --filetype=obj newKernel.bc 
llvm-dis newKernel.bc

# link the shared library
g++ -Wall -L/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/cudart/build -o demo -fPIC -no-pie newKernel.o newMain.o -lc -lcudart -Wl,-no-as-needed -Wl,-z,notext -rdynamic# ./demo