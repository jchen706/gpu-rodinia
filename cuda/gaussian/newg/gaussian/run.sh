#!/bin/bash
# clang++ gaussian.cu -o gaussian --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v

clang++ -emit-llvm gaussian.cu --cuda-gpu-arch=sm_61 -O3 -c
/data/bgarg6/spirv_on_x86/build/Demo gaussian-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 128 1 1 32768 1 1
# llvm-dis kernel.bc

/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation gaussian-host-x86_64-unknown-linux-gnu.bc new_kernel.bc

llc --relocation-model=pic --filetype=obj  new_kernel.bc
llc --relocation-model=pic --filetype=obj  kernel.bc
llc --relocation-model=pic --filetype=obj  gaussian.bc

g++ -Wall -L/data/bgarg6/cuda-on-everywhere/runtimes/pool/development/api/cudart/build -o demo -fPIC -no-pie new_kernel.o kernel.o -lc -lcudart


