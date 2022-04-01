#!/bin/bash

clang++ gaussian.cu -o gaussian --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_50 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v

/data/jchen/open_source_template/build/compilation/kernelTranslator gaussian-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc
/data/jchen/open_source_template/build/compilation/hostTranslator gaussian-host-x86_64-unknown-linux-gnu.bc host.bc

llc --relocation-model=pic --filetype=obj  host.bc
llc --relocation-model=pic --filetype=obj  kernel.bc

g++ -g -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o test -fPIC -no-pie host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread

time ./test -f ../../data/gaussian/matrix1024.txt

