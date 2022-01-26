clang++ backprop.cpp facetrain.c imagenet.c backprop_cuda.cu backprop_cuda_kernel.cu -c --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v



# kernel files (generated 2 same kernel files because backprop_cuda had #include backprop_cuda_kernel_cu)
# backprop_cuda_kernel-cuda-nvptx64-nvidia-cuda-sm_61
# backprop_cuda-cuda-nvptx64-nvidia-cuda-sm_61

/data/jchen/open_source_template/build/compilation/kernelTranslator backprop_cuda-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 

# host

# /data/jchen/open_source_template/build/compilation/hostTranslator backprop_cuda-host-x86_64-unknown-linux-gnu.bc host.bc



# llc --relocation-model=pic --filetype=obj  kernel.bc
# llc --relocation-model=pic --filetype=obj  host.bc
# llc --relocation-model=pic --filetype=obj  imagenet.bc
# llc --relocation-model=pic --filetype=obj  facetrain.bc
# llc --relocation-model=pic --filetype=obj  backprop.bc


# g++ -g -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie host.o kernel.o imagenet.o facetrain.o backprop.o -lc -lx86Runtime -lthreadPool -lpthread






# rm *.ll *.o *.bc *.s *.cui *.fatbin *.ii