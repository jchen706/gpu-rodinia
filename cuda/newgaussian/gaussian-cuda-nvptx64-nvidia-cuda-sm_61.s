//
// Generated by LLVM NVPTX Back-End
//

.version 6.4
.target sm_61
.address_size 64

	// .weak	cudaMalloc
.extern .func  (.param .b32 func_retval0) vprintf
(
	.param .b64 vprintf_param_0,
	.param .b64 vprintf_param_1
)
;
.global .align 1 .b8 threadIdx[1];
.global .align 1 .b8 blockIdx[1];
.global .align 1 .b8 blockDim[1];
.global .align 1 .b8 _$_str[63] = {98, 108, 111, 99, 107, 73, 68, 120, 46, 120, 58, 32, 37, 100, 44, 32, 116, 104, 114, 101, 97, 100, 73, 100, 120, 46, 120, 58, 32, 37, 100, 44, 32, 83, 105, 122, 101, 58, 32, 37, 100, 44, 32, 116, 58, 37, 100, 44, 32, 83, 105, 122, 101, 45, 49, 45, 116, 58, 32, 37, 100, 10, 0};
.global .align 1 .b8 _$_str1[98] = {98, 108, 111, 99, 107, 73, 100, 120, 46, 120, 58, 32, 37, 100, 44, 32, 116, 104, 114, 101, 97, 100, 73, 100, 120, 46, 120, 58, 32, 37, 100, 44, 32, 98, 108, 111, 99, 107, 73, 100, 120, 46, 121, 58, 32, 37, 100, 44, 32, 116, 104, 114, 101, 97, 100, 73, 100, 120, 46, 121, 58, 32, 37, 100, 44, 32, 98, 108, 111, 99, 107, 68, 105, 109, 46, 120, 58, 32, 37, 100, 44, 32, 98, 108, 111, 99, 107, 68, 105, 109, 46, 121, 58, 32, 37, 100, 10, 0};

.weak .func  (.param .b32 func_retval0) cudaMalloc(
	.param .b64 cudaMalloc_param_0,
	.param .b64 cudaMalloc_param_1
)
{
	.local .align 8 .b8 	__local_depot0[16];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<2>;
	.reg .b64 	%rd<3>;

	mov.u64 	%SPL, __local_depot0;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u64 	%rd2, [cudaMalloc_param_1];
	ld.param.u64 	%rd1, [cudaMalloc_param_0];
	st.u64 	[%SP+0], %rd1;
	st.u64 	[%SP+8], %rd2;
	mov.u32 	%r1, 999;
	st.param.b32 	[func_retval0+0], %r1;
	ret;

}
	// .weak	cudaFuncGetAttributes
.weak .func  (.param .b32 func_retval0) cudaFuncGetAttributes(
	.param .b64 cudaFuncGetAttributes_param_0,
	.param .b64 cudaFuncGetAttributes_param_1
)
{
	.local .align 8 .b8 	__local_depot1[16];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<2>;
	.reg .b64 	%rd<3>;

	mov.u64 	%SPL, __local_depot1;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u64 	%rd2, [cudaFuncGetAttributes_param_1];
	ld.param.u64 	%rd1, [cudaFuncGetAttributes_param_0];
	st.u64 	[%SP+0], %rd1;
	st.u64 	[%SP+8], %rd2;
	mov.u32 	%r1, 999;
	st.param.b32 	[func_retval0+0], %r1;
	ret;

}
	// .weak	cudaDeviceGetAttribute
.weak .func  (.param .b32 func_retval0) cudaDeviceGetAttribute(
	.param .b64 cudaDeviceGetAttribute_param_0,
	.param .b32 cudaDeviceGetAttribute_param_1,
	.param .b32 cudaDeviceGetAttribute_param_2
)
{
	.local .align 8 .b8 	__local_depot2[16];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<4>;
	.reg .b64 	%rd<2>;

	mov.u64 	%SPL, __local_depot2;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r2, [cudaDeviceGetAttribute_param_2];
	ld.param.u32 	%r1, [cudaDeviceGetAttribute_param_1];
	ld.param.u64 	%rd1, [cudaDeviceGetAttribute_param_0];
	st.u64 	[%SP+0], %rd1;
	st.u32 	[%SP+8], %r1;
	st.u32 	[%SP+12], %r2;
	mov.u32 	%r3, 999;
	st.param.b32 	[func_retval0+0], %r3;
	ret;

}
	// .weak	cudaGetDevice
.weak .func  (.param .b32 func_retval0) cudaGetDevice(
	.param .b64 cudaGetDevice_param_0
)
{
	.local .align 8 .b8 	__local_depot3[8];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<2>;
	.reg .b64 	%rd<2>;

	mov.u64 	%SPL, __local_depot3;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u64 	%rd1, [cudaGetDevice_param_0];
	st.u64 	[%SP+0], %rd1;
	mov.u32 	%r1, 999;
	st.param.b32 	[func_retval0+0], %r1;
	ret;

}
	// .weak	cudaOccupancyMaxActiveBlocksPerMultiprocessor
.weak .func  (.param .b32 func_retval0) cudaOccupancyMaxActiveBlocksPerMultiprocessor(
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_0,
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_1,
	.param .b32 cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_2,
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_3
)
{
	.local .align 8 .b8 	__local_depot4[32];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<3>;
	.reg .b64 	%rd<4>;

	mov.u64 	%SPL, __local_depot4;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u64 	%rd3, [cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_3];
	ld.param.u32 	%r1, [cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_2];
	ld.param.u64 	%rd2, [cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_1];
	ld.param.u64 	%rd1, [cudaOccupancyMaxActiveBlocksPerMultiprocessor_param_0];
	st.u64 	[%SP+0], %rd1;
	st.u64 	[%SP+8], %rd2;
	st.u32 	[%SP+16], %r1;
	st.u64 	[%SP+24], %rd3;
	mov.u32 	%r2, 999;
	st.param.b32 	[func_retval0+0], %r2;
	ret;

}
	// .weak	cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags
.weak .func  (.param .b32 func_retval0) cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_0,
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_1,
	.param .b32 cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_2,
	.param .b64 cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_3,
	.param .b32 cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_4
)
{
	.local .align 8 .b8 	__local_depot5[40];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .b32 	%r<4>;
	.reg .b64 	%rd<4>;

	mov.u64 	%SPL, __local_depot5;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r2, [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_4];
	ld.param.u64 	%rd3, [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_3];
	ld.param.u32 	%r1, [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_2];
	ld.param.u64 	%rd2, [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_1];
	ld.param.u64 	%rd1, [cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags_param_0];
	st.u64 	[%SP+0], %rd1;
	st.u64 	[%SP+8], %rd2;
	st.u32 	[%SP+16], %r1;
	st.u64 	[%SP+24], %rd3;
	st.u32 	[%SP+32], %r2;
	mov.u32 	%r3, 999;
	st.param.b32 	[func_retval0+0], %r3;
	ret;

}
	// .globl	_Z4Fan1PfS_ii
.visible .entry _Z4Fan1PfS_ii(
	.param .u64 _Z4Fan1PfS_ii_param_0,
	.param .u64 _Z4Fan1PfS_ii_param_1,
	.param .u32 _Z4Fan1PfS_ii_param_2,
	.param .u32 _Z4Fan1PfS_ii_param_3
)
{
	.local .align 8 .b8 	__local_depot6[48];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .pred 	%p<3>;
	.reg .f32 	%f<4>;
	.reg .b32 	%r<40>;
	.reg .b64 	%rd<25>;

	mov.u64 	%SPL, __local_depot6;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r2, [_Z4Fan1PfS_ii_param_3];
	ld.param.u32 	%r1, [_Z4Fan1PfS_ii_param_2];
	ld.param.u64 	%rd2, [_Z4Fan1PfS_ii_param_1];
	ld.param.u64 	%rd1, [_Z4Fan1PfS_ii_param_0];
	cvta.to.global.u64 	%rd3, %rd2;
	cvta.global.u64 	%rd4, %rd3;
	cvta.to.global.u64 	%rd5, %rd1;
	cvta.global.u64 	%rd6, %rd5;
	st.u64 	[%SP+0], %rd6;
	st.u64 	[%SP+8], %rd4;
	st.u32 	[%SP+16], %r1;
	st.u32 	[%SP+20], %r2;
	mov.u32 	%r3, %tid.x;
	mov.u32 	%r4, %ctaid.x;
	mov.u32 	%r5, %ntid.x;
	mul.lo.s32 	%r6, %r4, %r5;
	add.s32 	%r7, %r3, %r6;
	ld.u32 	%r8, [%SP+16];
	ld.u32 	%r9, [%SP+20];
	not.b32 	%r10, %r9;
	add.s32 	%r11, %r10, %r8;
	setp.lt.u32 	%p1, %r7, %r11;
	@%p1 bra 	LBB6_2;
	bra.uni 	LBB6_1;
LBB6_1:
	mov.u32 	%r12, %ctaid.x;
	mov.u32 	%r13, %tid.x;
	ld.u32 	%r14, [%SP+16];
	ld.u32 	%r15, [%SP+20];
	not.b32 	%r16, %r15;
	add.s32 	%r17, %r16, %r14;
	st.u32 	[%SP+24], %r12;
	add.u64 	%rd7, %SP, 24;
	or.b64  	%rd8, %rd7, 4;
	st.u32 	[%rd8], %r13;
	st.u32 	[%SP+32], %r14;
	st.u32 	[%SP+36], %r15;
	st.u32 	[%SP+40], %r17;
	mov.u64 	%rd9, _$_str;
	cvta.global.u64 	%rd10, %rd9;
	{ // callseq 0, 0
	.reg .b32 temp_param_reg;
	.param .b64 param0;
	st.param.b64 	[param0+0], %rd10;
	.param .b64 param1;
	st.param.b64 	[param1+0], %rd7;
	.param .b32 retval0;
	call.uni (retval0), 
	vprintf, 
	(
	param0, 
	param1
	);
	ld.param.b32 	%r18, [retval0+0];
	} // callseq 0
	bra.uni 	LBB6_2;
LBB6_2:
	mov.u32 	%r20, %tid.x;
	mov.u32 	%r21, %ctaid.x;
	mov.u32 	%r22, %ntid.x;
	mul.lo.s32 	%r23, %r21, %r22;
	add.s32 	%r24, %r20, %r23;
	ld.u32 	%r25, [%SP+16];
	ld.u32 	%r26, [%SP+20];
	not.b32 	%r27, %r26;
	add.s32 	%r28, %r27, %r25;
	setp.lt.u32 	%p2, %r24, %r28;
	@%p2 bra 	LBB6_4;
	bra.uni 	LBB6_3;
LBB6_3:
	bra.uni 	LBB6_5;
LBB6_4:
	ld.u64 	%rd11, [%SP+8];
	ld.u32 	%r29, [%SP+16];
	mov.u32 	%r30, %ntid.x;
	mov.u32 	%r31, %ctaid.x;
	mul.lo.s32 	%r32, %r30, %r31;
	mov.u32 	%r33, %tid.x;
	add.s32 	%r34, %r32, %r33;
	ld.u32 	%r35, [%SP+20];
	add.s32 	%r36, %r34, %r35;
	add.s32 	%r37, %r36, 1;
	mul.lo.s32 	%r38, %r29, %r37;
	cvt.u64.u32 	%rd12, %r38;
	shl.b64 	%rd13, %rd12, 2;
	add.s64 	%rd14, %rd11, %rd13;
	cvt.s64.s32 	%rd15, %r35;
	shl.b64 	%rd16, %rd15, 2;
	add.s64 	%rd17, %rd14, %rd16;
	ld.f32 	%f1, [%rd17];
	mul.lo.s32 	%r39, %r29, %r35;
	cvt.s64.s32 	%rd18, %r39;
	shl.b64 	%rd19, %rd18, 2;
	add.s64 	%rd20, %rd11, %rd19;
	add.s64 	%rd21, %rd20, %rd16;
	ld.f32 	%f2, [%rd21];
	div.rn.f32 	%f3, %f1, %f2;
	ld.u64 	%rd22, [%SP+0];
	add.s64 	%rd23, %rd22, %rd13;
	add.s64 	%rd24, %rd23, %rd16;
	st.f32 	[%rd24], %f3;
	bra.uni 	LBB6_5;
LBB6_5:
	ret;

}
	// .globl	_Z4Fan2PfS_S_iii
.visible .entry _Z4Fan2PfS_S_iii(
	.param .u64 _Z4Fan2PfS_S_iii_param_0,
	.param .u64 _Z4Fan2PfS_S_iii_param_1,
	.param .u64 _Z4Fan2PfS_S_iii_param_2,
	.param .u32 _Z4Fan2PfS_S_iii_param_3,
	.param .u32 _Z4Fan2PfS_S_iii_param_4,
	.param .u32 _Z4Fan2PfS_S_iii_param_5
)
{
	.local .align 8 .b8 	__local_depot7[72];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .pred 	%p<4>;
	.reg .f32 	%f<11>;
	.reg .b32 	%r<55>;
	.reg .b64 	%rd<36>;

	mov.u64 	%SPL, __local_depot7;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r3, [_Z4Fan2PfS_S_iii_param_5];
	ld.param.u32 	%r2, [_Z4Fan2PfS_S_iii_param_4];
	ld.param.u32 	%r1, [_Z4Fan2PfS_S_iii_param_3];
	ld.param.u64 	%rd3, [_Z4Fan2PfS_S_iii_param_2];
	ld.param.u64 	%rd2, [_Z4Fan2PfS_S_iii_param_1];
	ld.param.u64 	%rd1, [_Z4Fan2PfS_S_iii_param_0];
	cvta.to.global.u64 	%rd4, %rd3;
	cvta.global.u64 	%rd5, %rd4;
	cvta.to.global.u64 	%rd6, %rd2;
	cvta.global.u64 	%rd7, %rd6;
	cvta.to.global.u64 	%rd8, %rd1;
	cvta.global.u64 	%rd9, %rd8;
	st.u64 	[%SP+0], %rd9;
	st.u64 	[%SP+8], %rd7;
	st.u64 	[%SP+16], %rd5;
	st.u32 	[%SP+24], %r1;
	st.u32 	[%SP+28], %r2;
	st.u32 	[%SP+32], %r3;
	mov.u32 	%r4, %tid.x;
	mov.u32 	%r5, %ctaid.x;
	mov.u32 	%r6, %ntid.x;
	mul.lo.s32 	%r7, %r5, %r6;
	add.s32 	%r8, %r4, %r7;
	ld.u32 	%r9, [%SP+24];
	ld.u32 	%r10, [%SP+32];
	not.b32 	%r11, %r10;
	add.s32 	%r12, %r11, %r9;
	setp.lt.u32 	%p1, %r8, %r12;
	@%p1 bra 	LBB7_2;
	bra.uni 	LBB7_1;
LBB7_1:
	bra.uni 	LBB7_6;
LBB7_2:
	mov.u32 	%r13, %tid.y;
	mov.u32 	%r14, %ctaid.y;
	mov.u32 	%r15, %ntid.y;
	mul.lo.s32 	%r16, %r14, %r15;
	add.s32 	%r17, %r13, %r16;
	ld.u32 	%r18, [%SP+24];
	ld.u32 	%r19, [%SP+32];
	sub.s32 	%r20, %r18, %r19;
	setp.lt.u32 	%p2, %r17, %r20;
	@%p2 bra 	LBB7_4;
	bra.uni 	LBB7_3;
LBB7_3:
	bra.uni 	LBB7_6;
LBB7_4:
	mov.u32 	%r21, %ctaid.x;
	mov.u32 	%r22, %ntid.x;
	mul.lo.s32 	%r23, %r21, %r22;
	mov.u32 	%r24, %tid.x;
	add.s32 	%r25, %r23, %r24;
	st.u32 	[%SP+36], %r25;
	mov.u32 	%r26, %ctaid.y;
	mov.u32 	%r27, %ntid.y;
	mul.lo.s32 	%r28, %r26, %r27;
	mov.u32 	%r29, %tid.y;
	add.s32 	%r30, %r28, %r29;
	st.u32 	[%SP+40], %r30;
	st.u32 	[%SP+48], %r21;
	add.u64 	%rd10, %SP, 48;
	or.b64  	%rd11, %rd10, 4;
	st.u32 	[%rd11], %r24;
	st.u32 	[%SP+56], %r26;
	st.u32 	[%SP+60], %r29;
	st.u32 	[%SP+64], %r22;
	st.u32 	[%SP+68], %r27;
	mov.u64 	%rd12, _$_str1;
	cvta.global.u64 	%rd13, %rd12;
	{ // callseq 1, 0
	.reg .b32 temp_param_reg;
	.param .b64 param0;
	st.param.b64 	[param0+0], %rd13;
	.param .b64 param1;
	st.param.b64 	[param1+0], %rd10;
	.param .b32 retval0;
	call.uni (retval0), 
	vprintf, 
	(
	param0, 
	param1
	);
	ld.param.b32 	%r31, [retval0+0];
	} // callseq 1
	ld.u64 	%rd14, [%SP+0];
	ld.u32 	%r33, [%SP+24];
	ld.u32 	%r34, [%SP+36];
	ld.u32 	%r35, [%SP+32];
	add.s32 	%r36, %r34, %r35;
	add.s32 	%r37, %r36, 1;
	mul.lo.s32 	%r38, %r33, %r37;
	add.s32 	%r39, %r38, %r35;
	cvt.s64.s32 	%rd15, %r39;
	shl.b64 	%rd16, %rd15, 2;
	add.s64 	%rd17, %rd14, %rd16;
	ld.f32 	%f1, [%rd17];
	ld.u64 	%rd18, [%SP+8];
	mul.lo.s32 	%r40, %r33, %r35;
	ld.u32 	%r41, [%SP+40];
	add.s32 	%r42, %r41, %r35;
	add.s32 	%r43, %r40, %r42;
	cvt.s64.s32 	%rd19, %r43;
	shl.b64 	%rd20, %rd19, 2;
	add.s64 	%rd21, %rd18, %rd20;
	ld.f32 	%f2, [%rd21];
	add.s32 	%r44, %r38, %r42;
	cvt.s64.s32 	%rd22, %r44;
	shl.b64 	%rd23, %rd22, 2;
	add.s64 	%rd24, %rd18, %rd23;
	ld.f32 	%f3, [%rd24];
	neg.f32 	%f4, %f1;
	fma.rn.f32 	%f5, %f4, %f2, %f3;
	st.f32 	[%rd24], %f5;
	ld.u32 	%r45, [%SP+40];
	setp.ne.s32 	%p3, %r45, 0;
	@%p3 bra 	LBB7_6;
	bra.uni 	LBB7_5;
LBB7_5:
	ld.u64 	%rd25, [%SP+0];
	ld.u32 	%r46, [%SP+24];
	ld.u32 	%r47, [%SP+36];
	ld.u32 	%r48, [%SP+32];
	add.s32 	%r49, %r47, %r48;
	add.s32 	%r50, %r49, 1;
	mul.lo.s32 	%r51, %r46, %r50;
	ld.u32 	%r52, [%SP+40];
	add.s32 	%r53, %r52, %r48;
	add.s32 	%r54, %r51, %r53;
	cvt.s64.s32 	%rd26, %r54;
	shl.b64 	%rd27, %rd26, 2;
	add.s64 	%rd28, %rd25, %rd27;
	ld.f32 	%f6, [%rd28];
	ld.u64 	%rd29, [%SP+16];
	cvt.s64.s32 	%rd30, %r48;
	shl.b64 	%rd31, %rd30, 2;
	add.s64 	%rd32, %rd29, %rd31;
	ld.f32 	%f7, [%rd32];
	cvt.s64.s32 	%rd33, %r50;
	shl.b64 	%rd34, %rd33, 2;
	add.s64 	%rd35, %rd29, %rd34;
	ld.f32 	%f8, [%rd35];
	neg.f32 	%f9, %f6;
	fma.rn.f32 	%f10, %f9, %f7, %f8;
	st.f32 	[%rd35], %f10;
	bra.uni 	LBB7_6;
LBB7_6:
	ret;

}
