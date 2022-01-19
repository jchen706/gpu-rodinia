	.text
	.file	"gaussian.cu"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z13create_matrixPfi
.LCPI0_0:
	.long	1092616192              # float 10
	.text
	.globl	_Z13create_matrixPfi
	.p2align	4, 0x90
	.type	_Z13create_matrixPfi,@function
_Z13create_matrixPfi:                   # @_Z13create_matrixPfi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$-1138501878, -24(%rbp) # imm = 0xBC23D70A
	movl	-12(%rbp), %eax
                                        # implicit-def: $rcx
	movl	%eax, %ecx
	leal	-1(%rcx,%rcx), %eax
	movl	%eax, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -32(%rbp)
	leaq	15(,%rcx,4), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rsp
	movq	%rcx, -40(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	$0, -16(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	callq	_ZSt3expf
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-20(%rbp), %rcx
	movss	%xmm0, (%rdx,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$0, -16(%rbp)
.LBB0_5:                                # %for.cond8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_12
# %bb.6:                                # %for.body10
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -20(%rbp)
.LBB0_7:                                # %for.cond11
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                # %for.body13
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movss	%xmm0, (%rcx,%rsi,4)
# %bb.9:                                # %for.inc23
                                        #   in Loop: Header=BB0_7 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               # %for.end25
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               # %for.inc26
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_12:                               # %for.end28
	movq	-32(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z13create_matrixPfi, .Lfunc_end0-_Z13create_matrixPfi
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
.Lfunc_end1:
	.size	_ZSt3expf, .Lfunc_end1-_ZSt3expf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.globl	main
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
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str, %rdi
	movl	$512, %esi              # imm = 0x200
	movl	$4, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	printf
	movl	$1, -20(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB2_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.7, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.12, %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.13, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.14, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.15, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.16, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.17, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.18, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.14, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.19, %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.14, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.20, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	exit
.LBB2_2:                                # %if.end
	xorl	%edi, %edi
	callq	cudaSetDevice
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	_Z21PrintDevicePropertiesv
	movl	$1, -24(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB2_16
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	jne	.LBB2_14
# %bb.5:                                # %if.then27
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movb	1(%rax), %dl
	movb	%dl, -29(%rbp)
	movsbl	-29(%rbp), %esi
	movl	%esi, %edi
	subl	$102, %edi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB2_11
	jmp	.LBB2_21
.LBB2_21:                               # %if.then27
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$113, %eax
	je	.LBB2_12
	jmp	.LBB2_22
.LBB2_22:                               # %if.then27
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$115, %eax
	jne	.LBB2_13
	jmp	.LBB2_6
.LBB2_6:                                # %sw.bb
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	callq	atoi
	movl	%eax, Size
	movl	Size, %esi
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	printf
	movl	Size, %esi
	imull	Size, %esi
	movslq	%esi, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	malloc
	movq	%rax, a
	movq	a, %rdi
	movl	Size, %esi
	callq	_Z13create_matrixPfi
	movslq	Size, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, b
	movl	$0, -28(%rbp)
.LBB2_7:                                # %for.cond42
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	Size, %eax
	jge	.LBB2_10
# %bb.8:                                # %for.body44
                                        #   in Loop: Header=BB2_7 Depth=2
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	b, %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	Size, %eax
	imull	Size, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, m
	jmp	.LBB2_13
.LBB2_11:                               # %sw.bb52
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	_Z15InitProblemOncePc
	jmp	.LBB2_13
.LBB2_12:                               # %sw.bb59
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$1, -20(%rbp)
.LBB2_13:                               # %sw.epilog
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_14
.LBB2_14:                               # %if.end60
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_15
.LBB2_15:                               # %for.inc61
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_3
.LBB2_16:                               # %for.end63
	callq	_Z10InitPerRunv
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-48(%rbp), %rdi
	callq	gettimeofday
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	_Z10ForwardSubv
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-64(%rbp), %rdi
	callq	gettimeofday
	imulq	$1000000, -64(%rbp), %rcx # imm = 0xF4240
	addq	-56(%rbp), %rcx
	imulq	$1000000, -48(%rbp), %rdx # imm = 0xF4240
	addq	-40(%rbp), %rdx
	subq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB2_18
# %bb.17:                               # %if.then72
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	printf
	movq	m, %rdi
	movl	Size, %esi
	movl	Size, %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	_Z8PrintMatPfii
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	printf
	movq	a, %rdi
	movl	Size, %esi
	movl	Size, %edx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	_Z8PrintMatPfii
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	printf
	movq	b, %rdi
	movl	Size, %esi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	_Z8PrintAryPfi
.LBB2_18:                               # %if.end76
	callq	_Z7BackSubv
	cmpl	$0, -20(%rbp)
	je	.LBB2_20
# %bb.19:                               # %if.then78
	movabsq	$.L.str.26, %rdi
	movb	$0, %al
	callq	printf
	movq	finalVec, %rdi
	movl	Size, %esi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	_Z8PrintAryPfi
.LBB2_20:                               # %if.end80
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sd	%rcx, %xmm1
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	$.L.str.27, %edi
	movb	$1, %al
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	printf
	movl	totalKernelTime(%rip), %edx
	movl	%edx, %ecx
	cvtsi2sd	%rcx, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movabsq	$.L.str.28, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movq	m, %rcx
	movq	%rcx, %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	free
	movq	a, %rcx
	movq	%rcx, %rdi
	callq	free
	movq	b, %rcx
	movq	%rcx, %rdi
	callq	free
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z21PrintDevicePropertiesv # -- Begin function _Z21PrintDevicePropertiesv
	.p2align	4, 0x90
	.type	_Z21PrintDevicePropertiesv,@function
_Z21PrintDevicePropertiesv:             # @_Z21PrintDevicePropertiesv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$816, %rsp              # imm = 0x330
	movl	$0, -716(%rbp)
	leaq	-716(%rbp), %rdi
	callq	cudaGetDeviceCount
	movl	-716(%rbp), %esi
	movabsq	$.L.str.29, %rdi
	movl	%eax, -724(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$0, -720(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-720(%rbp), %eax
	cmpl	-716(%rbp), %eax
	jge	.LBB3_7
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%esi, %esi
	leaq	-712(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	$712, %edx              # imm = 0x2C8
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	memset
	movl	-720(%rbp), %esi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	callq	cudaGetDeviceProperties
	xorl	%esi, %esi
	cmpl	%eax, %esi
	jne	.LBB3_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-712(%rbp), %rsi
	movabsq	$.L.str.30, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.31, %rdi
	movl	%eax, -740(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-424(%rbp), %rcx
	shrq	$10, %rcx
	movabsq	$.L.str.32, %rdi
	movq	%rcx, %rsi
	movl	%eax, -744(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-416(%rbp), %rcx
	shrq	$10, %rcx
	movabsq	$.L.str.33, %rdi
	movq	%rcx, %rsi
	movl	%eax, -748(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-408(%rbp), %esi
	movabsq	$.L.str.34, %rdi
	movl	%eax, -752(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-404(%rbp), %esi
	movabsq	$.L.str.35, %rdi
	movl	%eax, -756(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-400(%rbp), %rsi
	movabsq	$.L.str.36, %rdi
	movl	%eax, -760(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-392(%rbp), %esi
	movabsq	$.L.str.37, %rdi
	movl	%eax, -764(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-388(%rbp), %esi
	movl	-384(%rbp), %edx
	movl	-380(%rbp), %ecx
	movabsq	$.L.str.38, %rdi
	movl	%eax, -768(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-376(%rbp), %esi
	movl	-372(%rbp), %edx
	movl	-368(%rbp), %ecx
	movabsq	$.L.str.39, %rdi
	movl	%eax, -772(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-360(%rbp), %rsi
	movabsq	$.L.str.40, %rdi
	movl	%eax, -776(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-352(%rbp), %esi
	movl	-348(%rbp), %edx
	movabsq	$.L.str.41, %rdi
	movl	%eax, -780(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-364(%rbp), %esi
	movabsq	$.L.str.42, %rdi
	movl	%eax, -784(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-344(%rbp), %rsi
	movabsq	$.L.str.43, %rdi
	movl	%eax, -788(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-328(%rbp), %ecx
	cmpl	$0, %ecx
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdi
	cmovneq	%rsi, %rdi
	movabsq	$.L.str.44, %rsi
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -804(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-324(%rbp), %esi
	movabsq	$.L.str.47, %rdi
	movl	%eax, -808(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	cudaGetLastError
	movl	%eax, %edi
	callq	cudaGetErrorString
	movabsq	$.L.str.48, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
.LBB3_5:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-720(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	addq	$816, %rsp              # imm = 0x330
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z21PrintDevicePropertiesv, .Lfunc_end3-_Z21PrintDevicePropertiesv
	.cfi_endproc
                                        # -- End function
	.globl	_Z15InitProblemOncePc   # -- Begin function _Z15InitProblemOncePc
	.p2align	4, 0x90
	.type	_Z15InitProblemOncePc,@function
_Z15InitProblemOncePc:                  # @_Z15InitProblemOncePc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.49, %rdi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.50, %rsi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	fopen
	movq	%rax, fp
	movq	fp, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$Size, %rdx
	movb	$0, %al
	callq	fscanf
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	%rdx, %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	malloc
	movq	%rax, a
	movq	a, %rdi
	movl	Size, %esi
	movl	Size, %edx
	callq	_Z7InitMatPfii
	movabsq	$.L.str.52, %rdi
	movb	$0, %al
	callq	printf
	movq	a, %rdi
	movl	Size, %esi
	movl	Size, %edx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_Z8PrintMatPfii
	movslq	Size, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, b
	movq	b, %rdi
	movl	Size, %esi
	callq	_Z7InitAryPfi
	movabsq	$.L.str.53, %rdi
	movb	$0, %al
	callq	printf
	movq	b, %rdi
	movl	Size, %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	_Z8PrintAryPfi
	movl	Size, %eax
	imull	Size, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_Z15InitProblemOncePc, .Lfunc_end4-_Z15InitProblemOncePc
	.cfi_endproc
                                        # -- End function
	.globl	_Z10InitPerRunv         # -- Begin function _Z10InitPerRunv
	.p2align	4, 0x90
	.type	_Z10InitPerRunv,@function
_Z10InitPerRunv:                        # @_Z10InitPerRunv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	Size, %ecx
	imull	Size, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	m, %rax
	movslq	-4(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z10InitPerRunv, .Lfunc_end5-_Z10InitPerRunv
	.cfi_endproc
                                        # -- End function
	.globl	_Z10ForwardSubv         # -- Begin function _Z10ForwardSubv
	.p2align	4, 0x90
	.type	_Z10ForwardSubv,@function
_Z10ForwardSubv:                        # @_Z10ForwardSubv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movl	$1, -36(%rbp)
	movl	$2, -40(%rbp)
	movl	$3, -44(%rbp)
	movl	$4, -48(%rbp)
	movl	$5, -52(%rbp)
	movl	$6, -56(%rbp)
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movabsq	$.L.str.54, %rdi
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	printf
	leaq	-16(%rbp), %rdi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %r10
	shlq	$2, %r10
	movq	%r10, %rsi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	leaq	-24(%rbp), %rsi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	leaq	-32(%rbp), %rsi
	movslq	Size, %rdi
	shlq	$2, %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-16(%rbp), %rsi
	movq	m, %rdi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %r10
	shlq	$2, %r10
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	%r10, %rdx
	movl	$1, %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-24(%rbp), %rdx
	movq	a, %rsi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-32(%rbp), %rdx
	movq	b, %rsi
	movslq	Size, %rdi
	shlq	$2, %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movl	$0, -60(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	Size, %ecx
	imull	Size, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	-60(%rbp), %esi
	movabsq	$.L.str.55, %rdi
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movl	$0, -64(%rbp)
.LBB6_5:                                # %for.cond25
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movl	Size, %ecx
	imull	Size, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_8
# %bb.6:                                # %for.body28
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	-64(%rbp), %esi
	movabsq	$.L.str.56, %rdi
	movb	$1, %al
	callq	printf
# %bb.7:                                # %for.inc33
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end35
	movl	$0, -68(%rbp)
.LBB6_9:                                # %for.cond37
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	Size, %eax
	jge	.LBB6_12
# %bb.10:                               # %for.body39
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-32(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	-68(%rbp), %esi
	movabsq	$.L.str.57, %rdi
	movb	$1, %al
	callq	printf
# %bb.11:                               # %for.inc44
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_9
.LBB6_12:                               # %for.end46
	xorl	%eax, %eax
	movl	$512, -72(%rbp)         # imm = 0x200
	movl	Size, %ecx
	movl	%eax, -392(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-72(%rbp)
	movl	Size, %ecx
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-72(%rbp)
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	movl	$1, %ecx
	movl	-392(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %ecx
	movl	-396(%rbp), %edi        # 4-byte Reload
	addl	%ecx, %edi
	movl	%edi, -76(%rbp)
	movl	-76(%rbp), %esi
	movabsq	$.L.str.58, %rdi
	movb	$0, %al
	callq	printf
	movl	-72(%rbp), %esi
	leaq	-88(%rbp), %rdi
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	_ZN4dim3C2Ejjj
	movl	-76(%rbp), %esi
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN4dim3C2Ejjj
	xorl	%eax, %eax
	movl	$4, -108(%rbp)
	movl	Size, %ecx
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	movl	Size, %ecx
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	cmpl	$0, %edx
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	-404(%rbp), %esi        # 4-byte Reload
	cmovnel	%esi, %edx
	cmpl	$0, %edx
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	-408(%rbp), %r9d        # 4-byte Reload
	addl	%edx, %r9d
	movl	%r9d, -112(%rbp)
	movl	-108(%rbp), %esi
	movl	-108(%rbp), %edx
	leaq	-128(%rbp), %rdi
	callq	_ZN4dim3C2Ejjj
	movl	-112(%rbp), %esi
	movl	-112(%rbp), %edx
	leaq	-144(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN4dim3C2Ejjj
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-160(%rbp), %rdi
	callq	gettimeofday
	movl	$0, -4(%rbp)
.LBB6_13:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	Size, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_20
# %bb.14:                               # %for.body59
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx
	movq	%rdx, -176(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, -192(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -208(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -200(%rbp)
	movq	-208(%rbp), %rdi
	movl	-200(%rbp), %esi
	movq	-192(%rbp), %rdx
	movq	%rdx, -224(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -216(%rbp)
	movq	-224(%rbp), %rdx
	movl	-216(%rbp), %eax
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB6_16
# %bb.15:                               # %kcall.configok
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	Size, %edx
	movl	-4(%rbp), %ecx
	callq	_Z4Fan1PfS_ii
.LBB6_16:                               # %kcall.end
                                        #   in Loop: Header=BB6_13 Depth=1
	callq	cudaDeviceSynchronize
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movl	-136(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movq	-128(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movl	-120(%rbp), %ecx
	movl	%ecx, -248(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movl	-232(%rbp), %ecx
	movl	%ecx, -264(%rbp)
	movq	-272(%rbp), %rdi
	movl	-264(%rbp), %esi
	movq	-256(%rbp), %r8
	movq	%r8, -288(%rbp)
	movl	-248(%rbp), %ecx
	movl	%ecx, -280(%rbp)
	movq	-288(%rbp), %r8
	movl	-280(%rbp), %ecx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	-424(%rbp), %r9         # 8-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB6_18
# %bb.17:                               # %kcall.configok68
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	Size, %ecx
	movl	Size, %eax
	subl	-4(%rbp), %eax
	movl	-4(%rbp), %r9d
	movl	%eax, %r8d
	callq	_Z4Fan2PfS_S_iii
.LBB6_18:                               # %kcall.end70
                                        #   in Loop: Header=BB6_13 Depth=1
	callq	cudaDeviceSynchronize
	movabsq	$.L.str.59, %rdi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	callq	_Z14checkCUDAErrorPKc
# %bb.19:                               # %for.inc72
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_13
.LBB6_20:                               # %for.end74
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-304(%rbp), %rdi
	callq	gettimeofday
	imulq	$1000000, -304(%rbp), %rcx # imm = 0xF4240
	addq	-296(%rbp), %rcx
	imulq	$1000000, -160(%rbp), %rdx # imm = 0xF4240
	addq	-152(%rbp), %rdx
	subq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, totalKernelTime
	movq	m, %rdx
	movq	-16(%rbp), %rsi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	a, %rdx
	movq	-24(%rbp), %rsi
	movl	Size, %ecx
	imull	Size, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	b, %rdx
	movq	-32(%rbp), %rsi
	movslq	Size, %rdi
	shlq	$2, %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movl	$2, %ecx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	cudaFree
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z10ForwardSubv, .Lfunc_end6-_Z10ForwardSubv
	.cfi_endproc
                                        # -- End function
	.globl	_Z8PrintMatPfii         # -- Begin function _Z8PrintMatPfii
	.p2align	4, 0x90
	.type	_Z8PrintMatPfii,@function
_Z8PrintMatPfii:                        # @_Z8PrintMatPfii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -24(%rbp)
.LBB7_3:                                # %for.cond1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB7_3 Depth=2
	movq	-8(%rbp), %rax
	movl	Size, %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movslq	-24(%rbp), %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.61, %rdi
	movb	$1, %al
	callq	printf
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	printf
# %bb.7:                                # %for.inc7
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end9
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_Z8PrintMatPfii, .Lfunc_end7-_Z8PrintMatPfii
	.cfi_endproc
                                        # -- End function
	.globl	_Z8PrintAryPfi          # -- Begin function _Z8PrintAryPfi
	.p2align	4, 0x90
	.type	_Z8PrintAryPfi,@function
_Z8PrintAryPfi:                         # @_Z8PrintAryPfi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB8_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.62, %rdi
	movb	$1, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	movabsq	$.L.str.63, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z8PrintAryPfi, .Lfunc_end8-_Z8PrintAryPfi
	.cfi_endproc
                                        # -- End function
	.globl	_Z7BackSubv             # -- Begin function _Z7BackSubv
	.p2align	4, 0x90
	.type	_Z7BackSubv,@function
_Z7BackSubv:                            # @_Z7BackSubv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movslq	Size, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, finalVec
	movl	$0, -4(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-4(%rbp), %eax
	cmpl	Size, %eax
	jge	.LBB9_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	b, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	finalVec, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movl	$0, -8(%rbp)
.LBB9_3:                                # %for.cond6
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB9_6
# %bb.4:                                # %for.body8
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	a, %rax
	movl	Size, %ecx
	movl	Size, %edx
	subl	-4(%rbp), %edx
	subl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movl	Size, %ecx
	subl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	finalVec, %rax
	movl	Size, %ecx
	subl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	mulss	(%rax,%rsi,4), %xmm0
	movq	finalVec, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rax,%rsi,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	finalVec, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	a, %rax
	movl	Size, %ecx
	movl	Size, %esi
	subl	-4(%rbp), %esi
	subl	$1, %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	divss	(%rax,%rdx,4), %xmm0
	movq	finalVec, %rax
	movl	Size, %ecx
	subl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
# %bb.7:                                # %for.inc43
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end45
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_Z7BackSubv, .Lfunc_end9-_Z7BackSubv
	.cfi_endproc
                                        # -- End function
	.globl	_Z7InitMatPfii          # -- Begin function _Z7InitMatPfii
	.p2align	4, 0x90
	.type	_Z7InitMatPfii,@function
_Z7InitMatPfii:                         # @_Z7InitMatPfii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB10_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -24(%rbp)
.LBB10_3:                               # %for.cond1
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB10_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	fp, %rdi
	movq	-8(%rbp), %rax
	movl	Size, %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movslq	-24(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fscanf
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc6
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_1
.LBB10_8:                               # %for.end8
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_Z7InitMatPfii, .Lfunc_end10-_Z7InitMatPfii
	.cfi_endproc
                                        # -- End function
	.globl	_Z7InitAryPfi           # -- Begin function _Z7InitAryPfi
	.p2align	4, 0x90
	.type	_Z7InitAryPfi,@function
_Z7InitAryPfi:                          # @_Z7InitAryPfi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB11_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	fp, %rdi
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	fscanf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_Z7InitAryPfi, .Lfunc_end11-_Z7InitAryPfi
	.cfi_endproc
                                        # -- End function
	.globl	_Z4Fan1PfS_ii           # -- Begin function _Z4Fan1PfS_ii
	.p2align	4, 0x90
	.type	_Z4Fan1PfS_ii,@function
_Z4Fan1PfS_ii:                          # @_Z4Fan1PfS_ii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	callq	__cudaPopCallConfiguration
	movabsq	$_Z4Fan1PfS_ii, %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	movl	-32(%rbp), %r8d
	movl	%r8d, -80(%rbp)
	movq	-88(%rbp), %rdi
	movl	-80(%rbp), %r8d
	movq	-56(%rbp), %r9
	movq	%r9, -104(%rbp)
	movl	-48(%rbp), %r10d
	movl	%r10d, -96(%rbp)
	movq	-104(%rbp), %r9
	movl	-96(%rbp), %r10d
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	leaq	-144(%rbp), %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_Z4Fan1PfS_ii, .Lfunc_end12-_Z4Fan1PfS_ii
	.cfi_endproc
                                        # -- End function
	.globl	_Z4Fan2PfS_S_iii        # -- Begin function _Z4Fan2PfS_S_iii
	.p2align	4, 0x90
	.type	_Z4Fan2PfS_S_iii,@function
_Z4Fan2PfS_S_iii:                       # @_Z4Fan2PfS_S_iii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-28(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	callq	__cudaPopCallConfiguration
	movabsq	$_Z4Fan2PfS_S_iii, %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	movl	-40(%rbp), %r8d
	movl	%r8d, -88(%rbp)
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %r8d
	movq	-64(%rbp), %r10
	movq	%r10, -112(%rbp)
	movl	-56(%rbp), %r9d
	movl	%r9d, -104(%rbp)
	movq	-112(%rbp), %r10
	movl	-104(%rbp), %r9d
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r10, %rcx
	movl	%r9d, %r8d
	leaq	-160(%rbp), %r9
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_Z4Fan2PfS_S_iii, .Lfunc_end13-_Z4Fan2PfS_S_iii
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
.Lfunc_end14:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end14-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z14checkCUDAErrorPKc   # -- Begin function _Z14checkCUDAErrorPKc
	.p2align	4, 0x90
	.type	_Z14checkCUDAErrorPKc,@function
_Z14checkCUDAErrorPKc:                  # @_Z14checkCUDAErrorPKc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	cudaGetLastError
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)
	cmpl	-12(%rbp), %ecx
	je	.LBB15_2
# %bb.1:                                # %if.then
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	cudaGetErrorString
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movabsq	$.L.str.64, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	exit
.LBB15_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_Z14checkCUDAErrorPKc, .Lfunc_end15-_Z14checkCUDAErrorPKc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_register_globals
	.type	__cuda_register_globals,@function
__cuda_register_globals:                # @__cuda_register_globals
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movabsq	$_Z4Fan1PfS_ii, %rax
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
	movabsq	$_Z4Fan2PfS_S_iii, %rcx
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
.Lfunc_end16:
	.size	__cuda_register_globals, .Lfunc_end16-__cuda_register_globals
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
.Lfunc_end17:
	.size	__cuda_module_ctor, .Lfunc_end17-__cuda_module_ctor
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
.Lfunc_end18:
	.size	__cuda_module_dtor, .Lfunc_end18-__cuda_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	Size,@object            # @Size
	.bss
	.globl	Size
	.p2align	2
Size:
	.long	0                       # 0x0
	.size	Size, 4

	.type	a,@object               # @a
	.globl	a
	.p2align	3
a:
	.quad	0
	.size	a, 8

	.type	b,@object               # @b
	.globl	b
	.p2align	3
b:
	.quad	0
	.size	b, 8

	.type	finalVec,@object        # @finalVec
	.globl	finalVec
	.p2align	3
finalVec:
	.quad	0
	.size	finalVec, 8

	.type	m,@object               # @m
	.globl	m
	.p2align	3
m:
	.quad	0
	.size	m, 8

	.type	fp,@object              # @fp
	.globl	fp
	.p2align	3
fp:
	.quad	0
	.size	fp, 8

	.type	totalKernelTime,@object # @totalKernelTime
	.globl	totalKernelTime
	.p2align	2
totalKernelTime:
	.long	0                       # 0x0
	.size	totalKernelTime, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"WG size of kernel 1 = %d, WG size of kernel 2= %d X %d\n"
	.size	.L.str, 56

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Usage: gaussian -f filename / -s size [-q]\n\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-q (quiet) suppresses printing the matrix and result values.\n"
	.size	.L.str.2, 62

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-f (filename) path of input file\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-s (size) size of matrix. Create matrix and rhs in this program \n"
	.size	.L.str.4, 66

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The first line of the file contains the dimension of the matrix, n."
	.size	.L.str.5, 68

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The second line of the file is a newline.\n"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The next n lines contain n tab separated values for the matrix."
	.size	.L.str.7, 64

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The next line of the file is a newline.\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The next line of the file is a 1xn vector with tab separated values.\n"
	.size	.L.str.9, 70

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The next line of the file is a newline. (optional)\n"
	.size	.L.str.10, 52

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The final line of the file is the pre-computed solution. (optional)\n"
	.size	.L.str.11, 69

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Example: matrix4.txt:\n"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"4\n"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-0.6\t-0.5\t0.7\t0.3\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-0.3\t-0.9\t0.3\t0.7\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"-0.4\t-0.5\t-0.3\t-0.8\n"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0.0\t-0.1\t0.2\t0.9\n"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"-0.85\t-0.68\t0.24\t-0.53\n"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"0.7\t0.0\t-0.4\t-0.5\n"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Create matrix internally in parse, size = %d \n"
	.size	.L.str.21, 47

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Read file from %s \n"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Matrix m is: \n"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Matrix a is: \n"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Array b is: \n"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The final solution is: \n"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\nTime total (including memory transfers)\t%f sec\n"
	.size	.L.str.27, 49

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Time for CUDA kernels:\t%f sec\n"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Total Device found: %d"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\nDevice Name \t\t - %s "
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\n**************************************"
	.size	.L.str.31, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\nTotal Global Memory\t\t\t - %lu KB"
	.size	.L.str.32, 33

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\nShared memory available per block \t - %lu KB"
	.size	.L.str.33, 46

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\nNumber of registers per thread block \t - %d"
	.size	.L.str.34, 45

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\nWarp size in threads \t\t\t - %d"
	.size	.L.str.35, 31

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\nMemory Pitch \t\t\t\t - %zu bytes"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\nMaximum threads per block \t\t - %d"
	.size	.L.str.37, 35

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\nMaximum Thread Dimension (block) \t - %d %d %d"
	.size	.L.str.38, 47

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\nMaximum Thread Dimension (grid) \t - %d %d %d"
	.size	.L.str.39, 46

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\nTotal constant memory \t\t\t - %zu bytes"
	.size	.L.str.40, 39

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\nCUDA ver \t\t\t\t - %d.%d"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\nClock rate \t\t\t\t - %d KHz"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\nTexture Alignment \t\t\t - %zu bytes"
	.size	.L.str.43, 35

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\nDevice Overlap \t\t\t\t - %s"
	.size	.L.str.44, 26

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Allowed"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Not Allowed"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\nNumber of Multi processors \t\t - %d\n\n"
	.size	.L.str.47, 38

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\n%s"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The file name is: %s\n"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"r"
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%d"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The input matrix a is:\n"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The input array b is:\n"
	.size	.L.str.53, 23

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"blockIdx.x: %d, threadIdx.x: %d, blockIdx.y: %d, threadIdx.y: %d, blockDim.x: %d, blockDim.y: %d\n"
	.size	.L.str.54, 98

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"M val: %f at %d\n"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"A val: %f at %d\n"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"B val: %f at %d\n"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"1d grid size: %d\n"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Fan2"
	.size	.L.str.59, 5

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%f"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%8.2f "
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%.2f "
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\n\n"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Cuda error: %s: %s.\n"
	.size	.L.str.64, 21

	.type	.L__unnamed_1,@object   # @0
.L__unnamed_1:
	.asciz	"_Z4Fan1PfS_ii"
	.size	.L__unnamed_1, 14

	.type	.L__unnamed_2,@object   # @1
.L__unnamed_2:
	.asciz	"_Z4Fan2PfS_S_iii"
	.size	.L__unnamed_2, 17

	.type	.L__unnamed_3,@object   # @2
	.section	.nv_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_3:
	.asciz	"P\355U\272\001\000\020\000\000L\000\000\000\000\000\000\002\000\001\001@\000\000\000P?\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\001\000=\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000e\000\000\000\000\000\000\000\000\000\000\000\250>\000\000\000\000\000\000\350:\000\000\000\000\000\000=\005=\000@\0008\000\003\000@\000\017\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text._Z4Fan2PfS_S_iii\000.nv.info._Z4Fan2PfS_S_iii\000.nv.shared._Z4Fan2PfS_S_iii\000.nv.global\000.nv.global.init\000.rel.text._Z4Fan2PfS_S_iii\000.nv.constant0._Z4Fan2PfS_S_iii\000.text._Z4Fan1PfS_ii\000.nv.info._Z4Fan1PfS_ii\000.nv.shared._Z4Fan1PfS_ii\000.rel.text._Z4Fan1PfS_ii\000.nv.constant0._Z4Fan1PfS_ii\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000_Z4Fan2PfS_S_iii\000.text._Z4Fan2PfS_S_iii\000.nv.info._Z4Fan2PfS_S_iii\000.nv.shared._Z4Fan2PfS_S_iii\000.nv.global\000threadIdx\000blockIdx\000blockDim\000.nv.global.init\000_$_str\000_$_str1\000vprintf\000.rel.text._Z4Fan2PfS_S_iii\000.nv.constant0._Z4Fan2PfS_S_iii\000_param\000_Z4Fan1PfS_ii\000.text._Z4Fan1PfS_ii\000.nv.info._Z4Fan1PfS_ii\000.nv.shared._Z4Fan1PfS_ii\000$_Z4Fan1PfS_ii$__cuda_sm3x_div_rn_noftz_f32\000$_Z4Fan1PfS_ii$__cuda_sm3x_div_rn_noftz_f32_slowpath\000.rel.text._Z4Fan1PfS_ii\000.nv.constant0._Z4Fan1PfS_ii\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\000\000\000\003\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\220\000\000\000\003\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\000\000\001\000\016\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\245\000\000\000\001\000\016\000\002\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\256\000\000\000\001\000\016\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\267\000\000\000\003\000\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\307\000\000\000\001\000\r\000\000\000\000\000\000\000\000\000?\000\000\000\000\000\000\000\316\000\000\000\001\000\r\000?\000\000\000\000\000\000\000b\000\000\000\000\000\000\000\371\000\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000-\001\000\000\003\000\f\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000q\001\000\000\"\000\f\000\320\016\000\000\000\000\000\000`\001\000\000\000\000\000\000\235\001\000\000\"\000\f\0000\020\000\000\000\000\000\000P\b\000\000\000\000\000\000\352\001\000\000\003\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\013\000\000\000\000\000\000\000\000\000\200\027\000\000\000\000\000\000\326\000\000\000\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\037\001\000\000\022\020\f\000\000\000\000\000\000\000\000\000\200\030\000\000\000\000\000\000\004/\b\000\020\000\000\000\023\000\000\000\004#\b\000\f\000\000\000\000\000\000\000\004\022\b\000\f\000\000\000\000\000\000\000\004\021\b\000\f\000\000\000\000\000\000\000\004#\b\000\013\000\000\000\000\000\000\000\004\022\b\000\013\000\000\000\000\000\000\000\004\021\b\000\013\000\000\000\000\000\000\000\004#\b\000\020\000\000\000\000\000\000\000\004\022\b\000\020\000\000\0000\000\000\000\004\021\b\000\020\000\000\0000\000\000\000\004/\b\000\016\000\000\000\021\000\000\000\004#\b\000\016\000\000\000\000\000\000\000\004\022\b\000\016\000\000\000H\000\000\000\004\021\b\000\016\000\000\000H\000\000\000\0010\000\000\001*\000\000\004\n\b\000\t\000\000\000@\001$\000\003\031$\000\004\027\f\000\000\000\000\000\005\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\004\000\034\000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360\021\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\017\004\000\017\000\000\000\004\035\020\000\370\004\000\000h\006\000\000\220\007\000\0008\b\000\000\004\034\004\000X\027\000\000\004\036\004\000\020\002\000\000\0010\000\000\001*\000\000\004\n\b\000\r\000\000\000@\001\030\000\003\031\030\000\004\027\f\000\000\000\000\000\003\000\024\000\000\360\021\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360\021\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\003\033\377\000\004\017\004\000\017\000\000\000\004\035\020\000\230\003\000\000\350\004\000\000\250\b\000\000\270\n\000\000\004\034\004\000\310\016\000\000\004\036\004\000 \002\000\0008\013\000\000\000\000\000\000+\000\000\000\b\000\000\000H\013\000\000\000\000\000\000,\000\000\000\b\000\000\000\320\013\000\000\000\000\000\000*\000\000\000\017\000\000\000\330\007\000\000\000\000\000\000+\000\000\000\007\000\000\000\350\007\000\000\000\000\000\000,\000\000\000\007\000\000\000p\b\000\000\000\000\000\000*\000\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\207\373\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\003\0007\000\200\007\230\\\020\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\002\000\027\004\200\007\230L\020\000\007\001\000\200\020\\\002\003'\000\000\b\020\\\357\037\340!\003\274\177\000\000\360\007\026\000\000\000\001\000\000\007\000\000\000\224\357\000\000\007\000\200\007\230\\\357\037\340!\003\274\177\000\003\360\307\025\000\000\000\001\003\003\007\000\000\000\224\357\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\207\025\000\000\000\001\004\004\007\000\000\000\224\357\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\025\000\000\000\001\006\006\007\000\000\000\225\357\005\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000w\000\200\007\230\\\005\000W\000\200\007\230\\\f\000\307\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\207\024\000\000\000\001\006\006\007\000\000\000\225\357\b\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340!\003\274\177\000\006\360\007\024\000\000\000\001\006\006\007\000\000\000\225\357\n\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000W\000\200\007\230\\\007\000\307\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\r\020\367\017\000\200\020\\\005\002\367\017\000\b\020\\\r\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\f\r\367\017\000\200\327[\r\r\367\017\300\002\330[\357\037\340\375\003\274g\000\f\000\307\000\200\007\230\\\r\000\327\000\200\007\230\\\n\f\007\000\000\000\260\240\357\037\340\375\003\274\177\000\013\020\207\000\000\000\020\034\005\002\367\017\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017\300\002\330[\357\037\340\375\003\274g\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\b\n\007\000\000\000\260\240\357\037\340\375\003\274\177\000\t\020\007\001\000\000\020\034\005\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\002\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\260\240\357\037\340\375\003\274\177\000\007\020\207\001\000\000\020\034\005\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\002\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\004\006\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\020\307\001\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\020\007\002\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\000\004\007\000\000\000\220\240\017\031\340\375\003<d\000\000\000\027\002\000\000\310\360\000\000\007\000\200\007\230\\\003\000W\002\000\000\310\360\357\037\340\375\003<d\000\003\0007\000\200\007\230\\\004\000'\000\200\007\230L\003\003G\000\000\0038\\\357\037\340\375\003\274\177\000\000\0007\000\000\000\020\\\005\020\207\001\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\003\004\007\000\000\000\220\200\005\020\007\002\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\004\377G\000\000\007G\\\003\0047\000\000\000\020\\\357\037\340\375\003\274\177\000\007\0007\000\200\003b[\020\000\007\001\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\200\022\001\000\240\342\017\000\200\001\000\000@\342\017\000\007\000\000\000@\342\357\037\340!\003\274\177\000\017\000\007\000\000\000@\343\000\000'\002\000\000\310\360\000\000\007\000\200\007\230\\\017\031\340\375\003\274\177\000\003\000g\002\000\000\310\360\003\0007\000\200\007\230\\\004\0007\000\200\007\230L\017\031\340\375\003\274\177\000\003\003G\000\000\0038\\\000\0007\000\000\000\020\\\005\020\207\001\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\005\020\007\002\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\003\003G\000\000\000\021\\\357\037\340\375\003\274\177\000\007\0007\000\200\003b[\017\000\200\001\000\000@\342\017\000\007\000\000\000@\342\357\037\340!\003\274\177\000\017\000\007\000\000\000@\343\005\000W\002\000\000\310\360\005\000W\000\200\007\230\\\357\037\340!\003<d\000\n\000'\000\200\007\230L\000\005\247\000\000\0038\\\003\000\027\002\000\000\310\360\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\000\0007\000\000\000\020\\\007\020G\002\000\000\020\034\357\037\340\375\003\274\177\000\004\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\002\330[\006\000g\000\200\007\230\\\357\037\340=\003<d\000\007\000w\000\200\007\230\\\000\006\007\000\000\000\220\240\004\000g\002\000\000\310\360\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\013\0007\000\200\007\230L\006\004\267\000\000\0038\\\017\031\340\375\003\274\177\000\000\000'\002\000\000\310\360\000\000\007\000\200\007\230\\\b\006\007\000\000\000\020\\\357\037\340\375\003\274\177\000\007\020\207\002\000\000\020\034\t\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\004\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\b\006\007\000\000\000\220\240\357\037\340\375\003\274\177\000\007\020\007\003\000\000\020\034\b\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017@\004\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\005\006\007\000\000\000\220\240\357\037\340\375\003\274\177\000\006\020\007\003\000\000\020\034\007\002\367\017\000\b\020\\\t\006G\000\000\000 \004\357\037\340\375\003\274\177\000\005\007\367\017\000\002G\\\t\000\227\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\002\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\003\b\007\000\000\000\220\240\t\020\207\003\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\004\b\007\000\000\000\220\240\005\020\307\003\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\000\004\007\000\000\000\220\240\005\020\007\004\000\000\020\034\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\n\004\007\000\000\000\220\240\005\020G\004\000\000\020\034\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\013\004\007\000\000\000\220\240\004\360\007\000\000\000\000\001\357\037\340\375\003\274\177\000\005\360\007\000\000\000\000\001\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\000\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000\007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\@\000\000\000\000\000 \342\005\020\367\017\000\200\020\\\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000W\000\200\007\230\\\007\020\207\001\000\000\020\034\000\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\000\000\007\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017@\000\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340\375\003\274\177\000\006\006\007\000\000\000\220\200\t\020G\002\000\000\020\034\000\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\000\000\007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017@\000\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340\375\003\274\177\000\000\b\007\000\000\000\220\200\t\020\007\002\000\000\020\034\005\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\005\000W\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017\300\002\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340\375\003\274\177\000\005\b\007\000\000\000\220\200\000\000W\000\000\000\020\\\000\000\027\000\000\000\000\034\017\031\340\375\003<d\000\000\006\007\000\000\0038\\\007\000W\000\000\000\020\\\007:w\000\000\000\340\\\357\037\340\375\003\274\177\000\b\007\367\001\000\000)8\t\000\207\000\200\007\230\\\b\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000\207\000\200\007\230\\\b\000\227\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\b\007'\000@\004\3706\007\007'\000\000\000H8\357\037\340\375\003\274\177\000\003\003w\000\000\200\020\\\004\004\207\000\000\b\020\\\t\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000G\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\001\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\003\b\007\000\000\000\220\200\357\037\340\375\003\274\177\000\t\020\207\000\000\000\020\034\004\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\002\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\b\007\000\000\000\260\200\357\037\340\375\003<d\000\004\000\207\000\200\007\230\\\007\000\227\000\200\007\230\\\006\006W\000\000\0038\\\357\037\340\375\003\274\177\000\t\020\207\002\000\000\020\034\n\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\005\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\b\b\007\000\000\000\220\200\357\037\340\375\003<d\000\005\bW\000\000\000\020\\\006\006W\000\000\000\020\\\006:g\000\000\000\340\\\357\037\340\375\003\274\177\000\b\006\367\001\000\000)8\t\000\207\000\200\007\230\\\b\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000\207\000\200\007\230\\\b\000\227\000\200\007\230\\\t\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000\207\000\200\007\230\\\006\t'\000@\003\3706\t\t'\000\000\000H8\357\037\340\375\003\274\177\000\t\004\227\000\000\200\020\\\006\007g\000\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\003\330[\357\037\340\375\003<d\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\220\200\357\037\340!\003\274\177\000\000\000W\000\000\000\020\\\000:\007\000\000\000\340\\\b\000\367\001\000\000)8\357\037\340\375\003\274\177\000\t\000\207\000\200\007\230\\\b\000\007\000\200\007\230\\\000\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\b\000\007\000\200\007\230\\\000\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\000\b'\000@\000\3706\b\b'\000\000\000H8\b\004\207\000\000\200\020\\\357\037\340\375\003\274\177\000\007\007\007\000\000\b\020\\\005\000\207\000\200\007\230\\\000\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\000\n7\000\000 \250\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\000\000g\000\000\002\200Y\005\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000w\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\000\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\020\207\002\000\000\020\034\000\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004\367\017\200\003k[\017\000\000\000\000\000@\343\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\007\020\367\017\000\200\020\\\000\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017@\000\330[\357\037\340\375\003<d\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\006\007\000\000\000\260\200\357\037\340\375\003\274\177\000\004\000g\000\200\007\230\\\005\000w\000\200\007\230\\\007\020\207\001\000\000\020\034\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\000\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\b\006\007\000\000\000\220\200\007\020G\002\000\000\020\034\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\000\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\000\006\007\000\000\000\220\200\007\020\007\002\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\003\006\007\000\000\000\220\200\000\0007\000\000\000\020\\\357\037\340!\003\274\177\000\000\000\027\000\000\000\000\034\b\b\007\000\000\0038\\\007\020\207\002\000\000\020\034\357\037\340\375\003\274\177\000\t\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\004\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\220\200\006\0067\000\000\000\020\\\357\037\340!\003\274\177\000\006\bg\000\000\000\020\\\006:g\000\000\000\340\\\007\006\367\001\000\000)8\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\b\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\000\207\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\007\006'\000\300\003\3706\006\006'\000\000\000H8\004\004g\000\000\200\020\\\357\037\340\375\003\274\177\000\006\005w\000\000\b\020\\\005\000G\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\007\020\007\001\000\000\020\034\357\037\340\375\003\274\177\000\002\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\001\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\006\006\007\000\000\000\260\200\002\000g\000\200\007\230\\\357\037\340!\003\274\177\000\005\000w\000\200\007\230\\\003:7\000\000\000\340\\\006\003\367\001\000\000)8\357\037\340\375\003\274\177\000\007\000g\000\200\007\230\\\006\0007\000\200\007\230\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000w\000\200\007\230\\\007\0007\000\200\007\230\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\003\007'\000\300\001\3706\007\007'\000\000\000H8\007\002w\000\000\200\020\\\357\037\340\375\003\274\177\000\003\0057\000\000\b\020\\\007\000w\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017\300\001\330[\006\000g\000\200\007\230\\\357\037\340!\003<d\000\007\000w\000\200\007\230\\\b\006\007\000\000\000\220\200\000:\007\000\000\000\340\\\357\037\340\375\003\274\177\000\006\000\367\001\000\000)8\007\000g\000\200\007\230\\\006\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000w\000\200\007\230\\\000\006'\000@\000\3706\006\006'\000\000\000H8\357\037\340\375\003\274\177\000\006\002g\000\000\200\020\\\005\005\007\000\000\b\020\\\003\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\000\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\000\nG\000\000 \250\\\000\000\007\000\200\007\230\\\000\000\207\000\000\001\200Y\357\037\340\375\003\274\177\000\003\000g\000\200\007\230\\\004\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\000\002\007\000\000\000\220\240\017\000\007\000\000\000@\343\017\000\007\000\000\000\000\343\377\007\000\374\000\200\037\000\017\000\007\377\377\017@\342\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\007\375\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\007\000\200\007\230\\\003\0007\000\200\007\230\\\020\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\002\000\027\004\200\007\230L\020\000\007\001\000\200\020\\\002\003'\000\000\b\020\\\357\037\340!\003\274\177\000\000\360G\025\000\000\000\001\000\000\007\000\000\000\224\357\000\000\007\000\200\007\230\\\357\037\340!\003\274\177\000\003\360\007\025\000\000\000\001\003\003\007\000\000\000\224\357\003\0007\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\207\024\000\000\000\001\004\004\007\000\000\000\225\357\b\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000W\000\200\007\230\\\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340!\003\274\177\000\004\360\007\024\000\000\000\001\004\004\007\000\000\000\225\357\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000W\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000\207\000\200\007\230\\\005\000\227\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\t\020\367\017\000\200\020\\\n\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017@\005\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\260\240\357\037\340\375\003\274\177\000\007\020\207\000\000\000\020\034\b\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017@\004\330[\357\037\340\375\003\274g\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\004\006\007\000\000\000\260\240\357\037\340\375\003\274\177\000\005\020\007\001\000\000\020\034\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\020G\001\000\000\020\034\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\357\037\340\375\003\274g\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\000\004\007\000\000\000\220\240\017\031\340\375\003<d\000\000\000\027\002\000\000\310\360\000\000\007\000\200\007\230\\\003\000W\002\000\000\310\360\357\037\340\375\003<d\000\003\0007\000\200\007\230\\\004\000'\000\200\007\230L\003\003G\000\000\0038\\\357\037\340\375\003\274\177\000\000\0007\000\000\000\020\\\005\020\007\001\000\000\020\034\003\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\003\004\007\000\000\000\220\200\005\020G\001\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003\274\177\000\004\004\007\000\000\000\220\200\004\377G\000\000\007G\\\003\0047\000\000\000\020\\\357\037\340\375\003\274\177\000\007\0007\000\200\003b[\020\000\007\001\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\000<\000\000\220\342\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\017\031\340\375\003<d\000\006\000W\002\000\000\310\360\006\000g\000\200\007\230\\\005\000\027\002\000\000\310\360\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\t\020\007\001\000\000\020\034\000\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\000\000\007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017@\000\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340\375\003\274\177\000\004\b\007\000\000\000\220\200\t\020G\001\000\000\020\034\000\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\t\000\227\000\200\007\230\\\000\000\007\000\200\007\230\\\b\t\367\017\000\200\327[\357\037\340\375\003\274\177\000\t\t\367\017@\000\330[\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\017\031\340\375\003\274\177\000\003\b\007\000\000\000\220\200\000\3777\000\000\007G\\\000\000G\000\000\000\020\\\357\037\340\375\003\274\177\000\t\020\207\001\000\000\020\034\007\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\b\t\367\017\000\200\327[\t\t\367\017\300\003\330[\357\037\340\375\003\274g\000\b\000\207\000\200\007\230\\\t\000\227\000\200\007\230\\\006\b\007\000\000\000\220\240\357\037\340\375\003\274\177\000\006\020\207\001\000\000\020\034\007\002\367\017\000\b\020\\\t\006G\000\000\000 \004\357\037\340\375\003\274\177\000\n\007\367\017\000\002G\\\t\000\227\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017@\005\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\005\b\007\000\000\000\220\240\t\020\007\002\000\000\020\034\357\037\340\375\003\274\177\000\005\002\367\017\000\b\020\\\t\000\227\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\002\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\004\b\007\000\000\000\220\240\005\020G\002\000\000\020\034\357\037\340\375\003\274\177\000\b\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\004\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\240\005\020\207\002\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\000\004\007\000\000\000\220\240\004\360\007\000\000\000\000\001\357\037\340\375\003\274\177\000\005\360\007\000\000\000\000\001\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\000\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000\007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\@\000\000\000\000\000 \342\017\000\007\000\000\000\370\360\357\037\340!\003\274\177\000\017\000\007\000\000\000\370\360\000\000\027\002\000\000\310\360\000\000\007\000\200\007\230\\\017\031\340\375\003\274\177\000\003\000W\002\000\000\310\360\003\0007\000\200\007\230\\\004\000'\000\200\007\230L\017\031\340\375\003\274\177\000\003\003G\000\000\0038\\\000\0007\000\000\000\020\\\005\020\007\001\000\000\020\034\357\037\340\375\003\274\177\000\003\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\003\004\007\000\000\000\220\200\005\020G\001\000\000\020\034\357\037\340\375\003\274\177\000\006\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004\377G\000\000\007G\\\357\037\340\375\003\274\177\000\003\0047\000\000\000\020\\\007\0007\000\200\003b[\017\000\200\001\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\017\000\207N\000\000@\342\005\020\207\000\000\000\020\034\357\037\340\375\003\274\177\000\000\002\367\017\000\b\020\\\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\000\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000W\000\200\007\230\\\005\020\007\001\000\000\020\034\006\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340\375\003<d\000\005\004\007\000\000\000\220\200\004\000'\000\200\007\230L\006\000W\002\000\000\310\360\357\037\340!\003<d\000\006\000g\000\200\007\230\\\004\004g\000\000\0038\\\006\000\027\002\000\000\310\360\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\004g\000\000\000\020\\\007\020G\001\000\000\020\034\357\037\340\375\003\274\177\000\b\002\367\017\000\b\020\\\007\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\004\330[\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\007\000w\000\200\007\230\\\t\006\007\000\000\000\220\200\004\004\227\000\000\000\020\\\357\037\340!\003<d\000\004\004\027\000\000\000\000\034\004\005G\000\000\0038\\\004\nG\000\000\000\340\\\357\037\340\375\003\274\177\000\006\000G\000\200\007\230\\\004\000\367\017\200\007\230\\\004\006'\000@\002\3706\357\037\340\375\003\274\177\000\006\006'\000\000\000H8\f\000g\000\000\200\020\\\r\003G\000\000\b\020\\\017\031\340\375\003\274\177\000\n:\227\000\000\000\340\\\013\n\367\001\000\000)8\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\b\000\247\000\200\007\230\\\007\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\b\000\207\000\200\007\230\\\007\000w\000\200\007\230\\\007\b'\000\300\003\3706\357\037\340\375\003\274\177\000\b\b'\000\000\000H8\013\f\207\000\000\200\020\\\f\rw\000\000\b\020\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\f\000\307\000\200\007\230\\\n\013\367\017\000\200\327[\357\037\340\375\003\274\177\000\013\013\367\017@\006\330[\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\017\031\340!\003<d\000\n\n\007\000\000\000\220\200\005\005\227\000\000\0038\\\005:W\000\000\000\340\\\357\037\340\375\003\274\177\000\f\005\367\001\000\000)8\r\000\307\000\200\007\230\\\f\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\307\000\200\007\230\\\f\000\327\000\200\007\230\\\r\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\307\000\200\007\230\\\005\r'\000\300\002\3706\r\r'\000\000\000H8\357\037\340\375\003\274\177\000\r\000\327\000\000\200\020\\\000\003W\000\000\b\020\\\r\r\207\000\000\200\020\\\357\037\340\375\003\274\177\000\000\000w\000\000\b\020\\\r\000\327\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\f\r\367\017\000\200\327[\r\r\367\017@\000\330[\f\000\307\000\200\007\230\\\357\037\340!\003\274\177\000\r\000\327\000\200\007\230\\\f\f\007\000\000\000\220\200\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\f\000\307\000\200\007\230\\\000\000g\000\200\007\230\\\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000\207\000\200\007\230\\\005\000w\000\200\007\230\\@\000\000\021\000\000`\342\357\037\340\375\003\274\177\000\b\000g\000\200\007\230\\\007\020\367\017\000\200\020\\\002\002\367\017\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\002\000'\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017@\001\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340\375\003\274\177\000\006\006\007\000\000\000\260\200\002\000g\000\200\007\230\\\006\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\000\002\007\000\000\200\020\\\002\0067\000\000\b\020\\\003\000G\000\000\200\020\\\357\037\340\375\003\274\177\000\000\002W\000\000\b\020\\\003\0007\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\000\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\b\002\007\000\000\000\220\240\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000\000\343\006\000\247\000\200\007\230\\\007\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\000\006w\000\000\000\210\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\000\000\013\000\000@\342\357\037\340!\003<d\000\007\000w\000\200\007\230\\\b\007G\000\000\000\200P\007\nw\000\0000\250\\\357\037\340\375\003\274\177\000\t\360\007\000\000\370\003\001\t\007\207\000\200\004\200Y\t\b\227\000\000\004\200Y\357\037\340\375\003\274\177\000\b\000\367\017\200\007\230\\\006\000g\000\200\007\230\\\b\006\227\000\000\004\200Y\357\037\340\375\003\274\177\000\n\007\207\000\000\003\200Y\n\n\227\000\000\004\200Y\006\007\247\000\000\003\200Y\357\037\340\375\003\274\177\000\006\006\227\000\000\005\200Y\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\@\000\000\003\000\000`\342\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\n\000g\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000\247\000\200\007\230\\\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\b\006w\001\000\000(8\b\b\367\017\000\000\000\004\t\b\367\377\377\377\017\034\357\037\340\375\003\274\177\000\013\000w\000\200\007\230\\\f\013w\001\000\000(8\f\f\367\017\000\000\000\004\357\037\340\375\003\274\177\000\r\f\367\377\377\377\017\034\007\t\327\017\200\003h6\017\r\327\017\200\003h6\357\037\340\375\003\274\177\000\007\000\007!\200\003\220P\n\000\247\000\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\b\000\207\000\200\007\230\\\016\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\t\000\267\000\200\007\230\\\013\000\307\000\200\007\230\\\f\000\327\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\000)\000\000\240\342\017\000\000\002\000\000@\342\n\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\017\000\007\000\000\000@\343\n\000\247\000\200\007\230\\\017\031\340\375\003\274\177\000\r\n\247\000\000\020\252\\\017\360\007\000\000\370\007\001\017\000\367\000\200\007\230\\\357\037\340\375\003\274\177\000\007\r\367\000\200\203\274[\r\000\327\000\200\007\230\\\017\000\367\000\200\007\230\\\357\037\340\375\003<d\000\017\000\200f\000\000@\342\007\000w\000\200\007\230\\\021\nw\000\000\020\252\\\357\037\340\375\003\274\177\000\007\021\367\000\200\203\274[\021\000\027\001\200\007\230\\\017\000\200c\000\000@\342\357\037\340\375\003\274\177\000\022\tg\000\000\002G\\\022\022\367\377\377\377\007\004\007\022\367\017\200\003e[\357\037\340\375\003\274\177\000\017\000\200\\\000\000@\342\007\r\367\000\200\203\262[\017\021\367\000\200\203\262[\357\037\340\375\003\274\177\000\027\000\007 \200\003\220P\007\000\007\340\200\003\220P\017\020\007\340\200\003\220P\357\037\340\375\003\274\177\000\017\000\202X\000\000@\342\r\006\367\377\377\377\007\004\027\r\367\017\200\003e[\357\037\340\375\003\274\177\000\017\020\007A\200\003\220P\017\000\001R\000\000@\342\r\t\367\377\377\377\007\004\357\037\340\375\003\274\177\000\017\r\367\017\200\003e[\007\000\007!\200\003\220P\017\000\000K\000\000@\342\357\037\340\375\003\274\177\000\007\016\367\017\200\003c[\000\000\200\b\000\000\220\342\017\000\000\002\000\000@\342\357\037\340\375\003\274\177\000\n\000\367\017\200\007\230\\\n\000\247\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\006\000\367\017\200\007\230\\\r\360\007\000\000\370\005\001\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\006\n\327\000\000\003\200Y\006\000g\000\200\007\230\\\n\360\007\374\377\377\017\001\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\n\000\247\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\007\f\367\017\200\003c[\017\000\200\000\000\000@\342\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\t\000\367\017\200\007\230\\\f\360\007\000\000\370\005\001\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\007\007\307\000\200\004\200Y\007\000w\000\200\007\230\\\n\n\007\004\000\000\000\034\357\037\340\375\003\274\177\000\t\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\b\b\027\370\377\377\017\034\007\bw\001\000\000H8\007\006w\000\000\000\021\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\006\013w\001\000\000H8\006\006\007\000\000\b\f\034\357\037\340\375\003<d\000\006\tg\000\000\000\021\\\006\000g\000\200\007\230\\\t\006G\000\000\000\200P\017\031\340\375\003\274\177\000\006\ng\000\0000\250\\\f\360\007\000\000\370\003\001\f\006\227\000\000\006\200Y\357\037\340\375\003\274\177\000\f\t\307\000\200\004\200Y\t\000\367\017\200\007\230\\\t\007\307\000\200\004\200Y\357\037\340\375\003\274\177\000\r\006\227\000\200\003\200Y\r\r\307\000\200\004\200Y\006\006\327\000\200\003\200Y\357\037\340\375\003\274\177\000\007\006\307\000\200\006\200Y\007\000w\000\200\007\230\\\t\007w\001\000\000(8\357\037\340\375\003\274\177\000\t\t\367\017\000\000\000\004\016\360\367\007\000\000\000\001\016\016\267\000\000\000\021\\\357\037\340\375\003\274\177\000\016\016\207\000\000\000\020\\\016\016\247\000\000\000\020\\\t\016\227\000\000\000\020\\\357\037\340\375\003\274\177\000\b\t\367\377\377\377\017\034\007\b\347\017\200\003b6\f\000\307\000\200\007\230\\\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\b\000g\000\200\007\230\\\006\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\016\000\347\000\200\007\230\\\t\000\227\000\200\007\230\\\000\000\000\036\000\000\240\342\357\037\340\375\003\274\177\000\017\000\200\032\000\000@\342\007\t\347\017\200\003i6\017\000\000\027\000\000@\342\357\037\340\375\003\274\177\000\007\t\027\000\200\003c6\017\000\200\000\000\000@\342\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\007\t\207\376\377\003c7\006\006\007\000\000\000\b\004\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\000\000\000\000@\343\007\b\307\000\200\006\220Y\n\b\307\000\200\006\210Y\357\037\340\375\003\274\177\000\007\007\247\000\200\203\275[\b\b\307\000\200\006\230Y\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\b\b\367\377\377\007\000\004\b\b\007\000\000\b \004\007\t\007\002\000\000\000\034\357\037\340\375\003\274\177\000\007\bw\000\000\000H\\\017\007\367\017\200\003k[\027\t\367\017\200\003e[\017\031\340\375\003\274\177\000\007:\227\000\000 \340\\\007\000w\000\200\007\230\\\007\377w\000\000\001\240\\\357\037\340\375\003\274\177\000\007\bw\000\000\000(\\\027\t\367\017\200\003k[\017\020\007@\200\003\220P\357\037\340\375\003\274\177\000\007\000\007!\200\003\220P\b\377\027\000\000\004\2408\t\007\027\000\000\000(8\357\037\340\375\003\274\177\000\n\t\027\000\000\000\000\004\b\b\247\000\000\002G\\\b\bw\000\000\000G\\\357\037\340\375\003\274\177\000\b\b\227\000\000\000\020\\\006\bg\000\000\002G\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\343\006\006\007\000\000\000\b\004\006\006\007\000\000\370'\004\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\017\000\007\000\000\000@\343\016\016w\001\000\000H8\357\037\340\375\003\274\177\000\006\016g\000\000\000\020\\\006\000g\000\200\007\230\\\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\006\tg\000\000\004G\\\006\006\007\000\000\000\b\004\357\037\340\375\003\274\177\000\006\006\007\000\000\370'\004\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\017\000\007\000\000\000 \343\006\tg\000\000\004G\\\357\037\340\375\003\274\177\000\006\006\007\000\000\000\b\004\006\000g\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\017\000\007\000\000\000 \343\006\360\007\000\000\374\017\001\357\037\340!\003\274\177\000\006\000g\000\200\007\230\\\006\006W\000\000\000\200P\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\017\000\007\000\000\000 \343\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\007\nw\000\000\020X\\\007\000w\000\200\007\230\\\357\037\340\375\003\374\037\000\006\000w\000\200\007\230\\\017\000\007\000\000\000 \343\017\000\207\377\377\017@\342\340\007\000\374\000\200\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260PblockIDx.x: %d, threadIdx.x: %d, Size: %d, t:%d, Size-1-t: %d\n\000blockIdx.x: %d, threadIdx.x: %d, blockIdx.y: %d, threadIdx.y: %d, blockDim.x: %d, blockDim.y: %d\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000L\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\214\001\000\000\000\000\000\000\006\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\230\003\000\000\000\000\000\000\230\001\000\000\000\000\000\000\002\000\000\000\r\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\005\000\000\000\000\000\000\250\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000I\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\330\005\000\000\000\000\000\000\250\000\000\000\000\000\000\000\003\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\006\000\000\000\000\000\000\210\000\000\000\000\000\000\000\003\000\000\000\f\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\232\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\007\000\000\000\000\000\0000\000\000\000\000\000\000\000\003\000\000\000\013\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\030\001\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0008\007\000\000\000\000\000\0000\000\000\000\000\000\000\000\003\000\000\000\f\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\265\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000h\007\000\000\000\000\000\000d\001\000\000\000\000\000\000\000\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\001\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\314\b\000\000\000\000\000\000X\001\000\000\000\000\000\000\000\000\000\000\f\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\n\000\000\000\000\000\000\200\027\000\000\000\000\000\000\003\000\000\000\016\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\324\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300!\000\000\000\000\000\000\200\030\000\000\000\000\000\000\003\000\000\000\020\000\000\023 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\212\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@:\000\000\000\000\000\000\241\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\341:\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000\250>\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000h\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\2742\000\000\000\000\000\000\2742\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000@:\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\244\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\001\001H\000\000\000(\f\000\000\000\000\000\000!\f\000\000@\000\000\000\004\000\006\000=\000\000\000\000\000\000\000\000\000\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\205.\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360 \n\n\n\n.version 6.4\n.target sm_61\n.address_size 64.\000\360\013extern .func (.param .b32 \022\000\365\005_retval0) vprintf\n(\n$\000$64\026\000\021_\023\000?_0,\035\000\b\377\0301\n)\n;\n.global .align 1 .b8 threadIdx[1]#\000\004_block\"\000\017?Dim\"\000\007\360\005_$_str[63] = {98, 10\005\000`11, 99\016\000\2007, 73, 6\026\000c20, 46\t\000\24058, 32, 37'\000\000\032\000\0224\021\000 11#\000 04\n\000\000\005\000\0200L\000\004%\000#73\t\000\017M\000\024\02180\000\0205'\000\0232L\000\017y\000\013/58F\000\023b45, 49\b\000\0069\000\bW\000o10, 0}9\001\nO1[98:\001\007\016\356\000\017;\001Z\017\224\000\030\0371\224\0009\0371\224\000\037$68\240\001.09\333\000\017G\000*\0371\332\001\bo\n.weak\351\003\017\252cudaMalloc\353\003\006\030\000\016\356\003\017 \000\002\000\361\003f{\n.locP\002\0228P\002\021_\025\000\240_depot0[16\262\0032regI\000;%SP\017\000\025L\020\000\21132 %r<2>!\000\323rd<3>;\n\nmov.u2\000\033,e\000b;\ncvta\215\000\004%\000\023,\\\000\"ld\310\000\002\030\000nrd2, [\316\000\036])\000\0371)\000\001a0];\nst#\000\201[%SP+0],,\000\n\026\000\0228\026\000\"2;\266\000\001\330\000\001\336\001\0219(\000\002g\000\000\357\000\030[\236\001\003M\000\2571;\nret;\n\n}\326\001\032\376\002FuncGetAttributes\341\001\r#\000\016\354\001\017+\000\006\017\367\001\033\0371\367\001Q\0371\367\001!\016\331\000\017\002\002\017\0168\001\017\r\002\215hDevice\264\000\016\016\002\016$\000\017\017\002\000/32,\000\013\0371,\000\030\0372<\002\023\0372<\002\037\0354<\002\0372<\002\f\0372<\002\023\001_\000\004;\002\017\331\000\007\035]4\000\03714\000\006\017p\002\020\016\232\001\017q\002\022(32q\002\013\025\000!12\026\000\t\206\002\0373\206\002\025\0373\206\002#2Get\313\000\016}\002\005\033\000\004\332\000\017\034\002\023?3[8W\004.\017\033\002\r\0373W\004\031\004\263\001\r\320\000\017\252\001\006\017\005\004W\360\004OccupancyMaxActiveBF\013\376\003sPerMultiprocessor\237\001\017;\000\026\016B\006\017C\000%\016J\004\017C\000\036\0372\206\000/\0373\210\002\023O4[32\211\002\034\0353\211\002\0374\211\002\f\0374\211\002\031\0233\211\002\017\361\000\036\017\274\004\000\017K\000$/2]w\007\000\017L\000$\017\037\005\001\017\230\000%\017\247\007\035\t7\005\0306M\005\004,\000\"24-\000\0303\317\003\0372\317\003\025\0372\317\003L\237WithFlags\330\003(\005D\000\016\341\003\017L\000'\017\352\0030\fL\000\0372\230\0008\0373\230\0008\0374H\004\023O5[40\354\b.\017H\004\r\0375\354\b\034\017\371\000+\037]\234\0040\r\232\001\017\245\0040\r:\002\017\256\0041\r\333\002\017\267\0041\r|\003\017\300\004I\b-\000\0373$\n6\366\rvisible .entry _Z4Fan1PfS_ii\226\004\000\220\000\t\033\000\016m\004\017#\000\005\007D\004\000\250\000\017#\000\001\0372#\000\b\017\356\007\033?6[4w\n\026wpred %p\357\007\020fH\001\030f\270\003\003\311\003\0360\233\n\0375\313\003\f\0376\313\003\034\016\365\000\017M\003\006\016C\001\017$\003\007\016\222\001\017\373\002\007\017\341\001\002\023]\310\000#to\223\024\007+\004\002\305\002\001\236\r\n\034\000\0244\264\002\017;\000\003\0245\026\003\017;\000\000\0216\034\000\0375H\003\002\0376H\003\002\0374H\003\t\004\026\000/201\003\002h%tid.x\025\000\000\273\000<cta\027\000\000\263\000\024n-\000qul.lo.s\031\000#6,5\000sr5;\nadd\027\000#7,a\000!r6m\001\002F\000%8,\244\000\007\026\000%9,\244\000S;\nnotw\002\0001\0248%r9V\000\000y\024\004\031\000\2228;\nsetp.l\346\000D%p1,x\000\362\r11;\n@%p1 bra LBB6_2;\nbra.uni\020\00021;\n\b\000\030:\346\f\0372\374\000\003\0271)\001\005\265\000/14\314\000\002/15\315\000\004\001(\001\0311$\001617,\032\000\013\306\001\003\370\004\"121\000\003\035\002\"7,F\003d24;\nor\215\003#8,\034\000\bD\000#rd]\017\017:\005\003\fp\000\02336\002\0325\027\000\0234\327\r&7;\354\003Crd9,\213\027\017\302\002\002\002\237\001\206d9;\n{ \n\tI\004CtempV\003Ireg;\016\t\001\013\000\0300\274\005\000\345\002\002\026\000\005F\006\03704\000\000\03714\000\002\02414\000)7;)\t\003\b\006a;\ncall\016\002\024(\271\n3, \n(\032R, \n(\n{\000\", \t\00071\n)3\004\003\322\001\000\315\002\006Y\006i;\n} \n\te\002\0232e\002\0302e\002/20v\003\001/21{\002\003/22x\003\005423,8\0008r22W\002424,h\0007r23\234\002/25\263\002\002/26\263\002\003\0212\237\002)26\\\000&8,\032\000\0345\202\003&2,\177\000\0218\203\003\0262\203\003\0334\203\003\0233\036\001*3:\030\000\0235\030\000!4:\243\000\003T\002$1,\364\004\b\272\000\0309\321\000\007\331\004\03006\001\006\027\000\ne\001\bN\001\000\252\030\0038\000)r3\373\020\0273\375\003\006\b\001634,6\000\bd\001\0313\000\004\0071\000&6,7\000\t\006\004\000!\031\002 \000\0341\225\000#8,\345\000\000&\000\001l\003\000\020\001\003j\000\"d1~\000\000\b\005$hl\f\004\001\254\004\002\034\000\004\025\002\003\031\000$4,I\001\001'\000\002O\0003s64m\0004d15\234\000\bO\000$6,\034\000\013O\000(7,V\000\002\345\005\002@\b\001\253\001\000\"\000\034]\320\000\0279\320\000\0365\201\000\001\357\000*39\201\000$9,\034\000\n\201\000)20\320\000\0329\035\000(1,$\000\b\236\000\0222\236\000\0202\005\bcdiv.rn\031\000\"3,\274\000G%f2;z\002\000\202\003\003\204\007\nc\000\003\000\b\0252P\001\b\035\000'4,$\000\0221\270\007\023f\230\005\002\333\005?f3;\370\002\003/5:\236\n\r\0202\242\b\000\244\b\017\241\n\002\006\036\000\016\244\n\017&\000\b\0371&\000\022\016\252\n\017&\000\001\0373&\000\022\0374&\000\022\0375\371\n\023O7[72\371\n\035\0344\371\n,11\372\n.55\354\031\0376\372\n\f\0377\372\n\030\000p\016\017\371\000\005\037](\013\b\016M\001\017+\013\t\016\241\001\017\373\016\000\016\213\000\017]\013\024\016K\002\017`\013\n\016\240\002\016c\013\017G\013\002\017D\013\001\0374;\000\005\0376\236\013\b\0247M\013\017;\000\003\0378\236\013\b\002\216\004\0378\236\013\002\0379\236\013\002\0327\026\000\003\236\013/d5\357\t\003\013\026\000\0248\265\013\017\302\t\000\0343\266\013\036t\264\013\017T\b\002\0376S\b\005#7,5\000\031r\364\007\0258\342\013\0377\265\013\001\0314\377\n%0,\245\000\t\377\n\003\271\013\t\377\n%2,\032\000\0379\315\013\002\0248\003\013\b\315\013\0337\315\013\0237\315\013\0207\315\013\t\030\000\0236\030\000/2:\315\013\001\031y\343\013\006\367\f\n\030\000\005\370\f\033y-\001\004\267\013\017\327\013\006\001\374\005(16\035\001\03784\001\003\03094\001Vsub.s*\n\"r1\005\001\0379l\t\002\002k\000*20l\t\0337l\t\0237l\t?7_3\"\001\004/4:\214\n:\0074\000\0374>\t\001\000\211\n\0056\000\017\211\f\003)25G\000\0376\237\001\003/27\237\001\005\003\251\n\0226\257\n\t4\000\0269\001\002\007\206\t&0,6\000\0379\005\r\002+30\027\000\003\236\003\0311\243\r#10\244\r(48\244\r\004\250\b\0340\246\r?11]\007\001\001\0235\007\001\0326\027\000?60]\242\000\001464]|\001\t\027\000\003\242\000\n\276\r$12\277\r\017\344\004\003\005C\n\017\301\r>\0373\301\r\037/10\302\rG/31\302\r\000\007t\f\0274\372\t'ld\020\f\017\305\003\000\000\332\013\004\300\002\017\017\f\001/32\017\f4$33\017\f\0074\000&9, \000\0375\332\013\005\0379\332\013:\007(\001\0278\234\r\t\361\013'40\262\000\0275\027\001\0244\317\r\0324&\r342,\036\000\f\027\001543,Q\000.42\343\000\001\002\001)43\343\000\004#\f\0359<\f&1,q\f?d20\037\f\004\007~\000\0264a\001\017~\000\000\002\005\f*44~\000\006!\f\0372\035\f\001\004~\000\0273~\000$3,\"\fS;\nneg\026\000\0214\232\fV;\nfma\257\f$5,\032\000\0232N\f\016c\f\ts\001\0305s\001\001L\006\"ne\301\0003p3,!\000\002I\006\0263I\006\0336I\006\02351\006\0305\235\017/25)\003\001/46)\003\002/47)\003\002/48)\003\003\000.*\0025\000\000$\000\b\032\000\0225\f\002\0369)\003351,\200\000\000&\000\007e\000/52w\002\003353,\036\000\re\000%4,Q\000\03654\017\002`\006\0335\371\001$7,\034\000\013\371\001$8,/\001\001'\000\007\371\001\0236\371\001\0318Z\003\n\340\020\013|\000\002\262\006\0324\377\017\001\343\020\002\034\000\n|\000\002\253\020\"d2\301\n'31|\000\0227|\000/32d\000\000\0243D\001\bd\000\003\227\013\0353d\000\0315d\000\0274d\000\0238d\000\0315\331\002\000)\000+f6\331\002\001A\007\002\033\000\000I\001)f8\332\002!35\332\002\000\027\006\017\312\b\002\2606:\nret;\n\n}\n\000\000\000\000\000\000\000"
	.size	.L__unnamed_3, 19473

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
	.addrsig_sym _Z13create_matrixPfi
	.addrsig_sym _ZSt3expf
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym cudaSetDevice
	.addrsig_sym _Z21PrintDevicePropertiesv
	.addrsig_sym atoi
	.addrsig_sym malloc
	.addrsig_sym _Z15InitProblemOncePc
	.addrsig_sym _Z10InitPerRunv
	.addrsig_sym gettimeofday
	.addrsig_sym _Z10ForwardSubv
	.addrsig_sym _Z8PrintMatPfii
	.addrsig_sym _Z8PrintAryPfi
	.addrsig_sym _Z7BackSubv
	.addrsig_sym free
	.addrsig_sym cudaGetDeviceCount
	.addrsig_sym cudaGetDeviceProperties
	.addrsig_sym cudaGetErrorString
	.addrsig_sym cudaGetLastError
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym _Z7InitMatPfii
	.addrsig_sym _Z7InitAryPfi
	.addrsig_sym _Z4Fan1PfS_ii
	.addrsig_sym __cudaPopCallConfiguration
	.addrsig_sym cudaLaunchKernel
	.addrsig_sym _Z4Fan2PfS_S_iii
	.addrsig_sym cudaMalloc
	.addrsig_sym cudaMemcpy
	.addrsig_sym __cudaPushCallConfiguration
	.addrsig_sym cudaDeviceSynchronize
	.addrsig_sym _Z14checkCUDAErrorPKc
	.addrsig_sym cudaFree
	.addrsig_sym fprintf
	.addrsig_sym expf
	.addrsig_sym __cuda_register_globals
	.addrsig_sym __cudaRegisterFunction
	.addrsig_sym __cudaRegisterFatBinary
	.addrsig_sym __cuda_module_ctor
	.addrsig_sym __cudaRegisterFatBinaryEnd
	.addrsig_sym __cudaUnregisterFatBinary
	.addrsig_sym __cuda_module_dtor
	.addrsig_sym atexit
	.addrsig_sym Size
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym finalVec
	.addrsig_sym m
	.addrsig_sym fp
	.addrsig_sym totalKernelTime
	.addrsig_sym stderr
	.addrsig_sym .L__unnamed_3
	.addrsig_sym __cuda_fatbin_wrapper
	.addrsig_sym __cuda_gpubin_handle
