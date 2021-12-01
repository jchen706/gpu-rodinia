include ../../common/make.config

CUDA_DIR := /usr/local/cuda
CUDA_LIB_DIR := /usr/local/cuda/lib64
CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include
# /../cuda-on-everywhere/runtimes/pool/development/api/cudart/build/

SRC = bfs.cu

EXE = bfs.out

release: $(SRC)
	$(CC) $(SRC) -o $(EXE) -I$(INCLUDE) -I../util -L$(CUDA_LIB_DIR) -DTIMING

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_30 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

enum: $(SRC)
	$(CC) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt
