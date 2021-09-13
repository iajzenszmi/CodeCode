	.file	"transposer.f90"
	.text
	.section	.rodata
.LC0:
	.string	"transposer.f90"
.LC1:
	.ascii	"before transpose"
.LC2:
	.ascii	"after transpose"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movl	$1, %edx
.L5:
	cmpq	$5, %rdx
	jg	.L2
	leaq	-6(%rdx), %r9
	leaq	(%rdx,%rdx), %rax
	leaq	-3(%rax), %r8
	movl	$1, %eax
.L4:
	cmpq	$2, %rax
	jg	.L3
	movq	%rax, %rcx
	salq	$2, %rcx
	addq	%rax, %rcx
	leaq	(%r9,%rcx), %rsi
	leaq	(%rax,%r8), %rcx
	leaq	0(,%rsi,4), %rdi
	leaq	a.3873(%rip), %rsi
	movl	(%rdi,%rsi), %esi
	movl	%esi, -48(%rbp,%rcx,4)
	addq	$1, %rax
	jmp	.L4
.L3:
	addq	$1, %rdx
	jmp	.L5
.L2:
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$4, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$16, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	$1, -8(%rbp)
.L9:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L6
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L6
	movl	$1, -4(%rbp)
.L8:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L7
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L7
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$6, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a.3873(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L8
.L7:
	addl	$1, -8(%rbp)
	jmp	.L9
.L6:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$5, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$15, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	$1, -8(%rbp)
.L13:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L10
	cmpl	$5, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L10
	movl	$1, -4(%rbp)
.L12:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L11
	cmpl	$2, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-8(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-3(%rax), %rdx
	leaq	-48(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L12
.L11:
	addl	$1, -8(%rbp)
	jmp	.L13
.L10:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	leaq	options.4.3902(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 32
	.type	a.3873, @object
	.size	a.3873, 40
a.3873:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.section	.rodata
	.align 16
	.type	options.4.3902, @object
	.size	options.4.3902, 28
options.4.3902:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
