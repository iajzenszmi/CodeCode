	.file	"nice-day.c"
	.text
	.section	.rodata
.LC0:
	.string	"\nHi! What is your name?"
	.align 8
.LC1:
	.string	"Your name spelled backwards is "
.LC2:
	.string	"."
.LC3:
	.string	"Nice to meet you "
.LC4:
	.string	"\n%s%s%s\n%s"
.LC5:
	.string	"Have a nice day !"
	.align 8
.LC6:
	.string	"and the letters  in your name sum to "
.LC7:
	.string	"\n%s%d%s\n\n%s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -116(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -120(%rbp)
	jmp	.L2
.L4:
	movl	-120(%rbp), %eax
	cltq
	movzbl	-121(%rbp), %edx
	movb	%dl, -112(%rbp,%rax)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-121(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L3
	movsbl	-121(%rbp), %eax
	addl	%eax, -116(%rbp)
.L3:
	addl	$1, -120(%rbp)
.L2:
	call	getchar@PLT
	movb	%al, -121(%rbp)
	cmpb	$10, -121(%rbp)
	jne	.L4
	movl	-120(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	leaq	.LC1(%rip), %r8
	leaq	.LC2(%rip), %rcx
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	subl	$1, -120(%rbp)
	jmp	.L5
.L6:
	movl	-120(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	subl	$1, -120(%rbp)
.L5:
	cmpl	$0, -120(%rbp)
	jns	.L6
	movl	-116(%rbp), %eax
	leaq	.LC5(%rip), %r8
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
