#!/bin/bash
clang++ -emit-llvm dynproc_kernel.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/spirv_on_x86/build/Demo dynproc_kernel-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 1 1 1 256 1 1 
llc --filetype=obj kernel.bc
llvm-dis kernel.bc

clang++ -fno-pie -emit-llvm pathfinder.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation pathfinder.bc kernel.bc newMain.bc newKernel.bc
# llvm-dis main.bc
llc --filetype=obj pathfinder.bc
llc --relocation-model=pic --filetype=obj newMain.bc 
llvm-dis newMain.bc
llc --relocation-model=pic --filetype=obj newKernel.bc 
llvm-dis newKernel.bc

# link the shared library
g++ -Wall -L/data/jchen/cuda-on-everywhere/runtimes/pool/development/api/cudart/build -o demo -fPIC -no-pie newKernel.o newMain.o -lc -lcudart -Wl,-no-as-needed -Wl,-z,notext -rdynamic# ./demo

# 
# clang++ pathfinder.cu -o pathfinder --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_35 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v