	.file	"473.f"
	.text
	.globl	legser_
	.type	legser_, @function
legser_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	testl	%eax, %eax
	jg	.L10
	testl	%eax, %eax
	js	.L11
	jmp	.L12
.L10:
	nop
	movl	-32(%rbp), %edx
	movl	$3, -24(%rbp)
	movl	%edx, %eax
	subl	$3, %eax
	shrl	%eax
	cmpl	$2, %edx
	jle	.L12
.L5:
	movss	-4(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-64(%rbp), %rdx
	movss	(%rdx), %xmm1
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm2
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	.LC3(%rip), %xmm3
	subss	%xmm3, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx)
	addl	$2, -24(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L12
	jmp	.L5
.L12:
	nop
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-32(%rbp), %esi
	movl	$2, -28(%rbp)
.L8:
	cmpl	%esi, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L13
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -24(%rbp)
	movl	%ecx, %edi
	movl	%eax, %edx
	subl	%edx, %edi
	movl	%edi, %edx
	shrl	%edx
	cmpl	%eax, %ecx
	jl	.L13
.L7:
	movss	-4(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	subss	%xmm1, %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm2
	movss	.LC3(%rip), %xmm1
	addss	%xmm2, %xmm1
	mulss	-8(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movss	-4(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	addss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-4(%rbp), %xmm2
	movss	.LC5(%rip), %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movss	-4(%rbp), %xmm2
	movss	.LC2(%rip), %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm3, %xmm1
	movss	-8(%rbp), %xmm3
	movss	.LC3(%rip), %xmm2
	addss	%xmm3, %xmm2
	mulss	-8(%rbp), %xmm2
	subss	%xmm2, %xmm1
	mulss	-4(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$2, -24(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L13
	jmp	.L7
.L13:
	nop
	movss	-16(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-8(%rbp), %xmm2
	movss	.LC3(%rip), %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	-8(%rbp), %xmm2
	movss	.LC3(%rip), %xmm1
	addss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	movss	.LC5(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm3
	movss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	movss	.LC2(%rip), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm3, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	mulss	-12(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -28(%rbp)
	jmp	.L8
.L11:
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	legser_, .-legser_
	.section	.rodata
.LC7:
	.string	"473.f"
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
	subq	$576, %rsp
	leaq	-48(%rbp), %rax
	leaq	n1.3917(%rip), %rdx
	movq	%rax, %rsi
	leaq	a1.3913(%rip), %rdi
	call	legser_
	leaq	.LC7(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$5, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -4(%rbp)
.L16:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L15
	cmpl	$10, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a1.3913(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L16
.L15:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$6, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -4(%rbp)
.L18:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L17
	cmpl	$10, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L17
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-48(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L18
.L17:
	leaq	-576(%rbp), %rax
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
	leaq	options.6.3930(%rip), %rsi
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
	.data
	.align 32
	.type	a1.3913, @object
	.size	a1.3913, 40
a1.3913:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.long	1091567616
	.long	1092616192
	.align 4
	.type	n1.3917, @object
	.size	n1.3917, 4
n1.3917:
	.long	9
	.section	.rodata
	.align 16
	.type	options.6.3930, @object
	.size	options.6.3930, 28
options.6.3930:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1059760811
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	1082130432
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
