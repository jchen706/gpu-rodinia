#ifndef KERNEL_1
#define KERNEL_1
#include "../common.h"

__global__ void 
findRangeK(long height,

			knode *knodesD,
			long knodes_elem,

			long *currKnodeD,
			long *offsetD,
			long *lastKnodeD,
			long *offset_2D,
			int *startD,
			int *endD,
			int *RecstartD, 
			int *ReclenD);

  #endif