	.file	"aupper.c"
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
	call	aupper1
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	call	aupper2
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter lowercase alphabetic letter"
.LC1:
	.string	"%c"
.LC2:
	.string	" lowercase "
.LC3:
	.string	" UPPERCASE "
.LC4:
	.string	"\n%s%c%s%c\n"
	.text
	.globl	aupper1
	.type	aupper1, @function
aupper1:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$99, -10(%rbp)
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	-10(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movzbl	-10(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movb	%al, -9(%rbp)
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movzbl	-10(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-9(%rbp), %eax
	movl	%edx, %r8d
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	aupper1, .-aupper1
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter uppercase alphabetic letter"
.LC6:
	.string	"\n%s%c%s%c"
	.text
	.globl	aupper2
	.type	aupper2, @function
aupper2:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$99, -10(%rbp)
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	leaq	-10(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-10(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movb	%al, -9(%rbp)
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movsbl	-9(%rbp), %edx
	movzbl	-10(%rbp), %eax
	movsbl	%al, %eax
	movl	%edx, %r8d
	leaq	.LC2(%rip), %rcx
	movl	%eax, %edx
	leaq	.LC3(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	aupper2, .-aupper2
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
