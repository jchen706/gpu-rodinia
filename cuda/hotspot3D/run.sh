clang++ 3D.cu -o hotspot --cuda-path=/usr/local/cuda-10.1 --cuda-gpu-arch=sm_61 -L/usr/local/cuda-10.1/lib64 -lcudart_static -ldl -lrt -pthread -save-temps -v

/data/jchen/open_source_template/build/compilation/kernelTranslator 3D-cuda-nvptx64-nvidia-cuda-sm_61.bc kernel.bc
/data/jchen/open_source_template/build/compilation/hostTranslator 3D-host-x86_64-unknown-linux-gnu.bc host.bc


# # llvm-dis kernel.bc
# # llvm-dis new_kernel.bc
# # clang++ -S -emit-llvm kernel_assist.cpp
# # llvm-as kernel_assist.ll
# llvm-dis gen_input.bc
# llvm-dis host.bc

llc --relocation-model=pic --filetype=obj  kernel.bc
llc --relocation-model=pic --filetype=obj  host.bc


g++ -g -Wall -L/data/jchen/open_source_template/build/runtime  -L/data/jchen/open_source_template/build/runtime/threadPool -o demo -fPIC -no-pie host.o kernel.o -lc -lx86Runtime -lthreadPool -lpthread