	.file	"allo1.c"
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
	movl	$5, -4(%rbp)
	movb	$97, -5(%rbp)
	movsbl	-5(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	print_chars
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"calloc"
	.text
	.globl	print_chars
	.type	print_chars, @function
print_chars:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movb	%al, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L4
.L9:
	movl	-16(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	leaq	.LC0(%rip), %rdi
	call	perror@PLT
	jmp	.L6
.L5:
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-24(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -16(%rbp)
.L4:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L9
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_chars, .-print_chars
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
