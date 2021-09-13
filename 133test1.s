	.file	"133test1.f08"
	.text
	.globl	__alg133_MOD_x
	.bss
	.align 8
	.type	__alg133_MOD_x, @object
	.size	__alg133_MOD_x, 8
__alg133_MOD_x:
	.zero	8
	.text
	.globl	__alg133_MOD_random
	.type	__alg133_MOD_random, @function
__alg133_MOD_random:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, %eax
.L3:
	cmpq	$2, %rax
	jg	.L2
	leaq	-1(%rax), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__alg133_MOD_x(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	leaq	-1(%rax), %rdi
	movl	%ecx, %edx
	sall	$2, %edx
	leal	(%rdx,%rcx), %esi
	leaq	0(,%rdi,4), %rcx
	leaq	__alg133_MOD_x(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	addq	$1, %rax
	jmp	.L3
.L2:
	movl	4+__alg133_MOD_x(%rip), %eax
	cmpl	$1048575, %eax
	jle	.L4
	movl	__alg133_MOD_x(%rip), %edx
	movl	4+__alg133_MOD_x(%rip), %eax
	leal	1048575(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$20, %eax
	addl	%edx, %eax
	movl	%eax, __alg133_MOD_x(%rip)
	movl	4+__alg133_MOD_x(%rip), %eax
	cltd
	shrl	$12, %edx
	addl	%edx, %eax
	andl	$1048575, %eax
	subl	%edx, %eax
	movl	%eax, 4+__alg133_MOD_x(%rip)
.L4:
	movl	__alg133_MOD_x(%rip), %eax
	cmpl	$32767, %eax
	jle	.L5
	movl	__alg133_MOD_x(%rip), %eax
	cltd
	shrl	$17, %edx
	addl	%edx, %eax
	andl	$32767, %eax
	subl	%edx, %eax
	movl	%eax, __alg133_MOD_x(%rip)
.L5:
	movl	__alg133_MOD_x(%rip), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movl	4+__alg133_MOD_x(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	movss	.LC1(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm2
	movaps	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__alg133_MOD_random, .-__alg133_MOD_random
	.globl	__alg133_MOD_setseed
	.type	__alg133_MOD_setseed, @function
__alg133_MOD_setseed:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, __alg133_MOD_x(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__alg133_MOD_setseed, .-__alg133_MOD_setseed
	.section	.rodata
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	0
.LC4:
	.string	"133test1.f08"
	.align 8
.LC5:
	.ascii	"5000th number determined correctly"
.LC6:
	.ascii	"IMPLEMENTATION ERROR"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	leaq	seed.3895(%rip), %rdi
	call	__alg133_MOD_setseed
	movl	$1, -4(%rbp)
.L10:
	cmpl	$5000, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L13
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__alg133_MOD_random
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L10
.L13:
	nop
	movl	__alg133_MOD_x(%rip), %eax
	cmpl	$23089, %eax
	sete	%al
	movzbl	%al, %edx
	movl	4+__alg133_MOD_x(%rip), %eax
	cmpl	$808991, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L11
	leaq	.LC4(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$95, -528(%rbp)
	movl	$128, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$34, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L14
.L11:
	leaq	.LC4(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$97, -528(%rbp)
	movl	$128, -544(%rbp)
	movl	$6, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$20, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB3:
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
	leaq	options.3.3910(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.data
	.align 8
	.type	seed.3895, @object
	.size	seed.3895, 8
seed.3895:
	.long	0
	.long	32767
	.section	.rodata
	.align 16
	.type	options.3.3910, @object
	.size	options.3.3910, 28
options.3.3910:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	939524096
	.align 4
.LC1:
	.long	771751936
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
