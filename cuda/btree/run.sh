#!/bin/bash

# clang++ ./kernel/kernel_gpu_cuda_wrapper.cu -o kernel_gpu_cuda_wrapper --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_35 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v

clang++ -fPIC -emit-llvm --cuda-gpu-arch=sm_61 ./kernel/kernel_gpu_cuda_2.cu -O3 -c
clang++ -fPIC -emit-llvm --cuda-gpu-arch=sm_61 ./kernel/kernel_gpu_cuda.cu -O3 -c

clang++ -fPIC -emit-llvm ./kernel/kernel_gpu_cuda_wrapper.cpp -O3 -c
        
clang++ -fPIC -emit-llvm ./kernel/kernel_gpu_cuda_wrapper_2.cpp -O3 -c

clang++ -fPIC -emit-llvm ./util/timer/timer.cpp -O3 -c
clang++ -fPIC -emit-llvm ./util/num/num.cpp -O3 -c

clang++ -fPIC -emit-llvm ./util/cuda/cuda.cpp -O3 -c


llvm-dis kernel_gpu_cuda_2-cuda-nvptx64-nvidia-cuda-sm_35.bc
llvm-dis kernel_gpu_cuda-cuda-nvptx64-nvidia-cuda-sm_35.bc

llvm-dis kernel_gpu_cuda_wrapper_2.bc
llvm-dis kernel_gpu_cuda_wrapper.bc


/data/jchen/spirv_on_x86/build/Demo kernel_gpu_cuda_2-cuda-nvptx64-nvidia-cuda-sm_61.bc  kernel1.bc 1 1 1 256 1 1
/data/jchen/spirv_on_x86/build/Demo  kernel_gpu_cuda-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel2.bc 1 1 1 256 1 1
llvm-dis kernel1.bc
llvm-dis kernel2.bc

clang++ -fPIC -emit-llvm main.cpp -O3 -c -no-pie

llvm-dis main.bc

/data/jchen/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation kernel_gpu_cuda_wrapper_2.bc new_kernel_gpu_cuda_wrapper_2.bc
llvm-dis new_kernel_gpu_cuda_wrapper_2.bc
/data/jchen/cuda-on-everywhere/runtimes/pool/development/api/parser/build/KernelTranslation kernel_gpu_cuda_wrapper.bc new_kernel_gpu_cuda_wrapper.bc
llvm-dis new_kernel_gpu_cuda_wrapper.bc


llc --relocation-model=pic --filetype=obj  new_kernel_gpu_cuda_wrapper_2.bc
llc --relocation-model=pic --filetype=obj  new_kernel_gpu_cuda_wrapper.bc
llc --relocation-model=pic --filetype=obj  kernel2.bc
llc --relocation-model=pic --filetype=obj  kernel1.bc
llc --relocation-model=pic --filetype=obj  main.bc
llc --relocation-model=pic --filetype=obj  timer.bc
llc --relocation-model=pic --filetype=obj  num.bc
llc --relocation-model=pic --filetype=obj  cuda.bc

g++ -Wall -L/data/jchen/cuda-on-everywhere/runtimes/pool/development/api/cudart/build -o demo -fPIC -no-pie cuda.o timer.o num.o new_kernel_gpu_cuda_wrapper_2.o kernel1.o main.o -lc -lcudart
