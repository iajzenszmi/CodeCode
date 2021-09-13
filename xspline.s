	.file	"xspline.f"
	.text
	.globl	spline_
	.type	spline_, @function
spline_:
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
	subq	$376, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -488(%rbp)
	movq	%rsi, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	%r8, -520(%rbp)
	movq	%r9, -528(%rbp)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-512(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	.LC0(%rip), %xmm0
	jbe	.L15
	movq	-528(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -480(%rbp)
	jmp	.L4
.L15:
	movq	-528(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-488(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-488(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	movq	-496(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-496(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movq	-488(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-488(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-512(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	movss	%xmm0, -480(%rbp)
.L4:
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movl	$2, -36(%rbp)
.L6:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L17
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-76(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-76(%rbp), %xmm0
	movss	.LC5(%rip), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-80(%rbp), %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm1
	mulss	-76(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	divss	-80(%rbp), %xmm0
	movss	%xmm0, -480(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L6
.L17:
	nop
	movq	-520(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	.LC0(%rip), %xmm0
	jbe	.L16
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.L9
.L16:
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	movq	-520(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, -48(%rbp)
.L9:
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-48(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	addss	%xmm1, %xmm0
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.L11:
	cmpl	$0, -40(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm0, %xmm1
	movl	-40(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm0
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	subl	$1, -40(%rbp)
	jmp	.L11
.L18:
	nop
	nop
	addq	$376, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	spline_, .-spline_
	.section	.rodata
.LC8:
	.string	"xspline.f"
	.align 8
.LC9:
	.ascii	"SECOND - DERIVATIVES FOR SIN(X) FROM 0 TO PI"
	.align 4
.LC12:
	.long	20
.LC13:
	.ascii	"(T19,A,T35,A)"
.LC14:
	.ascii	"SPLINE"
.LC15:
	.ascii	"ACTUAL"
.LC16:
	.ascii	"(T6,A,T17,A,T33,A)"
.LC17:
	.ascii	"ANGLE"
.LC18:
	.ascii	"2ND DERIV"
.LC19:
	.ascii	"(1X,F8.2,2F16.6)"
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
	pushq	%rbx
	subq	$808, %rsp
	.cfi_offset 3, -24
	leaq	.LC8(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$9, -800(%rbp)
	movl	$128, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$44, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L21:
	cmpl	$20, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L24
	cvtsi2ssl	-20(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC11(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-112(%rbp,%rax,4), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rbx
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -192(%rbp,%rbx,4)
	addl	$1, -20(%rbp)
	jmp	.L21
.L24:
	nop
	movl	-112(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -276(%rbp)
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -280(%rbp)
	leaq	-272(%rbp), %rdi
	leaq	-280(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rdi
	call	spline_
	leaq	.LC8(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$23, -800(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$13, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$6, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movl	$6, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$24, -800(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$18, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movl	$9, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movl	$9, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L23:
	cmpl	$20, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L25
	leaq	.LC8(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$26, -800(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$16, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-112(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-272(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-112(%rbp,%rax,4), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movss	.LC20(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -284(%rbp)
	leaq	-284(%rbp), %rcx
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L23
.L25:
	nop
	nop
	addq	$808, %rsp
	popq	%rbx
	popq	%rbp
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
	leaq	options.10.3954(%rip), %rsi
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
	.type	options.10.3954, @object
	.size	options.10.3954, 28
options.10.3954:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1900539341
	.align 4
.LC2:
	.long	3204448256
	.align 4
.LC3:
	.long	1077936128
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC6:
	.long	1086324736
	.align 4
.LC7:
	.long	1056964608
	.align 4
.LC10:
	.long	1078530012
	.align 4
.LC11:
	.long	1101004800
	.align 16
.LC20:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
