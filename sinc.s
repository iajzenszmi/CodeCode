	.file	"sinc.c"
	.text
	.section	.rodata
.LC3:
	.string	"deg"
.LC4:
	.string	"\n%d%s"
.LC5:
	.string	"x"
.LC6:
	.string	"%c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L2
.L5:
	cvtsi2ssl	-24(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	call	sin@PLT
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -20(%rbp)
	jmp	.L3
.L4:
	leaq	.LC5(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L4
	addl	$15, -24(%rbp)
.L2:
	cmpl	$360, -24(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1016003117
	.align 8
.LC1:
	.long	0
	.long	1077477376
	.align 8
.LC2:
	.long	0
	.long	1078198272
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
