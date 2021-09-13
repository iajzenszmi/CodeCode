	.file	"crypt.c"
	.text
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"e"
.LC2:
	.string	" "
.LC3:
	.string	"a"
.LC4:
	.string	"r"
.LC5:
	.string	"b"
.LC6:
	.string	"d"
.LC7:
	.string	"\302\243"
.LC8:
	.string	"A "
.LC9:
	.string	"\n%s%d"
.LC10:
	.string	"B "
.LC11:
	.string	"D "
.LC12:
	.string	"\n%s%d\n"
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
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4080, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -8156(%rbp)
	movl	$0, -8152(%rbp)
	movl	$0, -8148(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8016(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -8008(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -8000(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -7992(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -7984(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -7976(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -7968(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -7960(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -7952(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -7944(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -7936(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -7928(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -7920(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -7912(%rbp)
	movl	$0, -8164(%rbp)
	jmp	.L2
.L3:
	movl	-8164(%rbp), %eax
	cltq
	movq	-8016(%rbp,%rax,8), %rdx
	movl	-8164(%rbp), %eax
	cltq
	movq	%rdx, -8144(%rbp,%rax,8)
	addl	$1, -8164(%rbp)
.L2:
	cmpl	$13, -8164(%rbp)
	jle	.L3
	movl	$0, -8160(%rbp)
	jmp	.L4
.L8:
	movl	-8160(%rbp), %eax
	cltq
	movq	-8144(%rbp,%rax,8), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L5
	movl	-8160(%rbp), %eax
	cltq
	movq	-8144(%rbp,%rax,8), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	addl	$1, -8156(%rbp)
.L6:
	movl	-8160(%rbp), %eax
	cltq
	movq	-8144(%rbp,%rax,8), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	addl	$1, -8152(%rbp)
.L7:
	movl	-8160(%rbp), %eax
	cltq
	movq	-8144(%rbp,%rax,8), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	addl	$1, -8148(%rbp)
.L5:
	addl	$1, -8160(%rbp)
.L4:
	cmpl	$13, -8160(%rbp)
	jle	.L8
	movl	-8156(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8152(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC10(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8148(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
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
