	.text
	.file	"backprop.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function drnd
.LCPI0_0:
	.long	1325400064              # float 2.14748365E+9
	.text
	.globl	drnd
	.p2align	4, 0x90
	.type	drnd,@function
drnd:                                   # @drnd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	rand
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	drnd, .Lfunc_end0-drnd
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function dpn1
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	dpn1
	.p2align	4, 0x90
	.type	dpn1,@function
dpn1:                                   # @dpn1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	drnd
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	dpn1, .Lfunc_end1-dpn1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function squash
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	squash
	.p2align	4, 0x90
	.type	squash,@function
squash:                                 # @squash
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
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	callq	_ZSt3expf
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	squash, .Lfunc_end2-squash
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
.Lfunc_end3:
	.size	_ZSt3expf, .Lfunc_end3-_ZSt3expf
	.cfi_endproc
                                        # -- End function
	.text
	.globl	alloc_1d_dbl            # -- Begin function alloc_1d_dbl
	.p2align	4, 0x90
	.type	alloc_1d_dbl,@function
alloc_1d_dbl:                           # @alloc_1d_dbl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# %bb.1:                                # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movq	$0, -8(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	alloc_1d_dbl, .Lfunc_end4-alloc_1d_dbl
	.cfi_endproc
                                        # -- End function
	.globl	alloc_2d_dbl            # -- Begin function alloc_2d_dbl
	.p2align	4, 0x90
	.type	alloc_2d_dbl,@function
alloc_2d_dbl:                           # @alloc_2d_dbl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movq	$0, -8(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movl	$0, -20(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_6
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-16(%rbp), %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	alloc_2d_dbl, .Lfunc_end5-alloc_2d_dbl
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_randomize_weights  # -- Begin function bpnn_randomize_weights
	.p2align	4, 0x90
	.type	bpnn_randomize_weights,@function
bpnn_randomize_weights:                 # @bpnn_randomize_weights
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
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB6_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -24(%rbp)
.LBB6_3:                                # %for.cond1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB6_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB6_3 Depth=2
	callq	rand
	cltd
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	idivl	%ecx
	cvtsi2ss	%eax, %xmm0
	movq	-8(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	-24(%rbp), %rdi
	movss	%xmm0, (%rsi,%rdi,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc6
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end8
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	bpnn_randomize_weights, .Lfunc_end6-bpnn_randomize_weights
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function bpnn_randomize_row
.LCPI7_0:
	.long	1036831949              # float 0.100000001
	.text
	.globl	bpnn_randomize_row
	.p2align	4, 0x90
	.type	bpnn_randomize_row,@function
bpnn_randomize_row:                     # @bpnn_randomize_row
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movss	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	bpnn_randomize_row, .Lfunc_end7-bpnn_randomize_row
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_zero_weights       # -- Begin function bpnn_zero_weights
	.p2align	4, 0x90
	.type	bpnn_zero_weights,@function
bpnn_zero_weights:                      # @bpnn_zero_weights
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
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB8_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -24(%rbp)
.LBB8_3:                                # %for.cond1
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB8_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc6
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end8
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	bpnn_zero_weights, .Lfunc_end8-bpnn_zero_weights
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_initialize         # -- Begin function bpnn_initialize
	.p2align	4, 0x90
	.type	bpnn_initialize,@function
bpnn_initialize:                        # @bpnn_initialize
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	-4(%rbp), %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	srand
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	bpnn_initialize, .Lfunc_end9-bpnn_initialize
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_internal_create    # -- Begin function bpnn_internal_create
	.p2align	4, 0x90
	.type	bpnn_internal_create,@function
bpnn_internal_create:                   # @bpnn_internal_create
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$96, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movq	$0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %edi
	callq	alloc_1d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%edx, %edi
	callq	alloc_2d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%edx, %edi
	callq	alloc_2d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%edx, %edi
	callq	alloc_2d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%edx, %edi
	callq	alloc_2d_dbl
	movq	-32(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	bpnn_internal_create, .Lfunc_end10-bpnn_internal_create
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_free               # -- Begin function bpnn_free
	.p2align	4, 0x90
	.type	bpnn_free,@function
bpnn_free:                              # @bpnn_free
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB11_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movl	$0, -20(%rbp)
.LBB11_5:                               # %for.cond5
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB11_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
# %bb.7:                                # %for.inc12
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               # %for.end14
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	bpnn_free, .Lfunc_end11-bpnn_free
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_create             # -- Begin function bpnn_create
	.p2align	4, 0x90
	.type	bpnn_create,@function
bpnn_create:                            # @bpnn_create
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	bpnn_internal_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	bpnn_randomize_weights
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	bpnn_randomize_weights
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	bpnn_zero_weights
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	bpnn_zero_weights
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	bpnn_randomize_row
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	bpnn_create, .Lfunc_end12-bpnn_create
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function bpnn_layerforward
.LCPI13_0:
	.long	1065353216              # float 1
	.text
	.globl	bpnn_layerforward
	.p2align	4, 0x90
	.type	bpnn_layerforward,@function
bpnn_layerforward:                      # @bpnn_layerforward
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movss	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$1, -40(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB13_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$0, -44(%rbp)
.LBB13_3:                               # %for.cond1
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB13_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	squash
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.7:                                # %for.inc11
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end13
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	bpnn_layerforward, .Lfunc_end13-bpnn_layerforward
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bpnn_output_error
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	bpnn_output_error
	.p2align	4, 0x90
	.type	bpnn_output_error,@function
bpnn_output_error:                      # @bpnn_output_error
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	$1, -44(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_7
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -48(%rbp)
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -52(%rbp)
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %edx
	xorl	$2147483648, %edx       # imm = 0x80000000
	movd	%edx, %xmm0
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
.LBB14_5:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movss	-60(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	-56(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_1
.LBB14_7:                               # %for.end
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	bpnn_output_error, .Lfunc_end14-bpnn_output_error
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function bpnn_hidden_error
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	bpnn_hidden_error
	.p2align	4, 0x90
	.type	bpnn_hidden_error,@function
bpnn_hidden_error:                      # @bpnn_hidden_error
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movl	$1, -52(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB15_11
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	$1, -56(%rbp)
.LBB15_3:                               # %for.cond1
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB15_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	-60(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-60(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_8
# %bb.7:                                # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)        # 4-byte Spill
	jmp	.LBB15_9
.LBB15_8:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %edx
	xorl	$2147483648, %edx       # imm = 0x80000000
	movd	%edx, %xmm0
	movss	%xmm0, -72(%rbp)        # 4-byte Spill
.LBB15_9:                               # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movss	-72(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
# %bb.10:                               # %for.inc26
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_1
.LBB15_11:                              # %for.end28
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	bpnn_hidden_error, .Lfunc_end15-bpnn_hidden_error
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function bpnn_adjust_weights
.LCPI16_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI16_1:
	.quad	4599075939470750515     # double 0.29999999999999999
	.text
	.globl	bpnn_adjust_weights
	.p2align	4, 0x90
	.type	bpnn_adjust_weights,@function
bpnn_adjust_weights:                    # @bpnn_adjust_weights
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$1, -60(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB16_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$0, -56(%rbp)
.LBB16_3:                               # %for.cond1
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB16_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm2
	movq	-48(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc25
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_1
.LBB16_8:                               # %for.end27
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	bpnn_adjust_weights, .Lfunc_end16-bpnn_adjust_weights
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_feedforward        # -- Begin function bpnn_feedforward
	.p2align	4, 0x90
	.type	bpnn_feedforward,@function
bpnn_feedforward:                       # @bpnn_feedforward
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	bpnn_layerforward
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	bpnn_layerforward
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	bpnn_feedforward, .Lfunc_end17-bpnn_feedforward
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_train              # -- Begin function bpnn_train
	.p2align	4, 0x90
	.type	bpnn_train,@function
bpnn_train:                             # @bpnn_train
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
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
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	bpnn_layerforward
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
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
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
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-32(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	64(%rax), %r8
	movq	-8(%rbp), %rax
	movq	80(%rax), %r9
	callq	bpnn_adjust_weights
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	bpnn_train, .Lfunc_end18-bpnn_train
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_save               # -- Begin function bpnn_save
	.p2align	4, 0x90
	.type	bpnn_save,@function
bpnn_save:                              # @bpnn_save
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
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.4, %rsi
	callq	fopen
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %r8
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	leaq	-20(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movl	$1, %r8d
	movq	%r8, %rsi
	movq	%r8, %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	fwrite
	leaq	-24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movl	$1, %ecx
	movq	%rcx, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	fwrite
	leaq	-28(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movl	$1, %ecx
	movq	%rcx, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	fwrite
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-20(%rbp), %r9d
	addl	$1, %r9d
	movl	-24(%rbp), %r10d
	addl	$1, %r10d
	imull	%r10d, %r9d
	movslq	%r9d, %rcx
	shlq	$2, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	malloc
	movq	%rax, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
                                        #       Child Loop BB19_5 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB19_12
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$0, -36(%rbp)
.LBB19_3:                               # %for.cond10
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB19_10
# %bb.4:                                # %for.body12
                                        #   in Loop: Header=BB19_3 Depth=2
	movq	-56(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-64(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	leaq	-44(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$4, -96(%rbp)
	movl	$0, -92(%rbp)
.LBB19_5:                               # %for.cond17
                                        #   Parent Loop BB19_1 Depth=1
                                        #     Parent Loop BB19_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB19_8
# %bb.6:                                # %for.body19
                                        #   in Loop: Header=BB19_5 Depth=3
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%dl, (%rax)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB19_5 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB19_5
.LBB19_8:                               # %for.end
                                        #   in Loop: Header=BB19_3 Depth=2
	movslq	-40(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
# %bb.9:                                # %for.inc24
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB19_3
.LBB19_10:                              # %for.end26
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_11
.LBB19_11:                              # %for.inc27
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_1
.LBB19_12:                              # %for.end29
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite
	movq	-64(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	free
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	imull	%r9d, %r8d
	movslq	%r8d, %rax
	shlq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB19_13:                              # %for.cond46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_15 Depth 2
                                        #       Child Loop BB19_17 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB19_24
# %bb.14:                               # %for.body48
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	$0, -36(%rbp)
.LBB19_15:                              # %for.cond49
                                        #   Parent Loop BB19_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_17 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB19_22
# %bb.16:                               # %for.body51
                                        #   in Loop: Header=BB19_15 Depth=2
	movq	-56(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-64(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	leaq	-44(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$4, -120(%rbp)
	movl	$0, -116(%rbp)
.LBB19_17:                              # %for.cond62
                                        #   Parent Loop BB19_13 Depth=1
                                        #     Parent Loop BB19_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB19_20
# %bb.18:                               # %for.body64
                                        #   in Loop: Header=BB19_17 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	%dl, (%rax)
# %bb.19:                               # %for.inc67
                                        #   in Loop: Header=BB19_17 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB19_17
.LBB19_20:                              # %for.end69
                                        #   in Loop: Header=BB19_15 Depth=2
	movslq	-40(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
# %bb.21:                               # %for.inc73
                                        #   in Loop: Header=BB19_15 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB19_15
.LBB19_22:                              # %for.end75
                                        #   in Loop: Header=BB19_13 Depth=1
	jmp	.LBB19_23
.LBB19_23:                              # %for.inc76
                                        #   in Loop: Header=BB19_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_13
.LBB19_24:                              # %for.end78
	movq	-64(%rbp), %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite
	movq	-64(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	free
	movq	-72(%rbp), %rdi
	callq	fclose
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	bpnn_save, .Lfunc_end19-bpnn_save
	.cfi_endproc
                                        # -- End function
	.globl	bpnn_read               # -- Begin function bpnn_read
	.p2align	4, 0x90
	.type	bpnn_read,@function
bpnn_read:                              # @bpnn_read
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$420, %edx              # imm = 0x1A4
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	jne	.LBB20_2
# %bb.1:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB20_27
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rsi
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	movl	-36(%rbp), %edi
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movl	$4, %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	read
	movl	-36(%rbp), %edi
	leaq	-44(%rbp), %rcx
	movq	%rcx, %rsi
	movl	$4, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	read
	movl	-36(%rbp), %edi
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movl	$4, %edx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	read
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	bpnn_internal_create
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$0, -60(%rbp)
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	-44(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%esi, %ecx
	movl	%ecx, %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %edi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	-44(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	movq	%rax, %rdx
	callq	read
	movl	$0, -52(%rbp)
.LBB20_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #       Child Loop BB20_7 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB20_14
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	$0, -56(%rbp)
.LBB20_5:                               # %for.cond20
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_7 Depth 3
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB20_12
# %bb.6:                                # %for.body22
                                        #   in Loop: Header=BB20_5 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	$4, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB20_7:                               # %for.cond27
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB20_10
# %bb.8:                                # %for.body29
                                        #   in Loop: Header=BB20_7 Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB20_7 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB20_7
.LBB20_10:                              # %for.end
                                        #   in Loop: Header=BB20_5 Depth=2
	movslq	-60(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
# %bb.11:                               # %for.inc34
                                        #   in Loop: Header=BB20_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB20_5
.LBB20_12:                              # %for.end36
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_13
.LBB20_13:                              # %for.inc37
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_3
.LBB20_14:                              # %for.end39
	movq	-24(%rbp), %rdi
	callq	free
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -60(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	-48(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%esi, %ecx
	movl	%ecx, %edi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %edi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	-48(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	movq	%rax, %rdx
	callq	read
	movl	$0, -52(%rbp)
.LBB20_15:                              # %for.cond55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
                                        #       Child Loop BB20_19 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB20_26
# %bb.16:                               # %for.body57
                                        #   in Loop: Header=BB20_15 Depth=1
	movl	$0, -56(%rbp)
.LBB20_17:                              # %for.cond58
                                        #   Parent Loop BB20_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_19 Depth 3
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB20_24
# %bb.18:                               # %for.body60
                                        #   in Loop: Header=BB20_17 Depth=2
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movl	$4, -112(%rbp)
	movl	$0, -108(%rbp)
.LBB20_19:                              # %for.cond71
                                        #   Parent Loop BB20_15 Depth=1
                                        #     Parent Loop BB20_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB20_22
# %bb.20:                               # %for.body73
                                        #   in Loop: Header=BB20_19 Depth=3
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
# %bb.21:                               # %for.inc76
                                        #   in Loop: Header=BB20_19 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB20_19
.LBB20_22:                              # %for.end78
                                        #   in Loop: Header=BB20_17 Depth=2
	movslq	-60(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
# %bb.23:                               # %for.inc82
                                        #   in Loop: Header=BB20_17 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB20_17
.LBB20_24:                              # %for.end84
                                        #   in Loop: Header=BB20_15 Depth=1
	jmp	.LBB20_25
.LBB20_25:                              # %for.inc85
                                        #   in Loop: Header=BB20_15 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_15
.LBB20_26:                              # %for.end87
	movq	-24(%rbp), %rdi
	callq	free
	movl	-36(%rbp), %edi
	callq	close
	movabsq	$.L.str.10, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	bpnn_zero_weights
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	bpnn_zero_weights
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB20_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	bpnn_read, .Lfunc_end20-bpnn_read
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ALLOC_1D_DBL: Couldn't allocate array of floats\n"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ALLOC_2D_DBL: Couldn't allocate array of dbl ptrs\n"
	.size	.L.str.1, 51

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Random number generator seed: %d\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BPNN_CREATE: Couldn't allocate neural network\n"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"w+"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Saving %dx%dx%d network to '%s'\n"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Reading '%s'\n"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"'%s' contains a %dx%dx%d network\n"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Reading input weights..."
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Done\nReading hidden weights..."
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Done\n"
	.size	.L.str.10, 6

	.ident	"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym drnd
	.addrsig_sym rand
	.addrsig_sym squash
	.addrsig_sym _ZSt3expf
	.addrsig_sym alloc_1d_dbl
	.addrsig_sym malloc
	.addrsig_sym printf
	.addrsig_sym alloc_2d_dbl
	.addrsig_sym bpnn_randomize_weights
	.addrsig_sym bpnn_randomize_row
	.addrsig_sym bpnn_zero_weights
	.addrsig_sym srand
	.addrsig_sym bpnn_internal_create
	.addrsig_sym free
	.addrsig_sym bpnn_layerforward
	.addrsig_sym bpnn_output_error
	.addrsig_sym bpnn_hidden_error
	.addrsig_sym bpnn_adjust_weights
	.addrsig_sym fopen
	.addrsig_sym fwrite
	.addrsig_sym fclose
	.addrsig_sym open
	.addrsig_sym read
	.addrsig_sym close
	.addrsig_sym expf
