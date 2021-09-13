	.file	"aupper1.c"
	.text
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
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
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
