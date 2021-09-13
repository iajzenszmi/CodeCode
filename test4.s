	.file	"test4.c"
	.text
	.section	.rodata
.LC0:
	.string	"enter a number"
.LC1:
	.string	"\n%s"
.LC2:
	.string	" %d"
.LC3:
	.string	" if want another enter 1?"
.LC4:
	.string	"\n%s\n"
.LC5:
	.string	" "
.LC6:
	.string	"square of number"
.LC7:
	.string	"\n%s%d%s%d"
.LC8:
	.string	"if want another enter 1"
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -24(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L7
.L2:
	movl	$1, -16(%rbp)
	jmp	.L4
.L6:
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%edx, %r8d
	leaq	.LC5(%rip), %rcx
	movl	%eax, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L5
	movl	$1, %eax
	jmp	.L7
.L5:
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -16(%rbp)
.L4:
	movl	-24(%rbp), %eax
	cmpl	$1, %eax
	je	.L6
	movl	$0, %eax
.L7:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
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
