	.file	"100dooors.f90"
	.text
	.section	.rodata
.LC1:
	.string	"100dooors.f90"
.LC2:
	.ascii	"NO"
.LC3:
	.ascii	"(A,I3,A)"
.LC4:
	.ascii	"Door "
.LC5:
	.ascii	" is "
.LC6:
	.ascii	"(A)"
.LC7:
	.ascii	"closed"
.LC8:
	.ascii	"open"
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
	subq	$544, %rsp
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %ecx
	movl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L8
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %eax
	imull	%edx, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	door.3873(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L3
.L8:
	nop
	movl	$1, -12(%rbp)
.L7:
	movl	-12(%rbp), %eax
	cmpl	$100, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L9
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$14, -528(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -440(%rbp)
	movq	$2, -448(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$8, -456(%rbp)
	movl	$12288, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	door.3873(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L5
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$16, -528(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$3, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$6, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L6
.L5:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$18, -528(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$3, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L6:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L7
.L9:
	nop
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
	leaq	options.3.3893(%rip), %rsi
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
	.type	door.3873, @object
	.size	door.3873, 400
door.3873:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata
	.align 16
	.type	options.3.3893, @object
	.size	options.3.3893, 28
options.3.3893:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1092616192
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
