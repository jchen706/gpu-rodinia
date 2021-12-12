#ifndef KERNEL_2
#define KERNEL_2
#include "../common.h"

__global__ void 
findK(	long height,
		knode *knodesD,
		long knodes_elem,
		record *recordsD,

		long *currKnodeD,
		long *offsetD,
		int *keysD, 
		record *ansD);

#endif