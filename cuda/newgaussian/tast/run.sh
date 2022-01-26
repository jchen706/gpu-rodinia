# #!/bin/bash

clang++ -S -emit-llvm main.cpp

llvm-as main.ll

llc --relocation-model=pic --filetype=obj  main.bc

clang++ main.cpp -o main
