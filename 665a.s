	.file	"665a.f"
	.text
	.section	.rodata
	.align 4
.LC0:
	.long	1
	.text
	.globl	machar_
	.type	machar_, @function
machar_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	leaq	.LC0(%rip), %rdi
	call	conv_@PLT
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-44(%rbp), %xmm0
	subss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.L2:
	movss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L44
	ucomiss	-52(%rbp), %xmm0
	je	.L2
.L44:
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L4
.L52:
	nop
.L4:
	movss	-8(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.L52
	movq	-104(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	conv_@PLT
	movd	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L5:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movss	-8(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L45
	ucomiss	-52(%rbp), %xmm0
	je	.L5
.L45:
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movss	-68(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-4(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L46
	ucomiss	-52(%rbp), %xmm0
	je	.L7
.L46:
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
.L7:
	movss	-4(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-76(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movss	-56(%rbp), %xmm0
	subss	-76(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	setp	%al
	movzbl	%al, %eax
	movl	$1, %ecx
	ucomiss	-52(%rbp), %xmm0
	cmovne	%ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L9
	movq	-120(%rbp), %rax
	movl	$2, (%rax)
.L9:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	leal	3(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	movss	-44(%rbp), %xmm0
	divss	-68(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -12(%rbp)
.L11:
	cmpl	%eax, -12(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L53
	movss	-4(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L11
.L53:
	nop
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L13:
	movss	-44(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L12
	ucomiss	-52(%rbp), %xmm0
	jne	.L54
	movss	-4(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L13
.L54:
	nop
.L12:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	movq	48(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L14
	movss	-44(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-44(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L47
	ucomiss	-52(%rbp), %xmm0
	je	.L14
.L47:
	movq	48(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L14:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	$-3, %edx
	subl	%eax, %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.L17:
	movss	-44(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L16
	ucomiss	-52(%rbp), %xmm0
	jne	.L55
	movss	-4(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L17
.L55:
	nop
.L16:
	movq	40(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	40(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-44(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	movss	-76(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L18
	movss	-44(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-44(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	jp	.L48
	ucomiss	-52(%rbp), %xmm0
	je	.L18
.L48:
	movq	40(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L18:
	movq	-128(%rbp), %rax
	movl	$0, (%rax)
	movq	40(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-44(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movss	-56(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	ucomiss	-52(%rbp), %xmm0
	setp	%al
	movzbl	%al, %eax
	movl	$1, %ecx
	ucomiss	-52(%rbp), %xmm0
	cmovne	%ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L20
	movq	-128(%rbp), %rax
	movl	$1, (%rax)
.L20:
	movl	$0, -12(%rbp)
	movl	$1, -24(%rbp)
	movss	-80(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	40(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-44(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movl	$0, -32(%rbp)
.L23:
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-84(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	ucomiss	-52(%rbp), %xmm0
	cmove	%eax, %edx
	movss	-40(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	comiss	-36(%rbp), %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L56
	movss	-56(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L49
	ucomiss	-40(%rbp), %xmm0
	je	.L21
.L49:
	addl	$1, -12(%rbp)
	sall	-24(%rbp)
	jmp	.L23
.L56:
	nop
.L21:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	je	.L57
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	jmp	.L29
.L57:
	nop
	movq	16(%rbp), %rax
	movl	$2, (%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
.L27:
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L58
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L27
.L58:
	nop
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L29
.L60:
	nop
.L29:
	movq	56(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movss	-36(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-84(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	ucomiss	-52(%rbp), %xmm0
	cmove	%eax, %edx
	movss	-36(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L59
	addl	$1, -24(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	mulss	-68(%rbp), %xmm0
	ucomiss	-36(%rbp), %xmm0
	jp	.L29
	ucomiss	-36(%rbp), %xmm0
	jne	.L60
	movl	$3, -32(%rbp)
	movq	56(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L28
.L59:
	nop
.L28:
	movl	-24(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movq	24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	addl	%eax, %eax
	cmpl	%eax, -28(%rbp)
	setge	%al
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L61
	sall	-28(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L30
.L61:
	nop
.L30:
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L31
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	-2(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L31:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L32
	movq	32(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L32:
	movq	32(%rbp), %rax
	movl	(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L33
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L33:
	cmpl	$20, -12(%rbp)
	jle	.L34
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L34:
	movss	-4(%rbp), %xmm0
	ucomiss	-36(%rbp), %xmm0
	jp	.L50
	movss	-4(%rbp), %xmm0
	ucomiss	-36(%rbp), %xmm0
	je	.L35
.L50:
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	leal	-2(%rax), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
.L35:
	movq	48(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-44(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	64(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-44(%rbp), %xmm0
	movq	64(%rbp), %rax
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L51
	ucomiss	%xmm1, %xmm0
	je	.L37
.L51:
	movq	48(%rbp), %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-68(%rbp), %xmm1
	movss	-44(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movss	%xmm0, (%rax)
.L37:
	movq	64(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-68(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-68(%rbp), %xmm2
	movq	56(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	32(%rbp), %rax
	movl	(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	addl	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L62
	movl	-12(%rbp), %eax
	movl	$1, -20(%rbp)
.L42:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L62
	movq	-104(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	$2, %edx
	jne	.L40
	movq	64(%rbp), %rdx
	movss	(%rdx), %xmm0
	addss	%xmm0, %xmm0
	movq	64(%rbp), %rdx
	movss	%xmm0, (%rdx)
.L40:
	movq	-104(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	$2, %edx
	je	.L41
	movq	64(%rbp), %rdx
	movss	(%rdx), %xmm0
	mulss	-68(%rbp), %xmm0
	movq	64(%rbp), %rdx
	movss	%xmm0, (%rdx)
.L41:
	addl	$1, -20(%rbp)
	jmp	.L42
.L62:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	machar_, .-machar_
	.section	.rodata
.LC2:
	.string	"665a.f"
.LC3:
	.ascii	"(18H1GOING INTO MACHAR/)"
	.align 8
.LC4:
	.ascii	"(19H OUTPUT FROM MACHAR//7H BETA =,I5/7H    T =,I5/         "
	.ascii	"   7H  RND =,I5/7H NGRD =,I5/9H MACHEP =,I5/8H NEGEP =,I5/  "
	.ascii	"         7H IEXP =,I5/9H MINEXP =,I5/9H MAXEXP =,I5/6H EPS ="
	.ascii	",              E25.13/9H EPSNEG =,E25.13/7H XMIN =,E25.13/  "
	.ascii	"                     7H XMAX =,E25.13)"
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
	subq	$592, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$277, -576(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$24, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-40(%rbp), %r9
	leaq	-28(%rbp), %r8
	leaq	-44(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-12(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	leaq	-52(%rbp), %rdi
	pushq	%rdi
	leaq	-8(%rbp), %rdi
	pushq	%rdi
	leaq	-4(%rbp), %rdi
	pushq	%rdi
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	leaq	-36(%rbp), %rdi
	pushq	%rdi
	leaq	-16(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	machar_
	addq	$64, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$281, -576(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$278, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-20(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-44(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-16(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-52(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-48(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
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
	leaq	options.2.3985(%rip), %rsi
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
	.type	options.2.3985, @object
	.size	options.2.3985, 28
options.2.3985:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
