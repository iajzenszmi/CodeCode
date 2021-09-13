	.file	"718-programsample21.f"
	.text
	.section	.rodata
.LC0:
	.string	"718-programsample21.f"
	.align 8
.LC1:
	.ascii	"SEIGVL: INPUT SYSTEM TOO LARGE."
	.text
	.globl	seigvl_
	.type	seigvl_, @function
seigvl_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3536, %rsp
	movq	%rdi, -3512(%rbp)
	movq	%rsi, -3520(%rbp)
	movq	%rdx, -3528(%rbp)
	movq	%rcx, -3536(%rbp)
	movq	-3528(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r9
	notq	%r9
	movq	-3512(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$25, %eax
	jle	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, -3496(%rbp)
	movl	$988, -3488(%rbp)
	movl	$128, -3504(%rbp)
	movl	$6, -3500(%rbp)
	leaq	-3504(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-3504(%rbp), %rax
	movl	$31, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-3504(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L2:
	movq	-3512(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, -4(%rbp)
.L6:
	cmpl	%esi, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L10
	movq	-3512(%rbp), %rax
	movl	(%rax), %edi
	movl	$1, -8(%rbp)
.L5:
	cmpl	%edi, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-8(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	leaq	(%r9,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rcx,%rax), %r8
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	addq	%rax, %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	-26(%rax), %rcx
	movq	-3520(%rbp), %rax
	movss	(%rax,%r8,4), %xmm0
	movss	%xmm0, -2528(%rbp,%rcx,4)
	addl	$1, -8(%rbp)
	jmp	.L5
.L11:
	nop
	addl	$1, -4(%rbp)
	jmp	.L6
.L10:
	nop
	movl	$25, -2756(%rbp)
	leaq	-2976(%rbp), %r8
	leaq	-2536(%rbp), %rdi
	leaq	-2760(%rbp), %rcx
	leaq	-2528(%rbp), %rdx
	movq	-3512(%rbp), %rsi
	leaq	-2756(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	balanc_
	leaq	-2752(%rbp), %r8
	leaq	-2528(%rbp), %rdi
	leaq	-2536(%rbp), %rcx
	leaq	-2760(%rbp), %rdx
	movq	-3512(%rbp), %rsi
	leaq	-2756(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	elmhes_
	leaq	-2864(%rbp), %r9
	leaq	-2528(%rbp), %r8
	leaq	-2536(%rbp), %rcx
	leaq	-2760(%rbp), %rdx
	movq	-3512(%rbp), %rsi
	leaq	-2756(%rbp), %rax
	leaq	-2532(%rbp), %rdi
	pushq	%rdi
	leaq	-2640(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	hqr_
	addq	$16, %rsp
	movq	-3512(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
.L8:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-2864(%rbp,%rax,4), %xmm1
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-2640(%rbp,%rax,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-3536(%rbp), %rax
	movss	%xmm1, (%rax,%rdx,8)
	movss	%xmm0, 4(%rax,%rdx,8)
	addl	$1, -4(%rbp)
	jmp	.L8
.L12:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	seigvl_, .-seigvl_
	.globl	hqr_
	.type	hqr_, @function
hqr_:
.LFB1:
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
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-192(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -128(%rbp)
	movq	%rax, %rdx
	imulq	-128(%rbp), %rdx
	movl	$0, %ecx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movq	%rax, %rdx
	notq	%rdx
	movq	-192(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	movq	%rcx, %r12
	movl	$0, %r13d
	movq	-192(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	movq	%rcx, %r10
	movl	$0, %r11d
	movq	24(%rbp), %rcx
	movl	$0, (%rcx)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	$1, -56(%rbp)
	movq	-192(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -40(%rbp)
.L18:
	cmpl	%ecx, -40(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L65
	movl	-56(%rbp), %esi
	movq	-192(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%esi, -52(%rbp)
.L16:
	cmpl	%edi, -52(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L66
	movl	-52(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-216(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L16
.L66:
	nop
	movl	-40(%rbp), %esi
	movl	%esi, -56(%rbp)
	movq	-200(%rbp), %rsi
	movl	(%rsi), %esi
	cmpl	%esi, -40(%rbp)
	setge	%sil
	movzbl	%sil, %edi
	movq	-208(%rbp), %rsi
	movl	(%rsi), %esi
	cmpl	%esi, -40(%rbp)
	setle	%sil
	movzbl	%sil, %esi
	andl	%edi, %esi
	testl	%esi, %esi
	jne	.L67
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	leaq	(%rdi,%rsi), %r8
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movq	-224(%rbp), %rsi
	movss	%xmm0, (%rsi,%rdi,4)
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movq	16(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rdi,4)
	jmp	.L17
.L67:
	nop
.L17:
	addl	$1, -40(%rbp)
	jmp	.L18
.L65:
	nop
	movq	-208(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, -36(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movq	-192(%rbp), %rcx
	movl	(%rcx), %ecx
	imull	$30, %ecx, %ecx
	movl	%ecx, -44(%rbp)
.L54:
	movq	-200(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, -36(%rbp)
	jl	.L68
	movl	$0, -48(%rbp)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -148(%rbp)
	movl	-148(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -152(%rbp)
.L53:
	movq	-200(%rbp), %rcx
	movl	(%rcx), %esi
	movl	-36(%rbp), %ecx
	movl	%esi, -64(%rbp)
.L24:
	cmpl	%ecx, -64(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L69
	movq	-200(%rbp), %rsi
	movl	(%rsi), %edi
	movl	-36(%rbp), %esi
	addl	%edi, %esi
	subl	-64(%rbp), %esi
	movl	%esi, -60(%rbp)
	movq	-200(%rbp), %rsi
	movl	(%rsi), %esi
	cmpl	%esi, -60(%rbp)
	je	.L69
	movl	-60(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-60(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-92(%rbp), %xmm0
	jp	.L21
	pxor	%xmm0, %xmm0
	ucomiss	-92(%rbp), %xmm0
	jne	.L21
	movss	-76(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
.L21:
	movss	-92(%rbp), %xmm0
	movss	%xmm0, -156(%rbp)
	movl	-60(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-156(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)
	movss	-160(%rbp), %xmm0
	ucomiss	-156(%rbp), %xmm0
	jp	.L61
	movss	-160(%rbp), %xmm0
	ucomiss	-156(%rbp), %xmm0
	je	.L20
.L61:
	addl	$1, -64(%rbp)
	jmp	.L24
.L69:
	nop
.L20:
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, -104(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	je	.L70
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, -108(%rbp)
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	-148(%rbp), %ecx
	je	.L71
	cmpl	$0, -44(%rbp)
	je	.L72
	cmpl	$10, -48(%rbp)
	setne	%cl
	movzbl	%cl, %esi
	cmpl	$20, -48(%rbp)
	setne	%cl
	movzbl	%cl, %ecx
	andl	%esi, %ecx
	testl	%ecx, %ecx
	jne	.L73
	movss	-96(%rbp), %xmm0
	addss	-104(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
	movq	-200(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	-36(%rbp), %esi
	movl	%ecx, -40(%rbp)
.L30:
	cmpl	%esi, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L74
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm0
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	subss	-104(%rbp), %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%rdi,4)
	addl	$1, -40(%rbp)
	jmp	.L30
.L74:
	nop
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movl	-152(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-104(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-92(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-92(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	jmp	.L28
.L73:
	nop
.L28:
	addl	$1, -48(%rbp)
	subl	$1, -44(%rbp)
	movl	-60(%rbp), %esi
	movl	-152(%rbp), %ecx
	movl	%esi, -72(%rbp)
.L33:
	cmpl	%ecx, -72(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L75
	movl	-152(%rbp), %edi
	movl	-60(%rbp), %esi
	addl	%edi, %esi
	subl	-72(%rbp), %esi
	movl	%esi, -68(%rbp)
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	%xmm0, -164(%rbp)
	movss	-104(%rbp), %xmm0
	subss	-164(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-108(%rbp), %xmm0
	subss	-164(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-88(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	subss	-100(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	divss	%xmm0, %xmm1
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	subss	-164(%rbp), %xmm0
	subss	-88(%rbp), %xmm0
	subss	-92(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-80(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-84(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-88(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-80(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-84(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-88(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movl	-68(%rbp), %esi
	cmpl	-60(%rbp), %esi
	je	.L75
	movss	-80(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movl	-68(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm0, %xmm2
	movss	-164(%rbp), %xmm0
	movss	.LC3(%rip), %xmm3
	andps	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm3
	andps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)
	movl	-68(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-84(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm0, %xmm2
	movss	-88(%rbp), %xmm0
	movss	.LC3(%rip), %xmm3
	andps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	-156(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)
	movss	-160(%rbp), %xmm0
	ucomiss	-156(%rbp), %xmm0
	jp	.L62
	movss	-160(%rbp), %xmm0
	ucomiss	-156(%rbp), %xmm0
	je	.L31
.L62:
	addl	$1, -72(%rbp)
	jmp	.L33
.L75:
	nop
.L31:
	movl	-68(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -168(%rbp)
	movl	-168(%rbp), %esi
	movl	-36(%rbp), %ecx
	movl	%esi, -40(%rbp)
.L36:
	cmpl	%ecx, -40(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L76
	movl	-40(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rdi,4)
	movl	-40(%rbp), %esi
	cmpl	-168(%rbp), %esi
	je	.L77
	movl	-40(%rbp), %esi
	subl	$3, %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-216(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rdi,4)
	jmp	.L35
.L77:
	nop
.L35:
	addl	$1, -40(%rbp)
	jmp	.L36
.L76:
	nop
	movl	-68(%rbp), %ecx
	movl	-148(%rbp), %edi
	movl	%ecx, -56(%rbp)
.L52:
	cmpl	%edi, -56(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L78
	movl	-56(%rbp), %ecx
	cmpl	-148(%rbp), %ecx
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, -172(%rbp)
	movl	-56(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	je	.L79
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, -84(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L39
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movss	%xmm0, -88(%rbp)
.L39:
	movss	-80(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-84(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-88(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-104(%rbp), %xmm0
	jp	.L63
	pxor	%xmm0, %xmm0
	ucomiss	-104(%rbp), %xmm0
	je	.L40
.L63:
	movss	-80(%rbp), %xmm0
	divss	-104(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-84(%rbp), %xmm0
	divss	-104(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-88(%rbp), %xmm0
	divss	-104(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.L38
.L79:
	nop
.L38:
	movss	-80(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-84(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	-88(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	sqrtss	%xmm0, %xmm0
	movss	-80(%rbp), %xmm1
	movss	.LC3(%rip), %xmm2
	movss	.LC6(%rip), %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andps	%xmm2, %xmm0
	orps	%xmm4, %xmm0
	movss	%xmm0, -92(%rbp)
	movl	-56(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	je	.L80
	movss	-92(%rbp), %xmm0
	mulss	-104(%rbp), %xmm0
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movss	.LC6(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	jmp	.L43
.L80:
	nop
	movl	-60(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	je	.L43
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-216(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movss	.LC6(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
.L43:
	movss	-80(%rbp), %xmm0
	addss	-92(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-84(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	-88(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -164(%rbp)
	movss	-84(%rbp), %xmm0
	divss	-80(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-88(%rbp), %xmm0
	divss	-80(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	cmpl	$0, -172(%rbp)
	jne	.L81
	movl	-56(%rbp), %ecx
	movl	-36(%rbp), %esi
	movl	%ecx, -52(%rbp)
.L46:
	cmpl	%esi, -52(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L82
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-84(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-104(%rbp), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-108(%rbp), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	addl	$1, -52(%rbp)
	jmp	.L46
.L82:
	nop
	movl	-36(%rbp), %ecx
	movl	-56(%rbp), %esi
	addl	$3, %esi
	cmpl	%ecx, %esi
	cmovle	%esi, %ecx
	movl	%ecx, -52(%rbp)
	movl	-60(%rbp), %ecx
	movl	-52(%rbp), %esi
	movl	%ecx, -40(%rbp)
.L48:
	cmpl	%esi, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L83
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-104(%rbp), %xmm1
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-108(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	-80(%rbp), %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-84(%rbp), %xmm1
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	addl	$1, -40(%rbp)
	jmp	.L48
.L83:
	nop
	jmp	.L40
.L81:
	nop
	movl	-56(%rbp), %ecx
	movl	-36(%rbp), %esi
	movl	%ecx, -52(%rbp)
.L50:
	cmpl	%esi, -52(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L84
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-84(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-88(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-104(%rbp), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-108(%rbp), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-164(%rbp), %xmm1
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	addl	$1, -52(%rbp)
	jmp	.L50
.L84:
	nop
	movl	-36(%rbp), %ecx
	movl	-56(%rbp), %esi
	addl	$3, %esi
	cmpl	%ecx, %esi
	cmovle	%esi, %ecx
	movl	%ecx, -52(%rbp)
	movl	-60(%rbp), %ecx
	movl	-52(%rbp), %esi
	movl	%ecx, -40(%rbp)
.L51:
	cmpl	%esi, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L85
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-104(%rbp), %xmm1
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-108(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	mulss	-164(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	-80(%rbp), %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-84(%rbp), %xmm1
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-216(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movss	-80(%rbp), %xmm1
	mulss	-88(%rbp), %xmm1
	movl	-56(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rcx
	movss	%xmm0, (%rcx,%r8,4)
	addl	$1, -40(%rbp)
	jmp	.L51
.L85:
	nop
.L40:
	addl	$1, -56(%rbp)
	jmp	.L52
.L78:
	nop
	jmp	.L53
.L70:
	nop
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-104(%rbp), %xmm0
	addss	-96(%rbp), %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	16(%rbp), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-148(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.L54
.L71:
	nop
	movss	-108(%rbp), %xmm0
	subss	-104(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	-100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-84(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -164(%rbp)
	movss	-104(%rbp), %xmm0
	addss	-96(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	comiss	-84(%rbp), %xmm0
	ja	.L86
	movss	-164(%rbp), %xmm0
	movss	-80(%rbp), %xmm1
	movss	.LC3(%rip), %xmm2
	movss	.LC6(%rip), %xmm3
	movaps	%xmm1, %xmm5
	andps	%xmm3, %xmm5
	andps	%xmm2, %xmm0
	orps	%xmm5, %xmm0
	movss	-80(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-104(%rbp), %xmm0
	addss	-164(%rbp), %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rdi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-224(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	pxor	%xmm0, %xmm0
	ucomiss	-164(%rbp), %xmm0
	jp	.L64
	pxor	%xmm0, %xmm0
	ucomiss	-164(%rbp), %xmm0
	je	.L56
.L64:
	movss	-100(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	divss	-164(%rbp), %xmm1
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-104(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
.L56:
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	16(%rbp), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	16(%rbp), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	jmp	.L58
.L86:
	nop
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-104(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-104(%rbp), %xmm0
	addss	-80(%rbp), %xmm0
	movq	-224(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-148(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	16(%rbp), %rcx
	movss	-164(%rbp), %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movss	-164(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	16(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
.L58:
	movl	-152(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.L54
.L72:
	nop
	movq	24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L19
.L68:
	nop
.L19:
	nop
	addq	$72, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	hqr_, .-hqr_
	.globl	elmhes_
	.type	elmhes_, @function
elmhes_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-96(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, %rdx
	imulq	-48(%rbp), %rdx
	movl	$0, %ecx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movq	%rax, %rdx
	notq	%rdx
	movq	-112(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	movq	%rcx, %r10
	movl	$0, %r11d
	movq	-112(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movq	-104(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	-64(%rbp), %ecx
	jl	.L108
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %ecx
	movl	%esi, -28(%rbp)
.L104:
	cmpl	%ecx, -28(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L108
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -68(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, -20(%rbp)
	movl	-28(%rbp), %edi
	movq	-112(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%edi, -24(%rbp)
.L91:
	cmpl	%esi, -24(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L109
	movl	-68(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L110
	movl	-68(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-24(%rbp), %edi
	movl	%edi, -20(%rbp)
	jmp	.L90
.L110:
	nop
.L90:
	addl	$1, -24(%rbp)
	jmp	.L91
.L109:
	nop
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r8
	movq	-128(%rbp), %rsi
	movl	-20(%rbp), %edi
	movl	%edi, (%rsi,%r8,4)
	movl	-20(%rbp), %esi
	cmpl	-28(%rbp), %esi
	je	.L111
	movl	-68(%rbp), %esi
	movq	-96(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%esi, -24(%rbp)
.L94:
	cmpl	%edi, -24(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L112
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	leaq	(%r8,%rsi), %r9
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	(%rsi,%r9,4), %xmm0
	movq	-120(%rbp), %rsi
	movss	%xmm0, (%rsi,%r8,4)
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	-72(%rbp), %xmm0
	movss	%xmm0, (%rsi,%r8,4)
	addl	$1, -24(%rbp)
	jmp	.L94
.L112:
	nop
	movq	-112(%rbp), %rsi
	movl	(%rsi), %edi
	movl	$1, -24(%rbp)
.L95:
	cmpl	%edi, -24(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L111
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	leaq	(%r8,%rsi), %r9
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	(%rsi,%r9,4), %xmm0
	movq	-120(%rbp), %rsi
	movss	%xmm0, (%rsi,%r8,4)
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-120(%rbp), %rsi
	movss	-72(%rbp), %xmm0
	movss	%xmm0, (%rsi,%r8,4)
	addl	$1, -24(%rbp)
	jmp	.L95
.L111:
	nop
	pxor	%xmm0, %xmm0
	ucomiss	-32(%rbp), %xmm0
	jp	.L106
	pxor	%xmm0, %xmm0
	ucomiss	-32(%rbp), %xmm0
	je	.L96
.L106:
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -76(%rbp)
	movl	-76(%rbp), %edi
	movq	-112(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%edi, -20(%rbp)
.L103:
	cmpl	%esi, -20(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L113
	movl	-68(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-72(%rbp), %xmm0
	jp	.L107
	pxor	%xmm0, %xmm0
	ucomiss	-72(%rbp), %xmm0
	je	.L98
.L107:
	movss	-72(%rbp), %xmm0
	divss	-32(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-68(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-120(%rbp), %rdi
	movss	-72(%rbp), %xmm0
	movss	%xmm0, (%rdi,%r8,4)
	movl	-28(%rbp), %edi
	movq	-96(%rbp), %r8
	movl	(%r8), %r8d
	movl	%edi, -24(%rbp)
.L101:
	cmpl	%r8d, -24(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L114
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r9,4), %xmm0
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r9,4), %xmm1
	mulss	-72(%rbp), %xmm1
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	subss	%xmm1, %xmm0
	movq	-120(%rbp), %rdi
	movss	%xmm0, (%rdi,%r9,4)
	addl	$1, -24(%rbp)
	jmp	.L101
.L114:
	nop
	movq	-112(%rbp), %rdi
	movl	(%rdi), %r8d
	movl	$1, -24(%rbp)
.L102:
	cmpl	%r8d, -24(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L115
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r9,4), %xmm1
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	movq	-120(%rbp), %rdi
	movss	(%rdi,%r9,4), %xmm0
	mulss	-72(%rbp), %xmm0
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r9
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r9
	addss	%xmm1, %xmm0
	movq	-120(%rbp), %rdi
	movss	%xmm0, (%rdi,%r9,4)
	addl	$1, -24(%rbp)
	jmp	.L102
.L115:
	nop
.L98:
	addl	$1, -20(%rbp)
	jmp	.L103
.L113:
	nop
.L96:
	addl	$1, -28(%rbp)
	jmp	.L104
.L108:
	nop
	nop
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	elmhes_, .-elmhes_
	.globl	balanc_
	.type	balanc_, @function
balanc_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-128(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, %rdx
	imulq	-88(%rbp), %rdx
	movl	$0, %ecx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	movq	%rax, %rdx
	notq	%rdx
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	$1, -44(%rbp)
	movq	-128(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, -48(%rbp)
	jmp	.L117
.L132:
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	cvtsi2ssl	-36(%rbp), %xmm0
	movq	-160(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movl	-36(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	je	.L156
	movl	-48(%rbp), %esi
	movl	$1, -28(%rbp)
.L120:
	cmpl	%esi, -28(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L157
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx), %r8
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movq	-136(%rbp), %rcx
	movss	%xmm0, (%rcx,%rdi,4)
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rcx,%rdi,4)
	addl	$1, -28(%rbp)
	jmp	.L120
.L157:
	nop
	movl	-44(%rbp), %ecx
	movq	-128(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%ecx, -28(%rbp)
.L121:
	cmpl	%esi, -28(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L156
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx), %r8
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	(%rcx,%r8,4), %xmm0
	movq	-136(%rbp), %rcx
	movss	%xmm0, (%rcx,%rdi,4)
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-136(%rbp), %rcx
	movss	-24(%rbp), %xmm0
	movss	%xmm0, (%rcx,%rdi,4)
	addl	$1, -28(%rbp)
	jmp	.L121
.L156:
	nop
	cmpl	$1, -32(%rbp)
	je	.L124
	cmpl	$2, -32(%rbp)
	jne	.L124
	addl	$1, -44(%rbp)
	jmp	.L125
.L124:
	cmpl	$1, -48(%rbp)
	je	.L126
	subl	$1, -48(%rbp)
.L117:
	movl	-48(%rbp), %ecx
	movl	$1, -40(%rbp)
.L133:
	cmpl	%ecx, -40(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L158
	movl	-48(%rbp), %esi
	addl	$1, %esi
	subl	-40(%rbp), %esi
	movl	%esi, -36(%rbp)
	movl	-48(%rbp), %esi
	movl	$1, -28(%rbp)
.L131:
	cmpl	%esi, -28(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L159
	movl	-28(%rbp), %edi
	cmpl	-36(%rbp), %edi
	je	.L129
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-136(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L130
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L160
.L129:
	addl	$1, -28(%rbp)
	jmp	.L131
.L159:
	nop
	movl	-48(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L132
.L160:
	nop
.L130:
	addl	$1, -40(%rbp)
	jmp	.L133
.L158:
	nop
	nop
.L125:
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %ecx
	movl	%esi, -36(%rbp)
.L139:
	cmpl	%ecx, -36(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L161
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	%edi, -28(%rbp)
.L138:
	cmpl	%esi, -28(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L162
	movl	-28(%rbp), %edi
	cmpl	-36(%rbp), %edi
	je	.L136
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-136(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L137
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L163
.L136:
	addl	$1, -28(%rbp)
	jmp	.L138
.L162:
	nop
	movl	-44(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	$2, -32(%rbp)
	jmp	.L132
.L163:
	nop
.L137:
	addl	$1, -36(%rbp)
	jmp	.L139
.L161:
	nop
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %esi
	movl	%ecx, -28(%rbp)
.L141:
	cmpl	%esi, -28(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L164
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rdi
	movq	-160(%rbp), %rcx
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, (%rcx,%rdi,4)
	addl	$1, -28(%rbp)
	jmp	.L141
.L164:
	nop
	movl	$0, -56(%rbp)
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %ecx
	movl	%esi, -28(%rbp)
.L154:
	cmpl	%ecx, -28(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L165
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	%edi, -36(%rbp)
.L145:
	cmpl	%esi, -36(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L166
	movl	-36(%rbp), %edi
	cmpl	-28(%rbp), %edi
	je	.L167
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-136(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-136(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-60(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	jmp	.L144
.L167:
	nop
.L144:
	addl	$1, -36(%rbp)
	jmp	.L145
.L166:
	nop
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	setnp	%sil
	movzbl	%sil, %esi
	movl	$0, %edi
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	cmove	%esi, %edi
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	setnp	%sil
	movzbl	%sil, %esi
	movl	$0, %r8d
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	cmovne	%r8d, %esi
	orl	%edi, %esi
	testl	%esi, %esi
	jne	.L168
	movss	-60(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -104(%rbp)
.L148:
	movss	-20(%rbp), %xmm0
	comiss	-100(%rbp), %xmm0
	jnb	.L169
	movss	-24(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	-96(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L148
.L169:
	nop
	movss	-60(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
.L150:
	movss	-100(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	ja	.L170
	movss	-24(%rbp), %xmm0
	divss	-92(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0
	divss	-96(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L150
.L170:
	nop
	movss	-20(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	divss	-24(%rbp), %xmm0
	movss	-104(%rbp), %xmm2
	movss	.LC10(%rip), %xmm1
	mulss	%xmm2, %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L168
	movss	.LC9(%rip), %xmm0
	divss	-24(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movq	-160(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	mulss	-24(%rbp), %xmm0
	movq	-160(%rbp), %rsi
	movss	%xmm0, (%rsi,%rdi,4)
	movl	$1, -56(%rbp)
	movl	-44(%rbp), %esi
	movq	-128(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%esi, -36(%rbp)
.L152:
	cmpl	%edi, -36(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L171
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-136(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	mulss	-100(%rbp), %xmm0
	movq	-136(%rbp), %rsi
	movss	%xmm0, (%rsi,%r8,4)
	addl	$1, -36(%rbp)
	jmp	.L152
.L171:
	nop
	movl	-48(%rbp), %edi
	movl	$1, -36(%rbp)
.L153:
	cmpl	%edi, -36(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L168
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-136(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	mulss	-24(%rbp), %xmm0
	movq	-136(%rbp), %rsi
	movss	%xmm0, (%rsi,%r8,4)
	addl	$1, -36(%rbp)
	jmp	.L153
.L168:
	nop
	addl	$1, -28(%rbp)
	jmp	.L154
.L165:
	nop
	cmpl	$0, -56(%rbp)
	jne	.L164
.L126:
	movq	-144(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movq	-152(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	nop
	addq	$24, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	balanc_, .-balanc_
	.section	.rodata
.LC11:
	.ascii	"*********"
.LC12:
	.ascii	"EXAMPLE 1"
.LC13:
	.ascii	"SYSTEM MATRIX A:"
.LC14:
	.ascii	"(1X,8E15.6)"
	.align 4
.LC15:
	.long	25
.LC16:
	.ascii	"RESULT VECTOR F:"
.LC17:
	.ascii	"EIGENVALUES OF (A - B*F): "
	.align 8
.LC18:
	.ascii	"   (THE MATRIX (A - B*F) SHOULD HAVE EIGENVALUES"
	.align 8
.LC19:
	.ascii	"   1.0, 2.0, 3.0, 4.0 and 5.0, BUT NOT NECESSARILY"
	.align 8
.LC20:
	.ascii	"   IN THIS ORDER. THIS EXAMPLE USES A SYSTEM IN"
.LC21:
	.ascii	"   CONTROLLABILITY FORM.)"
.LC22:
	.ascii	"EXAMPLE 2"
.LC23:
	.ascii	"EIGENVALUES OF (A - B*F):"
	.align 8
.LC24:
	.ascii	"   (SINCE THE SYSTEM (b,A) IS UNCONTROLLABLE,"
	.align 8
.LC25:
	.ascii	"   NO EIGENVALUES ARE ALLOCATED.  THE VECTOR F"
	.align 8
.LC26:
	.ascii	"   SHOULD BE ZERO,  AND THE EIGENVALUES OF"
	.align 8
.LC27:
	.ascii	"   (A - B*F) SHOULD BE THOSE OF THE MATRIX A)"
.LC30:
	.ascii	"EXAMPLE 3 "
.LC31:
	.ascii	"MACHINE UNIT: "
	.align 8
.LC32:
	.ascii	"  (THE SUBROUTINE SHOULD ALLOCATE TWO"
	.align 8
.LC33:
	.ascii	"  EIGENVALUES AND THEN IF THE CORRECT MACHINE"
	.align 8
.LC34:
	.ascii	"  UNIT IS COMPUTED THE SUBROUTINE SHOULD"
	.align 8
.LC35:
	.ascii	"  DETECT AN UNCONTROLLABLE SYSTEM."
	.align 8
.LC36:
	.ascii	"  NOTE THAT SOME MACHINES/COMPILERS MAY NOT COMPUTE"
	.align 8
.LC37:
	.ascii	"  THE CORRECT MACHINE UNIT. INSTEAD THEY MAY"
	.align 8
.LC38:
	.ascii	"  COMPUTE A MACHINE UNIT AFFECTED BY THE LENGTH OF"
	.align 8
.LC39:
	.ascii	"  THE REGISTER. IN SUCH A CASE THE SUBROUTINE MAY"
	.align 8
.LC40:
	.ascii	"  NOT DETECT UNCONTROLLABILITY AND IT MAY CONTINUE"
	.align 8
.LC41:
	.ascii	"  THE ALLOCATIONS WITH AN ILL-CONDITIONED"
	.align 8
.LC42:
	.ascii	"  EIGENVALUE ALLOCATION PROBLEM. THIS WILL RESULT"
	.align 8
.LC43:
	.ascii	"  TO AN INACCURATE  F  AND THUS TO INACCURATE"
.LC44:
	.ascii	"  EIGENVALUES FOR  (A - B*F)."
	.align 8
.LC45:
	.ascii	"  FOR MORE DETAILS SEE REFERENCES IN THE PAPER."
	.align 8
.LC46:
	.ascii	"  IF UNCONTROLLABILITY IS DETECTED THE MATRIX"
	.align 8
.LC47:
	.ascii	"  (A - B*F)  SHOULD HAVE EIGENVALUES 1.0, 2.0,"
	.align 8
.LC48:
	.ascii	"  AND THREE OTHER UNSPECIFIED EIGENVALUES.)"
.LC57:
	.ascii	"EXAMPLE 4 "
	.align 8
.LC58:
	.ascii	"   (THE MATRIX (A - B*F) SHOULD HAVE"
	.align 8
.LC59:
	.ascii	"   EIGENVALUES 63.0, -24.0, 7.0 + 28.0i,"
	.align 8
.LC60:
	.ascii	"   7.0 - 28.0i, -15.0 + 20.0i, and -15.0 - 20.0i,"
	.align 8
.LC61:
	.ascii	"   IN ANY ORDER.)  THIS EXAMPLE ALLOCATES"
	.align 8
.LC62:
	.ascii	"   EIGENVALUES TO A GENERAL SYSTEM."
.LC64:
	.ascii	"EXAMPLE 5 "
	.align 8
.LC65:
	.ascii	"  (THIS EXAMPLE ALLOCATES THE EIGENVALUE 8.0"
	.align 8
.LC66:
	.ascii	"  SEVEN TIMES. HOWEVER, THE COMPUTED MULTIPLE"
	.align 8
.LC67:
	.ascii	"  EIGENVALUE IS NOT ACCURATE TO MACHINE PRECISION."
	.align 8
.LC68:
	.ascii	"  THIS IS DUE TO THE FACT THAT UPPER HESSENBERG"
	.align 8
.LC69:
	.ascii	"  MATRICES WITH NON-ZERO SUBDIAGONAL ELEMENTS ARE"
	.align 8
.LC70:
	.ascii	"  DEFECTIVE IF THEY HAVE MULTIPLE EIGENVALUES. THIS"
	.align 8
.LC71:
	.ascii	"  RESULTS IN A JORDAN CANONICAL FORM WITH"
	.align 8
.LC72:
	.ascii	"  JORDAN BLOCKS AS LARGE AS THE MULTIPLICITY"
	.align 8
.LC73:
	.ascii	"  OF THE EIGENVALUES, INDICATING A MATRIX THAT"
	.align 8
.LC74:
	.ascii	"  IS ILL-CONDITIONED WITH RESPECT TO THE"
	.align 8
.LC75:
	.ascii	"  EIGENVALUE PROBLEM. THE VECTOR  F  IS ACCURATE,"
	.align 8
.LC76:
	.ascii	"  BUT THE COMPUTED EIGENVALUES FROM  DEIGVL  ARE"
	.align 8
.LC77:
	.ascii	"  NOT. THIS IS A RESULT OF THE EIGENPROBLEM"
	.align 8
.LC78:
	.ascii	"  OF  (A - B*F), AND NOT THE POLE PLACEMENT"
	.align 8
.LC79:
	.ascii	"  ALGORITHM ITSELF.  A COMPARISON OF THE SINGLE "
	.align 8
.LC80:
	.ascii	"  AND DOUBLE PRECISION VERSIONS OF THIS PROGRAM "
	.align 8
.LC81:
	.ascii	"  WILL DEMONSTRATE THIS DISTINCTION.)"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$22544, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	$5, -11220(%rbp)
	movl	-11220(%rbp), %ecx
	movl	$1, -20(%rbp)
.L177:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L247
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -5152(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -5264(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-11220(%rbp), %esi
	movl	%eax, -24(%rbp)
.L176:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L248
	cmpl	$0, -24(%rbp)
	jle	.L175
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtsi2ssl	-24(%rbp), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rdi,4), %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
.L175:
	addl	$1, -24(%rbp)
	jmp	.L176
.L248:
	nop
	addl	$1, -20(%rbp)
	jmp	.L177
.L247:
	nop
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -5152(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -5264(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$41, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$42, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$43, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$44, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$45, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$46, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$47, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L181:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L249
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$49, -22544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -22480(%rbp)
	movq	$11, -22472(%rbp)
	movl	$4096, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-11220(%rbp), %r12d
	movl	$1, -24(%rbp)
.L180:
	movl	-22560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L250
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L250
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-2528(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L180
.L250:
	nop
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L181
.L249:
	nop
	movl	$1, -8292(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11224(%rbp)
	leaq	-22032(%rbp), %r8
	leaq	-11216(%rbp), %rdi
	leaq	-5152(%rbp), %rdx
	leaq	-11220(%rbp), %rsi
	leaq	-2528(%rbp), %rax
	leaq	-8288(%rbp), %rcx
	pushq	%rcx
	leaq	-8296(%rbp), %rcx
	pushq	%rcx
	leaq	-11224(%rbp), %rcx
	pushq	%rcx
	leaq	-8292(%rbp), %rcx
	pushq	%rcx
	leaq	-7968(%rbp), %rcx
	pushq	%rcx
	leaq	-11008(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	ssevas_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$64, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$65, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$66, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L183:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L251
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$68, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8288(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	movss	-5040(%rbp,%rax,4), %xmm0
	movss	-5264(%rbp), %xmm2
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8288(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -20(%rbp)
	jmp	.L183
.L251:
	nop
	leaq	-8176(%rbp), %rdx
	leaq	-5040(%rbp), %rsi
	leaq	-11220(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	seigvl_
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$80, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$81, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$26, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$82, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L185:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L252
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$84, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L185
.L252:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$87, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$88, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$48, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$89, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$50, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$90, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$47, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$91, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$25, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$92, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -11220(%rbp)
	movl	-11220(%rbp), %ecx
	movl	$1, -20(%rbp)
.L191:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L253
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -5152(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -5264(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8288(%rbp,%rax,4)
	movl	-11220(%rbp), %esi
	movl	$1, -24(%rbp)
.L190:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L254
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L188
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtsi2ssl	-24(%rbp), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rdi,4), %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	jmp	.L189
.L188:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
.L189:
	addl	$1, -24(%rbp)
	jmp	.L190
.L254:
	nop
	addl	$1, -20(%rbp)
	jmp	.L191
.L253:
	nop
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -5152(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -5264(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -2420(%rbp)
	movss	-2316(%rbp), %xmm0
	movss	%xmm0, -4932(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$139, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$140, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$141, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$142, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$143, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$144, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$145, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L195:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L255
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$147, -22544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -22480(%rbp)
	movq	$11, -22472(%rbp)
	movl	$4096, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-11220(%rbp), %r12d
	movl	$1, -24(%rbp)
.L194:
	movl	-22560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L256
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L256
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-2528(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L194
.L256:
	nop
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L195
.L255:
	nop
	movl	$1, -8292(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11224(%rbp)
	leaq	-22032(%rbp), %r8
	leaq	-11216(%rbp), %rdi
	leaq	-5152(%rbp), %rdx
	leaq	-11220(%rbp), %rsi
	leaq	-2528(%rbp), %rax
	leaq	-8288(%rbp), %rcx
	pushq	%rcx
	leaq	-8296(%rbp), %rcx
	pushq	%rcx
	leaq	-11224(%rbp), %rcx
	pushq	%rcx
	leaq	-8292(%rbp), %rcx
	pushq	%rcx
	leaq	-7968(%rbp), %rcx
	pushq	%rcx
	leaq	-11008(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	ssevas_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$162, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$163, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$164, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L197:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L257
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$166, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8288(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	movss	-5040(%rbp,%rax,4), %xmm0
	movss	-5264(%rbp), %xmm2
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8288(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -20(%rbp)
	jmp	.L197
.L257:
	nop
	leaq	-8176(%rbp), %rdx
	leaq	-5040(%rbp), %rsi
	leaq	-11220(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	seigvl_
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$178, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$179, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$25, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$180, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L199:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L258
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$182, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L199
.L258:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$186, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$187, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$188, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$46, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$189, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$42, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$190, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$191, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -11220(%rbp)
	movl	-11220(%rbp), %ecx
	movl	$1, -20(%rbp)
.L204:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L259
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	cvtsi2ssl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -5152(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5152(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -5264(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8288(%rbp,%rax,4)
	movl	-11220(%rbp), %esi
	movl	$1, -24(%rbp)
.L203:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L260
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	.LC28(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cvtsi2ssl	-24(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$2, -24(%rbp)
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L202
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rax,4), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	.LC29(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
.L202:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rdi,4), %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L203
.L260:
	nop
	addl	$1, -20(%rbp)
	jmp	.L204
.L259:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$228, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$229, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$230, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$10, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$231, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$232, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$233, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$234, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L208:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L261
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$236, -22544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -22480(%rbp)
	movq	$11, -22472(%rbp)
	movl	$4096, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-11220(%rbp), %r12d
	movl	$1, -24(%rbp)
.L207:
	movl	-22560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L262
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L262
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-2528(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L207
.L262:
	nop
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L208
.L261:
	nop
	movl	$0, -8292(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11224(%rbp)
	leaq	-22032(%rbp), %r8
	leaq	-11216(%rbp), %rdi
	leaq	-5152(%rbp), %rdx
	leaq	-11220(%rbp), %rsi
	leaq	-2528(%rbp), %rax
	leaq	-8288(%rbp), %rcx
	pushq	%rcx
	leaq	-8296(%rbp), %rcx
	pushq	%rcx
	leaq	-11224(%rbp), %rcx
	pushq	%rcx
	leaq	-8292(%rbp), %rcx
	pushq	%rcx
	leaq	-7968(%rbp), %rcx
	pushq	%rcx
	leaq	-11008(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	ssevas_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$251, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$252, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$253, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L212:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L263
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$255, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8288(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ecx
	movl	$1, -24(%rbp)
.L211:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L264
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-5040(%rbp,%rax,4), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5264(%rbp,%rax,4), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8288(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L211
.L264:
	nop
	addl	$1, -20(%rbp)
	jmp	.L212
.L263:
	nop
	leaq	-8176(%rbp), %rdx
	leaq	-5040(%rbp), %rsi
	leaq	-11220(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	seigvl_
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$268, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$269, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$25, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$270, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L214:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L265
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$272, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L214
.L265:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$276, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$277, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$14, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-11224(%rbp), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$278, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$279, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$37, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$280, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$281, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$40, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$282, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$34, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$283, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$51, %edx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$284, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$44, %edx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$285, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$50, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$286, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$49, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$287, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$50, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$288, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$41, %edx
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$289, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$49, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$290, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$291, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$29, %edx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$292, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$47, %edx
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$293, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$294, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$46, %edx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$295, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$43, %edx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$296, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$6, -11220(%rbp)
	movl	-11220(%rbp), %ecx
	movl	$1, -20(%rbp)
.L219:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L266
	cvtsi2ssl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -5152(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5152(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -5264(%rbp,%rax,4)
	movl	-11220(%rbp), %esi
	movl	$1, -24(%rbp)
.L218:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L267
	cvtsi2ssl	-20(%rbp), %xmm1
	cvtsi2ssl	-24(%rbp), %xmm2
	movss	.LC9(%rip), %xmm0
	divss	%xmm2, %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L217
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rax,4), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	.LC49(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
.L217:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rdi,4), %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L218
.L267:
	nop
	addl	$1, -20(%rbp)
	jmp	.L219
.L266:
	nop
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -11216(%rbp)
	movss	.LC51(%rip), %xmm0
	movss	%xmm0, -11212(%rbp)
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -11208(%rbp)
	movss	.LC52(%rip), %xmm0
	movss	%xmm0, -11204(%rbp)
	movss	.LC53(%rip), %xmm0
	movss	%xmm0, -11200(%rbp)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -11196(%rbp)
	movss	.LC53(%rip), %xmm0
	movss	%xmm0, -11192(%rbp)
	movss	.LC54(%rip), %xmm0
	movss	%xmm0, -11188(%rbp)
	movss	.LC55(%rip), %xmm0
	movss	%xmm0, -11184(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11180(%rbp)
	movss	.LC56(%rip), %xmm0
	movss	%xmm0, -11176(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11172(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$336, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$337, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$338, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$10, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$339, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$340, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$341, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$342, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L223:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L268
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$344, -22544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -22480(%rbp)
	movq	$11, -22472(%rbp)
	movl	$4096, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-11220(%rbp), %r12d
	movl	$1, -24(%rbp)
.L222:
	movl	-22560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L269
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L269
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-2528(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L222
.L269:
	nop
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L223
.L268:
	nop
	movl	$0, -8292(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11224(%rbp)
	leaq	-22032(%rbp), %r8
	leaq	-11216(%rbp), %rdi
	leaq	-5152(%rbp), %rdx
	leaq	-11220(%rbp), %rsi
	leaq	-2528(%rbp), %rax
	leaq	-8288(%rbp), %rcx
	pushq	%rcx
	leaq	-8296(%rbp), %rcx
	pushq	%rcx
	leaq	-11224(%rbp), %rcx
	pushq	%rcx
	leaq	-8292(%rbp), %rcx
	pushq	%rcx
	leaq	-7968(%rbp), %rcx
	pushq	%rcx
	leaq	-11008(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	ssevas_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$359, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$360, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$361, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L227:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L270
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$363, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8288(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ecx
	movl	$1, -24(%rbp)
.L226:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L271
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-5040(%rbp,%rax,4), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5264(%rbp,%rax,4), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8288(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L226
.L271:
	nop
	addl	$1, -20(%rbp)
	jmp	.L227
.L270:
	nop
	leaq	-8176(%rbp), %rdx
	leaq	-5040(%rbp), %rsi
	leaq	-11220(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	seigvl_
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$376, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$377, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$26, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$378, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L229:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L272
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$380, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L229
.L272:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$384, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$385, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$36, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$386, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$40, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$387, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$49, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$388, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$41, %edx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$389, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$35, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$390, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$8, -11220(%rbp)
	movl	-11220(%rbp), %ecx
	movl	$1, -20(%rbp)
.L236:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L273
	movl	-11220(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$6, %eax
	jg	.L231
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	movss	.LC63(%rip), %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	jmp	.L232
.L231:
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
.L232:
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11216(%rbp,%rax,4)
	cvtsi2ssl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -5152(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5152(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -5264(%rbp,%rax,4)
	movl	-11220(%rbp), %esi
	movl	$1, -24(%rbp)
.L235:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L274
	cvtsi2ssl	-20(%rbp), %xmm1
	cvtsi2ssl	-24(%rbp), %xmm2
	movss	.LC9(%rip), %xmm0
	divss	%xmm2, %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L234
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rax,4), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	.LC49(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -2528(%rbp,%rax,4)
.L234:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-2528(%rbp,%rdi,4), %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L235
.L274:
	nop
	addl	$1, -20(%rbp)
	jmp	.L236
.L273:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$436, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$437, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$438, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$10, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$439, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$9, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$440, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$441, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$442, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L240:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L275
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$444, -22544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -22480(%rbp)
	movq	$11, -22472(%rbp)
	movl	$4096, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-11220(%rbp), %r12d
	movl	$1, -24(%rbp)
.L239:
	movl	-22560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L276
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L276
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-2528(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L239
.L276:
	nop
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L240
.L275:
	nop
	movl	$0, -8292(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11224(%rbp)
	leaq	-22032(%rbp), %r8
	leaq	-11216(%rbp), %rdi
	leaq	-5152(%rbp), %rdx
	leaq	-11220(%rbp), %rsi
	leaq	-2528(%rbp), %rax
	leaq	-8288(%rbp), %rcx
	pushq	%rcx
	leaq	-8296(%rbp), %rcx
	pushq	%rcx
	leaq	-11224(%rbp), %rcx
	pushq	%rcx
	leaq	-8292(%rbp), %rcx
	pushq	%rcx
	leaq	-7968(%rbp), %rcx
	pushq	%rcx
	leaq	-11008(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	ssevas_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$459, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$460, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$16, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$461, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L244:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L277
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$463, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8288(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ecx
	movl	$1, -24(%rbp)
.L243:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L278
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movss	-5040(%rbp,%rax,4), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-5264(%rbp,%rax,4), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8288(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, -5040(%rbp,%rax,4)
	addl	$1, -24(%rbp)
	jmp	.L243
.L278:
	nop
	addl	$1, -20(%rbp)
	jmp	.L244
.L277:
	nop
	leaq	-8176(%rbp), %rdx
	leaq	-5040(%rbp), %rsi
	leaq	-11220(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rdi
	call	seigvl_
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$476, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$477, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$26, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$478, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-11220(%rbp), %ebx
	movl	$1, -20(%rbp)
.L246:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L279
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$480, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-22560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L246
.L279:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$484, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$485, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$44, %edx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$486, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$487, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$50, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$488, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$47, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$489, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$49, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$490, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$51, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$491, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$41, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$492, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$44, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$493, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$46, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$494, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$40, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$495, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$49, %edx
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$496, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$48, %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$497, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$43, %edx
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$498, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$43, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$499, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$48, %edx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$500, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$48, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$501, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movl	$37, %edx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -22552(%rbp)
	movl	$502, -22544(%rbp)
	movl	$128, -22560(%rbp)
	movl	$6, -22556(%rbp)
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-22560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE4:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB5:
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
	leaq	options.168.4634(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.globl	isamax_
	.type	isamax_, @function
isamax_:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L283
	movl	-16(%rbp), %eax
	jmp	.L294
.L283:
	movl	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L285
	movl	-16(%rbp), %eax
	jmp	.L294
.L285:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L295
	movl	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L287
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L287:
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -4(%rbp)
.L290:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L296
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L297
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-32(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L289
.L297:
	nop
.L289:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L290
.L296:
	nop
	movl	-16(%rbp), %eax
	jmp	.L294
.L295:
	nop
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$2, -4(%rbp)
.L293:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L298
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L299
	movl	-4(%rbp), %edx
	movl	%edx, -16(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	jmp	.L292
.L299:
	nop
.L292:
	addl	$1, -4(%rbp)
	jmp	.L293
.L298:
	nop
	movl	-16(%rbp), %eax
.L294:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	isamax_, .-isamax_
	.globl	sasum_
	.type	sasum_, @function
sasum_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L301
	movss	-24(%rbp), %xmm0
	jmp	.L312
.L301:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L313
	movl	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L304
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L304:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L306:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L314
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L306
.L314:
	nop
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	jmp	.L312
.L313:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movslq	%edx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L307
	movl	-16(%rbp), %edx
	movl	$1, -4(%rbp)
.L309:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L315
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L309
.L315:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jle	.L316
.L307:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%edx, %esi
	movl	$2863311531, %edx
	imulq	%rsi, %rdx
	shrq	$32, %rdx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L316
.L311:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	addss	-12(%rbp), %xmm1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$6, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L316
	jmp	.L311
.L316:
	nop
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
.L312:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sasum_, .-sasum_
	.globl	saxpy_
	.type	saxpy_, @function
saxpy_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L317
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L320
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L317
.L320:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L332
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L323
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L323:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L324
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L324:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L326:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L333
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L326
.L333:
	nop
	jmp	.L317
.L332:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L327
	movl	-16(%rbp), %edx
	movl	$1, -4(%rbp)
.L329:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L334
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L329
.L334:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L317
.L327:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L335
.L331:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm2
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$4, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L335
	jmp	.L331
.L335:
	nop
	nop
.L317:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	saxpy_, .-saxpy_
	.globl	scopy_
	.type	scopy_, @function
scopy_:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L336
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L349
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L340
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L340:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L341
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L341:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L343:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L350
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L343
.L350:
	nop
	jmp	.L336
.L349:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	imulq	$-1840700269, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	sall	$3, %edx
	subl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L344
	movl	-16(%rbp), %edx
	movl	$1, -4(%rbp)
.L346:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L351
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L346
.L351:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jle	.L336
.L344:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	imulq	$613566757, %rdx, %rdx
	shrq	$32, %rdx
	subl	%edx, %esi
	shrl	%esi
	addl	%esi, %edx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L352
.L348:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-4(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$7, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L352
	jmp	.L348
.L352:
	nop
	nop
.L336:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	scopy_, .-scopy_
	.globl	sdot_
	.type	sdot_, @function
sdot_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L354
	movss	-28(%rbp), %xmm0
	jmp	.L366
.L354:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L367
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L357
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L357:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L358
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L358:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L360:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L368
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L360
.L368:
	nop
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	jmp	.L366
.L367:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	%ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L361
	movl	-20(%rbp), %edx
	movl	$1, -4(%rbp)
.L363:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L369
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L363
.L369:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L370
.L361:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%edx, %esi
	movl	$3435973837, %edx
	imulq	%rsi, %rdx
	shrq	$32, %rdx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L370
.L365:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	addss	-16(%rbp), %xmm1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	addl	$5, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L370
	jmp	.L365
.L370:
	nop
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
.L366:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sdot_, .-sdot_
	.section	.rodata
	.align 8
.LC82:
	.string	"Assigned label is not a target label"
	.align 8
.LC83:
	.string	"At line 811 of file 718-programsample21.f"
	.text
	.globl	snrm2_
	.type	snrm2_, @function
snrm2_:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$-2, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L395
	movss	zero.4840(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	jmp	.L373
.L395:
	nop
	movq	$-1, -16(%rbp)
	leaq	.L374(%rip), %rax
	movq	%rax, -24(%rbp)
	movss	zero.4840(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L392
.L401:
	nop
.L392:
	cmpq	$-1, -16(%rbp)
	je	.L375
	leaq	.LC82(%rip), %rsi
	leaq	.LC83(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L375:
	movq	-24(%rbp), %rax
	nop
	jmp	*%rax
.L374:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	cutlo.4829(%rip), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L396
	movq	$-1, -16(%rbp)
	leaq	.L379(%rip), %rax
	movq	%rax, -24(%rbp)
	movss	zero.4840(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
.L379:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	zero.4840(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L394
	ucomiss	%xmm1, %xmm0
	je	.L380
.L394:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	cutlo.4829(%rip), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L396
	movq	$-1, -16(%rbp)
	leaq	.L382(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L383
.L400:
	nop
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	$-1, -16(%rbp)
	leaq	.L384(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	-28(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
.L383:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L385
.L382:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	cutlo.4829(%rip), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L397
.L384:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L398
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	-32(%rbp), %xmm0
	divss	%xmm1, %xmm0
	mulss	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-28(%rbp), %xmm1
	movss	one.4837(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L380
.L398:
	nop
.L385:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	divss	-32(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L380
.L397:
	nop
	movss	-28(%rbp), %xmm0
	mulss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L377
.L396:
	nop
.L377:
	movss	cuthi.4828(%rip), %xmm0
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-4(%rbp), %ecx
	movl	-36(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	movl	%ecx, -8(%rbp)
	testl	%esi, %esi
	jns	.L387
	movl	%ecx, %edx
	movl	%edi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%esi, %edx
	negl	%edx
	movl	%edx, %r8d
	movl	$0, %edx
	divl	%r8d
	cmpl	%ecx, %edi
	jg	.L399
	jmp	.L391
.L387:
	movl	%edi, %edx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%esi, %r9d
	movl	$0, %edx
	divl	%r9d
	cmpl	%ecx, %edi
	jl	.L399
.L391:
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	-40(%rbp), %xmm0
	jnb	.L400
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	mulss	%xmm0, %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	addl	%esi, -8(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L399
	jmp	.L391
.L399:
	nop
	movss	-28(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	jmp	.L373
.L380:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L401
	movss	-28(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	mulss	-32(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
.L373:
	movss	-44(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	snrm2_, .-snrm2_
	.globl	sscal_
	.type	sscal_, @function
sscal_:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L402
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L414
	movl	$1, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L406
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L406:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L408:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L415
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L408
.L415:
	nop
	jmp	.L402
.L414:
	nop
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	%ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L409
	movl	-12(%rbp), %edx
	movl	$1, -4(%rbp)
.L411:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L416
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L411
.L416:
	nop
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L402
.L409:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
	movl	%ecx, %esi
	movl	%eax, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	movl	%edx, %esi
	movl	$3435973837, %edx
	imulq	%rsi, %rdx
	shrq	$32, %rdx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L417
.L413:
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$5, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L417
	jmp	.L413
.L417:
	nop
	nop
.L402:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sscal_, .-sscal_
	.section	.rodata
	.align 16
	.type	options.168.4634, @object
	.size	options.168.4634, 28
options.168.4634:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.local	zero.4840
	.comm	zero.4840,4,4
	.data
	.align 4
	.type	cutlo.4829, @object
	.size	cutlo.4829, 4
cutlo.4829:
	.long	637534412
	.align 4
	.type	one.4837, @object
	.size	one.4837, 4
one.4837:
	.long	1065353216
	.align 4
	.type	cuthi.4828, @object
	.size	cuthi.4828, 4
cuthi.4828:
	.long	1597306723
	.section	.rodata
	.align 16
.LC3:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC4:
	.long	1061158912
	.align 4
.LC5:
	.long	1054867456
	.align 16
.LC6:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC7:
	.long	1073741824
	.align 4
.LC8:
	.long	1098907648
	.align 4
.LC9:
	.long	1065353216
	.align 4
.LC10:
	.long	1064514355
	.align 4
.LC28:
	.long	1077936128
	.align 4
.LC29:
	.long	1101004800
	.align 4
.LC49:
	.long	1097859072
	.align 4
.LC50:
	.long	1088421888
	.align 4
.LC51:
	.long	1105199104
	.align 4
.LC52:
	.long	3252682752
	.align 4
.LC53:
	.long	3245342720
	.align 4
.LC54:
	.long	3248488448
	.align 4
.LC55:
	.long	1115422720
	.align 4
.LC56:
	.long	3250585600
	.align 4
.LC63:
	.long	1090519040
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
