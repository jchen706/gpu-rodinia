#include "stdio.h"

int getFuncArgsNum1(const void* funcPtr) {
  int i = 0;

  printf("Successss\n");

  return 4;
}

int (*getFuncArgsNum)(const void*) = getFuncArgsNum1;

