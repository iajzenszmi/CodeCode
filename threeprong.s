	.file	"threeprong.f08"
	.text
	.section	.rodata
.LC0:
	.string	"threeprong.f08"
.LC1:
	.ascii	"(\" \",i10, \" \",i10,\" \",i10)"
	.text
	.globl	writenum_
	.type	writenum_, @function
writenum_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$20, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$26, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-536(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	-552(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	writenum_, .-writenum_
	.globl	calcnum_
	.type	calcnum_, @function
calcnum_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	calcnum_, .-calcnum_
	.section	.rodata
.LC2:
	.ascii	"(i10,i10 )"
	.text
	.globl	readnum_
	.type	readnum_, @function
readnum_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$9, -512(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$10, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$5, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-536(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	readnum_, .-readnum_
	.type	MAIN__, @function
MAIN__:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	readnum_
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-4(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	calcnum_
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-4(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writenum_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB4:
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
	leaq	options.2.3895(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.2.3895, @object
	.size	options.2.3895, 28
options.2.3895:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
