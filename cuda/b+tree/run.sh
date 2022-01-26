clang++ main.c ./kernel/kernel_gpu_cuda_wrapper.cu  ./kernel/kernel_gpu_cuda_wrapper_2.cu   ./util/timer/timer.c ./util/num/num.c ./util/cuda/cuda.cu  -o btree --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v



# kernel files (generated 2 same kernel files because backprop_cuda had #include backprop_cuda_kernel_cu)
# backprop_cuda_kernel-cuda-nvptx64-nvidia-cuda-sm_61
# backprop_cuda-cuda-nvptx64-nvidia-cuda-sm_61

# /data/jchen/open_source_template/build/compilation/kernelTranslator kernel_gpu_cuda_wrapper-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel_1.bc 
# /data/jchen/open_source_template/build/compilation/kernelTranslator kernel_gpu_cuda_wrapper_2-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel_2.bc 

# host

# /data/jchen/open_source_template/build/compilation/hostTranslator kernel_gpu_cuda_wrapper-host-x86_64-unknown-linux-gnu.bc host_1.bc
# /data/jchen/open_source_template/build/compilation/hostTranslator kernel_gpu_cuda_wrapper_2-host-x86_64-unknown-linux-gnu.bc host_2.bc



llc --relocation-model=pic --filetype=obj  kernel_1.bc
llc --relocation-model=pic --filetype=obj  host_1.bc
llc --relocation-model=pic --filetype=obj  kernel_2.bc
llc --relocation-model=pic --filetype=obj  host_2.bc


g++ -g -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie host_1.o kernel_1.o host_2.o kernel_2.o main.o timer.o num.o cuda.o -lc -lx86Runtime -lthreadPool -lpthread






# rm *.ll *.o *.bc *.s *.cui *.fatbin *.ii