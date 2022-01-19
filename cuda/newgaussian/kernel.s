	.text
	.file	"gaussian.cu"
	.globl	_Z4Fan1PfS_ii           # -- Begin function _Z4Fan1PfS_ii
	.p2align	4, 0x90
	.type	_Z4Fan1PfS_ii,@function
_Z4Fan1PfS_ii:                          # @_Z4Fan1PfS_ii
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$12328, %rsp            # imm = 0x3028
	movq	%rdi, -12320(%rbp)      # 8-byte Spill
	movq	%rsi, -12328(%rbp)      # 8-byte Spill
	movl	%edx, -12332(%rbp)      # 4-byte Spill
	movl	%ecx, -12336(%rbp)      # 4-byte Spill
# %bb.1:                                # %entry_after_block_sync_0
# %bb.2:                                # %entry_after_block_sync_0_after_block_sync_3
	jmp	.LBB0_3
.LBB0_3:                                # %intra_warp_init
	movl	$0, -12(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %intra_warp_inc
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB0_5:                                # %intra_warp_cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$512, -12(%rbp)         # imm = 0x200
	jae	.LBB0_10
# %bb.6:                                # %entry_after_block_sync_0_after_block_sync_1
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-12320(%rbp), %rsi      # 8-byte Reload
	movq	%rsi, -12304(%rbp,%rdx,8)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-12328(%rbp), %rdi      # 8-byte Reload
	movq	%rdi, -8208(%rbp,%rdx,8)
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movl	-12332(%rbp), %eax      # 4-byte Reload
	movl	%eax, -4112(%rbp,%rdx,4)
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %r8d
	shll	$5, %ecx
	addl	%ecx, %r8d
	movslq	%r8d, %rdx
	movl	-12336(%rbp), %ecx      # 4-byte Reload
	movl	%ecx, -2064(%rbp,%rdx,4)
	movl	-16(%rbp), %r8d
	shll	$5, %r8d
	movl	-12(%rbp), %r9d
	addl	%r8d, %r9d
	movq	block_index@GOTTPOFF(%rip), %rdx
	movl	%fs:(%rdx), %r8d
	shll	$9, %r8d
	addl	%r8d, %r9d
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %r10d
	shll	$5, %r8d
	addl	%r8d, %r10d
	movslq	%r10d, %rdx
	movl	-4112(%rbp,%rdx,4), %r8d
	movslq	%r10d, %rdx
	subl	$1, %r8d
	movl	-16(%rbp), %r10d
	movl	-12(%rbp), %r11d
	shll	$5, %r10d
	addl	%r10d, %r11d
	movslq	%r11d, %rbx
	subl	-2064(%rbp,%rbx,4), %r8d
	cmpl	%r8d, %r9d
	jb	.LBB0_8
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_9
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-8208(%rbp,%rdx,8), %rsi
	movl	-4112(%rbp,%rdx,4), %eax
	movq	block_index@GOTTPOFF(%rip), %rdi
	movl	%fs:(%rdi), %r8d
	movl	%r8d, %r9d
	shll	$9, %r9d
	addl	%ecx, %r9d
	movslq	-2064(%rbp,%rdx,4), %rdi
	movl	%edi, %ecx
                                        # implicit-def: $r10
	movl	%r9d, %r10d
                                        # implicit-def: $r11
	movl	%ecx, %r11d
	leal	1(%r11,%r10), %r9d
	movl	%eax, %ebx
	imull	%r9d, %ebx
	movl	%ebx, %r10d
	leaq	(%rsi,%r10,4), %r10
	movss	(%r10,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	%eax, %r9d
	imull	%ecx, %r9d
	movslq	%r9d, %r10
	leaq	(%rsi,%r10,4), %rsi
	movss	(%rsi,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movq	-12304(%rbp,%rdx,8), %rdx
	shll	$9, %r8d
	movl	-16(%rbp), %ecx
	shll	$5, %ecx
	addl	-12(%rbp), %ecx
	addl	%ecx, %r8d
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %r9d
	shll	$5, %ecx
	addl	%ecx, %r9d
	movslq	%r9d, %rsi
	addl	-2064(%rbp,%rsi,4), %r8d
	addl	$1, %r8d
	imull	%r8d, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rsi
	movslq	-2064(%rbp,%rsi,4), %rsi
	movss	%xmm0, (%rdx,%rsi,4)
.LBB0_9:                                # %return
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_4
.LBB0_10:                               # %reset_block
	movl	$0, -12(%rbp)
# %bb.11:                               # %return_after_block_sync_4
	jmp	.LBB0_12
.LBB0_12:                               # %return_after_block_sync_2
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z4Fan1PfS_ii, .Lfunc_end0-_Z4Fan1PfS_ii
                                        # -- End function
	.globl	_Z4Fan2PfS_S_iii        # -- Begin function _Z4Fan2PfS_S_iii
	.p2align	4, 0x90
	.type	_Z4Fan2PfS_S_iii,@function
_Z4Fan2PfS_S_iii:                       # @_Z4Fan2PfS_S_iii
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$22584, %rsp            # imm = 0x5838
	movq	%rdi, -22576(%rbp)      # 8-byte Spill
	movq	%rsi, -22584(%rbp)      # 8-byte Spill
	movq	%rdx, -22592(%rbp)      # 8-byte Spill
	movl	%ecx, -22596(%rbp)      # 4-byte Spill
	movl	%r8d, -22600(%rbp)      # 4-byte Spill
	movl	%r9d, -22604(%rbp)      # 4-byte Spill
# %bb.1:                                # %entry_after_block_sync_3
# %bb.2:                                # %entry_after_block_sync_1
	jmp	.LBB1_3
.LBB1_3:                                # %intra_warp_init
	movl	$0, -28(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %intra_warp_inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB1_5:                                # %intra_warp_cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$512, -28(%rbp)         # imm = 0x200
	jae	.LBB1_13
# %bb.6:                                # %entry_after_block_sync_1_after_block_sync_4
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-22576(%rbp), %rsi      # 8-byte Reload
	movq	%rsi, -22560(%rbp,%rdx,8)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-22584(%rbp), %rdi      # 8-byte Reload
	movq	%rdi, -18464(%rbp,%rdx,8)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-22592(%rbp), %r8       # 8-byte Reload
	movq	%r8, -14368(%rbp,%rdx,8)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movl	-22596(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10272(%rbp,%rdx,4)
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %r9d
	shll	$5, %ecx
	addl	%ecx, %r9d
	movslq	%r9d, %rdx
	movl	-22600(%rbp), %ecx      # 4-byte Reload
	movl	%ecx, -8224(%rbp,%rdx,4)
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r10d
	shll	$5, %r9d
	addl	%r9d, %r10d
	movslq	%r10d, %rdx
	movl	-22604(%rbp), %r9d      # 4-byte Reload
	movl	%r9d, -6176(%rbp,%rdx,4)
	movl	-32(%rbp), %r10d
	shll	$5, %r10d
	movl	-28(%rbp), %r11d
	addl	%r10d, %r11d
	movq	block_index@GOTTPOFF(%rip), %rdx
	movl	%fs:(%rdx), %r10d
	shll	$9, %r10d
	addl	%r10d, %r11d
	movl	-32(%rbp), %r10d
	movl	-28(%rbp), %ebx
	shll	$5, %r10d
	addl	%r10d, %ebx
	movslq	%ebx, %rdx
	movl	-10272(%rbp,%rdx,4), %r10d
	movslq	%ebx, %rdx
	subl	$1, %r10d
	movl	-32(%rbp), %ebx
	movl	-28(%rbp), %r14d
	shll	$5, %ebx
	addl	%ebx, %r14d
	movslq	%r14d, %r15
	subl	-6176(%rbp,%r15,4), %r10d
	cmpl	%r10d, %r11d
	jb	.LBB1_8
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_12
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-32(%rbp), %eax
	shll	$5, %eax
	addl	-28(%rbp), %eax
	cltd
	movl	$512, %ecx              # imm = 0x200
	idivl	%ecx
	addl	$0, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %rdi
	movl	-10272(%rbp,%rdi,4), %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %r8d
	shll	$5, %esi
	addl	%esi, %r8d
	movslq	%r8d, %rdi
	subl	-6176(%rbp,%rdi,4), %ecx
	cmpl	%ecx, %eax
	jb	.LBB1_10
# %bb.9:                                # %if.then11
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_12
.LBB1_10:                               # %if.end12
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	block_index@GOTTPOFF(%rip), %rax
	movl	%fs:(%rax), %ecx
	shll	$9, %ecx
	movl	-32(%rbp), %edx
	shll	$5, %edx
	addl	-28(%rbp), %edx
	addl	%edx, %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	shll	$5, %edx
	addl	%edx, %esi
	movslq	%esi, %rax
	movl	%ecx, -4128(%rbp,%rax,4)
	movl	-32(%rbp), %ecx
	shll	$5, %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	movl	$512, %ecx              # imm = 0x200
	idivl	%ecx
	addl	$0, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %rdi
	movl	%eax, -2080(%rbp,%rdi,4)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdi
	movq	-22560(%rbp,%rdi,8), %rdi
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %r8
	movl	-10272(%rbp,%r8,4), %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r8
	movl	-4128(%rbp,%r8,4), %ecx
	movslq	%esi, %r8
	addl	$1, %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %r9d
	shll	$5, %esi
	addl	%esi, %r9d
	movslq	%r9d, %r10
	addl	-6176(%rbp,%r10,4), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r10
	addl	-6176(%rbp,%r10,4), %eax
	movslq	%eax, %r10
	movss	(%rdi,%r10,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdi
	movq	-18464(%rbp,%rdi,8), %rdi
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %r10
	movl	-10272(%rbp,%r10,4), %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r10
	imull	-6176(%rbp,%r10,4), %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r10
	movl	-2080(%rbp,%r10,4), %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %r9d
	shll	$5, %esi
	addl	%esi, %r9d
	movslq	%r9d, %r10
	addl	-6176(%rbp,%r10,4), %ecx
	addl	%ecx, %eax
	movslq	%eax, %r10
	mulss	(%rdi,%r10,4), %xmm0
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdi
	movq	-18464(%rbp,%rdi,8), %rdi
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %r10
	movl	-10272(%rbp,%r10,4), %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r10
	movl	-4128(%rbp,%r10,4), %ecx
	movslq	%esi, %r10
	addl	$1, %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %r9d
	shll	$5, %esi
	addl	%esi, %r9d
	movslq	%r9d, %r11
	addl	-6176(%rbp,%r11,4), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %esi
	shll	$5, %ecx
	addl	%ecx, %esi
	movslq	%esi, %r11
	movl	-2080(%rbp,%r11,4), %ecx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %r9d
	shll	$5, %esi
	addl	%esi, %r9d
	movslq	%r9d, %r11
	addl	-6176(%rbp,%r11,4), %ecx
	addl	%ecx, %eax
	movslq	%eax, %r11
	movss	(%rdi,%r11,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rdi,%r11,4)
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdi
	cmpl	$0, -2080(%rbp,%rdi,4)
	jne	.LBB1_12
# %bb.11:                               # %if.then42
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-22560(%rbp,%rdx,8), %rdx
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rsi
	movl	-10272(%rbp,%rsi,4), %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edi
	shll	$5, %ecx
	addl	%ecx, %edi
	movslq	%edi, %rsi
	movl	-4128(%rbp,%rsi,4), %ecx
	movslq	%edi, %rsi
	addl	$1, %ecx
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %r8d
	shll	$5, %edi
	addl	%edi, %r8d
	movslq	%r8d, %r9
	addl	-6176(%rbp,%r9,4), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edi
	shll	$5, %ecx
	addl	%ecx, %edi
	movslq	%edi, %r9
	movl	-2080(%rbp,%r9,4), %ecx
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %r8d
	shll	$5, %edi
	addl	%edi, %r8d
	movslq	%r8d, %r9
	addl	-6176(%rbp,%r9,4), %ecx
	addl	%ecx, %eax
	movslq	%eax, %r9
	movss	(%rdx,%r9,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-14368(%rbp,%rdx,8), %rdx
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %r9
	movslq	-6176(%rbp,%r9,4), %r9
	mulss	(%rdx,%r9,4), %xmm0
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-14368(%rbp,%rdx,8), %rdx
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$5, %eax
	addl	%eax, %ecx
	movslq	%ecx, %r9
	movl	-4128(%rbp,%r9,4), %eax
	movslq	%ecx, %r9
	addl	$1, %eax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edi
	shll	$5, %ecx
	addl	%ecx, %edi
	movslq	%edi, %r10
	addl	-6176(%rbp,%r10,4), %eax
	movslq	%eax, %r10
	movss	(%rdx,%r10,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rdx,%r10,4)
.LBB1_12:                               # %if.end58
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_4
.LBB1_13:                               # %reset_block
	movl	$0, -28(%rbp)
# %bb.14:                               # %if.end58_after_block_sync_0
	jmp	.LBB1_15
.LBB1_15:                               # %if.end58_after_block_sync_0_after_block_sync_2
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_Z4Fan2PfS_S_iii, .Lfunc_end1-_Z4Fan2PfS_S_iii
                                        # -- End function
	.globl	_Z4Fan1PfS_ii_wrapper   # -- Begin function _Z4Fan1PfS_ii_wrapper
	.p2align	4, 0x90
	.type	_Z4Fan1PfS_ii_wrapper,@function
_Z4Fan1PfS_ii_wrapper:                  # @_Z4Fan1PfS_ii_wrapper
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rsi
	movq	16(%rdi), %rcx
	movl	(%rcx), %edx
	movq	24(%rdi), %rcx
	movl	(%rcx), %ecx
	movq	%rax, %rdi
	jmp	_Z4Fan1PfS_ii           # TAILCALL
.Lfunc_end2:
	.size	_Z4Fan1PfS_ii_wrapper, .Lfunc_end2-_Z4Fan1PfS_ii_wrapper
                                        # -- End function
	.globl	_Z4Fan2PfS_S_iii_wrapper # -- Begin function _Z4Fan2PfS_S_iii_wrapper
	.p2align	4, 0x90
	.type	_Z4Fan2PfS_S_iii_wrapper,@function
_Z4Fan2PfS_S_iii_wrapper:               # @_Z4Fan2PfS_S_iii_wrapper
# %bb.0:
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	(%rax), %rax
	movq	(%rcx), %rsi
	movq	16(%rdi), %rcx
	movq	(%rcx), %rdx
	movq	24(%rdi), %rcx
	movl	(%rcx), %ecx
	movq	32(%rdi), %r8
	movl	(%r8), %r8d
	movq	40(%rdi), %rdi
	movl	(%rdi), %r9d
	movq	%rax, %rdi
	jmp	_Z4Fan2PfS_S_iii        # TAILCALL
.Lfunc_end3:
	.size	_Z4Fan2PfS_S_iii_wrapper, .Lfunc_end3-_Z4Fan2PfS_S_iii_wrapper
                                        # -- End function
	.type	intra_warp_index,@object # @intra_warp_index
	.section	.tbss,"awT",@nobits
	.globl	intra_warp_index
	.p2align	2
intra_warp_index:
	.long	0                       # 0x0
	.size	intra_warp_index, 4

	.type	inter_warp_index,@object # @inter_warp_index
	.globl	inter_warp_index
	.p2align	2
inter_warp_index:
	.long	0                       # 0x0
	.size	inter_warp_index, 4

	.ident	"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
