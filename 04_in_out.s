	.file	"04_in_out.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Input three characters, an int, a float, and a double:  "
.LC1:
	.string	"\n%s"
.LC2:
	.string	"%c%c%c%d%f%f"
	.align 8
.LC3:
	.string	"\nHere is the data that you typed in:"
.LC4:
	.string	"\n%3c%3c%3c%d%e%e"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %r8
	leaq	-20(%rbp), %rdi
	leaq	-21(%rbp), %rcx
	leaq	-22(%rbp), %rdx
	leaq	-23(%rbp), %rax
	subq	$8, %rsp
	leaq	-12(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$16, %rsp
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-20(%rbp), %esi
	movzbl	-21(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-22(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-23(%rbp), %eax
	movsbl	%al, %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
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
