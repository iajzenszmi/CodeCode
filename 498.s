	.file	"498.f"
	.text
	.globl	airy_
	.type	airy_, @function
airy_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jb	.L12
	nop
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jb	.L13
	nop
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	coef1_
	jmp	.L1
.L13:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	coef2_
	jmp	.L1
.L12:
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L14
	nop
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	coef3_
	jmp	.L1
.L14:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	coef4_
	addq	$16, %rsp
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	airy_, .-airy_
	.section	.rodata
.LC2:
	.string	"498.f"
	.align 8
.LC3:
	.ascii	"(//38X, 3H***//5X, 18HOVERFLOW IN Z**1.5//5X, 4HZ = ,       "
	.ascii	"E20.8//5X, 41HTHE FOUR FUNCTIONS HAVE BEEN ASSIGNED THE,    "
	.ascii	"      12H VALUE ZERO.//38X, 3H***//)"
	.align 8
.LC6:
	.ascii	"(//38X, 3H***//5X, 21HOVERFLOW IN EXP(ZETA)//5X,            "
	.ascii	"4HZ = , E20.8, 9H  ZETA = , E20.8//5X, 18HTHE FOLLOWING VALU"
	.ascii	",     23HES HAVE BEEN ASSIGNED -//5X, 25HAI = AID = 0.0, BI "
	.ascii	"= BID ,     11H= EXP(ZLIM)//38X, 3H***//)"
	.align 4
.LC8:
	.long	7
	.text
	.globl	coef4_
	.type	coef4_, @function
coef4_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$624, %rsp
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	%rcx, -608(%rbp)
	movq	%r8, -616(%rbp)
	movq	%r9, -624(%rbp)
	movq	-584(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-12(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L27
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$291, -560(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$156, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	nout.3931(%rip), %eax
	movl	%eax, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-584(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-608(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-616(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-624(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L15
.L27:
	movq	-584(%rbp), %rax
	movss	(%rax), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-584(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-600(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L29
	nop
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L20
.L29:
	nop
	movss	-20(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	zlim.3938(%rip), %xmm0
	movss	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L28
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$307, -560(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$221, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	nout.3931(%rip), %eax
	movl	%eax, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-584(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-608(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-624(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	zlim.3938(%rip), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movq	-616(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-616(%rbp), %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L15
.L28:
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	.LC4(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L20:
	movss	.LC7(%rip), %xmm0
	divss	-20(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-592(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L23
	movq	-608(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	leaq	a.3922(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-616(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	leaq	b.3924(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movss	.LC4(%rip), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-608(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-28(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movq	-608(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-616(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-28(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-616(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-592(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L15
.L23:
	movq	-624(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	leaq	c.3926(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	leaq	-32(%rbp), %rax
	movq	16(%rbp), %rcx
	leaq	d.3928(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-624(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-624(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	coef4_, .-coef4_
	.globl	cheb_
	.type	cheb_, @function
cheb_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm0
	movss	.LC4(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	$3, -12(%rbp)
.L32:
	cmpl	%edx, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L34
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-32(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	subss	-36(%rbp), %xmm1
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	subl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L32
.L34:
	nop
	movss	-28(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	subss	-4(%rbp), %xmm1
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm2
	movss	.LC10(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cheb_, .-cheb_
	.section	.rodata
	.align 4
.LC13:
	.long	20
	.align 4
.LC14:
	.long	25
	.align 4
.LC15:
	.long	22
	.align 4
.LC16:
	.long	24
	.text
	.globl	coef3_
	.type	coef3_, @function
coef3_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC12(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	.LC4(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L36
	movq	-40(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	leaq	a.3987(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-48(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	leaq	b.3989(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-8(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L35
.L36:
	movq	-56(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	leaq	c.3991(%rip), %rdx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-64(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	leaq	d.3993(%rip), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-8(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coef3_, .-coef3_
	.section	.rodata
	.align 4
.LC18:
	.long	17
	.align 4
.LC19:
	.long	16
	.text
	.globl	coef2_
	.type	coef2_, @function
coef2_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC17(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L40
	leaq	-4(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	leaq	a.4005(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	leaq	-8(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	leaq	b.4007(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movss	e1.4012(%rip), %xmm1
	movss	-4(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	e2.4013(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-4(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	root3.4018(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L39
.L40:
	leaq	-12(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	leaq	c.4009(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	leaq	d.4011(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	e1.4012(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	e2.4013(%rip), %xmm1
	movss	-16(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-12(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	root3.4018(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coef2_, .-coef2_
	.section	.rodata
	.align 8
.LC20:
	.ascii	"(//38X, 3H***//5X, 28HANGLE OUTSIDE MACHINE RANGE,,         "
	.ascii	"38H THE FOUR FUNCTIONS HAVE BEEN ASSIGNED/5X, 11HTHE VALUE Z"
	.ascii	",     4HERO.//5X, 4HZ = , E20.8, 10H  ANGLE = , E20.8//38X, "
	.ascii	"3H***//     )"
	.align 8
.LC21:
	.ascii	"(//38X, 3H***//5X, 25HSOME ACCURACY MAY BE LOST,            "
	.ascii	"16H IN SIN AND COS.//5X, 4HZ = , E20.8, 10H  ANGLE = ,      "
	.ascii	"      E20.8//38X, 3H***//)"
	.align 4
.LC22:
	.long	5
	.text
	.globl	coef1_
	.type	coef1_, @function
coef1_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$640, %rsp
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%rdx, -616(%rbp)
	movq	%rcx, -624(%rbp)
	movq	%r8, -632(%rbp)
	movq	%r9, -640(%rbp)
	movq	-600(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-56(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-4(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	pi4.4044(%rip), %xmm0
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	anglm.4030(%rip), %xmm0
	movss	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L44
	nop
	movss	angup.4031(%rip), %xmm0
	movss	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jb	.L53
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$117, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$193, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	nout.4043(%rip), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-600(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-616(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-624(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-632(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-640(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L43
.L53:
	leaq	.LC2(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$123, -576(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$146, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	nout.4043(%rip), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-600(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L44:
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movss	.LC4(%rip), %xmm0
	divss	-12(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-56(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L49
	leaq	-40(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	a.4028(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	leaq	-44(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	b.4033(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movss	.LC4(%rip), %xmm0
	divss	-16(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-44(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	mulss	-32(%rbp), %xmm0
	movq	-616(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-40(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-44(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	addss	%xmm1, %xmm0
	mulss	-32(%rbp), %xmm0
	movq	-624(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L43
.L49:
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	c.4035(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	leaq	-52(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	d.4038(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	cheb_
	movss	-52(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-48(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-52(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	addss	%xmm1, %xmm0
	mulss	-16(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-632(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-48(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-52(%rbp), %xmm1
	mulss	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	mulss	-16(%rbp), %xmm0
	movq	-640(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coef1_, .-coef1_
	.type	MAIN__, @function
MAIN__:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	leaq	-12(%rbp), %r9
	leaq	-16(%rbp), %r8
	leaq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	-20(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	airy_
	addq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$11, -544(%rbp)
	movl	$128, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-16(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-20(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	leaq	options.7.4083(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.data
	.align 4
	.type	nout.3931, @object
	.size	nout.3931, 4
nout.3931:
	.long	2
	.align 4
	.type	zlim.3938, @object
	.size	zlim.3938, 4
zlim.3938:
	.long	1127153664
	.align 16
	.type	a.3922, @object
	.size	a.3922, 28
a.3922:
	.long	1058015722
	.long	3125253671
	.long	922772307
	.long	3021522337
	.long	830640423
	.long	2936991679
	.long	758115327
	.align 16
	.type	b.3924, @object
	.size	b.3924, 28
b.3924:
	.long	1066457690
	.long	987349989
	.long	933570923
	.long	888968424
	.long	848819385
	.long	813773135
	.long	780398847
	.align 16
	.type	c.3926, @object
	.size	c.3926, 28
c.3926:
	.long	1058077836
	.long	982293229
	.long	3071847850
	.long	875284216
	.long	2978912201
	.long	790228607
	.long	2905598975
	.align 16
	.type	d.3928, @object
	.size	d.3928, 28
d.3928:
	.long	1066391775
	.long	3138868950
	.long	3082926902
	.long	3037465507
	.long	2997079904
	.long	2961797215
	.long	2929323647
	.align 32
	.type	a.3987, @object
	.size	a.3987, 80
a.3987:
	.long	1067848572
	.long	3192859164
	.long	3203034329
	.long	1040491618
	.long	1032783711
	.long	3170250377
	.long	3147927267
	.long	998235782
	.long	3078732716
	.long	3114846734
	.long	941615851
	.long	932174835
	.long	3062603360
	.long	3037193180
	.long	881684907
	.long	2973833739
	.long	2990588437
	.long	816115007
	.long	799698079
	.long	2929323647
	.align 32
	.type	b.3989, @object
	.size	b.3989, 100
b.3989:
	.long	1056239800
	.long	3180130330
	.long	1045850136
	.long	3173210679
	.long	1027794913
	.long	3154449963
	.long	999795284
	.long	976717563
	.long	3125163486
	.long	976536927
	.long	3115337345
	.long	957878174
	.long	3091720804
	.long	928123773
	.long	3053553462
	.long	3024902851
	.long	882755919
	.long	3020965016
	.long	859158614
	.long	2988843292
	.long	817466087
	.long	781839999
	.long	2936271103
	.long	774892543
	.long	2905598975
	.align 32
	.type	c.3991, @object
	.size	c.3991, 88
c.3991:
	.long	3222214975
	.long	3168280725
	.long	1064539841
	.long	3182146157
	.long	3192302426
	.long	1024633342
	.long	1018816432
	.long	3151752869
	.long	3133658431
	.long	977656280
	.long	941388253
	.long	3094159457
	.long	913009227
	.long	910309794
	.long	3036584365
	.long	3016419949
	.long	855845654
	.long	815124215
	.long	2964499375
	.long	783281151
	.long	774892543
	.long	2905598975
	.align 32
	.type	d.3993, @object
	.size	d.3993, 96
d.3993:
	.long	1060549004
	.long	1047755880
	.long	1049656120
	.long	1028208406
	.long	1032458144
	.long	3146064802
	.long	1014831676
	.long	3146985306
	.long	995317307
	.long	3129612650
	.long	970495791
	.long	3098739765
	.long	920376917
	.long	924918619
	.long	3067566467
	.long	909909132
	.long	3044024402
	.long	879079906
	.long	3002996508
	.long	2975094747
	.long	830550351
	.long	2966120671
	.long	802580383
	.long	2929323647
	.align 32
	.type	a.4005, @object
	.size	a.4005, 68
a.4005:
	.long	1038893373
	.long	1032191796
	.long	1048942339
	.long	1046535452
	.long	1040155693
	.long	3202259263
	.long	1049702663
	.long	3183982464
	.long	1018350446
	.long	3144002673
	.long	970999828
	.long	3089964898
	.long	911825449
	.long	3026374262
	.long	843588926
	.long	2954309327
	.long	766503935
	.align 32
	.type	b.4007, @object
	.size	b.4007, 64
b.4007:
	.long	1038024189
	.long	3191034305
	.long	1041118777
	.long	3186288596
	.long	1046816276
	.long	3191728605
	.long	1034232910
	.long	3165975270
	.long	998927671
	.long	3122504000
	.long	948669133
	.long	3066446065
	.long	887590604
	.long	3001195068
	.long	817646231
	.long	2927882495
	.align 4
	.type	e1.4012, @object
	.size	e1.4012, 4
e1.4012:
	.long	1052100157
	.align 4
	.type	e2.4013, @object
	.size	e2.4013, 4
e2.4013:
	.long	1048871930
	.align 4
	.type	root3.4018, @object
	.size	root3.4018, 4
root3.4018:
	.long	1071494103
	.align 32
	.type	c.4009, @object
	.size	c.4009, 64
c.4009:
	.long	1033572671
	.long	3184517236
	.long	1033879899
	.long	3182066872
	.long	1036973311
	.long	3179723476
	.long	1020055486
	.long	3150781839
	.long	982694543
	.long	3105774861
	.long	931532451
	.long	3048686721
	.long	869199480
	.long	2982447527
	.long	798977503
	.long	2905598975
	.align 32
	.type	d.4011, @object
	.size	d.4011, 68
d.4011:
	.long	1058911276
	.long	1062960461
	.long	1063062343
	.long	1062147128
	.long	3204543159
	.long	3209788402
	.long	1061633630
	.long	3198140440
	.long	1033714321
	.long	3159906978
	.long	987697368
	.long	3107200953
	.long	929763178
	.long	3044917733
	.long	862375873
	.long	2972933019
	.long	787604607
	.align 4
	.type	pi4.4044, @object
	.size	pi4.4044, 4
pi4.4044:
	.long	1061752795
	.align 4
	.type	anglm.4030, @object
	.size	anglm.4030, 4
anglm.4030:
	.long	1132068864
	.align 4
	.type	angup.4031, @object
	.size	angup.4031, 4
angup.4031:
	.long	1343554297
	.align 4
	.type	nout.4043, @object
	.size	nout.4043, 4
nout.4043:
	.long	2
	.align 16
	.type	a.4028, @object
	.size	a.4028, 20
a.4028:
	.long	1066428994
	.long	3096358450
	.long	875769056
	.long	2964319231
	.long	766503935
	.align 16
	.type	b.4033, @object
	.size	b.4033, 20
b.4033:
	.long	1033908833
	.long	3096485052
	.long	883975761
	.long	2977841943
	.long	781839999
	.align 16
	.type	c.4035, @object
	.size	c.4035, 20
c.4035:
	.long	1066431492
	.long	950583706
	.long	3024289940
	.long	817466087
	.long	2913987583
	.align 16
	.type	d.4038, @object
	.size	d.4038, 20
d.4038:
	.long	3185597182
	.long	950125244
	.long	3032272520
	.long	830820567
	.long	2929323647
	.section	.rodata
	.align 16
	.type	options.7.4083, @object
	.size	options.7.4083, 28
options.7.4083:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1088421888
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1059760811
	.align 4
.LC7:
	.long	1100228990
	.align 16
.LC9:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC10:
	.long	1056964608
	.align 4
.LC11:
	.long	1041385765
	.align 4
.LC12:
	.long	1071644672
	.align 4
.LC17:
	.long	993988907
	.align 4
.LC23:
	.long	1073741824
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
