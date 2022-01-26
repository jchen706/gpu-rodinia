clang++ main.cpp triangle_count.cu -c --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v
clang++ -emit-llvm main.cpp --cuda-gpu-arch=sm_61 -O3 -c

/data/jchen/open_source_template/build/compilation/kernelTranslator triangle_count-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc 
/data/jchen/open_source_template/build/compilation/hostTranslator triangle_count-host-x86_64-unknown-linux-gnu.bc host.bc


llc --relocation-model=pic --filetype=obj  kernel.bc
llc --relocation-model=pic --filetype=obj  host.bc
llc --relocation-model=pic --filetype=obj  runtime_attr_kernel.bc
llc --relocation-model=pic --filetype=obj  runtime_gen_input_kernel.bc
llc --relocation-model=pic --filetype=obj  main.bc

g++ -g -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie main.o host.o kernel.o runtime_attr_kernel.o runtime_gen_input_kernel.o -lc -lx86Runtime -lthreadPool -lpthread

