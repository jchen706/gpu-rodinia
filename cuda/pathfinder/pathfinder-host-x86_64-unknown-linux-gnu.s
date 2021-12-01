	.text
	.file	"pathfinder.cu"
	.globl	_Z4initiPPc             # -- Begin function _Z4initiPPc
	.p2align	4, 0x90
	.type	_Z4initiPPc,@function
_Z4initiPPc:                            # @_Z4initiPPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$4, -4(%rbp)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, cols
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	atoi
	movl	%eax, rows
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	atoi
	movl	%eax, pyramid_height
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	exit
.LBB0_3:                                # %if.end
	movl	rows, %eax
	imull	cols, %eax
	cltq
	movl	$4, %ecx
	mulq	%rcx
	seto	%sil
	movq	$-1, %rcx
	cmovoq	%rcx, %rax
	movq	%rax, %rdi
	movb	%sil, -37(%rbp)         # 1-byte Spill
	callq	_Znam
	movq	%rax, data
	movslq	rows, %rax
	movl	$8, %ecx
	mulq	%rcx
	seto	%sil
	movq	$-1, %rcx
	cmovoq	%rcx, %rax
	movq	%rax, %rdi
	movb	%sil, -38(%rbp)         # 1-byte Spill
	callq	_Znam
	movq	%rax, wall
	movl	$0, -20(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	rows, %eax
	jge	.LBB0_7
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	data, %rax
	movl	cols, %ecx
	imull	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	wall, %rdx
	movslq	-20(%rbp), %rsi
	movq	%rax, (%rdx,%rsi,8)
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                # %for.end
	movslq	cols, %rax
	movl	$4, %ecx
	mulq	%rcx
	seto	%sil
	movq	$-1, %rcx
	cmovoq	%rcx, %rax
	movq	%rax, %rdi
	movb	%sil, -39(%rbp)         # 1-byte Spill
	callq	_Znam
	movq	%rax, result
	movl	$9, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	srand
	movl	$0, -28(%rbp)
.LBB0_8:                                # %for.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	-28(%rbp), %eax
	cmpl	rows, %eax
	jge	.LBB0_15
# %bb.9:                                # %for.body14
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -32(%rbp)
.LBB0_10:                               # %for.cond15
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	cols, %eax
	jge	.LBB0_13
# %bb.11:                               # %for.body17
                                        #   in Loop: Header=BB0_10 Depth=2
	callq	rand
	cltd
	movl	$10, %ecx
	idivl	%ecx
	movq	wall, %rsi
	movslq	-28(%rbp), %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	-32(%rbp), %rdi
	movl	%edx, (%rsi,%rdi,4)
# %bb.12:                               # %for.inc23
                                        #   in Loop: Header=BB0_10 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_10
.LBB0_13:                               # %for.end25
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %for.inc26
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_8
.LBB0_15:                               # %for.end28
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z4initiPPc, .Lfunc_end0-_Z4initiPPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z5fatalPc              # -- Begin function _Z5fatalPc
	.p2align	4, 0x90
	.type	_Z5fatalPc,@function
_Z5fatalPc:                             # @_Z5fatalPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z5fatalPc, .Lfunc_end1-_Z5fatalPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z14dynproc_kerneliPiS_S_iiii # -- Begin function _Z14dynproc_kerneliPiS_S_iiii
	.p2align	4, 0x90
	.type	_Z14dynproc_kerneliPiS_S_iiii,@function
_Z14dynproc_kerneliPiS_S_iiii:          # @_Z14dynproc_kerneliPiS_S_iiii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	leaq	-4(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	leaq	-36(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	leaq	24(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%r10d, -200(%rbp)       # 4-byte Spill
	callq	__cudaPopCallConfiguration
	movabsq	$_Z14dynproc_kerneliPiS_S_iiii, %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movl	-48(%rbp), %r8d
	movl	%r8d, -96(%rbp)
	movq	-104(%rbp), %rdi
	movl	-96(%rbp), %r8d
	movq	-72(%rbp), %r11
	movq	%r11, -120(%rbp)
	movl	-64(%rbp), %r9d
	movl	%r9d, -112(%rbp)
	movq	-120(%rbp), %r11
	movl	-112(%rbp), %r9d
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r11, %rcx
	movl	%r9d, %r8d
	leaq	-192(%rbp), %r9
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z14dynproc_kerneliPiS_S_iiii, .Lfunc_end2-_Z14dynproc_kerneliPiS_S_iiii
	.cfi_endproc
                                        # -- End function
	.globl	_Z9calc_pathPiPS_iiiii  # -- Begin function _Z9calc_pathPiPS_iiiii
	.p2align	4, 0x90
	.type	_Z9calc_pathPiPS_iiiii,@function
_Z9calc_pathPiPS_iiiii:                 # @_Z9calc_pathPiPS_iiiii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	leaq	-48(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	_ZN4dim3C2Ejjj
	movl	-32(%rbp), %esi
	leaq	-64(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	_ZN4dim3C2Ejjj
	movl	$1, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_9
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %esi
	movq	-112(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdx
	movl	-136(%rbp), %eax
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB3_7
# %bb.3:                                # %kcall.configok
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	-76(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_5
# %bb.4:                                # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB3_6:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movslq	-72(%rbp), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movl	-24(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	16(%rbp), %r11d
	movl	%eax, %edi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	_Z14dynproc_kerneliPiS_S_iiii
.LBB3_7:                                # %kcall.end
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	cudaDeviceSynchronize
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_1
.LBB3_9:                                # %for.end
	movl	-72(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z9calc_pathPiPS_iiiii, .Lfunc_end3-_Z9calc_pathPiPS_iiiii
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
.Lfunc_end4:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end4-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        # -- End function
	.text
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
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-20(%rbp), %rdi
	callq	cudaGetDeviceCount
	cmpl	$1, -20(%rbp)
	jle	.LBB5_2
# %bb.1:                                # %if.then
	xorl	%edi, %edi
	callq	cudaSetDevice
.LBB5_2:                                # %if.end
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_Z3runiPPc
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z3runiPPc              # -- Begin function _Z3runiPPc
	.p2align	4, 0x90
	.type	_Z3runiPPc,@function
_Z3runiPPc:                             # @_Z3runiPPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_Z4initiPPc
	xorl	%eax, %eax
	movl	pyramid_height, %ecx
	shll	$0, %ecx
	movl	%ecx, -20(%rbp)
	movl	pyramid_height, %ecx
	shll	$0, %ecx
	shll	$1, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	%edx, %edi
	subl	%ecx, %edi
	movl	%edi, -24(%rbp)
	movl	cols, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -80(%rbp)         # 4-byte Spill
	cltd
	idivl	-24(%rbp)
	movl	cols, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-24(%rbp)
	cmpl	$0, %edx
	movl	$1, %ecx
	movl	-76(%rbp), %edx         # 4-byte Reload
	cmovel	%edx, %ecx
	movl	-84(%rbp), %edi         # 4-byte Reload
	addl	%ecx, %edi
	movl	%edi, -28(%rbp)
	movl	pyramid_height, %esi
	movl	cols, %edx
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %r9d
	movl	-24(%rbp), %edi
	movabsq	$.L.str.2, %r8
	movl	%edi, -88(%rbp)         # 4-byte Spill
	movq	%r8, %rdi
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	printf
	leaq	-64(%rbp), %rdi
	movl	rows, %ecx
	imull	cols, %ecx
	movl	%ecx, -68(%rbp)
	movslq	cols, %r11
	shlq	$2, %r11
	movq	%r11, %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	cudaMalloc
	leaq	-64(%rbp), %rsi
	addq	$8, %rsi
	movslq	cols, %rdi
	shlq	$2, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-64(%rbp), %rsi
	movq	data, %rdi
	movslq	cols, %r11
	shlq	$2, %r11
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%r11, %rdx
	movl	$1, %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	leaq	-40(%rbp), %rdx
	movl	-68(%rbp), %ecx
	subl	cols, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-40(%rbp), %rdx
	movq	data, %rsi
	movslq	cols, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movl	-68(%rbp), %ecx
	subl	cols, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	rows, %edx
	movl	cols, %ecx
	movl	pyramid_height, %r8d
	movl	-28(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movl	%r10d, (%rsp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	_Z9calc_pathPiPS_iiiii
	movl	%eax, -72(%rbp)
	movq	result, %rsi
	movslq	-72(%rbp), %rdi
	movq	-64(%rbp,%rdi,8), %rdi
	movslq	cols, %r11
	shlq	$2, %r11
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%r11, %rdx
	movl	$2, %ecx
	callq	cudaMemcpy
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	data, %rdx
	cmpq	$0, %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	je	.LBB6_2
# %bb.1:                                # %delete.notnull
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB6_2:                                # %delete.end
	movq	wall, %rax
	cmpq	$0, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB6_4
# %bb.3:                                # %delete.notnull33
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB6_4:                                # %delete.end34
	movq	result, %rax
	cmpq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB6_6
# %bb.5:                                # %delete.notnull36
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB6_6:                                # %delete.end37
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z3runiPPc, .Lfunc_end6-_Z3runiPPc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_register_globals
	.type	__cuda_register_globals,@function
__cuda_register_globals:                # @__cuda_register_globals
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movabsq	$_Z14dynproc_kerneliPiS_S_iiii, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
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
	addq	$40, %rsp
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
	.type	rows,@object            # @rows
	.bss
	.globl	rows
	.p2align	2
rows:
	.long	0                       # 0x0
	.size	rows, 4

	.type	cols,@object            # @cols
	.globl	cols
	.p2align	2
cols:
	.long	0                       # 0x0
	.size	cols, 4

	.type	data,@object            # @data
	.globl	data
	.p2align	3
data:
	.quad	0
	.size	data, 8

	.type	wall,@object            # @wall
	.globl	wall
	.p2align	3
wall:
	.quad	0
	.size	wall, 8

	.type	result,@object          # @result
	.globl	result
	.p2align	3
result:
	.quad	0
	.size	result, 8

	.type	pyramid_height,@object  # @pyramid_height
	.globl	pyramid_height
	.p2align	2
pyramid_height:
	.long	0                       # 0x0
	.size	pyramid_height, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: dynproc row_len col_len pyramid_height\n"
	.size	.L.str, 47

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"error: %s\n"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"pyramidHeight: %d\ngridSize: [%d]\nborder:[%d]\nblockSize: %d\nblockGrid:[%d]\ntargetBlock:[%d]\n"
	.size	.L.str.2, 92

	.type	.L__unnamed_1,@object   # @0
.L__unnamed_1:
	.asciz	"_Z14dynproc_kerneliPiS_S_iiii"
	.size	.L__unnamed_1, 30

	.type	.L__unnamed_2,@object   # @1
	.section	.nv_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_2:
	.asciz	"P\355U\272\001\000\020\000\360?\000\000\000\000\000\000\002\000\001\001@\000\000\000\3501\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\001\000#\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000e\000\000\000\000\000\000\000\000\000\000\000@1\000\000\000\000\000\000\300.\000\000\000\000\000\000#\005#\000@\0008\000\003\000@\000\n\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text._Z14dynproc_kerneliPiS_S_iiii\000.nv.info._Z14dynproc_kerneliPiS_S_iiii\000.nv.shared._Z14dynproc_kerneliPiS_S_iiii\000.nv.global\000.nv.constant0._Z14dynproc_kerneliPiS_S_iiii\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000_Z14dynproc_kerneliPiS_S_iiii\000.text._Z14dynproc_kerneliPiS_S_iiii\000.nv.info._Z14dynproc_kerneliPiS_S_iiii\000.nv.shared._Z14dynproc_kerneliPiS_S_iiii\000.nv.global\000blockIdx\000threadIdx\000$___ZZ14dynproc_kerneliPiS_S_iiiiE4prev__187\000$___ZZ14dynproc_kerneliPiS_S_iiiiE6result__189\000.nv.constant0._Z14dynproc_kerneliPiS_S_iiii\000_param\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000P\000\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\233\000\000\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\304\000\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\317\000\000\000\001\000\t\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\330\000\000\000\001\000\t\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000>\001\000\000\003\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\007\000\000\000\000\000\000\000\000\000\000)\000\000\000\000\000\000\004/\b\000\007\000\000\000\020\000\000\000\004#\b\000\007\000\000\000\000\000\000\000\004\022\b\000\007\000\000\000x\000\000\000\004\021\b\000\007\000\000\000x\000\000\000\004\n\b\000\006\000\000\000@\0010\000\003\0310\000\004\027\f\000\000\000\000\000\007\000,\000\000\360\021\000\004\027\f\000\000\000\000\000\006\000(\000\000\360\021\000\004\027\f\000\000\000\000\000\005\000$\000\000\360\021\000\004\027\f\000\000\000\000\000\004\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360\021\000\003\033\377\000\004\035\004\000x\004\000\000\004\034\004\000\310(\000\000\004\036\004\000\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\274\000\000\000\274\274\000\b\006\000\234\b\000<\300d\005\004\034\304\377\377\177@\002\000\234\033\000\000@\206\036\004\034\000\000\034`\333<\000\000\004\000\000\000\022\000\003\200\000\000\000\000\000\002\004\234\177\000\000\200\340\000\000\000\000\000\000\000\b\002(\034\000\000\000\000\346\n\000\034\000\000<\300\344\016\000\234\177\000<\300\344\002\000\034\001\000<\300\344\022\000\234\001\000<\300\344\016\000\034\000\000<\300\344\022\000\034\002\000<\300\344\274\000\000\000\000\274\000\b\n\000\234\004\000<\300d\002\000\234\177\000<\300\344\n\f\034\001\000\020\000\342\002\020\034\000\000\020\000\342\016\300\037\266\000\000\000t\016\f\034\000\000\000\240|\016\000\234\001\000<\300\344\000\274\000\000\274\000\000\b\022\300\037\264\000\000\000t\022\020\034\000\000\000\240|\022\000\034\002\000<\300\344\026\300\037\262\000\000\000t\026\024\034\000\000\000\240|\026\000\234\002\000<\300\344\032\300\037\260\000\000\000t\274\000\000\274\000\000\000\b\032\030\034\000\000\000\240|\032\000\034\003\000<\300\344\"\300\037\254\000\000\000t\" \034\000\000\000\250|:\000\034\004\000<\300\344>\000\234\004\000<\300\344:\000\034\007\000<\300\344\000\000\274\000\000\000\000\b>\000\234\007\000<\300\344\"\300\037\250\000\000\000t\" \034\000\000\000\250|*\000\034\004\000<\300\344.\000\234\004\000<\300\344*\000\034\005\000<\300\344.\000\234\005\000<\300\344\000\274\000\000\000\000\000\b\"\300\037\244\000\000\000t\" \034\000\000\000\250|2\000\034\004\000<\300\3446\000\234\004\000<\300\3442\000\034\006\000<\300\3446\000\234\006\000<\300\344\036\300\037\240\000\000\000t\274\000\000\000\000\000\000\b\036\034\034\000\000\000\240|\036\000\234\003\000<\300\344\"\000\034\007\000<\300\344&\000\234\007\000<\300\344\"\000\034\004\000<\300\344&\000\234\004\000<\300\344\"\000\034\004\000<\300\344\000\000\000\000\000\000\000\b&\000\234\004\000<\300\344*\000\034\005\000<\300\344.\000\234\005\000<\300\344*\000\034\005\000<\300\344.\000\234\005\000<\300\344*\000\034\005\000<\300\344.\000\234\005\000<\300\344\000\000\000\000\000\000\000\b2\000\034\006\000<\300\3446\000\234\006\000<\300\3442\000\034\006\000<\300\3446\000\234\006\000<\300\3442\000\034\006\000<\300\3446\000\234\006\000<\300\344:\b\234\177\000\000\204\340\000\000\000\000\000\000\000\b>\000\234\177\000@\200\340:\000\034\007\000<\300\344>\000\234\007\000<\300\344:\000\034\007\000<\300\344>\000\234\007\000<\300\344\0348\034\000\000\000\200\3449\b\034\004\000\000\200@\000\000\000\000\000\000\000\b>\000\234\177\000@\200\340:\000\034\007\000<\300\344>\000\234\007\000<\300\344:\000\034\007\000<\300\344>\000\234\007\000<\300\34408\034\000\000\000\200\3451\b\034\b\000\000\200@\000\000\000\000\000\000\000\b6\000\234\177\000@\200\3402\000\034\006\000<\300\3446\000\234\006\000<\300\3442\000\034\006\000<\300\3446\000\234\006\000<\300\344(0\034\000\000\000\200\345)\b\034\f\000\000\200@\000\000\000\000\000\000\000\b.\000\234\177\000@\200\340*\000\034\005\000<\300\344.\000\234\005\000<\300\344*\000\034\005\000<\300\344.\000\234\005\000<\300\344 (\034\000\000\000\200\345!\b\034\020\000\000\200@\000\000\000\000\000\000\000\b&\000\234\177\000@\200\340\"\000\034\004\000<\300\344&\000\234\004\000<\300\344\"\000\034\004\000<\300\344&\000\234\004\000<\300\344\030 \034\000\000\000\200\344\031\b\034\022\000\000\200@\000\000\000\000\000\000\000\b\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\024\030\034\000\000\000\200\344\031\b\034\024\000\000\200@\000\000\000\000\000\000\000\b\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\020\030\034\000\000\000\200\344\021\b\034\026\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\016\000\234\022\000\000@\206\000\000\000\000\000\000\000\b\016\000\234\001\000<\300\344\021\b\034\030\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\f\020\034\000\000\000\200\344\016\000\234\020\000\000@\206\016\000\234\001\000<\300\344\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\022\b\234\177\000\000\204\340\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\021\020\234\000\000\000@\302\016\300\037\200\000\000\000t\016\f\034\002\000\000\210\340\021\b\034\034\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\034\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\030\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\016\f\034\002\000\030\300\341\000\000\000\000\000\000\000\b\021\b\034\026\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\000\000\000\000\000\000\000\b\016\f\034\002\000\000\210\340\021\b\034\036\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\f\020\034\000\000\000\200\344\021\b\034\036\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\020\020\034\000\000\000\200\304\r\020\234\177\000\000\000@\021\b\034 \000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\036\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\016\f\034\002\000\000\200\340\021\b\034\"\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\036\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\035\020\234\377\377\037H\273\n\000\034\001\000<\300\344\002\000\034\000\000<\300\344\000\000\000P\000\000\200\024\274\274\000\000\000\000\000\b<\000\0004\000\000\000\022<\000\034\000\000\000\000\022\021\b\034\036\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\270\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\016\350\034\002\000\000\001\346\016\000\234\001\000<\300\344\016\000\234\001\000<\300\344\016\000\334\001\000<\300\344\016\000\234\177\000<\300\344\000\270\274\000\000\000\000\b\016\000\234\001\000<\300\344\016\000\334\001\000<\300\344\002<\\\000\000\000\200\205\016\000\234\001\000<\300\344\021\b\034$\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034 \000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\020\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\021\020\234\377\377\377\177@\036\f\034\002\000\0348\333\000\000\000p\000\000\200\024\274\274\000\000\000\000\000\b<\000\000T\000\000\000\022<\000\034\000\000\000\000\022\021\b\034 \000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\020\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\270\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\016\020\234\001\000\000\210\340\r\f\034\177\000\000\000@\016\000\234\001\000<\300\344\016\000\334\001\000<\300\344\016\300\237\177\000\000\000t\000\270\274\000\000\000\000\b\016\000\234\001\000<\300\344\016\000\334\001\000<\300\344\002<\\\000\000\000\200\205\016\000\234\001\000<\300\344\021\b\034&\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\r\020\234\377\377\377\177@\021\b\034(\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\r\020\234\000\000\000\000@\021\b\034*\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034(\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034$\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\036\f\034\002\000\034h\333\000\274\274\000\000\000\000\b\000\000\000`\000\000\200\024<\000\000,\000\000\000\022<\000\034\000\000\000\000\022\021\b\034$\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\270\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\021\b\034(\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\270\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\274\000\000\000\000\000\000\b\002<\\\000\000\000\200\205\016\000\034\002\000<\300\344\021\b\034(\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034*\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034&\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\274\274\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\036\f\034\002\000\0348\333\000\000\000`\000\000\200\024<\000\0000\000\000\000\022<\000\034\000\000\000\000\022\021\b\034&\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\270\000\000\000\000\000\000\b\022\000\\\002\000<\300\344\021\b\034*\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\270\274\000\000\000\b\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\002<\\\000\000\000\200\205\016\000\034\002\000<\300\344\021\b\034*\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034$\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304>\f\034\002\000\034\030\333\036\300\037\000\007\034\200\204\000\000\000\274\274\000\000\b\036\000\034\000\007\034\200\204\036\000\034\000\007\034\200\204\000\000\000\\\000\000\200\024\002<D\000\000\000\200\205<\000\034\000\000\000\000\022\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034&\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\036\f\034\002\000\0348\333\036\000\034\000\007\034\200\204\270\274\000\000\000\000\000\b\036\000\\\000\007\034\200\204\002<\\\000\000\000\200\205\036\000\034\000\007\034\200\204\r\374\237\000\000 \000\305\021\b\034,\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\r\f\034\b;\f\000\266\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\340\021\b\034\"\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\036\020\234\177\000\034\030\333\000\000\000t\001\000\200\024\274\274\000\000\000\000\000\b\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\021\b\034\"\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\020\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\274\274\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\021\020\234\377\377\377\177@\036\f\034\002\000\034H\333\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\031\b\034\b\000\000\200@\000\000\000\000\000\000\000\b\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\020\030\034\000\000\000\200\305\032\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\002\000<\300\344\021\b\034\"\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\r\020\234\017\000\000H\301\022\000\034\002\000<\300\344\016\000\234\001\000<\300\344\025\020\034\001\000\016\300\267\021\020\034\001\000\000@\302\000\000\000\000\000\000\000\b\022\030\034\002\000\000\204\340\026\034\234\002\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\000\000\000\000\000\000\000\b\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\000\000\000\000\000\000\000\b\022\350\034\002\000\000\000\346\025\020\234\017\000\000H\301\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344%\020\034\001\000\026\300\267!\020\034\001\000\000@\302\022(\234\177\000\000\000\346\000\000\000\000\000\000\274\b\022\000\034\002\000<\300\344\026\000\234\177\000<\300\344\032\000\034\002\000<\300\344\036\000\234\002\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\022\000\034\004\000<\300d\000\000\000\000\000\000\000\b\026\000\234\177\000<\300\344\022\030\034\002\000\020\000\342\026\034\234\002\000\020\000\342\022\020\034\004\000\000\204\340\026\024\234\004\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\270\274\274\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\\\000\000\000\200\344\002<\\\000\000\000\200\205\002\000\034\000\000\334@\205\016\000\234\177\000<\300\344\021\b\034.\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\000\000\000\240\b\000\000\025\274\000\000\000\000\000\000\b<\000\034\000\000\000\000\022\021\b\034.\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\f\020\034\000\000\000\200\304\022\b\234\177\000\000\204\340\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\274\274\000\000\000\b\020\020\034\000\000\000\200\304\036\f\034\002\000\034h\333<\000\000\000\000\000\000\032<\000\034\000\000\000\000\022\r\374\037\b;\f\000\266\021\b\234,\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\r\f\034\b;\f\000\266\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\340\021\b\034\032\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034.\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\021\020\234\000\000\000\000@\000\000\274\274\000\000\000\b\036\f\034\002\000\034\030\333\000\000\000\374\005\000\200\024\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034.\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\026\300\037\177\000\000\000t\022\024\034\002\000\000\210\340\036\f\034\002\000\034H\333\274\274\000\000\000\000\000\b\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\021\b\034,\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\300\022\004\034\002\000\000\000\346\020\020\234\000\000\000\000 \r\030\234\000\000\000\000\306\022\030\034\002\000\000\000\346\036\020\234\001\000\034 \333\000\274\274\000\000\000\000\b\036\000\036\000\007\034\200\204\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\016\300\237\000\000\000\000t\r\f\034\b;\f\000\266\021\b\234,\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\r\f\034\b;\f\000\266\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\340\021\b\034(\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\000\000\000\000\000\000\000\b\r\020\234\017\000\000H\301\"\000\034\002\000<\300\344\036\000\234\001\000<\300\344\022(\234\177\000\000\000\346\022\000\034\002\000<\300\344\026\000\234\177\000<\300\344\016\000\034\002\000<\300\344\000\000\000\274\000\000\000\b\032\000\234\002\000<\300\344\026\000\234\001\000<\300\344\032\000\034\003\000<\300\344\022\000\034\004\000<\300d\016\000\234\177\000<\300\344\022\024\034\002\000\020\000\342\016\030\234\001\000\020\000\342\000\000\000\000\000\000\000\b\035 \034\001\000\036\300\267\031 \034\001\000\000@\302\032\020\034\003\000\000\204\340\036\f\234\003\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\003\000<\300\344\024\030\034\000\000\000\200\304\031\b\0340\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\003\000<\300\344\024\030\034\000\000\000\200\344\031\b\034\032\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\003\000<\300\344\030\030\034\000\000\000\200\304\032\350\034\003\000\000\000\346\025\030\234\017\000\000H\301\032\000\034\003\000<\300\344\026\000\234\002\000<\300\344\035\030\034\001\000\026\300\267\000\000\000\000\000\000\000\b\031\030\034\001\000\000@\302\032\020\034\003\000\000\204\340\036\f\234\003\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\000\000\000\000\000\000\000\b\024\030\034\000\000\000\200\304\031\b\0342\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\000\000\000\000\000\000\000\b\024\030\034\000\000\000\200\344\031\b\034*\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\000\000\000\000\000\000\000\b\030\030\034\000\000\000\200\304\032\350\034\003\000\000\000\346\025\030\234\017\000\000H\301\036\000\034\003\000<\300\344\026\000\234\002\000<\300\344\031\034\034\001\000\026\300\267\025\034\034\001\000\000@\302\000\000\000\000\000\000\000\b\022\020\234\002\000\000\204\340\026\f\034\003\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\000\000\000\000\000\000\000\b\021\b\0344\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\000\000\000\000\000\000\000\b\021\b\0340\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\000\000\000\000\000\000\000\b\021\b\0342\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\000\000\274\274\000\000\000\b\036\f\034\002\000\034H\333\000\000\000`\000\000\200\024<\000\000,\000\000\000\022<\000\034\000\000\000\000\022\021\b\0340\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\270\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\021\b\0342\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\270\274\000\000\000\000\000\b\022\000\\\002\000<\300\344\002<\\\000\000\000\200\205\016\000\034\002\000<\300\344\021\b\0346\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\0346\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\0344\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\274\274\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\036\f\034\002\000\034H\333\000\000\000`\000\000\200\024<\000\0000\000\000\000\022<\000\034\000\000\000\000\022\000\000\000\000\000\000\000\b\021\b\0346\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\000\270\000\000\000\000\000\b\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\021\b\0344\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\270\274\000\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\000\034\002\000<\300\344\022\000\\\002\000<\300\344\002<\\\000\000\000\200\205\016\000\034\002\000<\300\344\021\b\0346\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\034\020\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\021\b\034\024\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\030\020\034\000\000\000\200\304\021\b\034.\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\030\034\002\000\000\200\340\000\000\000\000\000\000\000\b\016\f\034\002\000\030\300\341\021\b\034\"\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\020\020\034\000\000\000\200\304\016\f\034\002\000\000\200\340\021\b\0348\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344\021\b\0346\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\031\b\034\004\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\003\000<\300\344\020\030\034\000\000\000\200\305\032\000\034\002\000<\300\344\036\000\234\002\000<\300\344\021\b\0348\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\025\020\234\017\000\000H\301\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\025\020\034\001\000\026\300\267\021\020\034\001\000\000@\302\022\030\034\002\000\000\204\340\026\034\234\002\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\016\f\034\002\000\000\200\340\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\025\020\234\017\000\000H\301\"\000\034\002\000<\300\344\000\000\000\000\000\000\000\b&\000\234\002\000<\300\344\021(\034\000\002\000\000\306\022\000\034\002\000<\300\344\026\000\234\177\000<\300\344\032\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\003\000<\300\344\000\274\000\000\000\000\000\b\026\000\234\002\000<\300\344\032\000\034\004\000<\300d\036\000\234\177\000<\300\344\032\020\034\003\000\020\000\342\036\024\234\003\000\020\000\342\025 \034\001\000&\300\267\021 \034\001\000\000@\302\000\000\000\000\000\000\270\b\022\030\034\002\000\000\204\340\026\034\234\002\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\\\000\000\000\200\344\274\274\000\000\000\000\000\b\002<\\\000\000\000\200\205\002\000\034\000\000\334@\205\021\b\034.\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\022\b\234\177\000\000\204\340\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\274\274\270\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\021\020\234\377\377\377\177@\036\f\034\002\000\034X\333<\000\000\b\000\000\000\022<\000\034\000\000\000\000\022<\000\034\000\000\000\000\032\000\000\000\000\000\000\000\b\021\b\234,\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\300\000\000\000\000\000\000\000\b\022\004\034\002\000\000\000\346\020\020\234\000\000\000\000 \r\030\234\000\000\000\000\306\022\030\034\002\000\000\000\346\036\020\234\001\000\034 \333\036\000\036\000\007\034\200\204\000\000\000\360\000\000\200\024\274\274\000\000\000\000\000\b\002<@\000\000\000\200\205<\000\034\000\000\000\000\022\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\r\020\234\017\000\000H\301\022\000\034\002\000<\300\344\016\000\234\001\000<\300\344\r\020\034\001\000\016\300\267\000\000\000\000\000\000\000\b\021\020\034\001\000\000@\302\031(\034\000\002\000\000\306\032\000\034\003\000<\300\344\036\000\234\177\000<\300\344\026\000\034\003\000<\300\344\"\000\234\003\000<\300\344\026\000\234\002\000<\300\344\000\274\000\000\000\000\000\b\"\000\034\004\000<\300\344\032\000\034\004\000<\300d\036\000\234\177\000<\300\344\032\024\034\003\000\020\000\342\036 \234\003\000\020\000\342\032\030\034\002\000\000\204\340\036\034\234\001\000@\200\340\000\000\000\000\000\000\000\b\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344 \030\034\000\000\000\200\304\032(\234\177\000\000\000\346\032\000\034\003\000<\300\344\000\000\000\000\000\274\000\b\036\000\234\177\000<\300\344\026\000\034\003\000<\300\344&\000\234\003\000<\300\344\036\000\234\002\000<\300\344&\000\234\004\000<\300\344\026\000\034\004\000<\300d\032\000\234\177\000<\300\344\000\000\000\000\000\000\000\b\026\034\234\002\000\020\000\342\032$\034\003\000\020\000\342\022\024\034\002\000\000\204\340\026\030\234\001\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\000\270\274\274\274\000\000\b\026\000\234\002\000<\300\344 \020\\\000\000\000\200\344\002<\\\000\000\000\200\205\002\000\034\000\000\334@\205<\000\034\000\000\000\000\022\021\b\034.\000\000\200@\026\000\234\177\000@\200\340\000\000\000\000\000\000\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\r\020\234\000\000\000\000@\021\b\034.\000\000\200@\000\000\000\000\000\000\270\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344<\000\034h\367\177\000\022\000\000\000\000\000\000\000\b\021\b\234,\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\300\000\000\000\000\000\000\274\b\022\004\034\002\000\000\000\346\020\020\234\000\000\000\000 \r\030\234\000\000\000\000\306\022\030\034\002\000\000\000\346\036\020\234\001\000\034 \333\036\000\036\000\007\034\200\204<\000\000\034\001\000\000\022\274\000\000\000\000\000\000\b<\000\034\000\000\000\000\022\021\b\034\032\000\000\200@\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\000\000\000\000\000\000\000\b\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\r\020\234\017\000\000H\301\022\000\034\002\000<\300\344\016\000\234\001\000<\300\344!\020\034\001\000\016\300\267\035\020\034\001\000\000@\302\000\000\000\000\000\000\000\b\021(\034\000\002\000\000\306\022\000\034\002\000<\300\344\026\000\234\177\000<\300\344\016\000\034\002\000<\300\344\032\000\234\002\000<\300\344\016\000\234\001\000<\300\344\032\000\034\003\000<\300\344\274\000\000\000\000\000\000\b\022\000\034\004\000<\300d\026\000\234\177\000<\300\344\022\f\034\002\000\020\000\342\026\030\234\002\000\020\000\342\022\020\234\003\000\000\204\340\026\024\034\004\000@\200\340\022\000\034\002\000<\300\344\000\000\000\000\000\000\000\b\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\304\031\b\034\f\000\000\200@\036\000\234\177\000@\200\340\032\000\034\003\000<\300\344\000\000\000\000\000\000\000\b\036\000\234\003\000<\300\344\032\000\034\003\000<\300\344\036\000\234\003\000<\300\344\020\030\034\000\000\000\200\305\032\000\034\002\000<\300\344\036\000\234\002\000<\300\344\021\b\034\"\000\000\200@\000\000\000\000\000\000\000\b\026\000\234\177\000@\200\340\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\020\020\034\000\000\000\200\304\022\350\034\002\000\000\000\346\000\000\000\000\000\000\000\b\001\020\234\017\000\000H\301\022\000\034\002\000<\300\344\002\000\034\000\000<\300\344\025\020\034\001\000\002\300\267\021\020\034\001\000\000@\302\022\030\034\002\000\000\204\340\026\034\234\002\000@\200\340\000\000\000\000\000\274\000\b\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\022\000\034\002\000<\300\344\026\000\234\002\000<\300\344\f\020\034\000\000\000\200\344<\000\034\000\000\000\000\022\376\003\234\177\000<\300\344\274\000\000\000\000\000\000\b<\000\034\000\000\000\000\030<\000\034\374\377\177\000\022\002<\034\000\000\000\200\205\002<\034\000\000\000\200\205\002<\034\000\000\000\200\205\002<\034\000\000\000\200\205\002<\034\000\000\000\200\205\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\335\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\035\001\000\000\000\000\000\000q\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\220\002\000\000\000\000\000\000\300\000\000\000\000\000\000\000\002\000\000\000\006\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000P\003\000\000\000\000\000\0000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000V\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\003\000\000\000\000\000\000\254\000\000\000\000\000\000\000\003\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\261\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000,\004\000\000\000\000\000\000p\001\000\000\000\000\000\000\000\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\300\005\000\000\000\000\000\000\000)\000\000\000\000\000\000\003\000\000\000\007\000\000\020@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000}\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300.\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\246\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300.\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000@1\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000,\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p*\000\000\000\000\000\000p*\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000\300.\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\001\001H\000\000\000\200\r\000\000\000\000\000\000\177\r\000\000@\000\000\000\004\000\006\000#\000\000\000\000\000\000\000\000\000\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\2030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\361!\n\n\n\n.version 6.4\n.target sm_35\n.address_size 64\n0\000\377\021global .align 1 .b8 blockIdx[1];\"\000\003dthread#\000\360\013\n.weak .func (.param .b32 \022\000\365\007_retval0) cudaMalloc(\n&\000'64\030\000\021_\026\000?_0, \000\013\2461\n)\n{\n.loc\231\000\0218\231\000!__\025\000\240_depot0[16\302\0002regI\000;%SP\017\000\025L\020\000\21132 %r<2>!\000\323rd<3>;\n\nmov.u2\000\033,e\000b;\ncvta\215\000\004%\000\023,\\\000\"ld\310\000\002\030\000nrd2, [\316\000\036])\000\0371)\000\001a0];\nst#\000\201[%SP+0],,\000\n\026\000\0228\026\000\"2;\266\000\001\330\000a1, 999(\000\002g\000\000\357\000\030[\236\001\003M\000\2571;\nret;\n\n}\326\001\032\376\002FuncGetAttributes\341\001\r#\000\016\354\001\017+\000\006\017\367\001\033\0371\367\001Q\0371\367\001!\016\331\000\017\002\002\017\0168\001\017\r\002\215hDevice\264\000\016\016\002\016$\000\017\017\002\000/32,\000\013\0371,\000\030\0372<\002\023\0372<\002\037\0354<\002\0372<\002\f\0372<\002\023\001_\000\004;\002\017\331\000\007\035]4\000\03714\000\006\017p\002\020\016\232\001\017q\002\022(32q\002\013\025\000!12\026\000\t\206\002\0373\206\002\025\0373\206\002#2Get\313\000\016}\002\005\033\000\004\332\000\017\034\002\023?3[8W\004.\017\033\002\r\0373W\004\031\004\263\001\r\320\000\017\252\001\006\017\005\004W\360\004OccupancyMaxActiveBV\b\376\003sPerMultiprocessor\237\001\017;\000\026\016B\006\017C\000%\016J\004\017C\000\036\0372\206\000/\0373\210\002\023O4[32\211\002\034\0353\211\002\0374\211\002\f\0374\211\002\031\0233\211\002\017\361\000\036\017\274\004\000\017K\000$/2]w\007\000\017L\000$\017\037\005\001\017\230\000%\017\247\007\035\t7\005\0306M\005\004,\000\"24-\000\0303\317\003\0372\317\003\025\0372\317\003L\237WithFlags\330\003(\005D\000\016\341\003\017L\000'\017\352\0030\fL\000\0372\230\0008\0373\230\0008\0374H\004\023O5[40\354\b.\017H\004\r\0375\354\b\034\017\371\000+\037]\234\0040\r\232\001\017\245\0040\r:\002\017\256\0041\r\333\002\017\267\0041\r|\003\017\300\004I\b-\000\0373$\n6\360\007visible .entry _Z14dyn\342\000\366\003_kerneliPiS_S_iiii\246\004\000r\000\017+\000\n\016\215\004\000\323\000\0173\000\021\03713\000\037\03723\000\037/3,\314\000\036\03743\000\037\03753\000\037\03763\000\037\0377\302\004\023O6[12\303\004\026\246pred %p<21\305\004\25316 %rs<10>\351\004=105\353\004 56\354\004P\t.shaK\000\003\227\000\0224\227\000\037Z\326\000\t\317E4prev[1024]C\000%t6resultE\000\017s\005\b\0376s\005\031\000!\004\017\222\001\022\016\006\005/20<\000\024\0376B\005\000\0379<\000\024\0375<\000\000\0378<\000\024\017\017\006\002\017<\000\024\0373\242\005\001\017<\000\024\017\336\005\001\017h\001\025\0371\360\000\000\0377<\000\024#0]\372\001#to\266\025\004~\000\0244r\005\001\037\000\n\034\000\0215\034\000\0374;\000\005\0246\332\005\017;\000\000\0217\034\000\0376;\000\005\0248+\006\017;\000\000\0219\034\000\0328\004\006\003r\016\0377]\006\002\0329\026\000\003]\006/d7^\006\003\0375^\006\002\0331q\000\0233\242\006\0329\027\000\0234,\013\0330\027\000\002\\\000\0312I\017\31322, %ctaid.x/\000\002\271\000\0312\323\006n23, %t-\000\0235\377\006\0213\377\001\003,\000$4,\030\001S;\nshl\235\004325,\035\000\n\211\000\3226, 256;\nsub.s\023\000#7,\031\000\0006\000\013q\000\002\373\000(27q\000%8,\035\000\b\027\000%9,\322\000\203;\nmul.lob\000330,8\000\000'\000\0074\000531,5\001\b\223\000532,7\000\0333'\022\0236\315\007\0302H\000%3,\035\000T;\naddH\000#4,\036\000+25\332\000\0226\247\001(34G\000\0305G\000\006\027\000%6,\177\001\t^\000#7,5\000\000$\000\013_\000\002\327\001\03039\001(38_\000rsetp.gtL\0003p3,!\000\362\r-1;\n@%p3 bra LBB6_2;\nbra.uni\020\00021;\n\b\000\026:[\000(40[\000Tneg.s\204\n\000\035\000\b\002\002#99o\t\tU\000\0233U\000(2:Z\t?9, <\000\000/39=\000\004*3:m\016\0001\000\n4\003\0257\300\t\006\273\000%1,\222\001\b\027\000%2,\225\003\bu\001343,\036\000#-1E\001#leE\001#4,P\000\000'\000\001G\001\0264G\001\0335\265\000\0234\265\000\0304G\001\0375\214\000\003\0306\214\000\006\247\002347,\036\000\000;\000\t\033\002\023,\037\0009254Q\023\0220\324\002\013\214\000\0236\214\000\0305A\001#44\267\002\r?\000/44@\000\004\0316@\000\022,2\000\013\202\001\002\322\003\b\367\002/48\340\002\003349,\036\000\034-\300\025\002\204\003\0304\314\003/50F\000\003351,\036\000\fE\000\002\202\003(51E\000\004\366\001\0318\202\003553,@\002\004:\003\004\365\001#5,8\000\000'\000\001\365\001\0265\365\001\0338)\001\0237)\001\0277\365\001\0305\\\000\bl\001\002\271\000\013B\000\0239B\000\0278B\000\0306\265\000\rB\000\0376B\000\004\0309\255\001\"7,1\000\017h\001\002\bE\004\0245\357\005\0318\243\002\0255\306\000,6]\027\003#6,8\000\000'\000\001\"\001\0266\"\001\0341\n\004$10`\004\0270\343\000\0308_\000\b\343\000\001y\001\fg\001$12D\000\b\245\004\0309\272\000\rD\000\0379D\000\006\t\224\004210,4\000\017M\002\002(10\024\001\t\270\005\006\027\000\0357M\002\024l\207\005#8,8\000\000'\000\002\245\000\003\022\f\0257\013\005\003\021\000\000\331\n1%p7P\001\0278P\001\f\234\003\0241\036\005(13u\002\0378\234\000\003\0379\307\001\007#1,8\000\000'\000\017\213\000\000\r\311\001\004\342\004914:.\000\021,3\000\000_\000Blp.u\336\fa1, 1, H\000\003Z\001\0238Y\001\002\311\006\030s\246\003\0256n\006\0358B\001#9,!\000\0210\032\001\0279\032\001\0347\241\000\0245\241\000\0305M\003\0301]\000\006\027\000\017\020\006\004\0216k\005\0306\020\006\005U\007\002,\002\0226\206\003\002\034\004/10\221\000\t\004H\005\"16\221\000\003\226\013%0,N\n\001\222\000\002z\000)d1\252\000\001{\t\0031\000$2, \000\0232\254\000\003\031\000$3,Q\000\001'\000\b\340\000\001\330\003\000#\000\nd\000\0304(\002\bd\000$5, \000\0272\351\r_rd16,i\016\022\003q\013\002e\016\005=\000\002\255\013*16\267\000(8,\035\000\bJ\t\000\035\000\001!\002\0356\370\002\004l\005\31217:\nbar.syncO\bK65, \237\006\0229!\b\0346w\005$18N\000\ty\005\004\342\003\0319F\003(67\023\013\t.\006\000\224\001\0028\000\000'\000\002\023\002\0261\023\002\0353x\000\004\256\005\0241\257\005\0020\003\0252\272\000\004(\003\0229(\003\t\324\001\017\345\003\003(69\266\000\006\313\002370,\036\000\0341V\003\002R\002\0216\210\001\0227Z\003'12#\n\f=\005\0242\305\005\0302\305\005/71\220\000\002(72\220\000\007\224\006\0233\300\b\006\362\b374,\031\000\0007\000\rp\003#3,f\000\000*\000\002\246\000\0373\246\000\t\004\313\n\0232'\006\0208B\001%3,z\004T;\nand\201\021#4,\036\000\004\036\001\"eq\033\000\020p\005\003\002!\000\000=\013\020!\021\000\017v\000\t\004Y\006)22\323\001\0255\242\b\013\323\001\0315\221\003\0359\355\007\003\370\017\0370x\003(\"21A\017\0310\344\003\0016\016\002s\000\nH\004\001 \016\0066\000\bt\002\"75H\004;23]Z\003\002\371\t\0317\316\000\0372_\004\005\002?\016\001 \000\013{\000\0316{\000\0305{\000\0236{\000\0336{\000#10\310\b\0316|\000\0307\020\b\b|\000$8, \000\013|\000\0319|\000\0308|\000\0237|\000\0359|\000\002\032\b\0307E\t\0247\231\003\0319\303\016679,\261\000\r\335\002#5,:\000\000)\000\002\335\002\007j\n\0342\000\005\0252S\r\b\370\007\0054\006\0349I\t\001\323\001\r\216\t$25F\000\b\250\f)12\251\000\016G\000\0372G\000\006\tc\f\002\261\003<1034\001\003\241!\bh\020\0258\006\007\0310\231\007681,j\001\r5\001#6,;\000\000)\000\0025\001\007}\n,27\250\000\004\202\007(26\357\000\0314{\000\b\357\000\002\345\f\r|\001\004.\006\0302\351\013)15\252\000\016G\000\0375G\000\006\03186\001\"6,5\000\0176\001\004\0306\036\001\t\267\b\006\027\000\004\345\004\0314\350\f/84\032\006\003385,5\000\000$\000\013^\021386,i\000\000)\000\bN\000\0307\240\b\007N\000&8,7\000\0337\305\000\003\206#\0308]\003-89\373\001\003(\025\004\024\002\0318\265\b\005\327\021\000N\000\t\333\003\002\331\021-d3\032\t\000\244\021\003Q\000\001'\000\007\335\021\"90\333\003)33\306\000391,\233\000\000#\000\t\177\000\t\325\004\007\243\005\000\253\021\017A\027\023\017\245\005\002\"36\235\000\0325\323\000$7,u\000\013\323\000(8,6\000\03176\t\0223,\002\0359\360\003\004p\b*296\t\006\017\001\0372\364\b\002'93\364\b\007&\001#4,\035\000\005\037\013\025n\f\t#7,P\000\000(\000\002\235\003\0277\f\t\r$\022\004U\b;30:\032\000\004_\004\0303\311\007\005\027\017\0329\311\007#7,\036\000\016\311\007#8,!\000\004\311\007\007Z\r\03436\021$32v\000(2:\377\001\0379\324\006\004\000%\023\003 \000\n3\013/41\030\002*\0224\325\002)41\377\001\002\251\022\005\035\000\t\303\001\003\244\007:43]\210\000\0374C\b(\0234\243\027\0324\206\000(6,\035\000\0310\205\002\0224\023\b\0349\370\004\0253\321\023\0323\205\002\n&\000\004`\016\0303\233\006/96\303\004\003\0229m\002\0356\007\022\003\362\013/97\362\013\005'35T\002\0378T\002\004#9,\036\000\016T\002\002\033\000\0269T\002\007\224\016\0343v\000$36v\000\0306T\002/47T\002\005$8, \000\013T\002\0379T\002*\"50X\000\0319\316\001\002L\023\005\035\000\b\244\005\"98T\002)51\242\005\005Q\023)24\243\005/53\274\016\004\002(\022\001 \000\n\317\004\000b\022\003Q\000\001'\000\tJ\002\"55\305\001\f\t\022$37O\001\2607:\nret;\n\n}\n\000"
	.size	.L__unnamed_2, 16385

	.type	__cuda_fatbin_wrapper,@object # @__cuda_fatbin_wrapper
	.section	.nvFatBinSegment,"a",@progbits
	.p2align	3
__cuda_fatbin_wrapper:
	.long	1180844977              # 0x466243b1
	.long	1                       # 0x1
	.quad	.L__unnamed_2
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
	.addrsig_sym _Z4initiPPc
	.addrsig_sym atoi
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym _Znam
	.addrsig_sym srand
	.addrsig_sym rand
	.addrsig_sym fprintf
	.addrsig_sym _Z14dynproc_kerneliPiS_S_iiii
	.addrsig_sym __cudaPopCallConfiguration
	.addrsig_sym cudaLaunchKernel
	.addrsig_sym _Z9calc_pathPiPS_iiiii
	.addrsig_sym __cudaPushCallConfiguration
	.addrsig_sym cudaDeviceSynchronize
	.addrsig_sym cudaGetDeviceCount
	.addrsig_sym cudaSetDevice
	.addrsig_sym _Z3runiPPc
	.addrsig_sym cudaMalloc
	.addrsig_sym cudaMemcpy
	.addrsig_sym cudaFree
	.addrsig_sym _ZdaPv
	.addrsig_sym __cuda_register_globals
	.addrsig_sym __cudaRegisterFunction
	.addrsig_sym __cudaRegisterFatBinary
	.addrsig_sym __cuda_module_ctor
	.addrsig_sym __cudaRegisterFatBinaryEnd
	.addrsig_sym __cudaUnregisterFatBinary
	.addrsig_sym __cuda_module_dtor
	.addrsig_sym atexit
	.addrsig_sym rows
	.addrsig_sym cols
	.addrsig_sym data
	.addrsig_sym wall
	.addrsig_sym result
	.addrsig_sym pyramid_height
	.addrsig_sym stderr
	.addrsig_sym .L__unnamed_2
	.addrsig_sym __cuda_fatbin_wrapper
	.addrsig_sym __cuda_gpubin_handle
