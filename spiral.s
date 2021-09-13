	.file	"spiral.c"
	.text
	.section	.rodata
.LC0:
	.string	"X"
.LC1:
	.string	" "
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
	subq	$48, %rsp
	movl	$10, -20(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L2
.L11:
	movl	$0, -40(%rbp)
	jmp	.L3
.L10:
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -36(%rbp)
	jl	.L4
	movl	-20(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.L4:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -32(%rbp)
	jl	.L5
	movl	-20(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.L5:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	negl	%eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	-16(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	-12(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	cmovge	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L6
	subl	$1, -24(%rbp)
.L6:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jne	.L7
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L7
	addl	$1, -28(%rbp)
.L7:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L8
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rax
.L9:
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -40(%rbp)
.L3:
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L10
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -44(%rbp)
.L2:
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L11
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
