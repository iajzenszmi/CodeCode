	.file	"cocolme2.c"
	.text
	.globl	slowdown
	.type	slowdown, @function
slowdown:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	jmp	.L2
.L3:
	movl	$0, %edi
	call	putchar@PLT
.L2:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	slowdown, .-slowdown
	.section	.rodata
.LC0:
	.string	"Ian Martin Ajzenszmidt"
.LC1:
	.string	"%s"
	.align 8
.LC2:
	.string	"\033[31mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC3:
	.string	"\033[32mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC4:
	.string	"\033[33mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC5:
	.string	"\033[34mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC6:
	.string	"\033[35mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC7:
	.string	"\033[36mIan Martin Ajzenszmidt\033[0m"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L5
.L6:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L5:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L6
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L7
.L8:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L7:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L8
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L9
.L10:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L9:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L10
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L11
.L12:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L11:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L12
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L13
.L14:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L13:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L14
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L15
.L16:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L15:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L16
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	movl	$0, -28(%rbp)
	jmp	.L17
.L18:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L17:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L18
	movl	$100000000, %edi
	call	slowdown
	movl	$13, %edi
	call	putchar@PLT
	jmp	.L19
	.cfi_endproc
.LFE7:
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
