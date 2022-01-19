	.text
	.file	"hotspot.cu"
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
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z5fatalPc, .Lfunc_end0-_Z5fatalPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z11writeoutputPfiiPc   # -- Begin function _Z11writeoutputPfiiPc
	.p2align	4, 0x90
	.type	_Z11writeoutputPfiiPc,@function
_Z11writeoutputPfiiPc:                  # @_Z11writeoutputPfiiPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB1_2:                                # %if.end
	movl	$0, -28(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_10
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$0, -32(%rbp)
.LBB1_5:                                # %for.cond3
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB1_8
# %bb.6:                                # %for.body5
                                        #   in Loop: Header=BB1_5 Depth=2
	leaq	-304(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.3, %rsi
	movb	$1, %al
	callq	sprintf
	leaq	-304(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	fputs
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %for.inc10
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_3
.LBB1_10:                               # %for.end12
	movq	-48(%rbp), %rdi
	callq	fclose
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z11writeoutputPfiiPc, .Lfunc_end1-_Z11writeoutputPfiiPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z9readinputPfiiPc      # -- Begin function _Z9readinputPfiiPc
	.p2align	4, 0x90
	.type	_Z9readinputPfiiPc,@function
_Z9readinputPfiiPc:                     # @_Z9readinputPfiiPc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movabsq	$.L.str.4, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
.LBB2_2:                                # %if.end
	movl	$0, -28(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_14
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$0, -32(%rbp)
.LBB2_5:                                # %for.cond3
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_12
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB2_5 Depth=2
	leaq	-304(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	$256, %esi              # imm = 0x100
	callq	fgets
	movq	-40(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	feof
	cmpl	$0, %eax
	je	.LBB2_8
# %bb.7:                                # %if.then9
                                        #   in Loop: Header=BB2_5 Depth=2
	movabsq	$.L.str.5, %rdi
	callq	_Z5fatalPc
.LBB2_8:                                # %if.end10
                                        #   in Loop: Header=BB2_5 Depth=2
	leaq	-304(%rbp), %rdi
	movabsq	$.L.str.6, %rsi
	leaq	-308(%rbp), %rdx
	movb	$0, %al
	callq	sscanf
	cmpl	$1, %eax
	je	.LBB2_10
# %bb.9:                                # %if.then14
                                        #   in Loop: Header=BB2_5 Depth=2
	movabsq	$.L.str.7, %rdi
	callq	_Z5fatalPc
.LBB2_10:                               # %if.end15
                                        #   in Loop: Header=BB2_5 Depth=2
	movss	-308(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
# %bb.11:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_5
.LBB2_12:                               # %for.end
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_13
.LBB2_13:                               # %for.inc16
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_3
.LBB2_14:                               # %for.end18
	movq	-40(%rbp), %rdi
	callq	fclose
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z9readinputPfiiPc, .Lfunc_end2-_Z9readinputPfiiPc
	.cfi_endproc
                                        # -- End function
	.globl	_Z14calculate_tempiPfS_S_iiiiffffff # -- Begin function _Z14calculate_tempiPfS_S_iiiiffffff
	.p2align	4, 0x90
	.type	_Z14calculate_tempiPfS_S_iiiiffffff,@function
_Z14calculate_tempiPfS_S_iiiiffffff:    # @_Z14calculate_tempiPfS_S_iiiiffffff
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movss	%xmm4, -60(%rbp)
	movss	%xmm5, -64(%rbp)
	leaq	-4(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	leaq	-36(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	leaq	24(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	leaq	-44(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	leaq	-52(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	leaq	-60(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	__cudaPopCallConfiguration
	movabsq	$_Z14calculate_tempiPfS_S_iiiiffffff, %rcx
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movl	-72(%rbp), %r8d
	movl	%r8d, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %r8d
	movq	-96(%rbp), %r11
	movq	%r11, -144(%rbp)
	movl	-88(%rbp), %r9d
	movl	%r9d, -136(%rbp)
	movq	-144(%rbp), %r11
	movl	-136(%rbp), %r9d
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r11, %rcx
	movl	%r9d, %r8d
	leaq	-256(%rbp), %r9
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	cudaLaunchKernel
# %bb.1:                                # %setup.end
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_Z14calculate_tempiPfS_S_iiiiffffff, .Lfunc_end3-_Z14calculate_tempiPfS_S_iiiiffffff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z17compute_tran_tempPfPS_iiiiiiii
.LCPI4_0:
	.long	981668463               # float 0.00100000005
.LCPI4_5:
	.long	1120403456              # float 100
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_1:
	.quad	4562254508917369340     # double 0.001
.LCPI4_2:
	.quad	4703696862291427328     # double 3.0E+6
.LCPI4_3:
	.quad	4700267004488056832     # double 1.75E+6
.LCPI4_4:
	.quad	4602678819172646912     # double 0.5
.LCPI4_6:
	.quad	4641240890982006784     # double 200
.LCPI4_7:
	.quad	4695763404860686336     # double 875000
	.text
	.globl	_Z17compute_tran_tempPfPS_iiiiiiii
	.p2align	4, 0x90
	.type	_Z17compute_tran_tempPfPS_iiiiiiii,@function
_Z17compute_tran_tempPfPS_iiiiiiii:     # @_Z17compute_tran_tempPfPS_iiiiiiii
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
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	leaq	-56(%rbp), %rdi
	movl	$16, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	$1, %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%r10d, -192(%rbp)       # 4-byte Spill
	movl	%r11d, -196(%rbp)       # 4-byte Spill
	movl	%ebx, -200(%rbp)        # 4-byte Spill
	callq	_ZN4dim3C2Ejjj
	movl	16(%rbp), %esi
	movl	24(%rbp), %edx
	leaq	-72(%rbp), %rdi
	movl	$1, %ecx
	callq	_ZN4dim3C2Ejjj
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI4_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI4_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movss	.LCPI4_5(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI4_6(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI4_7(%rip), %xmm7   # xmm7 = mem[0],zero
	movss	chip_height, %xmm8      # xmm8 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm9
	divss	%xmm9, %xmm8
	movss	%xmm8, -76(%rbp)
	movss	chip_width, %xmm8       # xmm8 = mem[0],zero,zero,zero
	cvtsi2ssl	-28(%rbp), %xmm9
	divss	%xmm9, %xmm8
	movss	%xmm8, -80(%rbp)
	movss	t_chip, %xmm8           # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm7
	movss	-80(%rbp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm7
	movss	-76(%rbp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	movss	%xmm7, -84(%rbp)
	movss	-80(%rbp), %xmm7        # xmm7 = mem[0],zero,zero,zero
	cvtss2sd	%xmm7, %xmm7
	movss	t_chip, %xmm8           # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	movaps	%xmm6, %xmm9
	mulsd	%xmm8, %xmm9
	movss	-76(%rbp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm9
	divsd	%xmm9, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	movss	%xmm7, -88(%rbp)
	movss	-76(%rbp), %xmm7        # xmm7 = mem[0],zero,zero,zero
	cvtss2sd	%xmm7, %xmm7
	movss	t_chip, %xmm8           # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm6
	movss	-80(%rbp), %xmm8        # xmm8 = mem[0],zero,zero,zero
	cvtss2sd	%xmm8, %xmm8
	mulsd	%xmm8, %xmm6
	divsd	%xmm6, %xmm7
	cvtsd2ss	%xmm7, %xmm6
	movss	%xmm6, -92(%rbp)
	movss	t_chip, %xmm6           # xmm6 = mem[0],zero,zero,zero
	mulss	-76(%rbp), %xmm5
	mulss	-80(%rbp), %xmm5
	divss	%xmm5, %xmm6
	movss	%xmm6, -96(%rbp)
	movss	t_chip, %xmm5           # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm5, %xmm4
	mulsd	%xmm3, %xmm4
	divsd	%xmm4, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, -100(%rbp)
	movss	-100(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -104(%rbp)
	movss	%xmm0, -112(%rbp)
	movl	$1, -116(%rbp)
	movl	$0, -120(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-36(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_9
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-116(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -128(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rdx, -168(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-168(%rbp), %rdi
	movl	-160(%rbp), %esi
	movq	-152(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-184(%rbp), %rdx
	movl	-176(%rbp), %eax
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	callq	__cudaPushCallConfiguration
	cmpl	$0, %eax
	jne	.LBB4_7
# %bb.3:                                # %kcall.configok
                                        #   in Loop: Header=BB4_1 Depth=1
	cvtsi2ssl	-40(%rbp), %xmm0
	cvtsi2ssl	-36(%rbp), %xmm1
	subss	-108(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_5
# %bb.4:                                # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	cvtsi2ssl	-40(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)       # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	cvtsi2ssl	-36(%rbp), %xmm0
	subss	-108(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)       # 4-byte Spill
.LBB4_6:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movss	-212(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-24(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	32(%rbp), %r10d
	movl	40(%rbp), %r11d
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	-92(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	-104(%rbp), %xmm4       # xmm4 = mem[0],zero,zero,zero
	movss	-112(%rbp), %xmm5       # xmm5 = mem[0],zero,zero,zero
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	_Z14calculate_tempiPfS_S_iiiiffffff
.LBB4_7:                                # %kcall.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_8
.LBB4_8:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	cvtsi2ssl	-40(%rbp), %xmm0
	addss	-108(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	jmp	.LBB4_1
.LBB4_9:                                # %for.end
	movl	-120(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_Z17compute_tran_tempPfPS_iiiiiiii, .Lfunc_end4-_Z17compute_tran_tempPfPS_iiiiiiii
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
	.text
	.globl	_Z5usageiPPc            # -- Begin function _Z5usageiPPc
	.p2align	4, 0x90
	.type	_Z5usageiPPc,@function
_Z5usageiPPc:                           # @_Z5usageiPPc
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
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movabsq	$.L.str.8, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.9, %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.10, %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.11, %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.12, %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.13, %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.14, %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end6:
	.size	_Z5usageiPPc, .Lfunc_end6-_Z5usageiPPc
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
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$.L.str.15, %rdi
	movl	$16, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	printf
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_Z3runiPPc
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$60, -108(%rbp)
	movl	$1, -112(%rbp)
	cmpl	$7, -28(%rbp)
	je	.LBB8_2
# %bb.1:                                # %if.then
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_Z5usageiPPc
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_6
# %bb.3:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_6
# %bb.4:                                # %lor.lhs.false5
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, -112(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_6
# %bb.5:                                # %lor.lhs.false9
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movl	%eax, -108(%rbp)
	cmpl	$0, %eax
	jg	.LBB8_7
.LBB8_6:                                # %if.then13
	movl	-28(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	_Z5usageiPPc
.LBB8_7:                                # %if.end14
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movl	-48(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-112(%rbp), %edx
	shll	$1, %edx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	shll	$1, %eax
	cltd
	idivl	%esi
	movl	%eax, -120(%rbp)
	movl	-112(%rbp), %eax
	shll	$1, %eax
	movl	$16, %esi
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, -124(%rbp)
	movl	-112(%rbp), %eax
	shll	$1, %eax
	subl	%eax, %esi
	movl	%esi, -128(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	-124(%rbp)
	movl	-52(%rbp), %esi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	-124(%rbp)
	cmpl	$0, %edx
	movl	$1, %edx
	movl	%edx, %esi
	movl	-176(%rbp), %edi        # 4-byte Reload
	cmovel	%edi, %esi
	movl	-180(%rbp), %r8d        # 4-byte Reload
	addl	%esi, %r8d
	movl	%r8d, -132(%rbp)
	movl	-48(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -184(%rbp)        # 4-byte Spill
	cltd
	idivl	-128(%rbp)
	movl	-48(%rbp), %esi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	-128(%rbp)
	cmpl	$0, %edx
	movl	-184(%rbp), %edx        # 4-byte Reload
	cmovel	%edi, %edx
	movl	-188(%rbp), %esi        # 4-byte Reload
	addl	%edx, %esi
	movl	%esi, -136(%rbp)
	movslq	-44(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movslq	-44(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB8_10
# %bb.8:                                # %lor.lhs.false38
	cmpq	$0, -64(%rbp)
	je	.LBB8_10
# %bb.9:                                # %lor.lhs.false40
	cmpq	$0, -80(%rbp)
	jne	.LBB8_11
.LBB8_10:                               # %if.then42
	movabsq	$.L.str.16, %rdi
	callq	_Z5fatalPc
.LBB8_11:                               # %if.end43
	movl	-112(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %edi
	movl	-124(%rbp), %r10d
	movl	-128(%rbp), %r11d
	movabsq	$.L.str.17, %rbx
	movl	%edi, -192(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	movl	%eax, (%rsp)
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	-88(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	_Z9readinputPfiiPc
	movq	-72(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	-96(%rbp), %rcx
	callq	_Z9readinputPfiiPc
	leaq	-160(%rbp), %rcx
	movslq	-44(%rbp), %rdi
	shlq	$2, %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-208(%rbp), %rsi        # 8-byte Reload
	callq	cudaMalloc
	leaq	-160(%rbp), %rcx
	addq	$8, %rcx
	movslq	-44(%rbp), %rsi
	shlq	$2, %rsi
	movq	%rcx, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-160(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	shlq	$2, %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	leaq	-168(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	cudaMalloc
	movq	-168(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	shlq	$2, %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movl	$1, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movabsq	$.L.str.18, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	leaq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	-132(%rbp), %r10d
	movl	-136(%rbp), %r11d
	movl	-116(%rbp), %r14d
	movl	-120(%rbp), %r15d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	_Z17compute_tran_tempPfPS_iiiiiiii
	movl	%eax, -172(%rbp)
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	printf
	movq	-80(%rbp), %rsi
	movslq	-172(%rbp), %rdi
	movq	-160(%rbp,%rdi,8), %rdi
	movslq	-44(%rbp), %rbx
	shlq	$2, %rbx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, %rdx
	movl	$2, %ecx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	cudaMemcpy
	movq	-80(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	-104(%rbp), %rcx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	_Z11writeoutputPfiiPc
	movq	-168(%rbp), %rcx
	movq	%rcx, %rdi
	callq	cudaFree
	movq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	cudaFree
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	free
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z3runiPPc, .Lfunc_end8-_Z3runiPPc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cuda_register_globals
	.type	__cuda_register_globals,@function
__cuda_register_globals:                # @__cuda_register_globals
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movabsq	$_Z14calculate_tempiPfS_S_iiiiffffff, %rax
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
.Lfunc_end9:
	.size	__cuda_register_globals, .Lfunc_end9-__cuda_register_globals
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
.Lfunc_end10:
	.size	__cuda_module_ctor, .Lfunc_end10-__cuda_module_ctor
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
.Lfunc_end11:
	.size	__cuda_module_dtor, .Lfunc_end11-__cuda_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	t_chip,@object          # @t_chip
	.data
	.globl	t_chip
	.p2align	2
t_chip:
	.long	973279855               # float 5.00000024E-4
	.size	t_chip, 4

	.type	chip_height,@object     # @chip_height
	.globl	chip_height
	.p2align	2
chip_height:
	.long	1015222895              # float 0.0160000008
	.size	chip_height, 4

	.type	chip_width,@object      # @chip_width
	.globl	chip_width
	.p2align	2
chip_width:
	.long	1015222895              # float 0.0160000008
	.size	chip_width, 4

	.type	amb_temp,@object        # @amb_temp
	.globl	amb_temp
	.p2align	2
amb_temp:
	.long	1117782016              # float 80
	.size	amb_temp, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: %s\n"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The file was not opened\n"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\t%g\n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"not enough lines in file"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"invalid file format"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Usage: %s <grid_rows/grid_cols> <pyramid_height> <sim_time> <temp_file> <power_file> <output_file>\n"
	.size	.L.str.8, 100

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\t<grid_rows/grid_cols>  - number of rows/cols in the grid (positive integer)\n"
	.size	.L.str.9, 78

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\t<pyramid_height> - pyramid heigh(positive integer)\n"
	.size	.L.str.10, 53

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\t<sim_time>   - number of iterations\n"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\t<temp_file>  - name of the file containing the initial temperature values of each cell\n"
	.size	.L.str.12, 89

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\t<power_file> - name of the file containing the dissipated power values of each cell\n"
	.size	.L.str.13, 86

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t<output_file> - name of the output file\n"
	.size	.L.str.14, 42

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"WG size of kernel = %d X %d\n"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unable to allocate memory"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pyramidHeight: %d\ngridSize: [%d, %d]\nborder:[%d, %d]\nblockGrid:[%d, %d]\ntargetBlock:[%d, %d]\n"
	.size	.L.str.17, 94

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Start computing the transient temperature\n"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Ending simulation\n"
	.size	.L.str.19, 19

	.type	.L__unnamed_1,@object   # @0
.L__unnamed_1:
	.asciz	"_Z14calculate_tempiPfS_S_iiiiffffff"
	.size	.L__unnamed_1, 36

	.type	.L__unnamed_2,@object   # @1
	.section	.nv_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_2:
	.asciz	"P\355U\272\001\000\020\000@\212\000\000\000\000\000\000\002\000\001\001@\000\000\000\250v\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\001\000=\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000e\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\000\000\000\000\200s\000\000\000\000\000\000=\005=\000@\0008\000\003\000@\000\n\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.info._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.shared._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.global\000.nv.constant0._Z14calculate_tempiPfS_S_iiiiffffff\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000_Z14calculate_tempiPfS_S_iiiiffffff\000.text._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.info._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.shared._Z14calculate_tempiPfS_S_iiiiffffff\000.nv.global\000blockIdx\000threadIdx\000$_Z14calculate_tempiPfS_S_iiiiffffff$__cuda_sm20_rcp_rn_f32_slowpath\000$_Z14calculate_tempiPfS_S_iiiiffffff$__cuda_sm3x_div_rn_noftz_f32\000$_Z14calculate_tempiPfS_S_iiiiffffff$__cuda_sm3x_div_rn_noftz_f32_slowpath\000$___ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda__196\000$___ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda__198\000$___ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t__200\000.nv.constant0._Z14calculate_tempiPfS_S_iiiiffffff\000_param\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000V\000\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\000\000\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\334\000\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\347\000\000\000\001\000\t\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\360\000\000\000\001\000\t\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\372\000\000\000\"\000\007\000`]\000\000\000\000\000\000 \004\000\000\000\000\000\000?\001\000\000\"\000\007\000\200a\000\000\000\000\000\000`\001\000\000\000\000\000\000\201\001\000\000\"\000\007\000\340b\000\000\000\000\000\000`\b\000\000\000\000\000\000z\002\000\000\003\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\007\000\000\000\000\000\000\000\000\000@k\000\000\000\000\000\000\004/\b\000\n\000\000\000\027\000\000\000\004#\b\000\b\000\000\000\000\000\000\000\004\022\b\000\b\000\000\000\000\000\000\000\004\021\b\000\b\000\000\000\000\000\000\000\004#\b\000\007\000\000\000\000\000\000\000\004\022\b\000\007\000\000\000\000\000\000\000\004\021\b\000\007\000\000\000\000\000\000\000\004#\b\000\006\000\000\000\000\000\000\000\004\022\b\000\006\000\000\000\000\000\000\000\004\021\b\000\006\000\000\000\000\000\000\000\004#\b\000\n\000\000\000\000\000\000\000\004\022\b\000\n\000\000\000\300\000\000\000\004\021\b\000\n\000\000\000\300\000\000\000\0010\000\000\001*\000\000\004\n\b\000\t\000\000\000@\001H\000\003\031H\000\004\027\f\000\000\000\000\000\r\000D\000\000\360\021\000\004\027\f\000\000\000\000\000\f\000@\000\000\360\021\000\004\027\f\000\000\000\000\000\013\000<\000\000\360\021\000\004\027\f\000\000\000\000\000\n\0008\000\000\360\021\000\004\027\f\000\000\000\000\000\t\0004\000\000\360\021\000\004\027\f\000\000\000\000\000\b\0000\000\000\360\021\000\004\027\f\000\000\000\000\000\007\000,\000\000\360\021\000\004\027\f\000\000\000\000\000\006\000(\000\000\360\021\000\004\027\f\000\000\000\000\000\005\000$\000\000\360\021\000\004\027\f\000\000\000\000\000\004\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\030\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360\021\000\003\033\377\000\004\035\b\000h\t\000\000\330\t\000\000\004\034\004\000X]\000\000\004\036\004\000\260\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\357\037\340\375\003<d\000\001\000\207\000\200\007\230L\001\001\007\364\377\377\017\034\000\000w\003\000\000\310\360\357\037\340\375\003\274\177\000\007\001\007\000\200\003l[\017\000\200\000\000\000@\342\300\000\020\000\000\000\240\343\357\037\340!\003\274\177\000\000\001\367\017\000\000\020\\\000\n\007\000\000\000\340\\\002\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\000\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000\007\000\200\007\230\\\003\0007\000\200\007\230\\\n\000\027\000\200\007\230L\357\037\340\375\003\274\177\000\000\000\027\004\200\007\230L\n\002\247\000\000\200\020\\\000\003\007\000\000\b\020\\\357\037\340!\003\274\177\000\002\360G\030\000\000\000\001\002\002\007\000\000\000\224\357\013\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\007\030\000\000\000\001\002\002\007\000\000\000\224\357\f\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\307\027\000\000\000\001\002\002\007\000\000\000\224\357\r\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\207\027\000\000\000\001\002\002\007\000\000\000\224\357\016\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360G\027\000\000\000\001\002\002\007\000\000\000\224\357\017\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\007\027\000\000\000\001\002\002\007\000\000\000\224\357\020\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\307\026\000\000\000\001\002\002\007\000\000\000\224\357\021\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\207\026\000\000\000\001\002\002\007\000\000\000\224\357\022\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360G\026\000\000\000\001\002\002\007\000\000\000\224\357\023\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\007\026\000\000\000\001\002\002\007\000\000\000\224\357\024\000'\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\207\025\000\000\000\001\002\002\007\000\000\000\225\357\t\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\b\0007\000\200\007\230\\\t\000\227\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\007\025\000\000\000\001\002\002\007\000\000\000\225\357\005\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\004\0007\000\200\007\230\\\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\207\024\000\000\000\001\002\002\007\000\000\000\225\357\007\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\006\0007\000\200\007\230\\\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340!\003\274\177\000\002\360\007\024\000\000\000\001\002\002\007\000\000\000\224\357\025\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000\227\000\200\007\230\\\003\000\207\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000G\000\200\007\230\\\005\005G\000\000\004G\\\357\037\340\375\003\274\177\000\004\005G\000\000\004G\\\005\005G\000\000\004G\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\007\000w\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\007g\000\000\004G\\\006\007g\000\000\004G\\\007\007g\000\000\004G\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\t\n\367\017\000\200\020\\\357\037\340\375\003\274\177\000\026\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\026\000g\001\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017@\013\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\025\b\007\000\000\000\220\240\t\n\207\000\000\000\020\034\357\037\340\375\003\274\177\000\025\000\367\017\000\b\020\\\t\000\227\000\200\007\230\\\025\000W\001\200\007\230\\\357\037\340\375\003\274\177\000\b\t\367\017\000\200\327[\t\t\367\017\300\n\330[\b\000\207\000\200\007\230\\\357\037\340=\003\274\177\000\t\000\227\000\200\007\230\\\006\b\007\000\000\000\260\240\007\n\007\001\000\000\020\034\357\037\340\375\003\274\177\000\b\000\367\017\000\b\020\\\007\000w\000\200\007\230\\\b\000\207\000\200\007\230\\\357\037\340\375\003\274\177\000\006\007\367\017\000\200\327[\007\007\367\017@\004\330[\006\000g\000\200\007\230\\\357\037\340=\003\274\177\000\007\000w\000\200\007\230\\\004\006\007\000\000\000\260\240\005\n\207\001\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\002\004\007\000\000\000\260\240\003\n\007\002\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\024\002\007\000\000\000\220\240\003\nG\002\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\023\002\007\000\000\000\220\240\003\n\207\002\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\022\002\007\000\000\000\220\240\003\n\307\002\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\021\002\007\000\000\000\220\240\003\n\007\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\020\002\007\000\000\000\220\240\003\nG\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\017\002\007\000\000\000\220\240\003\n\207\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\016\002\007\000\000\000\220\240\003\n\307\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\r\002\007\000\000\000\220\240\003\n\007\004\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\f\002\007\000\000\000\220\240\003\nG\004\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\013\002\007\000\000\000\220\240\005\360\007\000\000*\004\001\357\037\340\375\003\274\177\000\003\n\207\004\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\005\002\007\000\000\000\220\240\017\031\340\375\003\274\177\000\004\000W\002\000\000\310\360\004\000G\000\200\007\230\\\003\n\307\005\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003<d\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\004\000g\002\000\000\310\360\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\n\007\006\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340!\003\274\177\000\004\002\007\000\000\000\220\240\004\000\027\002\000\000\310\360\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\nG\006\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\017\031\340\375\003\274\177\000\004\000'\002\000\000\310\360\004\000G\000\200\007\230\\\003\n\207\006\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\n\007\004\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\003\n\007\003\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000'\000\200\007\230\\\b\000\247\000\200\007\230\\\000\000\007\000\200\007\230\\\357\037\340\375\003\274\177\000@\000\000U\005\000`\342\004\000'\000\200\007\230\\\003\b\307\004\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\bG\003\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\002\007\000\000\030\000\034\003\003\007\000\000\370\007\004\357\037\340\375\003\274\177\000\004\360\367\377\377\037\000\001\007\003G\000\200\003h[\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\200\n\000\000\220\342\017\000\200\005\000\000@\342\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\@\000\200\374\004\000`\342\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\017\000\007\000\000\000\370\360\003\002G\000\000\000\200P\004\360\007\000\000\370\013\001\357\037\340!\003\274\177\000\004\0027\000\000\002\200Y\004\nG\000\0000\250\\\004\003G\000\200\001\200Y\357\037\340\375\003\274\177\000\002\000G\000\200\007\230\\\017\000\007\000\000\000\370\360\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b\007\005\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\207\003\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\003\002\007\000\000\030\000\034\357\037\340\375\003\274\177\000\003\003\007\000\000\370\007\004\004\360\367\377\377\037\000\001\007\003G\000\200\003h[\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\000\000\200\n\000\000\220\342\017\000\200\005\000\000@\342\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\@\000\000\334\004\000`\342\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\003\002G\000\000\000\200P\357\037\340\375\003<d\000\004\360\007\000\000\370\013\001\004\0027\000\000\002\200Y\004\nG\000\0000\250\\\357\037\340\375\003\274\177\000\004\003G\000\200\001\200Y\002\000G\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000'\000\200\007\230\\\003\bG\005\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\b\307\003\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\002\007\000\000\030\000\034\003\003\007\000\000\370\007\004\004\360\367\377\377\037\000\001\357\037\340\375\003\274\177\000\007\003G\000\200\003h[\002\000'\000\200\007\230\\\000\000\000\013\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\005\000\000@\342\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000@\000\000\273\004\000`\342\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\017\031\340\375\003\274\177\000\003\002G\000\000\000\200P\004\360\007\000\000\370\013\001\004\0027\000\000\002\200Y\017\031\340\375\003\274\177\000\004\nG\000\0000\250\\\004\003G\000\200\001\200Y\002\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\004\000'\000\200\007\230\\\003\b\207\005\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\b\367\017\000\200\020\\\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002\002\027\000\000\000H8\357\037\340\375\003\274\177\000\004\360\007\001\000\000\000\001\005\004'\000\000\000\021\\\003\b\307\006\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\003\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\005\002\007\000\000\000\220\240\003\b\367\017\000\200\020\\\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002\002\027\000\000\000H8\357\037\340\375\003\274\177\000\004\004'\000\000\000\021\\\003\b\007\007\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\b\307\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\007\006\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\004\004'\000\000\0038\\\003\b\307\002\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\004'\000\000\000\021\\\357\037\340\375\003\274\177\000\003\bG\007\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\007\007\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\005\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004\004'\000\000\0038\\\003\b\207\002\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\004\004'\000\000\000\021\\\003\b\207\007\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\bG\007\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\002\367\000\000\000\000\034\357\037\340\375\003\274\177\000\003\b\307\007\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\207\007\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\004\002\367\000\000\000\000\034\003\b\007\b\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\bG\007\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\207\006\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\004\004'\000\000\000\020\\\003\bG\b\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\b\207\007\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\003\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\004'\000\000\000\020\\\357\037\340\375\003\274\177\000\003\b\207\b\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\bG\b\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\b\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\207\b\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\007\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\007\002\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\b\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004\004'\000\000\0038\\\003\b\007\t\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\004\004'\000\000\000\020\\\003\bG\t\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\b\307\b\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\007\002\367\017\200\003c[\357\037\340\375\003\274\177\000\000\000\000\234\000\000\220\342\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\307\b\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\bG\002\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\002\367\377\377\377\017\034\007\004'\000\200\003i[\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\007\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\007\002\367\017\200\003c[\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\007\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\007\002\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\002\367\377\377\377\017\034\007\004'\000\200\003i[\357\037\340\375\003\274\177\000\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\003\b\007\001\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\005\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\006\0007\000\200\007\230\\\003\bG\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002'\000\300\001\3706\357\037\340\375\003\274\177\000\003\002'\000\000\000H8\003\0057\000\000\200\020\\\004\006G\000\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\005\b\207\006\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\n\004g\000\300\001\3706\357\037\340!\003\274\177\000\t\004g\000\000\000H8\004\n\367\017\000\000\340\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\003\000G\000\200\007\230\\\004\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\006\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\007\000\007\004\200\007\230L\006\003g\000\000\200\020\\\007\004w\000\000\b\020\\\357\037\340\375\003\274\177\000\006\006\227\000\000\200\020\\\007\007\247\000\000\b\020\\\005\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\357\037\340\375\003\274\177\000\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\004'\000\300\001\3706\005\004'\000\000\000H8\005\006W\000\000\200\020\\\357\037\340\375\003\274\177\000\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\002\004\007\000\000\000\220\240\003\b\207\000\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\260\200\005\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\006\0007\000\200\007\230\\\003\bG\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002'\000\300\001\3706\357\037\340\375\003\274\177\000\003\002'\000\000\000H8\003\0057\000\000\200\020\\\004\006G\000\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\005\b\207\006\000\000\020\034\003\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\003\004\367\001\000\000)8\357\037\340\375\003<d\000\t\000G\000\200\007\230\\\007\0007\000\200\007\230\\\004\n\007@\000\000\3408\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000\367\017\200\007\230\\\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000W\000\200\007\230\\\005\0007\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\007\000\200\007\230L\004\000\007\004\200\007\230L\003\0057\000\000\200\020\\\357\037\340\375\003\274\177\000\004\006G\000\000\b\020\\\007\tg\000\300\003\3706\006\tg\000\000\000H8\357\037\340\375\003\274\177\000\006\003g\000\000\200\020\\\007\004w\000\000\b\020\\\005\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\357\037\340\375\003\274\177\000\003\004\367\001\000\000)8\004\000G\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\003\004'\000\300\001\3706\005\004'\000\000\000H8\005\006W\000\000\200\020\\\357\037\340\375\003\274\177\000\003\0077\000\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340=\003\274\177\000\005\000W\000\200\007\230\\\002\004\007\000\000\000\220\240\017\000\007\000\000\000\370\360\357\037\340\375\000\274\037\000\017\000\007\000\000\000\370\360\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\344\007\340=\003\324\037\000\000\017\007\000\000\000\260P\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\357\037\340\375\003\274\177\000\003\bG\007\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\002\367\377\377\003i7\000\000\000\016\000\000\220\342\017\000\000\n\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\bG\007\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000 \340\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\002\000\367\017\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b\207\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\307\007\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\bG\002\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\002\367\377\377\377\017\034\007\004'\000\200\003g[\000\000\000\024\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\020\000\000@\342\017\000\007\000\000\000@\342\003\b\307\007\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\003\bG\002\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002\002G\000\000\000\021\\\357\037\340\375\003\274\177\000\002\002\347\000\000\000\000\034\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\002\360\367\000\000\000\000\001\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\004\000'\000\200\007\230\\\003\b\307\t\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\b\207\007\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\007\002\367\377\377\003i7\000\000\000\016\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\n\000\000@\342\017\000\007\000\000\000@\342\003\b\207\007\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000 \340\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\002\000\367\017\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\004\000'\000\200\007\230\\\003\b\007\n\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\b\007\b\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\007\002\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\002\367\377\377\377\017\034\007\004'\000\200\003g[\357\037\340\375\003\274\177\000\000\000\000\024\000\000\220\342\017\000\000\020\000\000@\342\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\007\b\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\007\002\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\002G\000\000\000\021\\\002\002\347\000\000\000\000\034\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\002\360\367\000\000\000\000\001\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\017\000\007\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\003\bG\n\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\b\207\006\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\002\367\377\377\377\017\034\357\037\340\375\003\274\177\000\003\b\207\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\004\002\027\000\000\000\000\034\003\b\307\n\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\003\bG\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\004\002\367\377\377\377\017\034\003\b\007\013\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\003\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\004\002\027\000\000\000\000\034\357\037\340\375\003\274\177\000\003\bG\013\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\207\n\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\207\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003m[\000\000\000\022\000\000\220\342\017\000\000\t\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\207\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\003\b\207\n\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b\207\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\307\n\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003g[\000\000\000\022\000\000\220\342\017\000\000\t\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\307\t\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\003\b\307\n\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b\307\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\b\007\013\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\007\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003m[\000\000\000\022\000\000\220\342\017\000\000\t\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\007\n\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\003\b\007\013\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\b\007\013\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\003\bG\013\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\bG\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003g[\000\000\000\022\000\000\220\342\017\000\000\t\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\bG\n\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\003\bG\013\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\bG\013\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\003\b\307\013\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\005\002\007\000\000\000\220\240\000\000\000\244\001\000\240\342\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\307\013\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\367\017\000\200\020\\\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003m[\017\000\000\000\000\000@\343\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\002\002\027\000\220\177$6\003\b\207\013\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\027\000\020\001$6\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\020\240\003\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\003\b\307\013\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002\002\027\000\000\000\000\034\357\037\340\375\003\274\177\000\007\004'\000\200\003c[\000\000\200\035\001\000\220\342\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\bG\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\307\013\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\003\360\347\000\000\000\000\001\002\003'\000\000\000\021\\\357\037\340\375\003\274\177\000\007\004'\000\200\003i[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\013\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\002\027\000\000\000\000\034\007\004'\000\200\003c[\017\000\000\000\000\000\370\360\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\004\002\007\000\000\000\220\200\003\b\307\013\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002\007\000\000\000\220\200\003\360\347\000\000\000\000\001\002\003'\000\000\000\021\\\357\037\340\375\003\274\177\000\007\004'\000\200\003i[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\bG\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\007\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003c[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\bG\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\bG\n\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003i[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\207\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003c[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\307\t\000\000\020\034\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\007\004'\000\200\003i[\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\002\360\027\000\000\000\000\001\002\002\027\000\020\001$6\003\b\207\013\000\000\020\034\357\037\340\375\003\274\177\000\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\004\004\027\000\020\001$6\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003\274g\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\020\240\357\037\340\375\003\274\177\000\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\017\031\340\375\003\274\177\000\002:'\000\000\000\340\\\003\002\367\001\000\000)8\t\000'\000\200\007\230\\\357\037\340!\003\274\177\000\016\0007\000\200\007\230\\\002\n\367\017\000\000\340\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\004\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000G\000\200\007\230\\\003\0007\000\200\007\230\\\023\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\022\000\007\004\200\007\230L\023\0027\001\000\200\020\\\022\003'\001\000\b\020\\\357\037\340\375\003\274\177\000\016\tg\000@\007\3706\t\tg\000\000\000H8\021\023\227\000\000\200\020\\\357\037\340\375\003\274\177\000\020\022\347\000\000\b\020\\\003\bG\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\f\002'\000\300\001\3706\357\037\340\375\003\274\177\000\r\002'\000\000\000H8\003\021\327\000\000\200\020\\\004\020\307\000\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\017\002\007\000\000\000\220\200\002\013\367\000\000\000\250\\\005\b\307\004\000\000\020\034\357\037\340\375\003\274\177\000\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\004\000G\000\200\007\230\\\357\037\340!\003<d\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\004\013G\000\000\000\250\\\017\031\340\375\003\274\177\000\006\n\007@\000\000\3408\006\000g\000\200\007\230\\\007\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\n\000g\000\200\007\230\\\013\000w\000\200\007\230\\\006\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\007\000\007\000\200\007\230L\n\000\007\004\200\007\230L\357\037\340\375\003\274\177\000\007\006w\000\000\200\020\\\n\013\247\000\000\b\020\\\007\007\227\000\000\200\020\\\357\037\340\375\003\274\177\000\n\n\347\000\000\b\020\\\007\007\327\000\000\200\020\\\n\n\307\000\000\b\020\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\n\000\247\000\200\007\230\\\006\007\367\017\000\200\327[\357\037\340\375\003\274\177\000\007\007\367\017@\005\330[\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\017\031\340!\003\274\177\000\006\006\007\000\000\000\220\200\006\013g\000\000\000\250\\\013\b\307\n\000\000\020\034\357\037\340\375\003\274\177\000\024\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\024\000G\001\200\007\230\\\357\037\340\375\003\274\177\000\n\013\367\017\000\200\327[\013\013\367\017@\n\330[\n\000\247\000\200\007\230\\\357\037\340!\003<d\000\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\n:\247\000\000\000\340\\\357\037\340\375\003\274\177\000\013\n\367\001\000\000)8\025\000\247\000\200\007\230\\\n\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\n\025g\000@\005\3706\025\025g\000\000\000H8\025\023W\001\000\200\020\\\357\037\340\375\003\274\177\000\n\022\247\000\000\b\020\\\025\025\327\000\000\200\020\\\n\n\307\000\000\b\020\\\357\037\340\375\003\274\177\000\025\000W\001\200\007\230\\\n\000\247\000\200\007\230\\\024\025\367\017\000\200\327[\357\037\340\375\003\274\177\000\025\025\367\017@\005\330[\024\000G\001\200\007\230\\\025\000W\001\200\007\230\\\017\031\340\375\003\274\177\000\024\024\007\000\000\000\220\200\013\b\207\n\000\000\020\034\025\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\025\000W\001\200\007\230\\\n\013\367\017\000\200\327[\357\037\340\375\003\274\177\000\013\013\367\017\300\n\330[\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\017\031\340!\003\274\177\000\n\n\007\000\000\000\220\200\n:\247\000\000\000\340\\\013\n\367\001\000\000)8\357\037\340\375\003\274\177\000\025\000\247\000\200\007\230\\\n\000\267\000\200\007\230\\\n\025g\000@\005\3706\357\037\340\375\003\274\177\000\013\025g\000\000\000H8\013\023\267\000\000\200\020\\\022\022\247\000\000\b\020\\\357\037\340\375\003\274\177\000\013\013\327\000\000\200\020\\\022\022\307\000\000\b\020\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\022\000'\001\200\007\230\\\n\013\367\017\000\200\327[\013\013\367\017@\t\330[\357\037\340\375\003<d\000\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\357\037\340!\003<d\000\n\024\247\000\000\000X\\\n\013\247\000\000\000\250\\\n\002\007\000@\005p7\357\037\340\375\003\274\177\000\023\bG\005\000\000\020\034\024\000\367\017\000\b\020\\\023\0007\001\200\007\230\\\357\037\340\375\003\274\177\000\024\000G\001\200\007\230\\\022\023\367\017\000\200\327[\023\023\367\017@\n\330[\357\037\340\375\003<d\000\022\000'\001\200\007\230\\\023\0007\001\200\007\230\\\022\022\007\000\000\000\220\200\017\031\340!\003\274\177\000\022\013'\001\000\000\250\\\006\n'\001\000\003p[\013\bG\013\000\000\020\034\357\037\340\375\003\274\177\000\022\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\022\000'\001\200\007\230\\\357\037\340\375\003\274\177\000\n\013\367\017\000\200\327[\013\013\367\017@\t\330[\n\000\247\000\200\007\230\\\357\037\340!\003<d\000\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\n:\247\000\000\000\340\\\357\037\340\375\003\274\177\000\013\n\367\001\000\000)8\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\022\n'\000\300\005\3706\013\n'\000\000\000H8\013\021\267\000\000\200\020\\\357\037\340\375\003\274\177\000\022\020'\001\000\b\020\\\013\000\267\000\200\007\230\\\022\000'\001\200\007\230\\\357\037\340\375\003\274\177\000\n\013\367\017\000\200\327[\013\013\367\017@\t\330[\n\000\247\000\200\007\230\\\357\037\340!\003\274\177\000\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\023\b\007\013\000\000\020\034\357\037\340\375\003\274\177\000\013\000\367\017\000\b\020\\\023\0007\001\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\022\023\367\017\000\200\327[\023\023\367\017\300\005\330[\022\000'\001\200\007\230\\\357\037\340!\003<d\000\023\0007\001\200\007\230\\\022\022\007\000\000\000\220\200\022:'\001\000\000\340\\\357\037\340\375\003\274\177\000\013\022\367\001\000\000)8\023\000'\001\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\022\023'\000\300\005\3706\013\023'\000\000\000H8\021\021\267\000\000\200\020\\\357\037\340\375\003\274\177\000\013\020'\001\000\b\020\\\021\000\027\001\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\020\021\367\017\000\200\327[\021\021\367\017\300\005\330[\020\000\007\001\200\007\230\\\357\037\340!\003\274\177\000\021\000\027\001\200\007\230\\\020\020\007\000\000\000\220\200\n\n\007\001\000\000X\\\017\031\340!\003\274\177\000\n\013\247\000\000\000\250\\\n\002\007\000@\005p7\021\b\007\005\000\000\020\034\357\037\340\375\003\274\177\000\022\000\367\017\000\b\020\\\021\000\027\001\200\007\230\\\022\000'\001\200\007\230\\\357\037\340\375\003\274\177\000\020\021\367\017\000\200\327[\021\021\367\017@\t\330[\020\000\007\001\200\007\230\\\357\037\340!\003<d\000\021\000\027\001\200\007\230\\\020\020\007\000\000\000\220\200\020\013\007\001\000\000\250\\\017\031\340\375\003\274\177\000\006\n\007\001\000\003p[\013\b\207\004\000\000\020\034\020\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\013\000\267\000\200\007\230\\\020\000\007\001\200\007\230\\\n\013\367\017\000\200\327[\357\037\340\375\003\274\177\000\013\013\367\017@\b\330[\n\000\247\000\200\007\230\\\013\000\267\000\200\007\230\\\017\031\340\375\003\274\177\000\n\n\007\000\000\000\220\200\017\n\367\000\000 X\\\013\b\207\005\000\000\020\034\357\037\340\375\003\274\177\000\020\000\367\017\000\b\020\\\013\000\267\000\200\007\230\\\020\000\007\001\200\007\230\\\357\037\340\375\003\274\177\000\n\013\367\017\000\200\327[\013\013\367\017@\b\330[\n\000\247\000\200\007\230\\\357\037\340!\003\274\177\000\013\000\267\000\200\007\230\\\n\n\007\000\000\000\220\200\n\017\247\000\000\000h\\\017\031\340!\003<d\000\n\013\247\000\000\000\250\\\006\006\247\000\000\000p\\\004\004g\000\000\001p[\017\031\340!\003\274\177\000\004\016G\000\000\000\250\\\002\n\007\200\000\000\3408\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\005\000'\000\200\007\230\\\006\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000W\000\200\007\230\\\006\000g\000\200\007\230\\\003\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\005\000\007\004\200\007\230L\003\0027\000\000\200\020\\\005\006W\000\000\b\020\\\357\037\340\375\003\274\177\000\003\003\227\000\000\200\020\\\005\005\347\000\000\b\020\\\003\003\327\000\000\200\020\\\357\037\340\375\003\274\177\000\005\005\307\000\000\b\020\\\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\357\037\340=\003\274\177\000\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\240\017\000\007\000\000\000\370\360\357\037\340\375\000\274\037\000\017\000\007\000\000\000\370\360\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\344\007\340=\003\324\037\000\000\017\007\000\000\000\260P\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\357\037\340\375\003\274\177\000\003\b\307\013\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\004\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\003\b\367\017\000\200\020\\\005\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017\300\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\002\002\367\377\377\377\017\034\007\004'\000\200\003k[\017\000\200\001\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\017\000\007\000\000\000@\343\003\b\207\013\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\020\200\002\001'\000\000\000\340\\\357\037\340!\003<d\000\002\002\027\000\000\000\000\004\003\006\027\000\000\000\3408\002\006'\000\000\000\340\\\357\037\340\375\003\274\177\000\007\0027\000\200\003d[\007\200\007\340\200\003\220P\000\000\0004\000\000\220\342\357\037\340\375\003\274\177\000\017\000\000\000\000\000\370\360\017\000\007\000\000\000@\342\003\b\207\006\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\357\037\340\375\003\274\177\000\003\002\367\001\000\000)8\004\000'\000\200\007\230\\\002\0007\000\200\007\230\\\357\037\340\375\003<d\000\002\004g\000@\001\3706\003\004g\000\000\000H8\004\n\007\200\000\000\3408\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\005\000\367\017\200\007\230\\\006\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\004\000g\000\200\007\230\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000\007\000\200\007\230L\t\000\007\004\200\007\230L\007\004w\000\000\200\020\\\357\037\340\375\003\274\177\000\t\005\227\000\000\b\020\\\007\0077\000\000\200\020\\\t\t'\000\000\b\020\\\357\037\340\375\003\274\177\000\005\bG\006\000\000\020\034\006\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\004\005\367\017\000\200\327[\005\005\367\017@\003\330[\357\037\340\375\003<d\000\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\004\004\007\000\000\000\220\200\017\031\340\375\003\274\177\000\004:G\000\000\000\340\\\005\004\367\001\000\000)8\013\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000W\000\200\007\230\\\004\013'\000@\002\3706\013\013'\000\000\000H8\357\037\340\375\003\274\177\000\007\007\267\000\000\200\020\\\005\tG\000\000\b\020\\\007\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\006\007\367\017\000\200\327[\007\007\367\017\300\002\330[\357\037\340\375\003<d\000\006\000g\000\200\007\230\\\007\000w\000\200\007\230\\\005\006\007\000\000\000\220\200\017\031\340\375\003\274\177\000\006\n\367\017\000\000\340\\\006\000g\000\200\007\230\\\007\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\t\000g\000\200\007\230\\\n\000w\000\200\007\230\\\t\000\227\000\200\007\230\\\357\037\340\375\003\274\177\000\n\000\247\000\200\007\230\\\006\000\007\000\200\007\230L\007\000\007\004\200\007\230L\357\037\340\375\003\274\177\000\006\tg\000\000\200\020\\\007\nw\000\000\b\020\\\003\0067\000\000\200\020\\\357\037\340\375\003\274\177\000\002\007'\000\000\b\020\\\003\003\267\000\000\200\020\\\004\002G\000\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\005\002\007\000\000\000\220\240\017\000\007\000\000\000\370\360\017\000\007\000\000\000\370\360\357\007\340\375\000\220\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\357\031\240\376\000\274\177\000\000\000\007\000\200\033\250\360\000\000\007\000\000\000\230\357\017\000\007\000\000\000@\342\357\037\340\375\003\274\177\000\003\b\307\013\000\000\020\034\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\357\037\340\375\003<d\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\357\037\340\375\003\274\177\000\004\002\027\000\000\000\000\034\003\b\307\013\000\000\020\034\005\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\005\000W\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017\300\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\031\340\375\003\274\177\000\004\002\007\000\000\000\220\240\017\000\207\\\376\017@\342\003\b\207\013\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\020\200\002\001'\000\000\000\340\\\357\037\340!\003<d\000\002\002\027\000\000\000\000\004\003\006\027\000\000\000\3408\002\006'\000\000\000\340\\\357\037\340\375\003\274\177\000\007\0027\000\200\003d[\007\200\007\340\200\003\220P\017\000\200;\000\000@\342\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\342\003\b\207\006\000\000\020\034\004\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\002\003\367\017\000\200\327[\357\037\340\375\003\274\177\000\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\003\002\367\001\000\000)8\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\007\002g\000\300\001\3706\357\037\340!\003\274\177\000\004\002g\000\000\000H8\002\n\007\200\000\000\3408\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\005\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000W\000\200\007\230\\\003\0007\000\200\007\230\\\005\000\007\000\200\007\230L\357\037\340\375\003\274\177\000\006\000\007\004\200\007\230L\005\002W\000\000\200\020\\\006\003g\000\000\b\020\\\357\037\340\375\003\274\177\000\005\005G\000\000\200\020\\\006\006w\000\000\b\020\\\003\bG\006\000\000\020\034\357\037\340\375\003\274\177\000\004\000\367\017\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003<d\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\002:'\000\000\000\340\\\357\037\340\375\003\274\177\000\003\002\367\001\000\000)8\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\002'\000\300\001\3706\003\002'\000\000\000H8\003\0057\000\000\200\020\\\357\037\340\375\003\274\177\000\004\006G\000\000\b\020\\\003\0007\000\200\007\230\\\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\002\003\367\017\000\200\327[\003\003\367\017@\002\330[\002\000'\000\200\007\230\\\357\037\340!\003\274\177\000\003\0007\000\200\007\230\\\002\002\007\000\000\000\220\200\005\b\207\001\000\000\020\034\357\037\340\375\003\274\177\000\003\000\367\017\000\b\020\\\005\000W\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\004\005\367\017\000\200\327[\005\005\367\017\300\001\330[\004\000G\000\200\007\230\\\357\037\340!\003\274\177\000\005\000W\000\200\007\230\\\004\004\007\000\000\000\260\200\003\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000W\000\200\007\230\\\005\bG\t\000\000\020\034\000\000\367\017\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\017\031\340!\003\274\177\000\004\004\007\000\000\000\220\200\004:G\000\000\000\340\\\000\004\367\001\000\000)8\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\000\000\007\000\200\007\230\\\000\004'\000@\000\3706\357\037\340\375\003\274\177\000\005\004'\000\000\000H8\005\003W\000\000\200\020\\\000\006\007\000\000\b\020\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\000\000\007\000\200\007\230\\\004\005\367\017\000\200\327[\357\037\340\375\003\274\177\000\005\005\367\017@\000\330[\004\000G\000\200\007\230\\\005\000W\000\200\007\230\\\357\031\340\375\003\274\177\000\002\004\007\000\000\000\220\240\017\000\007\000\000\000@\342\017\000\007\000\000\000\000\343\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\003\002\027\000\000\000H8\357\037\340\375\003\274\177\000\003\003\207\001\000\000(8\004\000\367\017\200\007\230\\\007\003G\000\200\003j[\357\037\340\375\003\274\177\000\004\000'\000\200\007\230\\\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\000\000\2006\000\000\240\342\017\000\000\016\000\000@\342\002\002\027\000\000\000H8\357\037\340\375\003\274\177\000\003\000\367\017\200\007\230\\\007\0027\000\200\003k[\017\000\000\002\000\000@\342\017\031\340\375\003\274\177\000\004\004G\000\000\000\200P\004\000G\000\200\007\230\\\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\002\360\007\000\000\370\005\001\003\000\367\017\200\007\230\\\002\004'\000\200\001\200Y\017\031\340\375\003\274\177\000\003\002G\000\000\000\200P\004\360\007\000\000\370\013\001\004\0027\000\000\002\200Y\017\031\340\375\003\274\177\000\004\nG\000\0000\250\\\004\003G\000\200\001\200Y\003\360\007\000\000\370\005\001\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\003\0047\000\200\002\200Y\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\004\0007\000\200\007\230\\\017\000\007\000\000\000@\343\005\0037\360\377\377\017\034\357\037\340\375\003\274\177\000\006\360\027\000\000\000\000\001\007\005g\000\200\003h[\005\000W\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\200\"\000\000@\342\n\002\367\377\377\007\000\004\004\n\007\000\000\370#\004\357\037\340!\003\274\177\000\004\000G\000\200\007\230\\\006\004G\000\000\000\200P\007\360\007\000\000\370\013\001\357\037\340!\003\274\177\000\007\004g\000\200\003\200Y\007\nw\000\0000\250\\\004\006w\000\000\003\210Y\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\t\004\367\377\377\007\000\004\t\t\007\000\000\b \004\357\037\340\375\003<d\000\006\006w\000\000\003\220Y\006\004g\000\200\003\215X\004:g\000\000 \340\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\006\005\227\000\000\000G\\\004\004g\000\000\002G\\\357\037\340\375\003\274\177\000\006\3607\000\000\000\000\001\006\006W\000\000\000H\\\006\006\227\000\000\000G\\\357\037\340\375\003\274\177\000\006\006W\000\000\000(\\\005\006\027\000\000\000\000\004\006\006'\000\000\000\000\004\357\037\340\375\003\274\177\000\003\003G\360\377\377\017\034\003\t7\000\000\000(\\\007\003\027\000\000\000\000\034\357\037\340\375\003<d\000\t\000\367\017\200\007\230\\\005\005\227\000\200\003Z[\005:W\000\000 \340\\\357\037\340\375\003\274\177\000\005\000W\000\200\007\230\\\t\000\367\017\200\007\230\\\004\004\227\000\200\003Z[\017\031\340\375\003\274\177\000\004:G\000\000 \340\\\004\000G\000\200\007\230\\\t\000\367\017\200\007\230\\\357\037\340!\003\274\177\000\006\006\227\000\200\003Z[\006:g\000\000 \340\\\006\000g\000\200\007\230\\\357\037\340\375\003<d\000\004\004g\000\000\002G\\\004\005G\000\000\000G\\\004:G\000\000 \340\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\004\003w\000\000\002M[\003\004\027\000\000\000H8\357\037\340\375\003\274\177\000\005\000\367\017\200\007\230\\\007\nW\000\200\003d[\003\003G\000\000\000\240\\\357\037\340\375\003\274\177\000\002\002\007\000\000\000\b\004\002\003'\000\000\002G\\\002\000'\000\200\007\230\\\357\037\340\375\003<d\000\004\000'\000\200\007\230\\\017\000\007\000\000\000@\343\004\004G\000\000\000\200P\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\017\000\007\000\000\000@\343\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\000G\000\200\007\230\\\017\000\007\000\000\000 \343\357\037\340\375\003\274\177\000\002\000G\000\200\007\230\\\003\0007\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\000\0027\000\000\000\210\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\017\000\200\n\000\000@\342\003\0007\000\200\007\230\\\017\031\340!\003\274\177\000\004\003G\000\000\000\200P\003\n7\000\0000\250\\\005\360\007\000\000\370\003\001\357\037\340\375\003\274\177\000\005\003G\000\200\002\200Y\005\004W\000\000\002\200Y\004\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\004\002W\000\000\002\200Y\006\003G\000\000\001\200Y\357\037\340\375\003\274\177\000\006\006W\000\000\002\200Y\002\003g\000\000\001\200Y\002\002W\000\000\003\200Y\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\017\000\007\000\000\000 \343\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\@\000\200\002\000\000`\342\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\017\000\007\000\000\000 \343\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\003\0007\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\006\000'\000\200\007\230\\\004\006w\001\000\000(8\357\037\340\375\003\274\177\000\004\004\367\017\000\000\000\004\005\004\367\377\377\377\017\034\007\0007\000\200\007\230\\\357\037\340\375\003\274\177\000\t\007w\001\000\000(8\t\t\367\017\000\000\000\004\n\t\367\377\377\377\017\034\357\037\340\375\003\274\177\000\007\005\327\017\200\003h6\017\n\327\017\200\003h6\007\000\007!\200\003\220P\357\037\340\375\003\274\177\000\013\000'\000\200\007\230\\\002\0007\000\200\007\230\\\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\003\000G\000\200\007\230\\\f\000W\000\200\007\230\\\004\000w\000\200\007\230\\\357\037\340\375\003\274\177\000\005\000\227\000\200\007\230\\\n\000\247\000\200\007\230\\\000\000\200)\000\000\240\342\357\037\340\375\003\274\177\000\017\000\000\002\000\000@\342\007\000\367\017\200\007\230\\\007\000w\000\200\007\230\\\357\037\340\375\003<d\000\017\000\007\000\000\000@\343\007\000\267\000\200\007\230\\\007\nw\000\000\020\252\\\357\037\340\375\003\274\177\000\t\360\007\000\000\370\007\001\t\000\227\000\200\007\230\\\007\007\227\000\200\203\274[\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\t\000\227\000\200\007\230\\\017\000\000g\000\000@\342\357\037\340!\003\274\177\000\002\000'\000\200\007\230\\\r\n'\000\000\020\252\\\007\r\227\000\200\203\274[\357\037\340\375\003\274\177\000\r\000\327\000\200\007\230\\\017\000\200c\000\000@\342\016\004g\000\000\002G\\\357\037\340\375\003\274\177\000\016\016\367\377\377\377\007\004\007\016\367\017\200\003e[\017\000\000]\000\000@\342\357\037\340\375\003\274\177\000\007\007\227\000\200\203\262[\017\r\227\000\200\203\262[\027\000\007 \200\003\220P\357\037\340\375\003\274\177\000\007\000\007\340\200\003\220P\017\020\007\340\200\003\220P\017\000\002Y\000\000@\342\357\037\340\375\003\274\177\000\007\006\367\377\377\377\007\004\027\007\367\017\200\003e[\017\020\007A\200\003\220P\357\037\340\375\003\274\177\000\017\000\001R\000\000@\342\007\004\367\377\377\377\007\004\017\007\367\017\200\003e[\357\037\340\375\003\274\177\000\007\000\007!\200\003\220P\017\000\200J\000\000@\342\007\f\367\017\200\003c[\357\037\340\375\003\274\177\000\000\000\200\b\000\000\220\342\017\000\000\002\000\000@\342\007\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\017\000\007\000\000\000\370\360\006\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\007\360\007\000\000\370\005\001\013\000\267\000\200\007\230\\\006\013w\000\000\003\200Y\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\007\360\007\374\377\377\017\001\006\000g\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\017\000\007\000\000\000\370\360\007\n\367\017\200\003c[\357\037\340\375\003\274\177\000\017\000\200\000\000\000@\342\017\000\007\000\000\000@\343\004\000\367\017\200\007\230\\\357\037\340\375\003\274\177\000\t\360\007\000\000\370\005\001\002\000'\000\200\007\230\\\002\002\227\000\000\002\200Y\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\007\007\007\004\000\000\000\034\004\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\007\000w\000\200\007\230\\\017\000\007\000\000\000@\343\003\003\027\370\377\377\017\034\357\037\340\375\003\274\177\000\002\003w\001\000\000H8\002\006'\000\000\000\021\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\006\005w\001\000\000H8\006\006\007\000\000\b\f\034\006\004g\000\000\000\021\\\357\037\340!\003<d\000\006\000g\000\200\007\230\\\004\006G\000\000\000\200P\006\ng\000\0000\250\\\357\037\340\375\003\274\177\000\t\360\007\000\000\370\003\001\t\006G\000\200\004\200Y\t\004\227\000\000\002\200Y\357\037\340\375\003\274\177\000\004\000\367\017\200\007\230\\\004\002\227\000\000\002\200Y\n\006G\000\000\001\200Y\357\037\340\375\003\274\177\000\n\n\227\000\000\002\200Y\002\006\247\000\000\001\200Y\004\002\227\000\000\005\200Y\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\006\004w\001\000\000(8\006\006\367\017\000\000\000\004\357\037\340\375\003\274\177\000\013\360\367\007\000\000\000\001\013\013W\000\000\000\021\\\013\0137\000\000\000\020\\\357\037\340\375\003\274\177\000\013\013w\000\000\000\020\\\006\013g\000\000\000\020\\\003\006\367\377\377\377\017\034\357\037\340\375\003\274\177\000\007\003\347\017\200\003b6\t\000\227\000\200\007\230\\\n\000\247\000\200\007\230\\\357\037\340\375\003\274\177\000\002\000'\000\200\007\230\\\004\000G\000\200\007\230\\\013\000\267\000\200\007\230\\\357\037\340\375\003\274\177\000\006\000g\000\200\007\230\\\000\000\000\036\000\000\240\342\017\000\000\033\000\000@\342\357\037\340\375\003\274\177\000\007\006\347\017\200\003i6\017\000\200\026\000\000@\342\007\006\027\000\200\003c6\357\037\340\375\003\274\177\000\017\000\200\000\000\000@\342\017\000\007\000\000\000@\343\007\006\207\376\377\003c7\357\037\340\375\003\274\177\000\004\004\007\000\000\000\b\004\004\000G\000\200\007\230\\\017\000\000\000\000\000@\343\357\037\340\375\003\274\177\000\003\002\227\000\000\005\220Y\005\002\227\000\000\005\210Y\007\003W\000\200\203\275[\357\037\340\375\003\274\177\000\002\002\227\000\000\005\230Y\002\000'\000\200\007\230\\\002\002\367\377\377\007\000\004\357\037\340\375\003\274\177\000\002\002\007\000\000\b \004\003\006\007\002\000\000\000\034\003\0027\000\000\000H\\\357\037\340\375\003<d\000\017\003\367\017\200\003k[\027\006\367\017\200\003e[\003:g\000\000 \340\\\357\037\340\375\003\274\177\000\003\0007\000\200\007\230\\\003\3777\000\000\001\240\\\003\0027\000\000\000(\\\357\037\340\375\003\274\177\000\027\006\367\017\200\003k[\017\020\007@\200\003\220P\007\000\007!\200\003\220P\357\037\340\375\003\274\177\000\002\377\027\000\000\004\2408\005\003\027\000\000\000(8\006\005\027\000\000\000\000\004\357\037\340\375\003\274\177\000\002\002g\000\000\002G\\\002\0027\000\000\000G\\\002\002W\000\000\000\020\\\357\037\340\375\003\274\177\000\002\002G\000\000\002G\\\004\000'\000\200\007\230\\\017\000\007\000\000\000@\343\357\037\340\375\003\274\177\000\004\004\007\000\000\000\b\004\004\004\007\000\000\370'\004\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000@\343\013\013w\001\000\000H8\004\013G\000\000\000\020\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\017\000\007\000\000\000@\343\004\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\002\000G\000\200\007\230\\\017\000\007\000\000\000 \343\357\037\340\375\003\274\177\000\004\004g\000\000\004G\\\004\004\007\000\000\000\b\004\004\004\007\000\000\370'\004\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\004\000G\000\200\007\230\\\002\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\004\004g\000\000\004G\\\004\004\007\000\000\000\b\004\357\037\340\375\003\274\177\000\004\000G\000\200\007\230\\\004\000G\000\200\007\230\\\002\000G\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\002\360\007\000\000\374\017\001\002\000'\000\200\007\230\\\017\031\340\375\003\274\177\000\002\002W\000\000\000\200P\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\017\000\007\000\000\000 \343\013\000\267\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\375\003\274\177\000\002\013'\000\000\020X\\\002\000'\000\200\007\230\\\002\000'\000\200\007\230\\\357\037\340\377\000\200\037\000\017\000\007\000\000\000 \343\017\000\207\377\377\017@\342\000\017\007\000\000\000\260P\340\007\000\374\000\200\037\000\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\017\007\000\000\000\260P\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\365\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\001\000\000\000\000\000\000\263\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\003\000\000\000\000\000\000\b\001\000\000\000\000\000\000\002\000\000\000\t\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\004\000\000\000\000\000\000\234\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\\\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\214\005\000\000\000\000\000\000\030\001\000\000\000\000\000\000\003\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\303\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\244\006\000\000\000\000\000\000\210\001\000\000\000\000\000\000\000\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000@\b\000\000\000\000\000\000@k\000\000\000\000\000\000\003\000\000\000\n\000\000\027 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\211\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200s\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\007\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\270\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200s\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000\000v\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000\244\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\310l\000\000\000\000\000\000\310l\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000\200s\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\001\001H\000\000\000\020\023\000\000\000\000\000\000\016\023\000\000@\000\000\000\004\000\006\000=\000\000\000\000\000\000\000\000\000\000\000\021 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\373D\000\000\000\000\000\000\000\000\000\000\000\000\000\000\361!\n\n\n\n.version 6.4\n.target sm_61\n.address_size 64\n\001\000\377\022.global .align 1 .b8 blockIdx[1];\"\000\003dthread#\000\360\013\n.weak .func (.param .b32 \022\000\365\007_retval0) cudaMalloc(\n&\000'64\030\000\021_\026\000?_0, \000\013\2461\n)\n{\n.loc\231\000\0218\231\000!__\025\000\240_depot0[16\302\0002regI\000;%SP\017\000\025L\020\000\21132 %r<2>!\000\323rd<3>;\n\nmov.u2\000\033,e\000b;\ncvta\215\000\004%\000\023,\\\000\"ld\310\000\002\030\000nrd2, [\316\000\036])\000\0371)\000\001a0];\nst#\000\201[%SP+0],,\000\n\026\000\0228\026\000\"2;\266\000\001\330\000a1, 999(\000\002g\000\000\357\000\030[\236\001\003M\000\2571;\nret;\n\n}\326\001\032\376\002FuncGetAttributes\341\001\r#\000\016\354\001\017+\000\006\017\367\001\033\0371\367\001Q\0371\367\001!\016\331\000\017\002\002\017\0168\001\017\r\002\215hDevice\264\000\016\016\002\016$\000\017\017\002\000/32,\000\013\0371,\000\030\0372<\002\023\0372<\002\037\0354<\002\0372<\002\f\0372<\002\023\001_\000\004;\002\017\331\000\007\035]4\000\03714\000\006\017p\002\020\016\232\001\017q\002\022(32q\002\013\025\000!12\026\000\t\206\002\0373\206\002\025\0373\206\002#2Get\313\000\016}\002\005\033\000\004\332\000\017\034\002\023?3[8W\004.\017\033\002\r\0373W\004\031\004\263\001\r\320\000\017\252\001\006\017\005\004W\360\004OccupancyMaxActiveBV\b\376\003sPerMultiprocessor\237\001\017;\000\026\016B\006\017C\000%\016J\004\017C\000\036\0372\206\000/\0373\210\002\023O4[32\211\002\034\0353\211\002\0374\211\002\f\0374\211\002\031\0233\211\002\017\361\000\036\017\274\004\000\017K\000$/2]w\007\000\017L\000$\017\037\005\001\017\230\000%\017\247\007\035\t7\005\0306M\005\004,\000\"24-\000\0303\317\003\0372\317\003\025\0372\317\003L\237WithFlags\330\003(\005D\000\016\341\003\017L\000'\017\352\0030\fL\000\0372\230\0008\0373\230\0008\0374H\004\023O5[40\354\b.\017H\004\r\0375\354\b\034\017\371\000+\037]\234\0040\r\232\001\017\245\0040\r:\002\017\256\0041\r\333\002\017\267\0041\r|\003\017\300\004I\b-\000\0373$\n6\361\036visible .entry _Z14calculate_tempiPfS_S_iiiif\001\000\006\254\004\000x\000\0171\000\020\016\231\004\000\337\000\0179\000\027\03719\000%\03729\000%/3,\344\000$\03749\000%\03759\000%\03769\000%\02679\000\037f9\000\032\03789\000%\03799\000%/10:\000&\0371:\000&\0372:\000&\017\232\n\024O6[19\233\n\026\246pred %p<25U\006\20516 %rs<7\022\000\000\250\000k%f<36>\212\006'14%\000\000Z\000]fd<15\237\006 88\240\006P\t.shao\000\003\273\000\0224\273\000\037Z\001\001\0170E12\030\000@_on_G\005o[1024]R\000,o3powerS\0009\0216\244\000\024tK\000\017\217\007\b\0376\217\007\022\002v\001O6, [$\002\031\035]B\000\0375B\000\033\0362B\000\0374B\000\033\0361B\000\0373B\000\033\0360B\000\0372B\000\032\0369A\000\0371A\000\032\0368p\b\0372I\001\033\0377B\000\000\017I\001\033\0376B\000\000\017I\001\033\0375B\000\000\017I\001\033\017\315\t\001\017\204\000\033\0373f\t\000\017\204\000\033\017\250\t\001\017\316\001\033\0371\b\001\000\017B\000\033#0]\264\003#to\214\031\004\212\000\0244H\t\001\037\000\n\034\000\0215\034\000\0374;\000\005\0246\260\t\017;\000\000\0217\034\000\0376;\000\005\0248\001\n\017;\000\000\0219\034\000\0328\332\t\003y\016\0173\n\003\0329\026\000\0033\n/d74\n\003\03754\n\003\013x\n\0223E\000\0332b\n\0234\211\000\0334\027\000\002\\\000\0222\\\000\025f\027\000\001\241\000*f1\026\000\0215r\000+f2\026\000\001q\000*f3\026\000\0216p\000+f4\026\000\001o\000\033fn\000\0226n\000\0316\324\017\3326, 1117782016\265\000\0237\372\000\n1\000\000\272\001zctaid.x/\000\0239/\000\0317/\000\0258/\000\033y/\000\003A\001\0318/\000\000\335\001\036t\\\000#10X\001\0319\273\013\0230.\000\034y.\000\002o\001!30\030\003\002!\005%7,\034\001\007\026\000%8,\212\001\203;\ndiv.rn\032\000\"9,5\000:%f8G\001\0227\211\001\0279F\000510,\273\001V;\nrcpG\000!11\342\001\0320D\000\0228\267\001(11E\000%2,\352\001\fE\000\0213.\000\013\022\002\0228\346\001(13E\000%4,\031\002\fE\000!5,!\000\013E\000\003\203\002\0215E\000\003X\001$1,V\003S;\nshl\020\t332,\035\000\t\346\025A33, ;\002Bub.s\022\000#4,\030\000\0005\000\f\234\001\002\225\003(34q\000\0375q\000\003#6,\035\000\0311_\000\0277_\000\013\264\002\0231\007\030(37_\000&8,}\000\b\030\000%9,\214\002\203;\nmul.lod\000340,9\000\000'\000\0074\000541,\323\003\b\225\000542,7\000\0344\233\030\003r\004(42I\000&3,\263\000\b\030\000%4,P\003\f\225\000#5,9\000\000'\000\b4\000%6,\177\004\t\225\000&7,7\000\f*\001\0222S\003\0304*\001648,\263\000T;\naddJ\000#9,\037\000,15H\000\002m\003\0304&\001650,f\000\bH\000351,\037\000\016H\000\002\031\002(51H\000\0312\220\000\006\030\000&3,\353\003\t`\000#4,7\000\000%\000\013b\000\003\313\005\0305;\001)55\252\000\006\030\000&6,{\004\t\302\000#7,7\000\000%\000\fb\000\002\351\001\0305T\001658,\200\000\0130\000\003/\006(580\000&9,N\000\f0\000\002l\001\0305l\001\0246l\001\0313H\002661,e\000\013I\002362,9\000\000(\000\b5\000\005X\001\0324X\001664,8\000\fX\001\002\307\006(r6X\001)65\177\000rsetp.ltN\0003p1,\"\000\362\f0;\n@%p1 bra LBB6_5;\nbra.uni\020\00021;\n\b\000\027:[\000\0316[\000\006\030\000\004\343\005\0323\274\002368,\036\000#-1\212\000\024g\212\000#2,Q\000\000'\000\001\215\000\0372\215\000\007\0232\215\000\0302\215\000\03192\001\n\350\000#3,\"\000\002\350\000\0373[\000\007\0233[\000\0273[\000)70[\000\006\030\000\0301\361\001\006\350\000372,\036\000\016\350\000#4,Q\000\000'\000\001\215\000\0374\215\000\007\0234\215\000\0224\215\000\003\223\n\005\216\000\003\212\003\002u\000&d1h\002\0248\276\005\0032\000$2,!\000\0232\250\000\003\031\000$3,R\000\001'\000\b\300\006\001\334\001\000#\000\ne\000\0314\360\003\be\000$5,!\000\0276\226\016 rdJ\000\017~\017 \003s\n\002'\017\005L\000\002\257\n*16\307\000(8,\035\000\0315\261\000\0319?\004\007\261\000\0232\366\000\0349\026\001\000\263\013\006V\000\03022\b\000\035\000\002\247\007'6;\223\001\0242\036\005\0318-\001/23\222\001\005\000\242\r\003!\000\013|\000$5,Q\000\001'\000\b\222\001\"7,\202\000\0325e\000\0316\222\001\007y\001\000\"\n\017\245\020!\017z\001\002\0232\016\001\0327\310\000$9,\204\000\n\223\001\001\022\n\0066\000\0309\262\000/31\223\001\005\002\331\b-d3\251\002\002d\b\004V\000)32\223\001\"33\223\001\0337>\003\0235>\003\3305:\nbar.sync 0\277\003\0313\324\006\n\250\003#5,\"\000!-1\246\003\0265\246\003\fh\000\0236h\000\03063\004\0315\\\000Tneg.sN\030\000\036\000\t\236\037#39:\027\tW\000\0238W\000'7:,\000!74\304\004\r=\000/74>\000\004*8:9\034\0012\000\0137\006\0255\216\027\006\034\001\005V\002\0322\363\004\017\333\005\004\0217\351\001\0307\333\005#leK\001#6,Q\000\000'\000\001M\001\0266M\001+10\271\000\0239\271\000\0279N\001/80\216\000\003(81\216\000\006o\t382,\036\000\000<\000\b\250\000#3,\037\000)14F\001\003g\n\f\365\006\005\366\006\0310\205\001\02296\t\r@\000/79A\000\006\0301A\000\"4,4\000\f\210\001\003\236\n\b\342\000\0313\026\t\n\244\002\001\360\004\0268\244\002\0277W\001\r\313\000\0044\007\03015\007\0328u\t\006\247\002\001\377\002\0338\344\000\0023\n\fY\000\004\245\006(13\343\000\0358\251\002\002?\000/84@\000\006\0304@\000\001/\002\0351\301\013\002g\017(r6#\001\006\253\002\tU\f/87\236\007\003\0218\253\002\0378\253\002\002#8,Q\000\000'\000\001T\001\0278T\001\0346\273\000\004b\004'15T\001/90\220\000\003\0319.\b\006\255\002392,\036\000\000<\000\tU\003\001\023\000\017\255\002\000\002`\b\f\216\000\0247\216\000\0316\211\001\017\255\002\000\002\037\003\0379A\000\006\ts\004\"8,4\000\f\212\001\002\002\013\b1\013\0379\r\f\005394,\037\000\035-\321\001\002\263\n\0309\365\002/95H\000\005#6,\037\000\fG\000\003#\021\0309\031\002/97:\f\004398,\037\000\r\217\000\002T\020)r9\327\000\0379H\000\004C100, \000\f\220\000\0238P%\0300q\006%10\372\006\0316\033\002F102,\214\005\004\347\003\004\225\002$9,<\000\001*\000\001\227\002\0279\227\002\r\310\001\004\374\005(18\227\002\tb\000\b\016\002\001\024\005\fE\000$20E\000\b\211\005\007|\n\0378F\000\001/10G\000\005\0312B\005\001\215\021\0005\000\017\016\002\003)11\035\001\005W\002*726\001&4,:\005\f\313\003\002\325\n#10\230\000\0224\341\f\02608\001,22\254\000\004\255\005\0302\345\f)12e\000\b\363\000\002\307\005\rG\000\004C\f\0302j\005\0321\305\000\016G\000\0373G\000\006\tX\005\0231<\006\0374\001\003\003)14!\001\005I\003*76:\001&6,Q\005\fp\002\003\235\001\"05\007\000\0226:\001\007\034\016\0352\220\r\004\304\005(24\363\000\0315e\000\b\363\000\002[\000\rG\000\004J\t\0302P\005)16\305\000\016G\000\0376G\000\006\t\t\005\002\037\f?145\363\003\003)17!\001\005<\004*80:\001&8,\001\005\rt\002$2,=\000\001+\000\002:\001\007\311\016,28\254\000\004t\005(27\363\000\ne\000\b\363\000\002\030\007\rG\000\0046\t\0302\363\003)19\305\000\016G\000\0379G\000\006\03197\n\002K\003/46\345\004\003\0322\350\007\0220g\017\n*\000\003\330\003\0340r\000\0243 \004(30\271\000\006h\004\0328)\005\005\345\016\017\267\002\000$3,;\000\001)\000\002}\001\007\353\017,46}\000\004\361\003\0243\236\t\002\223\036\0251\301\000\0248\206\000\002\355\006\031s\230\004)12\030\006\007\245\000\0313\276\000\0071\006\003\276\003\000!\000\0351\214\021$4,V\000\001*\000\002\300\000\007\036\020,40\300\000\004\324\t\0313j\004/15\230\000\005\0316\230\000\b\217\005\0227e\b\006\226\b\0221\377\016\02316\003,16}\n\002\360\017\0241\007\000\003\354\002\0375\257\000\t\005\\\021\0313\257\000\0319\356\007\007y\005\0370G\001\005\002\242\017\001!\000\016G\001$6,V\000\001*\000\002\230\000\0376\230\000\t\004\276\004\0313\276\004/22\230\000\005\0373G\001\005-24G\001\002\321\017#12,\006\0353G\001$7,m\000\001.\000\002\257\000\0377\257\000\t\004v\n\0313&\005/26\366\001\004.27\354\005\006\001\024$8,=\000\001+\000\002\177\000\0378\177\000\t\004^\005)36\177\000\0378\177\000\005\03691\005\006\376\000$9,=\000\001+\000\002\177\000\0379\177\000\t\0041\005\03131\005/30\255\001\004.31Z\t\005\376\000\003\331\004\0233\007\000\002,\002/20\177\000\t\004\\\t\0313i\005/32\177\000\005\0363\243\b\006\364\024$1,=\000\001+\000\002\177\000\0371\177\000\t\004\241\005)39\262\004\000$\f\017\262\004\003\0312z\021\0374,\022\005/35\245\0237\002.\032:d35\334\021$7,\203\000\013+\022(8,6\000\0317\261\000\017\276\023\006\002q\017-d3\276\023\002g\016\004V\000(40B\023\0228B\023\"41f\037\000L$\003\033\000\022d\036\034\0308.\000%9,h\034\r/\000!2,\"\000\tD\001/42p\0238\002P\013+d4\335\000'4,\035\000*37\035\000\003\007 \0364\372\000#20\372\000\0365\313\000\001\323\034(20w\001)46\255\n\bw\001\002\306\001\0354\361\023\0314\306\001\0334\232\000'9,$\000\n\232\000\0231\232\000\0319\326\024\0325i\f\007;\025\002\271\032\001!\000\n\202\000(52\202\000*51\035\000'3,$\000\n\202\000\0222\202\000#53e\006\005\251\035\000\351\005\002\242\000\000&\000\r9\001\0214\030\000a3;\nfma5\000\002\232&#5,P\002J0dC0\001\000\001\032\000\b\324\025\001\252#\003C\036\r`\000!6,\"\000\f`\000&7,f\000\001#\000)d3:\001\0314\365\t\b:\001$5,!\000\n3\003(563\003(55\241\000\0235\035\001\nl\030)57\224\013\be\000\003E\000\0357e\000\0319e\000\bj\003#26e\000\0359\202\001#7,\205\000\000&\000\r\"\001\0218\030\000\0347\"\001\0379\202\001\f\t|\000%8,\n \016\025\004\0010\000,28a\000\002L \004h\000\002U\000\0307U\000\005;\004\004\353\021\005\322\000\001l\006\001!\000\013o\004\005\251\006#88&\034\0064\000%2,:\000.31\246\000\002\037\000\003o\001\007\246\000'3,\255\000-12\306\000%4,\313\004\005-\000\002^\000\002{\000\003)\000\0233\033\000\0314\356\004\000\265\034\017\260(\031\017\346\004\002\0226\315\003)60+\002\002\336\034\004\035\000\013\346\004\000\032\035\006$\000\0324\236\031\0226\013\030\0343M\017\0244g\f/40\r\030\004?134s\f\004\t\024!\007\375\021\002i\004\001\037\000\005I\024\024n\215\f\003\320\t\0233\334\017\002D\017\0272\n\016,42\243\000\004\215\f;41:\032\000\004r\t\0234\347\013\0208\331\007\006\205\n\001$\023$ndQ+\001s\000\027sb\f\"eq\033\000\021p\320\004\001!\000\000\352\b\020!\021\000\007\221\000\f\231\025$43w\000'3:\373\003\0376\002\034\006\000H\036\003!\000\n\002\034/66+\0021\003\252&\n\365\005\002S\036\005\035\000\t\373\033\0376=\b\006\002\200\035-d6=\b\000\264\035\006V\000\0307'\006\002 \002\000#\000\n:\t/72:\t7\"73x\000\013\225\000'4,\035\000*65\035\000(5,$\000\n\017\003\"75\017\003\r\333\001\005Y\036\0324\017\003\n&\000\004i\f\0314i\f/37\227\r\005\002\334\005\001!\000\0371\001\020\004/38\001\020\005'46\335\002\0375\335\002\005#6,\037\000\016\335\002\002\370\002\0266\335\002\b;\017\fw\000$47w\000\0307\335\002/76\335\002\005\000\333\032\003!\000\n\335\002/78\335\0020\"79^\000\0318\334\001\000\367\032\007\035\000\t\032\013\0378E\035\006\002\375\032-d8E\035\000*\032\006V\000\0308\356\037\0233\347\007883]\330\036\000\305\031\004\223)\t}\000\0375\331\036\005\002<\031\001!\000\013}\000$7,R\000\001'\000\t\250\002\"87\250\002\r\000!\004n\r\30048:\nret;\n\n}\n\000\000"
	.size	.L__unnamed_2, 35409

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
	.addrsig_sym _Z5fatalPc
	.addrsig_sym fprintf
	.addrsig_sym _Z11writeoutputPfiiPc
	.addrsig_sym fopen
	.addrsig_sym printf
	.addrsig_sym sprintf
	.addrsig_sym fputs
	.addrsig_sym fclose
	.addrsig_sym _Z9readinputPfiiPc
	.addrsig_sym fgets
	.addrsig_sym feof
	.addrsig_sym sscanf
	.addrsig_sym _Z14calculate_tempiPfS_S_iiiiffffff
	.addrsig_sym __cudaPopCallConfiguration
	.addrsig_sym cudaLaunchKernel
	.addrsig_sym _Z17compute_tran_tempPfPS_iiiiiiii
	.addrsig_sym __cudaPushCallConfiguration
	.addrsig_sym _Z5usageiPPc
	.addrsig_sym exit
	.addrsig_sym _Z3runiPPc
	.addrsig_sym atoi
	.addrsig_sym malloc
	.addrsig_sym calloc
	.addrsig_sym cudaMalloc
	.addrsig_sym cudaMemcpy
	.addrsig_sym cudaFree
	.addrsig_sym free
	.addrsig_sym __cuda_register_globals
	.addrsig_sym __cudaRegisterFunction
	.addrsig_sym __cudaRegisterFatBinary
	.addrsig_sym __cuda_module_ctor
	.addrsig_sym __cudaRegisterFatBinaryEnd
	.addrsig_sym __cudaUnregisterFatBinary
	.addrsig_sym __cuda_module_dtor
	.addrsig_sym atexit
	.addrsig_sym t_chip
	.addrsig_sym chip_height
	.addrsig_sym chip_width
	.addrsig_sym stderr
	.addrsig_sym .L__unnamed_2
	.addrsig_sym __cuda_fatbin_wrapper
	.addrsig_sym __cuda_gpubin_handle
