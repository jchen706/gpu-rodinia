	.text
	.file	"facetrain.c"
	.globl	_Z13backprop_facev      # -- Begin function _Z13backprop_facev
	.p2align	4, 0x90
	.type	_Z13backprop_facev,@function
_Z13backprop_facev:                     # @_Z13backprop_facev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	layer_size, %edi
	movl	$16, %esi
	movl	$1, %edx
	callq	bpnn_create
	movq	%rax, -8(%rbp)
	movl	layer_size, %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	load
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	bpnn_train_cuda
	movq	-8(%rbp), %rdi
	callq	bpnn_free
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z13backprop_facev, .Lfunc_end0-_Z13backprop_facev
	.cfi_endproc
                                        # -- End function
	.globl	_Z5setupiPPc            # -- Begin function _Z5setupiPPc
	.p2align	4, 0x90
	.type	_Z5setupiPPc,@function
_Z5setupiPPc:                           # @_Z5setupiPPc
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
	cmpl	$2, -4(%rbp)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	stderr, %rdi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	exit
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, layer_size
	movl	layer_size, %eax
	cltd
	movl	$16, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB1_4
# %bb.3:                                # %if.then3
	movq	stderr, %rdi
	movabsq	$.L.str.4, %rsi
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	exit
.LBB1_4:                                # %if.end5
	movl	$7, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	bpnn_initialize
	callq	_Z13backprop_facev
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	_Z5setupiPPc, .Lfunc_end1-_Z5setupiPPc
	.cfi_endproc
                                        # -- End function
	.type	layer_size,@object      # @layer_size
	.bss
	.globl	layer_size
	.p2align	2
layer_size:
	.long	0                       # 0x0
	.size	layer_size, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Input layer size : %d\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Starting training kernel\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Training done\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"usage: backprop <num of input elements>\n"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The number of input points must be divided by 16\n"
	.size	.L.str.4, 50

	.ident	"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z13backprop_facev
	.addrsig_sym bpnn_create
	.addrsig_sym printf
	.addrsig_sym load
	.addrsig_sym bpnn_train_cuda
	.addrsig_sym bpnn_free
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym atoi
	.addrsig_sym bpnn_initialize
	.addrsig_sym layer_size
	.addrsig_sym stderr
