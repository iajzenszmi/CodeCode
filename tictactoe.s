	.file	"tictactoe.c"
	.text
	.comm	b,36,32
	.globl	check_winner
	.type	check_winner, @function
check_winner:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+b(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	8+b(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L4
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L5
	movl	-4(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	b(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L5
	movl	-4(%rbp), %eax
	cltq
	addq	$6, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	b(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L5
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L4
.L5:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$2, -4(%rbp)
	jle	.L6
	movl	16+b(%rip), %eax
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L4
.L7:
	movl	16+b(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jne	.L8
	movl	32+b(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jne	.L8
	movl	b(%rip), %eax
	jmp	.L4
.L8:
	movl	16+b(%rip), %edx
	movl	24+b(%rip), %eax
	cmpl	%eax, %edx
	jne	.L9
	movl	8+b(%rip), %edx
	movl	16+b(%rip), %eax
	cmpl	%eax, %edx
	jne	.L9
	movl	16+b(%rip), %eax
	jmp	.L4
.L9:
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	check_winner, .-check_winner
	.section	.rodata
.LC0:
	.string	"X O"
.LC1:
	.string	"%c "
.LC2:
	.string	"-----"
	.text
	.globl	showboard
	.type	showboard, @function
showboard:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L11
.L14:
	movl	$0, -12(%rbp)
	jmp	.L12
.L13:
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L12:
	cmpl	$2, -12(%rbp)
	jle	.L13
	addl	$1, -16(%rbp)
	movl	$10, %edi
	call	putchar@PLT
.L11:
	cmpl	$2, -16(%rbp)
	jle	.L14
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	showboard, .-showboard
	.comm	best_i,4,4
	.comm	best_j,4,4
	.globl	test_move
	.type	test_move, @function
test_move:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, %eax
	call	check_winner
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L16
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L17
	movl	$1, %eax
	jmp	.L19
.L17:
	movl	$-1, %eax
	jmp	.L19
.L16:
	movl	$0, -20(%rbp)
	jmp	.L20
.L27:
	movl	$0, -16(%rbp)
	jmp	.L21
.L26:
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	b(%rip), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	negl	%eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_move
	negl	%eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L31
	cmpl	$0, -40(%rbp)
	jne	.L25
	movl	-20(%rbp), %eax
	movl	%eax, best_i(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, best_j(%rip)
.L25:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L23
.L30:
	nop
	jmp	.L23
.L31:
	nop
.L23:
	addl	$1, -16(%rbp)
.L21:
	cmpl	$2, -16(%rbp)
	jle	.L26
	addl	$1, -20(%rbp)
.L20:
	cmpl	$2, -20(%rbp)
	jle	.L27
	cmpl	$0, -8(%rbp)
	je	.L28
	movl	-12(%rbp), %eax
	jmp	.L19
.L28:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	test_move, .-test_move
	.section	.rodata
	.align 8
.LC3:
	.string	"Board postions are numbered so:\n1 2 3\n4 5 6\n7 8 9"
.LC4:
	.string	"You have O, I have X.\n"
.LC5:
	.string	"your move: "
.LC6:
	.string	"%d"
.LC7:
	.string	"%*s"
.LC8:
	.string	"My move: %d\n"
.LC9:
	.string	"You win.\n\n"
.LC10:
	.string	"I win.\n\n"
.LC11:
	.string	"A draw.\n\n"
	.text
	.globl	game
	.type	game, @function
game:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L33
.L36:
	movl	$0, -20(%rbp)
	jmp	.L34
.L35:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	$0, (%rdx,%rax)
	addl	$1, -20(%rbp)
.L34:
	cmpl	$2, -20(%rbp)
	jle	.L35
	addl	$1, -24(%rbp)
.L33:
	cmpl	$2, -24(%rbp)
	jle	.L36
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, -16(%rbp)
	jmp	.L37
.L44:
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	testl	%eax, %eax
	jne	.L39
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L38
.L39:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	js	.L38
	movl	-28(%rbp), %eax
	cmpl	$8, %eax
	jle	.L41
	jmp	.L38
.L41:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L42
	jmp	.L38
.L42:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L43
.L38:
	cmpl	$0, -36(%rbp)
	jne	.L44
.L43:
	cmpl	$0, -36(%rbp)
	jne	.L45
	cmpl	$0, -16(%rbp)
	jne	.L46
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, best_i(%rip)
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, best_j(%rip)
	jmp	.L47
.L46:
	movl	$0, %esi
	movl	$-1, %edi
	call	test_move
.L47:
	movl	best_i(%rip), %eax
	movl	best_j(%rip), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	b(%rip), %rax
	movl	$-1, (%rdx,%rax)
	movl	best_i(%rip), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	best_j(%rip), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L45:
	movl	$0, %eax
	call	showboard
	movl	$0, %eax
	call	check_winner
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L48
	cmpl	$1, -12(%rbp)
	jne	.L49
	leaq	.LC9(%rip), %rax
	jmp	.L53
.L49:
	leaq	.LC10(%rip), %rax
	jmp	.L53
.L48:
	addl	$1, -16(%rbp)
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L37:
	cmpl	$8, -16(%rbp)
	jle	.L38
	leaq	.LC11(%rip), %rax
.L53:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	game, .-game
	.section	.rodata
.LC12:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.L56:
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	game
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L56
	.cfi_endproc
.LFE10:
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
