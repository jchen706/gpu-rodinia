/**
 * 
 * Generate a 
 * 
 *
 * 
 */
#include "stdio.h"
#include <stdlib.h>
#include <string.h>

void** args;
float* tf;

void** args2;

// https://stackoverflow.com/questions/18812753/llvm-malloc-and-memory-referencing

void hostTest(void** arg) {
  args = (void**)malloc(1*sizeof(void*));
  args2 = (void**)malloc(1*sizeof(void*));
  args[0] = *(arg+0);
  printf("host test Arg p: %p \n",(void*) &args);
  printf("host test Arg p: %p \n",(void*) &args[0]);
  float ** t = (float**)*(arg+0);
  printf("host test t Arg p: %p \n",(void*) &t);
  float * r = *t;
  tf = *(float**)*(arg+0);

  *(args2+0) = (*(void**) *(arg+0));// void* -> float *
  int ix = (*(int*)*(arg+1));//  void* -> (int)
    (int*)malloc(1*sizeof(int));
  printf(" %d, \n", ix);
  exit(1);
  // *(args2+1) = ix;
  // void arg** 
  // types []
  // size 4
  /*
  
    for loop to 4
      // pointer -> float *
        // x = (*(void**) *(arg+0)) -> float *
        // args[index] = x;
      // const -> int
        // (type*)(void*)*(arg+1)

  */

  // args2 = void ** -> args2+ 1  (void* ) -> int
  // printf("host test 222 arg2: int arg @@@@@@@@@@ f: %d \n", (int)*(ix));
  printf("host test 222 arg2: int arg @@@@@@@@@@ f: %d \n",  *(int*)(*(args2+1)));

  // ** int -> *int ,  int


  printf("host test r Arg p: %p \n", (void*) &r);
  printf("host test t Arg p: %p \n", (void*) &(*t));
  printf("host test arg: float arg f: %f \n", *r);
  printf("host test arg: float arg $$$$$  f: %f \n", *tf);
  printf("host test r Arg p: %p \n", (void*) &tf);
  float * s = tf+1;
  printf("host test 222 arg: float arg f: %f \n", *s);



  printf("host test 222 arg2: float arg @@@@@@@@@@ f: %f \n", *(float*)(args2[0]));
  // printf("host test 222 arg2: int arg @@@@@@@@@@ f: %d \n", *(int*)(args2[0]));





}


void host(float* arg, int Size) {
  
  float** c = &arg;
  int* s = &Size;
  void* k[2];
  k[0] = (void* )c;
  k[1] = s;
  hostTest(k);
  printf(" host: float arg: %p \n", (void*) &arg);
  printf(" host: float arg: %p \n", (void*) arg);
  printf(" host: float arg f: %f \n", *arg);


}


void testArg() {
  printf("test Arg p: %p \n", (void*)args);
  printf("test Arg p: %p \n",(void*) &args);
  printf("test Arg p: %p \n",(void*) &args[0]);
  float ** t = (float**)*(args+0);
  printf("test t Arg p: %p \n",(void*) &t);
  float * r = *t;
  printf("test r Arg p: %p \n", (void*) &r);
  printf("test t Arg p: %p \n", (void*) &(*t));
  printf(" test arg: float $$$$$ arg f: %f \n", *r);
  printf("host test arg: float arg f: %f \n", *tf);
  printf("host test r Arg p: %p \n", (void*) &tf);
  float * s = tf+1;
  printf("host test 222 arg: float arg f: %f \n", *s);
  printf("host test 222 arg2: float @@@@@ arg f: %f \n", *(float*)(args2[0]));
  printf("host test 222 arg2: int arg @@@@@@@@@@ f: %d \n",  *(int*)(*(args2+1)));

  // printf("host test 222 arg2: int arg @@@@@@@@@@ f: %d \n", *(int *)(args2[1]));



}



int main(int argc, char *argv[])
{
  float * m;
  void ** x;
  x = (void **) &m;
  *x = (void*)malloc( 4 *sizeof(float));
  int Size = 2;
  m[0] = 1;
  m[1] = 2;
  m[2] = 4;
  m[3] = 5;
  host(m, Size);
  testArg();
}
