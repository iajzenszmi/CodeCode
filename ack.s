	.file	"ack.f90"
	.text
	.section	.rodata
	.align 4
.LC0:
	.long	1
	.text
	.globl	ack_
	.type	ack_, @function
ack_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L2:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L4
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	leaq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	ack_
	movl	%eax, -4(%rbp)
	jmp	.L3
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ack_
	movl	%eax, -20(%rbp)
	leaq	-20(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ack_
	movl	%eax, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	ack_, .-ack_
	.section	.rodata
.LC1:
	.string	"ack.f90"
	.align 4
.LC2:
	.long	12
	.align 4
.LC3:
	.long	3
	.text
	.type	MAIN__, @function
MAIN__:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$4, -528(%rbp)
	movl	$128, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	ack_
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.1.3891(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.1.3891, @object
	.size	options.1.3891, 28
options.1.3891:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
