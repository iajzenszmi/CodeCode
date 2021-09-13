	.file	"599.f"
	.text
	.globl	__powisf2
	.globl	kpoiss_
	.type	kpoiss_, @function
kpoiss_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	muprev.3905(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L35
	ucomiss	%xmm1, %xmm0
	je	.L2
.L35:
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC0(%rip), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L44
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, muprev.3905(%rip)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC2(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
.L2:
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm6
	movss	%xmm6, -308(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	snorm_
	mulss	-84(%rbp), %xmm0
	addss	-308(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	pxor	%xmm0, %xmm0
	comiss	-92(%rbp), %xmm0
	ja	.L5
	movss	-92(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jg	.L6
	movl	-276(%rbp), %eax
	jmp	.L34
.L6:
	movl	-276(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	subss	-36(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-88(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	mulss	-28(%rbp), %xmm0
	comiss	%xmm0, %xmm1
	jb	.L5
	movl	-276(%rbp), %eax
	jmp	.L34
.L5:
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	muold.3904(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L37
	ucomiss	%xmm1, %xmm0
	je	.L9
.L37:
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, muold.3904(%rip)
	movss	.LC4(%rip), %xmm0
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC5(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-96(%rbp), %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-96(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-96(%rbp), %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC8(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-100(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-96(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm2
	movss	.LC9(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC10(%rip), %xmm0
	movaps	%xmm0, %xmm1
	subss	-96(%rbp), %xmm1
	movss	-100(%rbp), %xmm2
	movss	.LC11(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm2
	movss	.LC8(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC12(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.L9:
	pxor	%xmm0, %xmm0
	comiss	-92(%rbp), %xmm0
	ja	.L11
	movl	$0, -48(%rbp)
	jmp	.L12
.L47:
	nop
	movss	-88(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-128(%rbp), %xmm1
	movss	-128(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -308(%rbp)
	movss	-72(%rbp), %xmm0
	subss	-124(%rbp), %xmm0
	call	expf@PLT
	mulss	-76(%rbp), %xmm0
	comiss	-308(%rbp), %xmm0
	jnb	.L38
	jmp	.L11
.L38:
	movl	-276(%rbp), %eax
	jmp	.L34
.L11:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	sexpo_
	movd	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movss	-88(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-32(%rbp), %xmm0
	movss	-88(%rbp), %xmm1
	movss	.LC13(%rip), %xmm2
	movss	.LC14(%rip), %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andnps	%xmm0, %xmm3
	orps	%xmm4, %xmm3
	movaps	%xmm3, %xmm1
	movss	.LC15(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC16(%rip), %xmm0
	comiss	-104(%rbp), %xmm0
	jnb	.L11
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-84(%rbp), %xmm0
	mulss	-104(%rbp), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	subss	-36(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L12
.L42:
	movss	-88(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	mulss	-4(%rbp), %xmm0
	movss	%xmm0, -308(%rbp)
	movss	-72(%rbp), %xmm0
	addss	-32(%rbp), %xmm0
	call	expf@PLT
	mulss	-76(%rbp), %xmm0
	movss	%xmm0, -312(%rbp)
	movss	-124(%rbp), %xmm0
	addss	-32(%rbp), %xmm0
	call	expf@PLT
	mulss	-128(%rbp), %xmm0
	movss	-312(%rbp), %xmm5
	subss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
	movss	-308(%rbp), %xmm7
	comiss	%xmm0, %xmm7
	ja	.L11
	movl	-276(%rbp), %eax
	jmp	.L34
.L12:
	movl	-276(%rbp), %eax
	cmpl	$9, %eax
	jg	.L45
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC14(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)
	movq	-304(%rbp), %rax
	movl	(%rax), %eax
	movl	-276(%rbp), %edx
	movl	%edx, %edi
	movd	%eax, %xmm0
	call	__powisf2@PLT
	movl	-276(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fact.3894(%rip), %rax
	movss	(%rdx,%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	jmp	.L15
.L45:
	nop
	movss	.LC17(%rip), %xmm0
	divss	-36(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC18(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-108(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-108(%rbp), %xmm1
	movss	-108(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-28(%rbp), %xmm0
	divss	-36(%rbp), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	-112(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC19(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L46
	movss	-112(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	call	logf@PLT
	mulss	-36(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	subss	-108(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	jmp	.L17
.L46:
	nop
	movss	-36(%rbp), %xmm0
	mulss	-112(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-112(%rbp), %xmm1
	movss	a7.3881(%rip), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a6.3880(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a5.3879(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a4.3878(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a3.3877(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a2.3876(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a1.3875(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-112(%rbp), %xmm2
	movss	a0.3874(%rip), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	subss	-108(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.L17:
	movss	-36(%rbp), %xmm1
	sqrtss	%xmm1, %xmm1
	movss	.LC4(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
.L15:
	movss	.LC20(%rip), %xmm0
	subss	-28(%rbp), %xmm0
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	-116(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-120(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC14(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-120(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	mulss	-120(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	mulss	-120(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jle	.L47
	jmp	.L42
.L44:
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, muprev.3905(%rip)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	muold.3904(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L39
	ucomiss	%xmm1, %xmm0
	je	.L30
.L39:
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, muold.3904(%rip)
	movl	$1, %edx
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	cvttss2sil	%xmm0, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC14(%rip), %xmm1
	xorps	%xmm1, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	jmp	.L30
.L50:
	nop
.L30:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movl	$0, -276(%rbp)
	movss	-68(%rbp), %xmm0
	comiss	-88(%rbp), %xmm0
	jb	.L43
	movl	-276(%rbp), %eax
	jmp	.L34
.L43:
	cmpl	$0, -52(%rbp)
	je	.L24
	movl	$1, -40(%rbp)
	movss	-88(%rbp), %xmm0
	comiss	.LC21(%rip), %xmm0
	jbe	.L25
	movl	-52(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	cmovle	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
.L25:
	movl	-40(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%edx, -44(%rbp)
.L29:
	cmpl	%eax, -44(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L48
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-272(%rbp,%rdx,4), %xmm0
	comiss	-88(%rbp), %xmm0
	jnb	.L49
	addl	$1, -44(%rbp)
	jmp	.L29
.L48:
	nop
	cmpl	$35, -52(%rbp)
	je	.L50
.L24:
	addl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -44(%rbp)
.L33:
	cmpl	$35, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L51
	movq	-304(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-64(%rbp), %xmm0
	cvtsi2ssl	-44(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-80(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-80(%rbp), %xmm0
	movss	%xmm0, -272(%rbp,%rax,4)
	movss	-80(%rbp), %xmm0
	comiss	-88(%rbp), %xmm0
	jnb	.L52
	addl	$1, -44(%rbp)
	jmp	.L33
.L51:
	nop
	movl	$35, -52(%rbp)
	jmp	.L30
.L52:
	nop
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L28
.L49:
	nop
.L28:
	movl	-44(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	kpoiss_, .-kpoiss_
	.globl	sgamma_
	.type	sgamma_, @function
sgamma_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	aa.3992(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L78
	ucomiss	%xmm1, %xmm0
	je	.L54
.L78:
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC10(%rip), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L85
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, aa.3992(%rip)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC20(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	sqrt32.4017(%rip), %xmm0
	movss	-24(%rbp), %xmm2
	movss	.LC22(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.L54:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	snorm_
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-44(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L83
	movss	-68(%rbp), %xmm0
	jmp	.L77
.L83:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movss	-12(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	-44(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	mulss	-44(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jb	.L84
	movss	-68(%rbp), %xmm0
	jmp	.L77
.L84:
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	aaa.3993(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L81
	ucomiss	%xmm1, %xmm0
	je	.L62
.L81:
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, aaa.3993(%rip)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	q7.4012(%rip), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q6.4011(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q5.4010(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q4.4009(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q3.4008(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q2.4007(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-56(%rbp), %xmm1
	movss	q1.4006(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-56(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC23(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L86
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC24(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L87
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC27(%rip), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L62
.L87:
	nop
	movss	-28(%rbp), %xmm1
	movss	.LC28(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC30(%rip), %xmm0
	movaps	%xmm0, %xmm1
	divss	-24(%rbp), %xmm1
	movss	.LC31(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC32(%rip), %xmm0
	movaps	%xmm0, %xmm1
	divss	-24(%rbp), %xmm1
	movss	.LC33(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L62
.L86:
	nop
	movss	-24(%rbp), %xmm1
	movss	.LC34(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm2
	movss	.LC35(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC36(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC37(%rip), %xmm0
	divss	-24(%rbp), %xmm0
	movss	.LC38(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-24(%rbp), %xmm2
	movss	.LC39(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
.L62:
	pxor	%xmm0, %xmm0
	comiss	-48(%rbp), %xmm0
	jnb	.L70
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC19(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L88
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm2
	movss	.LC19(%rip), %xmm0
	mulss	%xmm2, %xmm0
	mulss	-44(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -100(%rbp)
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-60(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	call	logf@PLT
	mulss	-104(%rbp), %xmm0
	addss	-100(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L68
.L88:
	nop
	movss	-44(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	a7.3991(%rip), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a6.3990(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a5.3989(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a4.3988(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a3.3987(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a2.3986(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a1.3985(%rip), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-60(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
.L68:
	movss	.LC10(%rip), %xmm0
	subss	-52(%rbp), %xmm0
	call	logf@PLT
	movss	-16(%rbp), %xmm1
	comiss	%xmm0, %xmm1
	jb	.L70
	movss	-68(%rbp), %xmm0
	jmp	.L77
.L70:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sexpo_
	movd	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-32(%rbp), %xmm0
	mulss	-64(%rbp), %xmm0
	movss	-52(%rbp), %xmm1
	movss	.LC13(%rip), %xmm2
	movss	.LC14(%rip), %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andps	%xmm2, %xmm0
	orps	%xmm4, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC40(%rip), %xmm0
	comiss	-44(%rbp), %xmm0
	ja	.L70
	movss	-24(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC19(%rip), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L89
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm2
	movss	.LC19(%rip), %xmm0
	mulss	%xmm2, %xmm0
	mulss	-44(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, -100(%rbp)
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-60(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	call	logf@PLT
	mulss	-104(%rbp), %xmm0
	addss	-100(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L72
.L89:
	nop
	movss	-44(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	a7.3991(%rip), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a6.3990(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a5.3989(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a4.3988(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a3.3987(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a2.3986(%rip), %xmm0
	addss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-60(%rbp), %xmm2
	movss	a1.3985(%rip), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-60(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
.L72:
	pxor	%xmm0, %xmm0
	comiss	-16(%rbp), %xmm0
	jnb	.L70
	movss	.LC20(%rip), %xmm0
	comiss	-16(%rbp), %xmm0
	jnb	.L90
	movl	-16(%rbp), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L74
.L90:
	nop
	movss	e5.4002(%rip), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-16(%rbp), %xmm1
	movss	e4.4001(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-16(%rbp), %xmm1
	movss	e3.4000(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-16(%rbp), %xmm1
	movss	e2.3999(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-16(%rbp), %xmm1
	movss	e1.3998(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
.L74:
	movss	-52(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	andps	%xmm1, %xmm0
	mulss	-8(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-44(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-64(%rbp), %xmm0
	subss	%xmm1, %xmm0
	call	expf@PLT
	mulss	-36(%rbp), %xmm0
	movss	-100(%rbp), %xmm5
	comiss	%xmm0, %xmm5
	ja	.L70
	movss	-44(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-68(%rbp), %xmm0
	jmp	.L77
.L85:
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, aa.3992(%rip)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC41(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L76
.L92:
	nop
.L76:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-40(%rbp), %xmm0
	movss	.LC10(%rip), %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L91
	movl	-40(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sexpo_
	movss	-68(%rbp), %xmm1
	comiss	%xmm0, %xmm1
	ja	.L92
	movss	-68(%rbp), %xmm0
	jmp	.L77
.L91:
	nop
	movss	-4(%rbp), %xmm0
	subss	-40(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	call	logf@PLT
	movss	.LC14(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	sexpo_
	movss	%xmm0, -100(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC10(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movl	-68(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	mulss	-104(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	ja	.L92
	movss	-68(%rbp), %xmm0
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	sgamma_, .-sgamma_
	.globl	snorm_
	.type	snorm_, @function
snorm_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-20(%rbp), %xmm0
	comiss	.LC20(%rip), %xmm0
	jb	.L94
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
.L94:
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC42(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L113
	cvtsi2ssl	-8(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a.4057(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -4(%rbp)
.L104:
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	t.4066(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	comiss	-24(%rbp), %xmm0
	jnb	.L114
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	t.4066(%rip), %rax
	movss	(%rdx,%rax), %xmm1
	movss	-24(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	h.4062(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L102
.L115:
	nop
.L102:
	movss	-4(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-32(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC10(%rip), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jp	.L98
	movss	.LC10(%rip), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jne	.L98
	movss	-32(%rbp), %xmm0
	movss	.LC14(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
.L98:
	movss	-36(%rbp), %xmm0
	jmp	.L112
.L114:
	nop
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a.4057(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	subss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L101
.L116:
	nop
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
.L101:
	movss	-24(%rbp), %xmm0
	comiss	-16(%rbp), %xmm0
	ja	.L115
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-24(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jnb	.L116
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	jmp	.L104
.L113:
	nop
	movl	$6, -8(%rbp)
	movss	124+a.4057(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L105
.L117:
	nop
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$1, -8(%rbp)
.L105:
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC10(%rip), %xmm0
	comiss	-20(%rbp), %xmm0
	ja	.L117
	movss	-20(%rbp), %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
.L109:
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	-20(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L107
.L118:
	nop
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
.L107:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	comiss	-16(%rbp), %xmm0
	ja	.L115
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-24(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jnb	.L118
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	jmp	.L109
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	snorm_, .-snorm_
	.globl	sexpo_
	.type	sexpo_, @function
sexpo_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -12(%rbp)
	jmp	.L120
.L129:
	nop
	movss	equiv.2.4102(%rip), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.L120:
	movss	-12(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC10(%rip), %xmm0
	comiss	-12(%rbp), %xmm0
	jnb	.L129
	movss	-12(%rbp), %xmm0
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	equiv.2.4102(%rip), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L130
	movss	-4(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	jmp	.L127
.L130:
	nop
	movl	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L126
.L131:
	nop
.L126:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-16(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jbe	.L124
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
.L124:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	equiv.2.4102(%rip), %rax
	movss	(%rdx,%rax), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L131
	movss	equiv.2.4102(%rip), %xmm0
	mulss	-16(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sexpo_, .-sexpo_
	.globl	sunif_
	.type	sunif_, @function
sunif_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L136
	movsd	r.4125(%rip), %xmm1
	movsd	factor.4124(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC43(%rip), %xmm1
	call	fmod@PLT
	movq	%xmm0, %rax
	movq	%rax, r.4125(%rip)
	movsd	r.4125(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	jmp	.L135
.L136:
	nop
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	two28.4126(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, r.4125(%rip)
	movsd	r.4125(%rip), %xmm1
	movsd	factor.4124(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC43(%rip), %xmm1
	call	fmod@PLT
	movq	%xmm0, %rax
	movq	%rax, r.4125(%rip)
	movsd	r.4125(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movss	-4(%rbp), %xmm0
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sunif_, .-sunif_
	.section	.rodata
.LC44:
	.string	"599.f"
	.align 8
.LC45:
	.ascii	"(' ',/,' ',/,' LISTING OF TRIAL RUNS',                      "
	.ascii	"' FOR RANDOM NUMBER PACKAGE AHRENS/DIETER/KOHRT',           "
	.ascii	"      '====================================')"
.LC46:
	.ascii	"(' ',/,' ')"
	.align 8
.LC47:
	.ascii	"(' ',/,' 1.)   0,1 -UNIFORM DISTRIBUTION:',                 "
	.ascii	"/,' ********************************')"
	.align 8
.LC48:
	.ascii	"(' ',/,' 2.)  (STANDARD-) EXPONENTIAL DISTRIBUTION:',       "
	.ascii	"/,' ******************************************')"
	.align 8
.LC49:
	.ascii	"(' ',/,' 3.)  (STANDARD-) NORMAL DISTRIBUTION:',            "
	.ascii	"/,' ******************************************')"
	.align 8
.LC50:
	.ascii	"(' ',/,' 4.)  (STANDARD-) GAMMA-(A) DISTRIBUTION:',         "
	.ascii	"/,' ****************************************')"
	.align 8
.LC51:
	.ascii	"(' ',/,' 5.)  POISSON-(MU) DISTRIBUTION:',                  "
	.ascii	"/,' *******************************',/,' ',                 "
	.ascii	"      /,'   (INTEGER SAMPLES ARE DISPLAYED AS REALS])',     "
	.ascii	"            /,' ',/,' ')"
	.align 8
.LC55:
	.ascii	"(43X,'    GAMMA-(A):  A =',E13.6,                           "
	.ascii	"/,43X,'    ----------------------------')"
	.align 8
.LC56:
	.ascii	"(43X,'POISSON-(MU):  MU =',E13.6,                           "
	.ascii	"/,43X,'--------------------------------')"
	.align 8
.LC57:
	.ascii	"('   FIRST 100 SAMPLES:',/,                                 "
	.ascii	"'   ..................',/,' ',/,(5E15.6))"
	.align 8
.LC59:
	.ascii	"(' ',/,' ',/,'   TEST DATA:',                               "
	.ascii	"'     (]BASED ON 10000 SAMPLES])',                          "
	.ascii	"      /,'   ..........',/,20X,'MEAN',11X,                   "
	.ascii	"            'STD.DEV.',7X,'SKEWNESS',                       "
	.ascii	"                  7X,'EXCESS',/,' ',/,                      "
	.ascii	"                        '   TRUE VALUES:',4E15.6,/,         "
	.ascii	"                              '   SAMPLE DATA:',4E15.6,/,' '"
	.ascii	")"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$624, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	$10, -48(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$741, -624(%rbp)
	leaq	.LC45(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$165, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -24(%rbp)
.L176:
	cmpl	$5, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L177
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ii.4139(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -52(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$756, -624(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$11, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	cmpl	$1, -24(%rbp)
	jne	.L139
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$757, -624(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$98, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L139:
	cmpl	$2, -24(%rbp)
	jne	.L140
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$758, -624(%rbp)
	leaq	.LC48(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$108, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L140:
	cmpl	$3, -24(%rbp)
	jne	.L141
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$759, -624(%rbp)
	leaq	.LC49(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$108, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L141:
	cmpl	$4, -24(%rbp)
	jne	.L142
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$760, -624(%rbp)
	leaq	.LC50(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$106, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L142:
	cmpl	$5, -24(%rbp)
	jne	.L143
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$761, -624(%rbp)
	leaq	.LC51(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$204, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L143:
	movl	-52(%rbp), %ebx
	movl	$1, -28(%rbp)
.L175:
	cmpl	%ebx, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L178
	cmpl	$4, -24(%rbp)
	jne	.L145
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	vpar4.4157(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -72(%rbp)
.L145:
	cmpl	$5, -24(%rbp)
	jne	.L146
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	vpar5.4159(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -96(%rbp)
.L146:
	movl	$1, -92(%rbp)
	cmpl	$5, -24(%rbp)
	ja	.L147
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L149(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L149(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L149:
	.long	.L147-.L149
	.long	.L147-.L149
	.long	.L152-.L149
	.long	.L151-.L149
	.long	.L150-.L149
	.long	.L148-.L149
	.text
.L153:
.L152:
	movl	$1, -20(%rbp)
	jmp	.L154
.L151:
	movl	$1, -20(%rbp)
	jmp	.L155
.L150:
	movl	$1, -20(%rbp)
	jmp	.L156
.L148:
	movl	$1, -20(%rbp)
	jmp	.L157
.L147:
	movl	$1, -20(%rbp)
.L159:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L179
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %r12
	leaq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	sunif_
	movd	%xmm0, %eax
	leaq	0(,%r12,4), %rcx
	leaq	sample.4151(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -20(%rbp)
	jmp	.L159
.L179:
	nop
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC52(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC53(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	jmp	.L160
.L154:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L180
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %r12
	leaq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	sexpo_
	movd	%xmm0, %eax
	leaq	0(,%r12,4), %rcx
	leaq	sample.4151(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -20(%rbp)
	jmp	.L154
.L180:
	nop
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC54(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	jmp	.L160
.L155:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L181
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %r12
	leaq	-92(%rbp), %rax
	movq	%rax, %rdi
	call	snorm_
	movd	%xmm0, %eax
	leaq	0(,%r12,4), %rcx
	leaq	sample.4151(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -20(%rbp)
	jmp	.L155
.L181:
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -112(%rbp)
	jmp	.L160
.L156:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L182
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %r12
	leaq	-72(%rbp), %rdx
	leaq	-92(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sgamma_
	movd	%xmm0, %eax
	leaq	0(,%r12,4), %rcx
	leaq	sample.4151(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -20(%rbp)
	jmp	.L156
.L182:
	nop
	movss	-72(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-72(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-104(%rbp), %xmm1
	movss	.LC54(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-72(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)
	jmp	.L164
.L157:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L183
	leaq	-96(%rbp), %rdx
	leaq	-92(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kpoiss_
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	cvtsi2ssl	%edx, %xmm0
	leaq	0(,%rax,4), %rdx
	leaq	sample.4151(%rip), %rax
	movss	%xmm0, (%rdx,%rax)
	addl	$1, -20(%rbp)
	jmp	.L157
.L183:
	nop
	movss	-96(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-96(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-104(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-96(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)
.L164:
	cmpl	$1, -28(%rbp)
	je	.L166
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$833, -624(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$11, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L166:
	cmpl	$4, -24(%rbp)
	jne	.L167
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$834, -624(%rbp)
	leaq	.LC55(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$101, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-72(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L167:
	cmpl	$5, -24(%rbp)
	jne	.L160
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$835, -624(%rbp)
	leaq	.LC56(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$101, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-96(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L160:
	cmpl	$3, -24(%rbp)
	jg	.L168
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$842, -624(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$11, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L168:
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$843, -624(%rbp)
	leaq	.LC57(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$101, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -20(%rbp)
.L170:
	movl	-640(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L169
	cmpl	$100, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L169
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	sample.4151(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L170
.L169:
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	$1, -20(%rbp)
.L172:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L184
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	sample.4151(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	-32(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L172
.L184:
	nop
	movss	-32(%rbp), %xmm0
	movss	.LC58(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	$1, -20(%rbp)
.L174:
	cmpl	$10000, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L185
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	sample.4151(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	-76(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	-56(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-36(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-40(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-44(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L174
.L185:
	nop
	movss	-36(%rbp), %xmm0
	movss	.LC58(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-40(%rbp), %xmm0
	movss	.LC58(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-44(%rbp), %xmm0
	movss	.LC58(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-36(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	mulss	-36(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	-40(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	.LC11(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$896, -624(%rbp)
	leaq	.LC59(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$421, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-104(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-108(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-112(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-76(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-80(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-84(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-88(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -28(%rbp)
	jmp	.L175
.L178:
	nop
	addl	$1, -24(%rbp)
	jmp	.L176
.L177:
	nop
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE5:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB6:
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
	leaq	options.16.4246(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.local	muprev.3905
	.comm	muprev.3905,4,4
	.local	muold.3904
	.comm	muold.3904,4,4
	.data
	.align 32
	.type	fact.3894, @object
	.size	fact.3894, 40
fact.3894:
	.long	1065353216
	.long	1065353216
	.long	1073741824
	.long	1086324736
	.long	1103101952
	.long	1123024896
	.long	1144258560
	.long	1167949824
	.long	1193115648
	.long	1219571712
	.align 4
	.type	a7.3881, @object
	.size	a7.3881, 4
a7.3881:
	.long	1040187795
	.align 4
	.type	a6.3880, @object
	.size	a6.3880, 4
a6.3880:
	.long	3188575627
	.align 4
	.type	a5.3879, @object
	.size	a5.3879, 4
a5.3879:
	.long	1041340846
	.align 4
	.type	a4.3878, @object
	.size	a4.3878, 4
a4.3878:
	.long	3190431020
	.align 4
	.type	a3.3877, @object
	.size	a3.3877, 4
a3.3877:
	.long	1045221349
	.align 4
	.type	a2.3876, @object
	.size	a2.3876, 4
a2.3876:
	.long	3196059876
	.align 4
	.type	a1.3875, @object
	.size	a1.3875, 4
a1.3875:
	.long	1051372202
	.align 4
	.type	a0.3874, @object
	.size	a0.3874, 4
a0.3874:
	.long	3204448256
	.local	aa.3992
	.comm	aa.3992,4,4
	.align 4
	.type	sqrt32.4017, @object
	.size	sqrt32.4017, 4
sqrt32.4017:
	.long	1085605107
	.local	aaa.3993
	.comm	aaa.3993,4,4
	.align 4
	.type	q7.4012, @object
	.size	q7.4012, 4
q7.4012:
	.long	964570305
	.align 4
	.type	q6.4011, @object
	.size	q6.4011, 4
q6.4011:
	.long	964723227
	.align 4
	.type	q5.4010, @object
	.size	q5.4010, 4
q5.4010:
	.long	3097161734
	.align 4
	.type	q4.4009, @object
	.size	q4.4009, 4
q4.4009:
	.long	985458428
	.align 4
	.type	q3.4008, @object
	.size	q3.4008, 4
q3.4008:
	.long	1006847075
	.align 4
	.type	q2.4007, @object
	.size	q2.4007, 4
q2.4007:
	.long	1017816776
	.align 4
	.type	q1.4006, @object
	.size	q1.4006, 4
q1.4006:
	.long	1026206385
	.align 4
	.type	a7.3991, @object
	.size	a7.3991, 4
a7.3991:
	.long	1039969892
	.align 4
	.type	a6.3990, @object
	.size	a6.3990, 4
a6.3990:
	.long	3188457402
	.align 4
	.type	a5.3989, @object
	.size	a5.3989, 4
a5.3989:
	.long	1041352784
	.align 4
	.type	a4.3988, @object
	.size	a4.3988, 4
a4.3988:
	.long	3190442106
	.align 4
	.type	a3.3987, @object
	.size	a3.3987, 4
a3.3987:
	.long	1045220973
	.align 4
	.type	a2.3986, @object
	.size	a2.3986, 4
a2.3986:
	.long	3196059749
	.align 4
	.type	a1.3985, @object
	.size	a1.3985, 4
a1.3985:
	.long	1051372202
	.align 4
	.type	e5.4002, @object
	.size	e5.4002, 4
e5.4002:
	.long	1009296377
	.align 4
	.type	e4.4001, @object
	.size	e4.4001, 4
e4.4001:
	.long	1025967104
	.align 4
	.type	e3.4000, @object
	.size	e3.4000, 4
e3.4000:
	.long	1042994489
	.align 4
	.type	e2.3999, @object
	.size	e2.3999, 4
e2.3999:
	.long	1056964262
	.align 4
	.type	e1.3998, @object
	.size	e1.3998, 4
e1.3998:
	.long	1065353216
	.align 32
	.type	a.4057, @object
	.size	a.4057, 128
a.4057:
	.long	0
	.long	1025537820
	.long	1033934512
	.long	1039216984
	.long	1042355726
	.long	1045025881
	.long	1047717147
	.long	1049505136
	.long	1050879156
	.long	1052271346
	.long	1053684666
	.long	1055122352
	.long	1056588006
	.long	1057525130
	.long	1058292226
	.long	1059080198
	.long	1059892061
	.long	1060731335
	.long	1061602196
	.long	1062509661
	.long	1063459850
	.long	1064460363
	.long	1065437018
	.long	1066003467
	.long	1066614435
	.long	1067281413
	.long	1068020886
	.long	1068857951
	.long	1069833748
	.long	1071023412
	.long	1072590337
	.long	1074387223
	.align 32
	.type	t.4066, @object
	.size	t.4066, 124
t.4066:
	.long	977873456
	.long	991375067
	.long	998048364
	.long	1001534735
	.long	1004997005
	.long	1007594921
	.long	1009436575
	.long	1011354235
	.long	1013363979
	.long	1015252847
	.long	1016378724
	.long	1017582834
	.long	1018879936
	.long	1020287772
	.long	1021827996
	.long	1023468754
	.long	1024414750
	.long	1025478426
	.long	1026687445
	.long	1028078363
	.long	1029700515
	.long	1031622213
	.long	1032869819
	.long	1034299522
	.long	1036110453
	.long	1038482840
	.long	1040959010
	.long	1043320611
	.long	1047074379
	.long	1051277065
	.long	1058385690
	.align 32
	.type	h.4062, @object
	.size	h.4062, 124
h.4062:
	.long	1025545894
	.long	1025578343
	.long	1025627450
	.long	1025693764
	.long	1025778026
	.long	1025881213
	.long	1026004554
	.long	1026149579
	.long	1026318167
	.long	1026512613
	.long	1026735724
	.long	1026990922
	.long	1027282419
	.long	1027615408
	.long	1027996361
	.long	1028433403
	.long	1028936884
	.long	1029520137
	.long	1030200670
	.long	1031001880
	.long	1031877287
	.long	1032453099
	.long	1033160482
	.long	1034048905
	.long	1035197072
	.long	1036738531
	.long	1038920363
	.long	1041223177
	.long	1044120924
	.long	1049549132
	.long	1060337624
	.align 32
	.type	d.4060, @object
	.size	d.4060, 124
d.4060:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1049035169
	.long	1048073254
	.long	1046936356
	.long	1046001315
	.long	1045215477
	.long	1044543482
	.long	1043960601
	.long	1043448977
	.long	1042995354
	.long	1042589668
	.long	1042224126
	.long	1041892588
	.long	1041590142
	.long	1041312808
	.long	1041057338
	.long	1040821020
	.long	1040601601
	.long	1040397174
	.long	1040206122
	.long	1039866732
	.long	1039530208
	.long	1039213199
	.long	1038913921
	.long	1038630775
	.long	1038362393
	.long	1038107541
	.align 32
	.type	equiv.2.4102, @object
	.size	equiv.2.4102, 32
equiv.2.4102:
	.long	1060205080
	.long	1064235412
	.long	1065166616
	.long	1065327981
	.long	1065350352
	.long	1065352936
	.long	1065353193
	.long	1065353214
	.local	r.4125
	.comm	r.4125,8,8
	.align 8
	.type	factor.4124, @object
	.size	factor.4124, 8
factor.4124:
	.long	671088640
	.long	1099155183
	.align 8
	.type	two28.4126, @object
	.size	two28.4126, 8
two28.4126:
	.long	0
	.long	1102053376
	.align 16
	.type	ii.4139, @object
	.size	ii.4139, 20
ii.4139:
	.long	1
	.long	1
	.long	1
	.long	22
	.long	24
	.align 32
	.type	vpar4.4157, @object
	.size	vpar4.4157, 88
vpar4.4157:
	.long	953267991
	.long	1048576000
	.long	1056964608
	.long	1061158912
	.long	1065351538
	.long	1065353216
	.long	1069547520
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1084227584
	.long	1088421888
	.long	1092616192
	.long	1097859072
	.long	1101004800
	.long	1106247680
	.long	1112014848
	.long	1120403456
	.long	1148846080
	.long	1176256512
	.long	1203982336
	.long	1232348160
	.align 32
	.type	vpar5.4159, @object
	.size	vpar5.4159, 96
vpar5.4159:
	.long	953267991
	.long	1065353216
	.long	1073741824
	.long	1084227584
	.long	1092605706
	.long	1092616192
	.long	1094713344
	.long	1097859072
	.long	1101004800
	.long	1103626240
	.long	1106247680
	.long	1109393408
	.long	1112014848
	.long	1117126656
	.long	1120403456
	.long	1125515264
	.long	1128792064
	.long	1140457472
	.long	1148846080
	.long	1157234688
	.long	1167867904
	.long	1176256512
	.long	1203982336
	.long	1232348160
	.local	sample.4151
	.comm	sample.4151,40000,32
	.section	.rodata
	.align 16
	.type	options.16.4246, @object
	.size	options.16.4246, 28
options.16.4246:
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
	.align 4
.LC1:
	.long	1086324736
	.align 4
.LC2:
	.long	1066598085
	.align 4
.LC4:
	.long	1053573674
	.align 4
.LC5:
	.long	1026206380
	.align 4
.LC6:
	.long	1050253722
	.align 4
.LC7:
	.long	1041385762
	.align 4
.LC8:
	.long	1097859072
	.align 4
.LC9:
	.long	1110704128
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC11:
	.long	1077936128
	.align 4
.LC12:
	.long	1037758051
	.align 16
.LC13:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC14:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC15:
	.long	1072064102
	.align 4
.LC16:
	.long	3207374202
	.align 4
.LC17:
	.long	1034594986
	.align 4
.LC18:
	.long	1083808154
	.align 4
.LC19:
	.long	1048576000
	.align 4
.LC20:
	.long	1056964608
	.align 4
.LC21:
	.long	1055555322
	.align 4
.LC22:
	.long	1094713344
	.align 4
.LC23:
	.long	1080813421
	.align 4
.LC24:
	.long	1095784989
	.align 4
.LC25:
	.long	1071812444
	.align 4
.LC26:
	.long	1061158912
	.align 4
.LC27:
	.long	1041965777
	.align 4
.LC28:
	.long	1006176620
	.align 4
.LC29:
	.long	1070839366
	.align 4
.LC30:
	.long	1071057469
	.align 4
.LC31:
	.long	1049414861
	.align 4
.LC32:
	.long	1031664566
	.align 4
.LC33:
	.long	1019517862
	.align 4
.LC34:
	.long	1055723094
	.align 4
.LC35:
	.long	1043744162
	.align 4
.LC36:
	.long	1067324539
	.align 4
.LC37:
	.long	1044885012
	.align 4
.LC38:
	.long	1034013377
	.align 4
.LC39:
	.long	1015222895
	.align 4
.LC40:
	.long	3208118186
	.align 4
.LC41:
	.long	1052531376
	.align 4
.LC42:
	.long	1107296256
	.align 8
.LC43:
	.long	0
	.long	1072693248
	.align 4
.LC52:
	.long	1049873722
	.align 4
.LC53:
	.long	3214514586
	.align 4
.LC54:
	.long	1073741824
	.align 4
.LC58:
	.long	1176256512
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
