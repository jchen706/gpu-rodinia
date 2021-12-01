include ../../common/make.config


CUDA_DIR := /usr/local/cuda
CUDA_LIB_DIR := /usr/local/cuda/lib64
CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

# CC := $(CUDA_DIR)/bin/nvcc
# INCLUDE := $(CUDA_DIR)/include

SRC = pathfinder.cu

EXE = pathfinder

release:
	$(CC) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_30 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

enum:
	$(CC) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$$(CUDA_LIB_DIR) 

debug:
	$(CC) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$$(CUDA_LIB_DIR) 

debugenum:
	$(CC) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean:
	rm -f pathfinder
