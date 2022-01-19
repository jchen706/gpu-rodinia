	.text
	.file	"backprop_cuda.cu"
	.globl	_Z22bpnn_layerforward_CUDAPfS_S_S_ii # -- Begin function _Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.p2align	4, 0x90
	.type	_Z22bpnn_layerforward_CUDAPfS_S_S_ii,@function
_Z22bpnn_layerforward_CUDAPfS_S_S_ii:   # @_Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	__cudaPopCallConfiguration
	movabsq	$_Z22bpnn_layerforward_CUDAPfS_S_S_ii, %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movl	-48(%rbp), %r8d
	movl	%r8d, -96(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %r8d
	movq	-72(%rbp), %r10
	movq	%r10, -120(%rbp)
	movl	-64(%rbp), %r9d
	movl	%r9d, -112(%rbp)
	movq	-120(%rbp), %r10
	movl	-112(%rbp), %r9d
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r10, %rcx
	movl	%r9d, %r8d
	leaq	-176(%rbp), %r9
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z22bpnn_layerforward_CUDAPfS_S_S_ii, .Lfunc_end0-_Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.cfi_endproc
                                        # -- End function
	.globl	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ # -- Begin function _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.p2align	4, 0x90
	.type	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_,@function
_Z24bpnn_adjust_weights_cudaPfiS_iS_S_: # @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-72(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	callq	__cudaPopCallConfiguration
	movabsq	$_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, %rcx
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rdi, -120(%rbp)
	movl	-64(%rbp), %r10d
	movl	%r10d, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %r10d
	movq	-88(%rbp), %r8
	movq	%r8, -136(%rbp)
	movl	-80(%rbp), %r11d
	movl	%r11d, -128(%rbp)
	movq	-136(%rbp), %r8
	movl	-128(%rbp), %r11d
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	movq	%r8, %rcx
	movl	%r11d, %r8d
	leaq	-192(%rbp), %r9
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, .Lfunc_end1-_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z7gettimev
.LCPI2_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	_Z7gettimev
	.p2align	4, 0x90
	.type	_Z7gettimev,@function
_Z7gettimev:                            # @_Z7gettimev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-16(%rbp), %rdi
	callq	gettimeofday
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdq	-16(%rbp), %xmm1
	cvtsi2sdq	-8(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z7gettimev, .Lfunc_end2-_Z7gettimev
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	setup
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bpnn_train_cuda
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	bpnn_train_cuda
	.p2align	4, 0x90
	.type	bpnn_train_cuda,@function
bpnn_train_cuda:                        # @bpnn_train_cuda
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -48(%rbp)
	movl	-28(%rbp), %eax
	cltd
	movl	$16, %ecx
	idivl	%ecx
	movl	%eax, num_blocks
	movl	num_blocks, %eax
	leaq	-144(%rbp), %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	_ZN4dim3C2Ejjj
	leaq	-160(%rbp), %rdi
	movl	$16, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	$1, %ecx
	callq	_ZN4dim3C2Ejjj
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, -120(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -128(%rbp)
	movl	num_blocks, %ecx
	shll	$4, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -80(%rbp)
	movl	$0, -164(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-164(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB4_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -168(%rbp)
.LBB4_3:                                # %for.cond13
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-168(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB4_6
# %bb.4:                                # %for.body15
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-168(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-120(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-168(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-128(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-48(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -48(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc27
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_1
.LBB4_8:                                # %for.end29
	leaq	-64(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	cudaMalloc
	leaq	-72(%rbp), %rdx
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	leaq	-56(%rbp), %rdx
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r8d
	addl	$1, %r8d
	imull	%r8d, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	leaq	-88(%rbp), %rdx
	movl	num_blocks, %ecx
	shll	$4, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movabsq	$.L.str, %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r8d
	addl	$1, %r8d
	imull	%r8d, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movl	-136(%rbp), %ecx
	movl	%ecx, -176(%rbp)
	movq	-160(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -192(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -216(%rbp)
	movl	-176(%rbp), %ecx
	movl	%ecx, -208(%rbp)
	movq	-216(%rbp), %rdi
	movl	-208(%rbp), %esi
	movq	-200(%rbp), %r9
	movq	%r9, -232(%rbp)
	movl	-192(%rbp), %ecx
	movl	%ecx, -224(%rbp)
	movq	-232(%rbp), %r9
	movl	-224(%rbp), %ecx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	-360(%rbp), %r9         # 8-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB4_10
# %bb.9:                                # %kcall.configok
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	_Z22bpnn_layerforward_CUDAPfS_S_S_ii
.LBB4_10:                               # %kcall.end
	callq	cudaThreadSynchronize
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	cudaGetLastError
	movl	%eax, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.LBB4_12
# %bb.11:                               # %if.then
	movl	-236(%rbp), %edi
	callq	cudaGetErrorString
	movabsq	$.L.str.1, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	exit
.LBB4_12:                               # %if.end
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	num_blocks, %edx
	shll	$4, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	callq	cudaMemcpy
	movl	$1, -240(%rbp)
.LBB4_13:                               # %for.cond71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	movl	-240(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB4_20
# %bb.14:                               # %for.body73
                                        #   in Loop: Header=BB4_13 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	movl	$0, -244(%rbp)
.LBB4_15:                               # %for.cond75
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-244(%rbp), %eax
	cmpl	num_blocks, %eax
	jae	.LBB4_18
# %bb.16:                               # %for.body77
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	-80(%rbp), %rax
	movl	-244(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	-240(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-108(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
# %bb.17:                               # %for.inc83
                                        #   in Loop: Header=BB4_15 Depth=2
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB4_15
.LBB4_18:                               # %for.end85
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movslq	-240(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-108(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %edx
	xorl	$2147483648, %edx       # imm = 0x80000000
	movd	%edx, %xmm0
	callq	_ZSt3expf
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-240(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.19:                               # %for.inc98
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB4_13
.LBB4_20:                               # %for.end100
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	bpnn_layerforward
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-36(%rbp), %ecx
	leaq	-40(%rbp), %r8
	callq	bpnn_output_error
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-32(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %r8
	movq	-8(%rbp), %rax
	movq	24(%rax), %r9
	leaq	-44(%rbp), %rax
	movq	%rax, (%rsp)
	callq	bpnn_hidden_error
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-36(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %r8
	movq	-8(%rbp), %rax
	movq	88(%rax), %r9
	callq	bpnn_adjust_weights
	leaq	-96(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	cudaMalloc
	leaq	-104(%rbp), %rdx
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r10d
	addl	$1, %r10d
	imull	%r10d, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-96(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-104(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r10d
	addl	$1, %r10d
	imull	%r10d, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r10d
	addl	$1, %r10d
	imull	%r10d, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movl	-136(%rbp), %ecx
	movl	%ecx, -248(%rbp)
	movq	-160(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -264(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	movl	-248(%rbp), %ecx
	movl	%ecx, -280(%rbp)
	movq	-288(%rbp), %rdi
	movl	-280(%rbp), %esi
	movq	-272(%rbp), %r8
	movq	%r8, -304(%rbp)
	movl	-264(%rbp), %ecx
	movl	%ecx, -296(%rbp)
	movq	-304(%rbp), %r8
	movl	-296(%rbp), %ecx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-448(%rbp), %r8         # 8-byte Reload
	movq	-448(%rbp), %r9         # 8-byte Reload
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB4_22
# %bb.21:                               # %kcall.configok140
	movq	-96(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-56(%rbp), %r8
	movq	-104(%rbp), %r9
	callq	_Z24bpnn_adjust_weights_cudaPfiS_iS_S_
.LBB4_22:                               # %kcall.end141
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	callq	cudaMemcpy
	movq	-120(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	-32(%rbp), %r8d
	addl	$1, %r8d
	imull	%r8d, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-72(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-104(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -496(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-96(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -500(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	callq	free
	movq	-120(%rbp), %rdx
	movq	%rdx, %rdi
	callq	free
	movq	-128(%rbp), %rdx
	movq	%rdx, %rdi
	callq	free
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	bpnn_train_cuda, .Lfunc_end4-bpnn_train_cuda
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4dim3C2Ejjj,"axG",@progbits,_ZN4dim3C2Ejjj,comdat
	.weak	_ZN4dim3C2Ejjj          # -- Begin function _ZN4dim3C2Ejjj
	.p2align	4, 0x90
	.type	_ZN4dim3C2Ejjj,@function
_ZN4dim3C2Ejjj:                         # @_ZN4dim3C2Ejjj
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movl	-20(%rbp), %ecx
	movl	%ecx, 8(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end5-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3expf,"axG",@progbits,_ZSt3expf,comdat
	.weak	_ZSt3expf               # -- Begin function _ZSt3expf
	.p2align	4, 0x90
	.type	_ZSt3expf,@function
_ZSt3expf:                              # @_ZSt3expf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	callq	expf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZSt3expf, .Lfunc_end6-_ZSt3expf
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function __cuda_register_globals
	.type	__cuda_register_globals,@function
__cuda_register_globals:                # @__cuda_register_globals
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movabsq	$_Z22bpnn_layerforward_CUDAPfS_S_S_ii, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	movabsq	$.L__unnamed_1, %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	__cudaRegisterFunction
	movabsq	$_Z24bpnn_adjust_weights_cudaPfiS_iS_S_, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rsi
	movabsq	$.L__unnamed_2, %rcx
	movq	%rcx, %rdx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	__cudaRegisterFunction
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	__cuda_register_globals, .Lfunc_end7-__cuda_register_globals
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_module_ctor
	.type	__cuda_module_ctor,@function
__cuda_module_ctor:                     # @__cuda_module_ctor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movabsq	$__cuda_fatbin_wrapper, %rax
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	__cudaRegisterFatBinary
	movq	%rax, __cuda_gpubin_handle
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	__cuda_register_globals
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	__cudaRegisterFatBinaryEnd
	movabsq	$__cuda_module_dtor, %rdi
	callq	atexit
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	__cuda_module_ctor, .Lfunc_end8-__cuda_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_module_dtor
	.type	__cuda_module_dtor,@function
__cuda_module_dtor:                     # @__cuda_module_dtor
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__cuda_gpubin_handle, %rax
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	%rax, %rdi
	callq	__cudaUnregisterFatBinary
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	__cuda_module_dtor, .Lfunc_end9-__cuda_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	num_threads,@object     # @num_threads
	.bss
	.globl	num_threads
	.p2align	2
num_threads:
	.long	0                       # 0x0
	.size	num_threads, 4

	.type	num_blocks,@object      # @num_blocks
	.globl	num_blocks
	.p2align	2
num_blocks:
	.long	0                       # 0x0
	.size	num_blocks, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Performing GPU computation\n"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"bpnn kernel error: %s\n"
	.size	.L.str.1, 23

	.type	.L__unnamed_1,@object   # @0
.L__unnamed_1:
	.asciz	"_Z22bpnn_layerforward_CUDAPfS_S_S_ii"
	.size	.L__unnamed_1, 37

	.type	.L__unnamed_2,@object   # @1
.L__unnamed_2:
	.asciz	"_Z24bpnn_adjust_weights_cudaPfiS_iS_S_"
	.size	.L__unnamed_2, 39

	.type	.L__unnamed_3,@object   # @2
	.section	.nv_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_3:
	.asciz	"P\355U\272\001\000\020\000\370h\000\000\000\000\000\000\002\000\001\001@\000\000\000xY\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\001\000=\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000e\000\000\000\000\000\000\000\000\000\000\000\320X\000\000\000\000\000\000\020U\000\000\000\000\000\000=\005=\000@\0008\000\003\000@\000\017\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.info._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.shared._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.global\000.nv.global.init\000.nv.constant2._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.constant0._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.text._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.nv.info._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.nv.shared._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.nv.constant0._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000_Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.text._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.info._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.shared._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000.nv.global\000blockIdx\000threadIdx\000.nv.global.init\000$str\000.nv.constant2._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000__ocg_const\000.nv.constant0._Z24bpnn_adjust_weights_cudaPfiS_iS_S_\000_param\000_Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.text._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.nv.info._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000.nv.shared._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000$___ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node__186\000$___ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix__188\000.nv.constant0._Z22bpnn_layerforward_CUDAPfS_S_S_ii\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000Y\000\000\000\003\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\000\000\000\003\000\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\363\000\000\000\001\000\r\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\374\000\000\000\001\000\r\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\006\001\000\000\003\000\f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\001\000\000\001\000\f\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\000\033\001\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\\\001\000\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\275\001\000\000\003\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\002\000\000\003\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\277\002\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\n\000\000\000\000\000\000\000\000\000\200\035\000\000\000\000\000\000\230\001\000\000\022\020\013\000\000\000\000\000\000\000\000\000\200,\000\000\000\000\000\000\004/\b\000\r\000\000\000\020\000\000\000\004#\b\000\r\000\000\000\000\000\000\000\004\022\b\000\r\000\000\000X\000\000\000\004\021\b\000\r\000\000\000X\000\000\000\004/\b\000\f\000\000\000\020\000\000\000\004#\b\000\f\000\000\000\000\000\000\000\004\022\b\000\f\000\000\000H\000\000\000\004\021\b\000\f\000\000\000H\000\000\000\0010\000\000\001*\000\000\004\n\b\000\b\000\000\000@\0010\000\003\0310\000\004\027\f\000\000\000\000\000\005\000(\000\000\360!\000\004\027\f\000\000\000\000\000\004\000 \000\000\360!\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360\021\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360\021\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\035\004\000X\005\000\000\004\034\004\000p\035\000\000\004\036\004\0000\000\000\000\0010\000\000\001*\000\000\004\n\b\000\013\000\000\000@\001(\000\003\031(\000\004\027\f\000\000\000\000\000\005\000$\000\000\360\021\000\004\027\f\000\000\000\000\000\004\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\035\004\000H\005\000\000\004\034\004\0008,\000\000\004\036\004\000@\000\000\000333333\323?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\207\373\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\004\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\007\000\200\007\230\\\004\000G\000\200\007\230\\\002\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\000\000\027\004\200\007\230L\002\003'\000\000\200\020\\\000\004\007\000\000\b\020\\\357\037\340!\003\274\177\000\004\360\207\026\000\000\000\001\004\004\007\000\000\000\225\357\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000W\000\200\007\230\\\005\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\026\000\000\000\001\006\006\007\000\000\000\225\357\t\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000w\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340!\003\274\177\000\003\360\207\025\000\000\000\001\003\003\007\000\000\000\224\357\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\025\000\000\000\001\006\006\007\000\000\000\225\357\n\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\207\024\000\000\000\001\006\006\007\000\000\000\224\357\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\f\360\007\024\000\000\000\001\f\f\007\000\000\000\225\357\013\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\f\000\267\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\005\005G\000\000\004G\\\357\037\340\375\003\274\177\000\004\005G\000\000\004G\\\005\005G\000\000\004G\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\t\207\000\000\004G\\\b\t\207\000\000\004G\\\t\t\207\000\000\004G\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\f\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\017\002\367\017\000\200\020\\\357\037\340\375\003\274\177\000\007\000\367\017\000\b\020\\\017\000\367\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\016\017\367\017\000\200\327[\017\017\367\017\300\003\330[\016\000\347\000\200\007\230\\\357\037\340=\003\274\177\000\017\000\367\000\200\007\230\\\f\016\007\000\000\000\260\240\r\002\207\000\000\000\020\034\357\037\340\375\003\274\177\000\007\000\367\017\000\b\020\\\r\000\327\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\f\r\367\017\000\200\327[\r\r\367\017\300\003\330[\f\000\307\000\200\007\230\\\357\037\340=\003\274\177\000\r\000\327\000\200\007\230\\\006\f\007\000\000\000\220\240\007\002\007\001\000\000\020\034\357\037\340\375\003\274\177\000\f\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\f\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\006\330[\006\000g\000\200\007\230\\\357\037\340=\003\274\177\000\007\000w\000\200\007\230\\\n\006\007\000\000\000\260\240\007\002\207\001\000\000\020\034\357\037\340\375\003\274\177\000\n\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\005\330[\006\000g\000\200\007\230\\\357\037\340=\003\274\177\000\007\000w\000\200\007\230\\\003\006\007\000\000\000\220\240\007\002\007\002\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340=\003\274\177\000\007\000w\000\200\007\230\\\b\006\007\000\000\000\260\240\007\002\207\002\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340=\003<d\000\007\000w\000\200\007\230\\\004\006\007\000\000\000\260\240\003\000g\002\000\000\310\360\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\002\007\003\000\000\020\034\006\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340!\003\274\177\000\003\004\007\000\000\000\220\240\003\000\027\002\000\000\310\360\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\002G\003\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\017\031\340\375\003\274\177\000\003\000'\002\000\000\310\360\003\0007\000\200\007\230\\\005\002\207\003\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\002\207\000\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\003\003\027\000\000\000\000\034\357\037\340\375\003\274\177\000\005\002\007\003\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004\003G\000\000\0038\\\006\004G\000\000\000H8\005\002\207\003\000\000\020\034\357\037\340\375\003\274\177\000\007\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\003\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004\003G\000\000\0038\\\357\037\340\375\003\274\177\000\006\006G\000\000\000\020\\\005\002G\003\000\000\020\034\007\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\004\006G\000\000\000\020\\\004\0047\000\000\000\020\\\357\037\340\375\003\274\177\000\003\004\027\000\000\000\000\034\005\002\307\003\000\000\020\034\006\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\003\004\007\000\000\000\220\240\005\002\007\003\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\003\004G\000\000\000H8\005\002\207\003\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\003\003G\000\000\000\020\\\357\037\340\375\003\274\177\000\003\003\027\000\000\000\000\034\005\002\007\004\000\000\020\034\006\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\003\004\007\000\000\000\220\240\005\002G\003\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\003\004\027\000\000\000\000\034\005\002G\004\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\002\367\017\000\200\020\\\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\005\002G\004\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\357\037\340\375\003\274\177\000\005\004'\000\000\000H8\005\006W\000\000\200\020\\\003\0077\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003<d\000\004\004\007\000\000\000\220\200\004\013G\000\000\000\250\\\004\004\007\000\b\000\200L\357\037\340\375\003\274\177\000\007\002\007\001\000\000\020\034\003\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\357\037\340\375\003<d\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\006\007\000\000\000\260\200\357\037\340\375\003\274\177\000\b\000g\000\200\007\230\\\t\000w\000\200\007\230\\\007\002\007\004\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003<d\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\220\200\006:g\000\000\000\340\\\357\037\340\375\003\274\177\000\003\006\367\001\000\000)8\006\000g\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\006'\000\300\001\3706\007\006'\000\000\000H8\007\bw\000\000\200\020\\\357\037\340\375\003\274\177\000\003\t7\000\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003<d\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\220\200\006\013g\000\000\000\250\\\357\037\340\375\003\274\177\000\t\002\207\002\000\000\020\034\003\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\b\007\000\000\000\260\200\357\037\340\375\003\274\177\000\013\000\207\000\200\007\230\\\f\000\227\000\200\007\230\\\t\002\307\003\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\357\037\340!\003<d\000\t\000\227\000\200\007\230\\\b\b\007\000\000\000\220\200\b:\207\000\000\000\340\\\357\037\340\375\003\274\177\000\003\b\367\001\000\000)8\b\000\207\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b'\000\300\001\3706\n\b'\000\000\000H8\t\013\247\000\000\200\020\\\357\037\340\375\003\274\177\000\013\f7\000\000\b\020\\\t\000\227\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\005\330[\b\000\207\000\200\007\230\\\357\037\340!\003<d\000\t\000\227\000\200\007\230\\\b\b\007\000\000\000\220\200\b\013\207\000\000\000\250\\\357\037\340\375\003\274\177\000\r\002\007\002\000\000\020\034\013\000\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017\300\005\330[\357\037\340\375\003<d\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\f\f\007\000\000\000\260\200\357\037\340\375\003\274\177\000\013\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\f\013\247\000\000\200\020\\\357\037\340\375\003\274\177\000\r\r7\000\000\b\020\\\013\000\307\000\200\007\230\\\003\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\n\013\367\017\000\200\327[\013\013\367\017\300\001\330[\n\000\247\000\200\007\230\\\357\037\340!\003<d\000\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\n\013\247\000\000\000\250\\\017\031\340!\003<d\000\b\b\007\000\b\005pK\004\004g\000\000\004p[\003\016G\000\000\000\250\\\357\037\340\375\003\274\177\000\005\000\307\000\200\007\230\\\006\000\327\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\003\004\007\000\000\000\220\240\005\002\367\017\000\200\020\\\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\002G\004\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\005\004'\000\000\000H8\357\037\340\375\003\274\177\000\005\006W\000\000\200\020\\\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340!\003\274\177\000\004\013G\000\000\000\250\\\004\004\007\000\b\000\200L\007\002\007\001\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\260\200\b\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000w\000\200\007\230\\\007\002\007\004\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340!\003\274\177\000\006\006\007\000\000\000\220\200\006:g\000\000\000\340\\\003\006\367\001\000\000)8\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\003\0007\000\200\007\230\\\003\006'\000\300\001\3706\357\037\340\375\003\274\177\000\007\006'\000\000\000H8\007\bw\000\000\200\020\\\003\t7\000\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340!\003\274\177\000\006\006\007\000\000\000\220\200\006\013g\000\000\000\250\\\t\002\207\002\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\357\037\340!\003\274\177\000\t\000\227\000\200\007\230\\\b\b\007\000\000\000\260\200\f\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\227\000\200\007\230\\\t\002\307\003\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\003\0007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340!\003\274\177\000\b\b\007\000\000\000\220\200\b:\207\000\000\000\340\\\003\b\367\001\000\000)8\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\003\0007\000\200\007\230\\\013\b'\000\300\001\3706\357\037\340\375\003\274\177\000\n\b'\000\000\000H8\n\f\247\000\000\200\020\\\013\r\267\000\000\b\020\\\357\037\340\375\003\274\177\000\t\000\247\000\200\007\230\\\003\000\267\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340!\003<d\000\b\b\007\000\000\000\220\200\b\013\207\000\000\000\250\\\b\b\007\000\b\000\200L\017\031\340!\003\274\177\000\004\004g\000\000\004p[\003\016G\000\000\000\250\\\005\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000\267\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\000\000\007\000\200\007\230\\\000\000\007\000\200\033\250\360\365\007\340\375\003\274\177\000\000\000\007\000\000\000\230\357\005\002\207\003\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\007\004\367\017\200\003k[\017\000\000q\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\005\002\007\003\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\007\004\367\017\200\003k[\017\000\000i\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\005\002\367\017\000\200\020\\\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\002G\004\000\000\020\034\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\b\004'\000\000\000H8\357\037\340\375\003\274\177\000\005\006\207\000\000\200\020\\\006\0077\000\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004\013G\000\000\000\250\\\007\002\207\002\000\000\020\034\t\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\t\000\227\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017\300\004\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340\375\003\274\177\000\006\006\007\000\000\000\260\200\t\000g\000\200\007\230\\\006\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\007\t\207\000\000\200\020\\\t\0067\000\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\004\330[\357\037\340\375\003<d\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\006\007\000\000\000\220\200\017\031\340\375\003\274\177\000\006\013g\000\000\000\250\\\013\002\007\002\000\000\020\034\t\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\t\000\227\000\200\007\230\\\n\013\367\017\000\200\327[\357\037\340\375\003\274\177\000\013\013\367\017\300\004\330[\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\017\031\340\375\003\274\177\000\n\n\007\000\000\000\260\200\t\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\n\t\207\000\000\200\020\\\013\0137\000\000\b\020\\\t\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\267\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\b\007\000\000\000\220\200\017\031\340!\003<d\000\b\013\207\000\000\000\250\\\006\006\007\000\b\004pK\004\004\007\000\b\003pK\017\031\340\375\003\274\177\000\003\016G\000\000\000\250\\\005\000\247\000\200\007\230\\\006\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\002\367\017\000\200\020\\\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\005\002G\004\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\t\004'\000\300\001\3706\357\037\340\375\003\274\177\000\b\004'\000\000\000H8\005\006\207\000\000\200\020\\\003\007\227\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004\013G\000\000\000\250\\\003\002\207\002\000\000\020\034\357\037\340\375\003\274\177\000\000\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\000\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\006\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\007\0007\000\200\007\230\\\006\006\207\000\000\200\020\\\007\007\227\000\000\b\020\\\357\037\340\375\003\274\177\000\003\000g\000\200\007\230\\\000\000w\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\000\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003<d\000\002\002\007\000\000\000\220\200\002\013'\000\000\000\250\\\002\002\007\000\b\000\200L\017\031\340!\003\274\177\000\002\004\007\000\b\001pK\000\016'\000\000\000\250\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000w\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\000\002\007\000\000\000\220\240\357\037\340\375\003\374\037\000\017\000\007\000\000\000@\342\017\000\007\000\000\000\000\343\017\000\207\377\377\017@\342\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\207\372\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\004\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\007\000\200\007\230\\\004\000G\000\200\007\230\\\000\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\002\000\027\004\200\007\230L\000\003\007\000\000\200\020\\\002\004'\000\000\b\020\\\357\037\340!\003\274\177\000\003\360G\026\000\000\000\001\003\003\007\000\000\000\224\357\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\007\026\000\000\000\001\004\004\007\000\000\000\224\357\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\207\025\000\000\000\001\006\006\007\000\000\000\225\357\005\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\016\000w\000\200\007\230\\\005\000W\000\200\007\230\\\016\000\347\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\025\000\000\000\001\006\006\007\000\000\000\225\357\b\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\207\024\000\000\000\001\006\006\007\000\000\000\225\357\n\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\024\000\000\000\001\006\006\007\000\000\000\225\357\f\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000w\000\200\007\230\\\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000W\000\200\007\230\\\007\000\347\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\f\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\001\000\000\020\034\005\002\367\017\000\b\020\\\017\000\367\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\016\017\367\017\000\200\327[\017\017\367\017\300\002\330[\357\037\340\375\003\274g\000\016\000\347\000\200\007\230\\\017\000\367\000\200\007\230\\\f\016\007\000\000\000\260\240\357\037\340\375\003\274\177\000\r\000\207\001\000\000\020\034\005\002\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017\300\002\330[\357\037\340\375\003\274g\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\n\f\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\000\007\002\000\000\020\034\005\002\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017\300\002\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\b\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\t\000\207\002\000\000\020\034\005\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\002\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\260\240\357\037\340\375\003\274\177\000\007\000\007\003\000\000\020\034\005\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\002\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\004\006\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\000G\003\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\017\031\340\375\003\274\177\000\003\000g\002\000\000\310\360\003\0007\000\200\007\230\\\005\000\207\003\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003<d\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\003\000\027\002\000\000\310\360\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000\307\003\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340!\003\274\177\000\003\004\007\000\000\000\220\240\003\000'\002\000\000\310\360\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\007\004\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\000G\003\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\003\027\000\000\000\000\034\005\000\207\003\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004\003G\000\000\0038\\\006\004G\000\000\000H8\357\037\340\375\003\274\177\000\005\000\007\004\000\000\020\034\007\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004\003G\000\000\0038\\\006\006G\000\000\000\020\\\005\000\307\003\000\000\020\034\357\037\340\375\003\274\177\000\007\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004\006G\000\000\000\020\\\357\037\340\375\003\274\177\000\004\0047\000\000\000\020\\\003\004\027\000\000\000\000\034\005\000G\004\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\000\207\003\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\003\004G\000\000\000H8\357\037\340\375\003\274\177\000\005\000\007\004\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\003G\000\000\000\020\\\003\003\027\000\000\000\000\034\005\000\207\004\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\000\307\003\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\007\004\367\017\200\003k[\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\002\000'\000\200\007\230\\\000\000\2001\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\005\000\007\001\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\005\000\207\004\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\357\037\340\375\003\274\177\000\005\004'\000\000\000H8\005\006W\000\000\200\020\\\003\0077\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\003\004\007\000\000\000\220\200\005\000\007\004\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\005\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\t\004'\000\300\002\3706\357\037\340!\003\274\177\000\b\004'\000\000\000H8\004\n\367\017\000\000\340\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000g\000\200\007\230\\\007\000w\000\200\007\230\\\005\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\006\000\007\004\200\007\230L\005\004W\000\000\200\020\\\006\007g\000\000\b\020\\\357\037\340\375\003\274\177\000\005\005\207\000\000\200\020\\\006\006\227\000\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\037\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\000\017\007\000\000\000\260P\357\007\200\374\000\274g\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\000\007\000\200\033\250\360\365\007\340\375\003\274\177\000\000\000\007\000\000\000\230\357\005\000\007\002\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\260\200\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000G\004\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\005\004'\000\000\000H8\357\037\340\375\003\274\177\000\005\006W\000\000\200\020\\\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\005\000\007\004\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\005\004\367\001\000\000)8\t\000G\000\200\007\230\\\357\037\340!\003\274\177\000\n\000W\000\200\007\230\\\004\n\007\004\000\000\3408\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\006\000G\000\200\007\230\\\007\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\005\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\004\000\007\004\200\007\230L\005\006W\000\000\200\020\\\004\007G\000\000\b\020\\\357\037\340\375\003\274\177\000\n\tg\000@\005\3706\t\tg\000\000\000H8\t\005\227\000\000\200\020\\\357\037\340\375\003\274\177\000\n\004\247\000\000\b\020\\\007\000\307\003\000\000\020\034\b\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017@\004\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340!\003\274\177\000\006\006\007\000\000\000\220\200\006:g\000\000\000\340\\\007\006\367\001\000\000)8\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\b\006'\000\300\003\3706\357\037\340\375\003\274\177\000\007\006'\000\000\000H8\007\tw\000\000\200\020\\\b\n\207\000\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017@\004\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\031\340\375\003\274\177\000\003\006\007\000\000\000\220\240\b\000W\000\200\007\230\\\t\000G\000\200\007\230\\\357\031\240\376\000\274\177\000\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\005\000\007\004\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\357\037\340\375\003\274\177\000\006\004\367\001\000\000)8\005\000G\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\n\005g\000@\003\3706\007\005g\000\000\000H8\007\bw\000\000\200\020\\\357\037\340\375\003\274\177\000\n\t\247\000\000\b\020\\\t\000\307\003\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\003\0007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340!\003\274\177\000\b\b\007\000\000\000\220\200\b:\207\000\000\000\340\\\003\b\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000\207\000\200\007\230\\\003\0007\000\200\007\230\\\003\004'\000\300\001\3706\357\037\340\375\003\274\177\000\004\004'\000\000\000H8\004\007G\000\000\200\020\\\003\n7\000\000\b\020\\\357\037\340\375\003\274\177\000\t\000G\000\200\007\230\\\003\0007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340!\003\274\177\000\n\b\007\000\000\000\220\200\b\n\367\017\000\000\340\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\367\017\200\007\230\\\007\000\207\000\200\007\230\\\013\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\013\000\267\000\200\007\230\\\b\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\t\000\007\004\200\007\230L\b\007\207\000\000\200\020\\\t\013\227\000\000\b\020\\\357\037\340\375\003\274\177\000\006\005'\000@\003\3706\007\005'\000\000\000H8\007\bw\000\000\200\020\\\357\037\340\375\003\274\177\000\005\tg\000\000\b\020\\\007\000w\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\002\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\220\200\006\ng\000\000\000h\\\357\037\340\375\003\274\177\000\005\000G\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340=\003\324\037\000\006\004\007\000\000\000\220\240\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\357\037\340\375\003\274\177\000\006\360\027\000\000\000\000\001\005\000\307\004\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\006\004\007\000\000\000\220\240\000\000\200\345\000\000\220\342\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\005\000\307\004\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\003*G\000\000\000\270\\\007\360\007\000\000\030\004\001\005\000\367\017\000\200\020\\\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\007\004\007\000\000\000\220\240\005\000\367\017\000\200\020\\\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\004\000G\000\200\007\230\\\005\nG\000\000\000\252\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\360\007\000\000\b\000\001\007\005g\000\200\003\261[\005\360\007\000\000\270\004\001\357\037\340\375\003<d\000\005\004W\000\000\000h\\\005\005G\000\000\000\240\\\005\0057\000\000\000\200P\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\360\007\000\000\034\f\001\004\005G\000\000\000X\\\357\037\340\375\003\274\177\000\004\004W\000\000\000\240\\\004\000G\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\003G\000\200\003\274[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\005\000\307\004\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\003*G\000\000\000\270\\\007\360\007\000\000\000\004\001\005\000G\000\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\007\004\007\000\000\000\220\240\005\000\207\000\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\000G\000\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\005\000\207\000\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\005\n7\000\000\000\252\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\360\007\000\000\b\000\001\007\005g\000\200\003\261[\005\360\007\000\000\270\004\001\357\037\340\375\003<d\000\005\003W\000\000\000h\\\005\0057\000\000\000\240\\\005\0057\000\000\000\200P\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\360\007\000\000\034\f\001\003\0057\000\000\000X\\\357\037\340\375\003\274\177\000\003\003W\000\000\000\240\\\003\0007\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0047\000\000\000h\\\003\0007\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\0007\000\200\007\230\\\004\360\007\000\300/\f\001\357\037\340\375\003\274\177\000\007\003G\000\200\003\261[\004\360\007\000\000\360\003\001\004\003G\000\000\000h\\\357\037\340\375\003<d\000\004\0047\000\000\000\240\\\003\000G\000\200\000\220\\\003\003'\000\000\000\200P\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\0037\000\000\000h\\\004\0047\000\000\000\240\\\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\004\000G\000\200\007\230\\\003\032G\000\200\001\260\\\357\037\340\375\003\274\177\000\005\000\007\005\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\000\007\004\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\005\000\007\005\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003<d\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\005:G\000\000\000\342\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\006\nW\000\000\001\270\\\006\006G\000\000\000\200P\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\006\006\347\377\377\377\000\034\006\000g\000\200\007\230\\\017\031\340!\003<d\000\006\ng\000\200\021\260\\\007\005g\000\000\0008\\\007:w\000\000 \340\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\007\006w\000\200\0008\\\007\006w\000\000\000\020\\\017\031\340\375\003<d\000\006:7\000\000\000\342\\\006\000g\000\200\007\230\\\007\007g\000\200\0008\\\017\031\340\375\003\274\177\000\007\005w\000\000\0008\\\007\006w\000\000\000\021\\\007\005w\000\200\003f[\357\037\340\375\003\274\177\000\006\007W\000\000\000\021\\\006\006w\000\000\000\240\\\007\006W\000\000\000\021\\\357\037\340\375\003\274\177\000\007\005g\000\200\003f[\007\007g\000\000\000\240\\\005\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\007\003W\000\200\003m[\004\000G\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003<d\000\000\000\000\003\000\000\220\342\017\000\000\000\000\000\370\360\007:w\000\000 \340\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\007\000w\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\007\0047\000\200\003k[\004\377G\000\000\007G\\\357\037\340\375\003\274\177\000\007\200\007\340\200\003\220P\004\004w\000\000\000\240\\\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\0007\000\200\007\230\\\007\003\367\017\200\003k[\357\037\340\375\003\274\177\000\007\000G\000\200\007\230\\\000\000\000D\000\000\220\342\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\005\000\007\004\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\003\004\007\000\000\000\220\200\004:7\000\000\000\340\\\005\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\013\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000W\000\200\007\230\\\013\000\267\000\200\007\230\\\f\000\307\000\200\007\230\\\017\031\340\375\003\274\177\000\004\n\007\004\000\000\3408\004\000G\000\200\007\230\\\005\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\006\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000\007\000\200\007\230L\007\000\007\004\200\007\230L\357\037\340\375\003\274\177\000\006\004g\000\000\200\020\\\007\005w\000\000\b\020\\\f\013g\000@\006\3706\357\037\340\375\003\274\177\000\013\013g\000\000\000H8\013\006\267\000\000\200\020\\\f\007\307\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000\307\003\000\000\020\034\b\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\004\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\005\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\t\004'\000\300\002\3706\n\004'\000\000\000H8\357\037\340\375\003\274\177\000\004\013\247\000\000\200\020\\\005\f\227\000\000\b\020\\\r\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017\300\002\330[\357\037\340\375\003<d\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\b\f\007\000\000\000\220\200\357\037\340\375\003\274\177\000\r\000\007\005\000\000\020\034\013\002\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017\300\005\330[\357\037\340\375\003<d\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\f\f\007\000\000\000\220\200\357\037\340\375\003\274\177\000\013\f\367\001\000\000(8\013\f\267\000\000\000\020\\\013\013\027\000\000\000)8\357\037\340!\003\274\177\000\013\003\267\000\000\000\020\\\013:\267\000\000\000\340\\\f\013\367\001\000\000)8\357\037\340\375\003\274\177\000\r\000\307\000\200\007\230\\\f\000\267\000\200\007\230\\\003\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\327\000\200\007\230\\\003\0007\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\013\003g\000\300\005\3706\003\003g\000\000\000H8\006\0067\000\000\200\020\\\357\037\340\375\003\274\177\000\003\007\267\000\000\b\020\\\007\006\247\000\000\200\020\\\003\003\227\000\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340\375\003\274\177\000\006\006\007\000\000\000\220\200\006\bg\000\000\000X\\\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\003\367\017\000\200\327[\005\003\367\017\300\002\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\006\004\007\000\000\000\220\240\357\037\340\375\003\274\037\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\000\017\007\000\000\000\260P\357\007\200\374\000\274g\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\000\007\000\200\033\250\360\365\007\340\375\003\274\177\000\000\000\007\000\000\000\230\357\017\000\007\000\000\000@\342\005\000\307\004\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\003\004\027\000\000\000\000\034\357\037\340\375\003\274\177\000\005\000\307\004\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\017\000\007\033\377\017@\342\005\000\007\004\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\t\004g\000\300\001\3706\357\037\340!\003\274\177\000\b\004g\000\000\000H8\004\n\007\004\000\000\3408\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\003\000G\000\200\007\230\\\004\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\006\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\007\000\007\004\200\007\230L\006\003g\000\000\200\020\\\007\004w\000\000\b\020\\\357\037\340\375\003\274\177\000\006\006\207\000\000\200\020\\\007\007\227\000\000\b\020\\\005\000\307\003\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\357\037\340\375\003\274\177\000\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\004'\000\300\001\3706\005\004'\000\000\000H8\005\006W\000\000\200\020\\\357\037\340\375\003\274\177\000\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\005\000\007\002\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\007\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000W\000\200\007\230\\\005\000G\004\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\005\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\006\004'\000\300\002\3706\357\037\340\375\003\274\177\000\005\004'\000\000\000H8\005\007W\000\000\200\020\\\006\bg\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340=\003\324\037\000\003\004\007\000\000\000\220\240\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\357\037\340\375\003\274\177\000\005\000\307\003\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004\367\017\200\003k[\017\000\000H\000\000@\342\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\005\000\307\003\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\007\004g\000\300\001\3706\006\004g\000\000\000H8\017\031\340\375\003\274\177\000\004\n\007\004\000\000\3408\004\000G\000\200\007\230\\\005\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\003\000G\000\200\007\230\\\004\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\b\000\007\000\200\007\230L\t\000\007\004\200\007\230L\357\037\340\375\003\274\177\000\b\003\207\000\000\200\020\\\t\004\227\000\000\b\020\\\b\bg\000\000\200\020\\\357\037\340\375\003\274\177\000\t\tw\000\000\b\020\\\005\000\007\004\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\006:G\000\000\000\340\\\007\006\367\001\000\000)8\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000w\000\200\007\230\\\007\0007\000\200\007\230\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\003\007'\000\300\001\3706\007\007'\000\000\000H8\007\bw\000\000\200\020\\\357\037\340\375\003\274\177\000\003\t7\000\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\003\006\007\000\000\000\220\200\007\000\207\002\000\000\020\034\357\037\340\375\003\274\177\000\005\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\002\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\260\200\005\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000w\000\200\007\230\\\t\000\207\003\000\000\020\034\007\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\007\000w\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\003\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340\375\003\274\177\000\007\b\007\000\000\000\220\200\t\000G\003\000\000\020\034\000\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\000\000\007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017@\000\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340!\003\274\177\000\b\b\007\000\000\000\220\200\007\007\207\000\000\0038\\\007\007G\000\000\000\020\\\017\031\340\375\003\274\177\000\007:w\000\000\000\340\\\b\007\367\001\000\000)8\t\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000w\000\200\007\230\\\000\000\207\000\200\007\230\\\002\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000@\001\3706\357\037\340\375\003\274\177\000\000\000'\000\000\000H8\005\005\007\000\000\200\020\\\000\006'\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\003\004\007\000\000\000\220\240\017\000\007\000\000\000@\342\017\000\007\000\000\000\000\343\377\007\000\374\000\200\037\000\017\000\007\377\377\017@\342\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\340\007\000\374\000\200\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P__CUDA_FTZ\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\002\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000B\002\000\000\000\000\000\000\362\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\005\000\000\000\000\000\000P\001\000\000\000\000\000\000\002\000\000\000\013\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\210\006\000\000\000\000\000\000`\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000_\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\006\000\000\000\000\000\000\224\000\000\000\000\000\000\000\003\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000q\001\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000|\007\000\000\000\000\000\000\224\000\000\000\000\000\000\000\003\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\334\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\b\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\021\001\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\b\000\000\000\000\000\000p\001\000\000\000\000\000\000\000\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\317\001\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\210\t\000\000\000\000\000\000h\001\000\000\000\000\000\000\000\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\000\000\000\200\035\000\000\000\000\000\000\003\000\000\000\f\000\000\020 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000F\001\000\000\001\000\000\000\006\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\200(\000\000\000\000\000\000\200,\000\000\000\000\000\000\003\000\000\000\r\000\000\020 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\314\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000U\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\301\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013U\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\237\001\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\fU\000\000\000\000\000\000@\004\000\000\000\000\000\000\000\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000\320X\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000\020\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\340L\000\000\000\000\000\000\340L\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000\000U\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000K\004\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\001\001H\000\000\000\370\016\000\000\000\000\000\000\360\016\000\000@\000\000\000\004\000\006\000=\000\000\000\000\000\000\000\000\000\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000%:\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360 \n\n\n\n.version 6.4\n.target sm_61\n.address_size 64.\000\377\021global .align 1 .b8 blockIdx[1];\"\000\003dthread#\000\017G\000\004\360\001$str[11] = {95, \004\000P67, 8\b\000C8, 6\024\000\360\03370, 84, 90, 0};\n\n.weak .func (.param .b32 \022\000\365\007_retval0) cudaMalloc(\n&\000'64\030\000\021_\026\000?_0, \000\013\2461\n)\n{\n.loc\303\000\0218\303\000!__\025\000\240_depot0[16\021\0012regI\000;%SP\017\000\025L\020\000\21132 %r<2>!\000\323rd<3>;\n\nmov.u2\000\033,e\000b;\ncvta\215\000\004%\000\023,\\\000\"ld\310\000\002\030\000nrd2, [\316\000\036])\000\0371)\000\001a0];\nst#\000\201[%SP+0],,\000\n\026\000\0228\026\000\"2;\266\000\001\330\000a1, 999(\000\002g\000\000\357\000\030[\236\001\003M\000\2571;\nret;\n\n}\326\001\032\376\002FuncGetAttributes\341\001\r#\000\016\354\001\017+\000\006\017\367\001\033\0371\367\001Q\0371\367\001!\016\331\000\017\002\002\017\0168\001\017\r\002\215hDevice\264\000\016\016\002\016$\000\017\017\002\000/32,\000\013\0371,\000\030\0372<\002\023\0372<\002\037\0354<\002\0372<\002\f\0372<\002\023\001_\000\004;\002\017\331\000\007\035]4\000\03714\000\006\017p\002\020\016\232\001\017q\002\022(32q\002\013\025\000!12\026\000\t\206\002\0373\206\002\025\0373\206\002#2Get\313\000\016}\002\005\033\000\004\332\000\017\034\002\023?3[8W\004.\017\033\002\r\0373W\004\031\004\263\001\r\320\000\017\252\001\006\017\005\004W\360\004OccupancyMaxActiveB\245\b\376\003sPerMultiprocessor\237\001\017;\000\026\016B\006\017C\000%\016J\004\017C\000\036\0372\206\000/\0373\210\002\023O4[32\211\002\034\0353\211\002\0374\211\002\f\0374\211\002\031\0233\211\002\017\361\000\036\017\274\004\000\017K\000$/2]w\007\000\017L\000$\017\037\005\001\017\230\000%\017\247\007\035\t7\005\0306M\005\004,\000\"24-\000\0303\317\003\0372\317\003\025\0372\317\003L\237WithFlags\330\003(\005D\000\016\341\003\017L\000'\017\352\0030\fL\000\0372\230\0008\0373\230\0008\0374H\004\023O5[40\354\b.\017H\004\r\0375\354\b\034\017\371\000+\037]\234\0040\r\232\001\017\245\0040\r:\002\017\256\0041\r\333\002\017\267\0041\r|\003\017\300\004I\b-\000\0373$\n6\360\036visible .entry _Z22bpnn_layerforward_CUDAPfS_\002\000&ii\255\004\000\247\000\0172\000\021\016\233\004\017:\000\034\0371:\000&\0372:\000&\007e\004\000a\001\017:\000\030\0374:\000&\0375\215\004\023?6[8^\013\026\225pred %p<5\216\004\020f/\002\\f<20>\261\004\0357\262\004\0208%\000`\n\t.shaH\000\003\223\000\0224\223\000\037Z\331\000\020\377\002E10input_node[64]O\000-\360\0033weight_matrix[102T\000\017U\005\b\0376U\005\034\017\257\001\031\017\356\004\000\017B\000\033\017\205\005\001\0374C\000\033\0373\310\005\001\017C\000\033\017b\005\001\017\013\001\034\017P\005\001\017\f\001\034#0]\252\001#tor\025\004I\000\0215\004\005\004f\013\n\034\000\0216\034\000\0375;\000\005\0247?\005\017;\000\000\0218\034\000\0377;\000\005\0249\247\005\017;\000\000!10\035\000\0379<\000\005$11\372\005\017=\000\001\0222\035\000\013\354\005\003\002\006?d12\004\006\003*10\030\000\003\005\006*d8\027\000\0234v\006\03263\006\0374m\020\002\0375I\006\003\213%ctaid.y-\000\002\241\000\tL\013\2324, %tid.x+\000\0226\205\000\0304+\000\0235+\000\013V\000\0226\337\000\0215@\002\002*\000%6,\236\000q;\nadd.s\027\000\"7,\034\000\0271+\000%8,\234\000\203;\nmul.lo.\000$9,3\000\000!\001#hl\346\004\002\272\001G9, 4F\000\000\257\001\004\215\000\013G\000%12H\000(11\216\000513,O\000(12M\000%4,\005\001\t1\000&5,7\000\0314\032\000%6, \000\0317\031\000#7,\037\000\013\270\001\0236\316\001\0307x\000\t\f\001\007\362\000#9,\036\000\b\363\000(20\363\000\006\246\000521,4\000)20\032\000#2, \000\013\215\000\0237E\002\b\005\001(23\005\001rsetp.neI\0003p1,!\000\362\f0;\n@%p1 bra LBB6_2;\nbra.uni\020\00021;\n\b\000\021:Z\000\003?\003%3,1\003\001r\000\002\237\000\025dx\001$72\000\001\0031\000$5, \000\0232\321\000\003\031\000$6,Q\000\001'\000\001N\000\002\037\007\001\021\002,rdc\000\03075\001\bc\000$8, \000\0272\216\006 rdI\001\017)\007\037\0037\004\002'\007\005\222\005\002t\004)19\304\000\002\260\001\005\035\000\002\r\004\021f\233\001\000\035\000\000\232\001+f1W\001\0232W\001\2602:\nbar.sync\214\001\006c\001\000\353\001\004d\004\b\000\001\006\326\001\0328\000\001424, \000\nc\001425,Q\000\001'\000\007c\001\"2,\244\000\0325c\000\0316\213\003\006J\001?27,$\b#\017M\001\003\002\261\001*27\307\000$9,\204\000\0316\307\000830,6\000\0309\262\000)31\353\002\006\025\001432, \000\n\025\001733,U\000)32\264\001!33\264\001,2;\234\001\004o\000\0374\204\002\004435, \000\013\275\000\0306\275\000)35N\000\0377\275\000\005\003.\000\0357\275\000'9,U\000'38\322\001\"3,\302\000\0329\272\001/40\004\0036\0224\356\002)40\254\000\0234i\001\r\341\003843,6\000\0272\254\000\0224\254\000#43\361\005#rn\031\000\"5,\312\000:%f4\230\001\0219\230\001\0325\230\001\007V\022\0364\031\005\0021\007+24\200\003\0233\200\003'3:1\005%5,5\000\001\373\000\003\222\000\002\251\001\021fn\001)25q\000\000\027\006\232098907648z\000\003\300\022\0276\361\000\004\351\001\000\350\001\243lg2.approx\035\000\000\355\001#f7\251\0052gtu\027\0003p2,{\000!f8\253\005\0262\253\005\0338\324\000\0234\324\000\0274\324\000/33\324\000\n\002%\t\0313P\b\000\304\001\2531073741824\303\b\002\177\b\b\227\001\004E\0318f11\275\005\004\277\004(4]\026\000\004\216\000\0378\002\001\001!14G\000\0332\016\002\001<\006\001;\000\000#\000L;\nex8\000\001\037\001#15\340\000 zi\335\000\002\034\000\"r3=\000\013\212\t\0238\207\017\b\362\b\0313\366\004\006\027\000%7,4\000\000\266\017\023m\267\003\002\235\003\002\203\003,37`\007#4,#\000\002`\007\0264\265\001\0336\265\001\0235\265\001\0305\265\001\0309\213\000\000\325\0004s64/\004\0226y\000\0319\340\003/69\232\0059\0227\026\005)69\343\003471,\200\000\n\335\004772,6\000(71\335\004/73\335\004\004\0227\257\006\0357\257\006875,U\000\b\257\006\002\374\007\000#\000\b\242\001(40\242\0014shr\030\000#1,\036\000\03136\n$42\030\000\000$\000\0022\000\003\032\000#3, \000\n1\000#4,\225\001\000#\000\r\221\001\0217\004\002*44\337\000$7,\034\000\013-\001\0318-\001\0327\035\000(9,$\000\t\374\000\0238\374\000\0239,\n\006 \003#9,\034\001+%f}\b\"75\232\003\0339u\002\0236u\002\0326~\b\t$\000\0237$\000\0277\231\002\0314\"\005\007\"\001\002\003\001\0375\177\005\005/46\177\005\004'8:,\002\0374W\007\005\000Y\000\003 \000\0326\327\006\0376\367\0029\0224\264\001\0324\261\001848,\035\000\t\273\007/49\336\002\004450, \000\n\336\002751,U\000'50\342\001\0229\341\001851]\b\n\0375\b\n\004\0375\b\n\005454, \000\013{\000$5,Q\000\001'\000\t*\002\0225*\002\0359\363\b\003\351\006\0377L\f\007#3,!\000\002\354\004\0263\354\004\0341T\002\0239\367\001\0309\367\001/56E\001\005$7, \000\n\367\001/58\367\0019\0225u\003)58.\001860,\035\000\b\346\r/28\237\005\t\002[\r\0318\312\000\0226t\001\0356\207\n763,m\000\0306\036\t\"10\020\002)63\020\002564,e\020\b\224\000\0309z\016\006\276\006\0300\310\017\tV\017\000\024\013\0028\000\000'\000\b\316\003\0025\013\0253\311\000\f\342\000\001H\002*32\342\000$6,\034\000\013\342\000$7,\267\000\001'\000\tv\002\"67\240\004\f(\002$10v\016/0:*\027\n\0214\002\002radjust_\353\001 s_A\030`PfiS_i\006\002\r,\027\0174\000\020\017.\027\000/32<\000\033/1,x\000'\0372x\000(\0373x\000(\0374<\000(\0178\027\024O7[728\027\035\03438\027,178\027\0262\022\000\020fF\000Nfd<2E \0375&'\r\0377F \031\003%\026\017#\001\030\017'\026\001\017E\000\035.4]3\027\017D\000\035\017\260\026\001\017E\000\036\017\311%\001\017D\000\035\017\263\026\001\017E\000\027\017\265\026\364\0320\264\026\016\332&\017\341\026\001\0320-\000\003\341\026\0372\337\026\035\017\263\026\020/48\263\026\026/52\263\026\026/56\263\026\006\0378\262\026\026/48\262\0262/56\262\0268/52\262\026G\0370\262\026\b/48\262\026\031/56\262\026-/64\262\026\b\013\005\001$24\257\026\017\204\027\003\003\324\024\f\235\026\0370\234\026\003/68\234\026;\000\037\t3f64\032\000#d1\357\025\004\304\020\002\217\006#2,\034\000h0d3FD3\001\000\t\274\000\0377Y\027\004\0378\366\026\005$9, \000\013\366\025\0250\017\027\003\262\026\r\366\025\0360\275\000\0233\370\024\007\210\026\0331p\n\004%\026\0372\266\013\004%23o\026\013\222\000(4,.\027\0363\266\024.24\222\000\001\024\022\t$\001(25\022\r\ba\000\003e\025\0365a\000\003k\024\0372\260\001\000\0235h\0247fma\260\001#6,}\000\016\260\001\001\032\000\03451\000&7,\347\001\002#\000\0316p\023\002'\000\001\332\024*d7\"\030\0246\326\024\007\344\000\0377\304\002\002/28\375\027\005\003u\006\r\007\002\0046\027\03076\027\024f\320\024\001U\025\017\007\002\000\001\214\024\0346\304\002#9,\034\000\017\304\002\013/31\304\002\003/326\027\005\003\214\027\0352\275\000\0254\276\027\001'\000\fK\025\000\"\000\017\201\003\000\0230J\025\007\223\000\0375\305\002\003\0373{\016\005%37b\027\013\223\000(8,\351\027\0277\223\000\003\241\021/38\223\000\000\0231\301\025\nQ\001\001'\006\002\036\000\017\027\004\001\na\002\002\001\025\003\205\001\002\344\000\001\364\007\rd\002\003\"\000\0323;\027\0378\340\017\013\0315\271\034\017,\034\000\0355,\03497_3\267\r\0237,\03487_1U\027\0316a\006\tZ\000\002\034\006\0246Z\000\0372Z\000\007\0232Z\000\0302\206\034/39%\003\002/40%\003\004\005\272\030\r\244\030'2,W\031/41\206\017\000/42\326\001\000\002\260\026\t\267\033(43j\002\bd\000)4,\017\031\bd\000\003N\006\0374\315\002\001\0275[\027\004d\000\017\001\005\005\002\207\023\005/\023\016\220\027\000#\000\017d\000\000\0246x\027\013r\002$7,\203\000\017\006\005\004-164\000$8,\033\001\0174\000\005\0377\264\002\000\003\335\002\013\277\024\0224\032\005)13\376\000\017\033\005\003/48\366\001\005\003\326\001\r\033\005)50\331\023\b\033\005\02310\006\0375\034\005\000\003o\025\ts\b/51\366\001\004\004m\023\0371d\000\000\0235d\000\017Z\002\000$20\322\030\013F\b$1,\037\000\0171\004\017\001{\t\002\260\000\017\213\001\004/21\213\001\001\002\373\006*22 \024$2]I\031\t\231\003\0233\231\003\2603:\nret;\n\n}\n\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_3, 26889

	.type	__cuda_fatbin_wrapper,@object # @__cuda_fatbin_wrapper
	.section	.nvFatBinSegment,"a",@progbits
	.p2align	3
__cuda_fatbin_wrapper:
	.long	1180844977              # 0x466243b1
	.long	1                       # 0x1
	.quad	.L__unnamed_3
	.quad	0
	.size	__cuda_fatbin_wrapper, 24

	.type	__cuda_gpubin_handle,@object # @__cuda_gpubin_handle
	.local	__cuda_gpubin_handle
	.comm	__cuda_gpubin_handle,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	__cuda_module_ctor
	.ident	"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z22bpnn_layerforward_CUDAPfS_S_S_ii
	.addrsig_sym __cudaPopCallConfiguration
	.addrsig_sym cudaLaunchKernel
	.addrsig_sym _Z24bpnn_adjust_weights_cudaPfiS_iS_S_
	.addrsig_sym gettimeofday
	.addrsig_sym setup
	.addrsig_sym malloc
	.addrsig_sym cudaMalloc
	.addrsig_sym printf
	.addrsig_sym cudaMemcpy
	.addrsig_sym __cudaPushCallConfiguration
	.addrsig_sym cudaThreadSynchronize
	.addrsig_sym cudaGetLastError
	.addrsig_sym cudaGetErrorString
	.addrsig_sym exit
	.addrsig_sym _ZSt3expf
	.addrsig_sym bpnn_layerforward
	.addrsig_sym bpnn_output_error
	.addrsig_sym bpnn_hidden_error
	.addrsig_sym bpnn_adjust_weights
	.addrsig_sym cudaFree
	.addrsig_sym free
	.addrsig_sym expf
	.addrsig_sym __cuda_register_globals
	.addrsig_sym __cudaRegisterFunction
	.addrsig_sym __cudaRegisterFatBinary
	.addrsig_sym __cuda_module_ctor
	.addrsig_sym __cudaRegisterFatBinaryEnd
	.addrsig_sym __cudaUnregisterFatBinary
	.addrsig_sym __cuda_module_dtor
	.addrsig_sym atexit
	.addrsig_sym num_blocks
	.addrsig_sym .L__unnamed_3
	.addrsig_sym __cuda_fatbin_wrapper
	.addrsig_sym __cuda_gpubin_handle
