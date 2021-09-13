	.file	"thirtydim.f90"
	.text
	.section	.rodata
.LC1:
	.string	"thirtydim.f90"
.LC2:
	.ascii	"(\" \",i10,i10,i10)"
	.align 8
.LC3:
	.ascii	"('+',i10,i10,i10,i10,i10,i10,i10,i10,i10)"
.LC4:
	.ascii	"(\" \",\" no of arrays\",i10)"
	.text
	.globl	testgen_
	.type	testgen_, @function
testgen_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$744, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%rdx, -728(%rbp)
	movq	%rcx, -736(%rbp)
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-712(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -52(%rbp)
.L21:
	cmpl	%ebx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L23
	movl	$1, -56(%rbp)
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	$1, -64(%rbp)
	movq	-728(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	$1, -72(%rbp)
	movq	-736(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	$1, -80(%rbp)
	movq	-744(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movl	$1, -88(%rbp)
	movq	-752(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)
	movl	$1, -96(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	$1, -104(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -124(%rbp)
	movl	$1, -168(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -164(%rbp)
	movss	-120(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	-124(%rbp), %r12d
	movl	%eax, -160(%rbp)
.L20:
	movl	-160(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L24
	movss	-112(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	-116(%rbp), %r13d
	movl	%eax, -156(%rbp)
.L19:
	movl	-156(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L25
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %r14d
	movl	%eax, -128(%rbp)
.L18:
	movl	-128(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L26
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %r15d
	movl	%eax, -132(%rbp)
.L17:
	movl	-132(%rbp), %eax
	cmpl	%eax, %r15d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L27
	movl	-72(%rbp), %eax
	movl	-76(%rbp), %esi
	movl	%esi, -756(%rbp)
	movl	%eax, -136(%rbp)
.L16:
	movl	-136(%rbp), %eax
	cmpl	%eax, -756(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L28
	movl	-80(%rbp), %eax
	movl	-84(%rbp), %esi
	movl	%esi, -760(%rbp)
	movl	%eax, -140(%rbp)
.L15:
	movl	-140(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-88(%rbp), %eax
	movl	-92(%rbp), %esi
	movl	%esi, -764(%rbp)
	movl	%eax, -144(%rbp)
.L14:
	movl	-144(%rbp), %eax
	cmpl	%eax, -764(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L30
	movl	-96(%rbp), %eax
	movl	-100(%rbp), %esi
	movl	%esi, -768(%rbp)
	movl	%eax, -148(%rbp)
.L13:
	movl	-148(%rbp), %eax
	cmpl	%eax, -768(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L31
	movl	-104(%rbp), %eax
	movl	-108(%rbp), %esi
	movl	%esi, -772(%rbp)
	movl	%eax, -152(%rbp)
.L12:
	movl	-152(%rbp), %eax
	cmpl	%eax, -772(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L32
	movl	-132(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-128(%rbp), %eax
	addl	%eax, %edx
	movl	-136(%rbp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-140(%rbp), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	-144(%rbp), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	-148(%rbp), %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	-152(%rbp), %eax
	sall	$6, %eax
	addl	%eax, %edx
	movl	-156(%rbp), %eax
	sall	$7, %eax
	addl	%eax, %edx
	movl	-160(%rbp), %eax
	sall	$8, %eax
	leal	(%rdx,%rax), %ecx
	movl	-160(%rbp), %eax
	cltq
	imulq	$43046721, %rax, %rdx
	movl	-156(%rbp), %eax
	cltq
	imulq	$4782969, %rax, %rax
	addq	%rax, %rdx
	movl	-152(%rbp), %eax
	cltq
	imulq	$531441, %rax, %rax
	addq	%rax, %rdx
	movl	-148(%rbp), %eax
	cltq
	imulq	$59049, %rax, %rax
	addq	%rax, %rdx
	movl	-144(%rbp), %eax
	cltq
	imulq	$6561, %rax, %rax
	leaq	(%rdx,%rax), %rsi
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	addq	%rax, %rsi
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	addq	%rax, %rsi
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	(%rsi,%rax), %rdx
	movl	-128(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$48427561, %rax
	addl	%ecx, %ecx
	leaq	0(,%rax,4), %rdx
	leaq	h.3892(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	leaq	.LC1(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$84, -688(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$17, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-164(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-168(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-160(%rbp), %eax
	cltq
	imulq	$43046721, %rax, %rdx
	movl	-156(%rbp), %eax
	cltq
	imulq	$4782969, %rax, %rax
	addq	%rax, %rdx
	movl	-152(%rbp), %eax
	cltq
	imulq	$531441, %rax, %rax
	addq	%rax, %rdx
	movl	-148(%rbp), %eax
	cltq
	imulq	$59049, %rax, %rax
	addq	%rax, %rdx
	movl	-144(%rbp), %eax
	cltq
	imulq	$6561, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	addq	%rax, %rcx
	movl	-136(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	addq	%rdx, %rax
	addq	%rax, %rcx
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-128(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$48427561, %rax
	leaq	0(,%rax,4), %rdx
	leaq	h.3892(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$85, -688(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$41, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-128(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-132(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-136(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-140(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-144(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-148(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-152(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-156(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-160(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.L12
.L32:
	nop
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.L13
.L31:
	nop
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.L14
.L30:
	nop
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.L15
.L29:
	nop
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.L16
.L28:
	nop
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.L17
.L27:
	nop
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L18
.L26:
	nop
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.L19
.L25:
	nop
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.L20
.L24:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$99, -688(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$25, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-164(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -52(%rbp)
	jmp	.L21
.L23:
	nop
	nop
	addq	$744, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	testgen_, .-testgen_
	.section	.rodata
	.align 8
.LC5:
	.ascii	"(i1,i1,i1,i1,i1,i1,i1,i1,i1,i1)"
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
	movl	$25, -4(%rbp)
	movl	$9, -8(%rbp)
	movl	$9, -12(%rbp)
	movl	$9, -16(%rbp)
	movl	$9, -20(%rbp)
	movl	$9, -24(%rbp)
	movl	$9, -28(%rbp)
	movl	$9, -32(%rbp)
	movl	$9, -36(%rbp)
	movl	$9, -40(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$31, -560(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$31, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$5, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-4(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-8(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-12(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-16(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-20(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	-24(%rbp), %r9
	leaq	-20(%rbp), %r8
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rax
	leaq	-40(%rbp), %rdi
	pushq	%rdi
	leaq	-36(%rbp), %rdi
	pushq	%rdi
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	leaq	-28(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	testgen_
	addq	$32, %rsp
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
	leaq	options.4.3993(%rip), %rsi
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
	.local	h.3892
	.comm	h.3892,1549681956,32
	.section	.rodata
	.align 16
	.type	options.4.3993, @object
	.size	options.4.3993, 28
options.4.3993:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
