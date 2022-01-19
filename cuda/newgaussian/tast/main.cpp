#include <assert.h>
#include <cstring>
#include <memory>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <sys/time.h>
#include <time.h>
#include "struc.h"
#define NUM_BLOCK 1
#define WORKLIST_SIZE 8777216



void *gen_input(void** arg) {
  int **ret = new int *[6];

  uint32_t **p0 = new uint32_t *;
  uint32_t *vplist = *(uint32_t **)*(arg+1);
  *p0 = vplist;
  ret[0] = (int *)(p0);

  uint32_t **p1 = new uint32_t *;
  uint32_t *eplist = *(uint32_t **)*(arg+2);

  *p1 = eplist;
  ret[1] = (int *)(p1);

  uint32_t **p2 = new uint32_t *;
  uint32_t *update = *(uint32_t **)*(arg+3);
  *p2 = update;
  ret[2] = (int *)(p2);

  bool **p3 = new bool *;
  bool  *mask = *(bool **)*(arg+4);
  printf(" mask: %d \n", *mask);
  *p3 = mask;
  ret[3] = (int *)(p3);

  cudaGraph **p4 = new cudaGraph *;
  cudaGraph  *graph = *(cudaGraph **)*(arg+5);
  *p4 = graph;
  ret[4] = (int *)p4;

  int *p5 = new int;
  int bid = *(int*)*(arg+0);
  printf(" bid: %d \n", bid);
  *p5 = bid;
  ret[5] = (int *)p5;

  return (void *)ret;
}

void* checkFn(void ** arg) {
    return gen_input(arg);   
}

int main(int argc, char *argv[]) {
  cudaGraph graph;

  uint32_t *vplist = new uint32_t[8777216];
  uint32_t *eplist = new uint32_t[8777216];
  uint32_t *update = new uint32_t[8777216];
  bool *mask = new bool[8777216];
  for (int i = 0; i < 8777216; i++) {
    mask[i] = true;
  }

  pthread_t threads[NUM_BLOCK];

  // int bid, uint32_t *vplist, uint32_t *eplist, uint32_t *update,
  //               bool *mask, cudaGraph *graph

  int rc;
  void **inp = new void *[NUM_BLOCK];
  void* args;
  {
    for (long t = 9; t < 10; t++) {
      void* arg[] = {&t, &vplist, &eplist, &update, &mask, &graph};
      args = checkFn(arg);
      break;
    }
    void** ar = (void**)args;
    int bid = *(int*)*(ar+5);
    printf(" bid: %d \n", bid);




    /*
    // for (int i = 0; i < NUM; i++) {
    for (long t = 0; t < NUM_BLOCK; t++) {
      pthread_create(&threads[t], NULL, wrap, inp[t]);
    }

    for (long t = 0; t < NUM_BLOCK; t++)
      pthread_join(threads[t], NULL);
    //}
    */
  }
}