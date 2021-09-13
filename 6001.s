	.file	"6001.f"
	.text
	.globl	quinat_
	.type	quinat_, @function
quinat_:
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
	subq	$136, %rsp
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
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L42
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -40(%rbp)
	movq	-192(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-192(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-192(%rbp), %rax
	movss	8(%rax), %xmm0
	movq	-192(%rbp), %rax
	movss	4(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-64(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-48(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-224(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-224(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 4(%rax)
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	jp	.L37
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	je	.L3
.L37:
	movss	-48(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-224(%rbp), %rax
	movss	%xmm0, 4(%rax)
.L3:
	cmpl	$1, -40(%rbp)
	jle	.L43
	movl	-40(%rbp), %eax
	movl	$2, -36(%rbp)
.L8:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L43
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-36(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-64(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-48(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L6
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L44
	nop
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	24(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.L7
.L44:
	nop
.L6:
	movss	-52(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-44(%rbp), %xmm0
	mulss	-64(%rbp), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	-144(%rbp), %xmm0
	mulss	-60(%rbp), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	-56(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-224(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm2
	movss	-48(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm6
	movss	-148(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-148(%rbp), %xmm1
	movss	-44(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	-148(%rbp), %xmm4
	movss	.LC3(%rip), %xmm3
	mulss	%xmm3, %xmm4
	movss	-52(%rbp), %xmm5
	movss	.LC4(%rip), %xmm3
	mulss	%xmm5, %xmm3
	addss	%xmm4, %xmm3
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm1
	movss	-140(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movaps	%xmm0, %xmm3
	movss	.LC5(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	-148(%rbp), %xmm4
	movss	.LC6(%rip), %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm3, %xmm0
	addss	-52(%rbp), %xmm0
	addss	-52(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	addss	%xmm1, %xmm0
	mulss	%xmm0, %xmm6
	movaps	%xmm6, %xmm1
	movss	-152(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	%xmm2, %xmm0
	movq	-224(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm2
	movss	-56(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-144(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	%xmm2, %xmm0
	movq	-224(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movss	-144(%rbp), %xmm2
	movss	.LC7(%rip), %xmm0
	mulss	%xmm0, %xmm2
	movss	-60(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	mulss	-52(%rbp), %xmm0
	movss	-152(%rbp), %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	divss	%xmm1, %xmm0
	movq	16(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm2
	movss	-64(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-144(%rbp), %xmm1
	movss	-60(%rbp), %xmm3
	movss	.LC7(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	-144(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	addss	-44(%rbp), %xmm0
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	mulss	-52(%rbp), %xmm0
	movss	-152(%rbp), %xmm1
	mulss	-144(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	%xmm2, %xmm0
	movq	16(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	-56(%rbp), %xmm0
	divss	-152(%rbp), %xmm0
	movq	24(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L7:
	addl	$1, -36(%rbp)
	jmp	.L8
.L43:
	nop
	pxor	%xmm0, %xmm0
	ucomiss	-64(%rbp), %xmm0
	jp	.L38
	pxor	%xmm0, %xmm0
	ucomiss	-64(%rbp), %xmm0
	je	.L9
.L38:
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-224(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movss	-64(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-68(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm2, %xmm0
	movq	-224(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
.L9:
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	$2, -36(%rbp)
.L14:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L45
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L12
	ucomiss	%xmm1, %xmm0
	jne	.L46
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-200(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-208(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-200(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-200(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.L13
.L46:
	nop
.L12:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-200(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-200(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-208(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L13:
	addl	$1, -36(%rbp)
	jmp	.L14
.L45:
	nop
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	$3, -36(%rbp)
.L18:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L47
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L16
	ucomiss	%xmm1, %xmm0
	jne	.L48
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	.LC8(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-216(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-208(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.L17
.L48:
	nop
.L16:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-216(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L17:
	addl	$1, -36(%rbp)
	jmp	.L18
.L47:
	nop
	cmpl	$1, -40(%rbp)
	jle	.L49
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-216(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-216(%rbp), %rax
	movss	12(%rax), %xmm0
	movq	-216(%rbp), %rax
	movss	8(%rax), %xmm1
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-224(%rbp), %rax
	movss	4(%rax), %xmm1
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-224(%rbp), %rax
	movss	%xmm0, 4(%rax)
	cmpl	$2, -40(%rbp)
	jle	.L49
	movl	-40(%rbp), %edx
	movl	$3, -36(%rbp)
.L20:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L49
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-224(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-224(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	24(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	-44(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	-48(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-224(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	24(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	-48(%rbp), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	subl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	-44(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	-48(%rbp), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-224(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	24(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L20
.L49:
	nop
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-216(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-216(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L50
	movq	-184(%rbp), %rax
	movl	(%rax), %edx
	movl	$4, -40(%rbp)
.L22:
	cmpl	%edx, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L50
	subl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	24(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-216(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-224(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -40(%rbp)
	jmp	.L22
.L50:
	nop
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-192(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-192(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-192(%rbp), %rax
	movss	8(%rax), %xmm0
	movq	-192(%rbp), %rax
	movss	4(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-208(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	-48(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-48(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L23
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L51
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	jmp	.L24
.L51:
	nop
.L23:
	movq	-216(%rbp), %rax
	movss	4(%rax), %xmm0
	divss	-60(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-76(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.L24:
	movq	24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	jp	.L39
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	je	.L25
.L39:
	movss	-76(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movq	24(%rbp), %rax
	movss	%xmm0, (%rax)
.L25:
	movl	-40(%rbp), %eax
	movl	$2, -36(%rbp)
.L35:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L52
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-36(%rbp), %edx
	cmpl	-40(%rbp), %edx
	je	.L28
	movl	-36(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-192(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
.L28:
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	-48(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-48(%rbp), %xmm0
	addss	-64(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-72(%rbp), %xmm0
	movss	%xmm0, -164(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	jp	.L40
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	je	.L29
.L40:
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-216(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-216(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	-60(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.L29:
	movss	-76(%rbp), %xmm0
	movss	%xmm0, -168(%rbp)
	movss	-72(%rbp), %xmm0
	subss	-164(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-144(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L31
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L53
	nop
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-216(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-216(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	24(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.L32
.L53:
	nop
.L31:
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	24(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	24(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	jp	.L41
	pxor	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	je	.L33
.L41:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	-76(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movq	24(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L33:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	-164(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	16(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-216(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	-48(%rbp), %xmm1
	mulss	-164(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-224(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	movss	-44(%rbp), %xmm0
	subss	-48(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm3
	movss	-168(%rbp), %xmm0
	subss	%xmm3, %xmm0
	mulss	-160(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	addss	-76(%rbp), %xmm1
	mulss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	divss	-144(%rbp), %xmm0
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	%xmm2, %xmm0
	movq	-216(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	-76(%rbp), %xmm1
	mulss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	mulss	-44(%rbp), %xmm2
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-208(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	-168(%rbp), %xmm1
	mulss	-160(%rbp), %xmm1
	subss	%xmm1, %xmm0
	mulss	-48(%rbp), %xmm0
	addss	%xmm2, %xmm0
	divss	-144(%rbp), %xmm0
	movss	-44(%rbp), %xmm1
	movaps	%xmm1, %xmm2
	mulss	-48(%rbp), %xmm2
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-224(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm3
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm4
	movss	-48(%rbp), %xmm1
	subss	-44(%rbp), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	subss	%xmm1, %xmm0
	movq	-208(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L32:
	addl	$1, -36(%rbp)
	jmp	.L35
.L52:
	nop
	movq	-192(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-192(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	24(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-44(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -164(%rbp)
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-224(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-216(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	-164(%rbp), %xmm2
	movss	.LC11(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-216(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-164(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-156(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movq	-208(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-192(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-192(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-48(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	-48(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-224(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-216(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	-72(%rbp), %xmm2
	movss	.LC11(%rip), %xmm0
	mulss	%xmm2, %xmm0
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-208(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-216(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	subss	-72(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-208(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L2
.L42:
	nop
.L2:
	nop
	addq	$136, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	quinat_, .-quinat_
	.globl	quindf_
	.type	quindf_, @function
quindf_:
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
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L63
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-124(%rbp), %edx
	movl	$1, -48(%rbp)
.L57:
	cmpl	%edx, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	movss	-128(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-44(%rbp), %xmm0
	addss	-128(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm1, %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	mulss	-132(%rbp), %xmm0
	movss	-128(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-132(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -140(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-132(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-136(%rbp), %xmm0
	subss	-56(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-140(%rbp), %xmm1
	subss	-60(%rbp), %xmm1
	movaps	%xmm1, %xmm2
	movss	.LC10(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	addss	-144(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-64(%rbp), %xmm1
	movss	-40(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-192(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movss	-128(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-128(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-136(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-140(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-144(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	addl	$1, -48(%rbp)
	jmp	.L57
.L64:
	nop
	movss	-60(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm2
	movss	.LC11(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	addss	-64(%rbp), %xmm1
	movss	-40(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movss	-44(%rbp), %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-124(%rbp), %edx
	movl	$1, -52(%rbp)
.L59:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L65
	subl	$1, -48(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-192(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-192(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -52(%rbp)
	jmp	.L59
.L65:
	nop
	movl	-124(%rbp), %edx
	movl	$1, -48(%rbp)
.L61:
	cmpl	%edx, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L66
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-192(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -128(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	mulss	-128(%rbp), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	mulss	-128(%rbp), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-128(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	mulss	-128(%rbp), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-128(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -140(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-184(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-128(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-136(%rbp), %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-140(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-136(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-144(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	subss	-64(%rbp), %xmm0
	movss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-64(%rbp), %xmm0
	mulss	-128(%rbp), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	-128(%rbp), %xmm0
	movq	24(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	-60(%rbp), %xmm0
	mulss	-128(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	-64(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	subss	-60(%rbp), %xmm0
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	-136(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -48(%rbp)
	jmp	.L61
.L66:
	nop
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-192(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L55
.L63:
	nop
.L55:
	nop
	addq	$104, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	quindf_, .-quindf_
	.globl	quineq_
	.type	quineq_, @function
quineq_:
.LFB2:
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
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L76
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	subl	$3, %eax
	movl	%eax, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-40(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	cmpl	$0, -40(%rbp)
	jle	.L77
	movl	-40(%rbp), %edx
	movl	$1, -36(%rbp)
.L71:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L78
	movss	-44(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	-116(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-52(%rbp), %xmm1
	movss	.LC13(%rip), %xmm0
	subss	%xmm1, %xmm0
	subss	-48(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	.LC9(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	.LC14(%rip), %xmm0
	subss	-116(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	movss	.LC7(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	-116(%rbp), %xmm1
	mulss	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	-48(%rbp), %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-152(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -56(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L71
.L78:
	nop
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movl	$4, -40(%rbp)
.L72:
	cmpl	%edx, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L77
	subl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-152(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -40(%rbp)
	jmp	.L72
.L77:
	nop
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-168(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -120(%rbp)
	movl	-40(%rbp), %edx
	movl	$2, -36(%rbp)
.L74:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L79
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-44(%rbp), %xmm0
	subss	-48(%rbp), %xmm0
	subss	-48(%rbp), %xmm0
	movss	-52(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movss	-48(%rbp), %xmm0
	subss	-44(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movss	-116(%rbp), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movss	-44(%rbp), %xmm0
	addss	-48(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	addss	%xmm1, %xmm0
	addss	-56(%rbp), %xmm0
	subss	-60(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	-116(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-144(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	subss	-56(%rbp), %xmm0
	subss	-60(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-168(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm1, %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L74
.L79:
	nop
	movq	16(%rbp), %rax
	movss	-120(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-160(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	-120(%rbp), %xmm2
	movss	.LC11(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-144(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movq	-160(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	subss	-120(%rbp), %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	-60(%rbp), %xmm2
	movss	.LC11(%rip), %xmm0
	mulss	%xmm2, %xmm0
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	addss	%xmm1, %xmm0
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	subss	-60(%rbp), %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L68
.L76:
	nop
.L68:
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
.LFE2:
	.size	quineq_, .-quineq_
	.section	.rodata
.LC15:
	.string	"6001.f"
	.align 8
.LC16:
	.ascii	"(50H1         TEST OF QUINAT WITH NONEQUIDISTANT KNOTS)"
.LC23:
	.ascii	"(5H-N = ,I3,7H    M =,I2)"
	.align 8
.LC24:
	.ascii	"(40H ---------------------------------------,I3,            "
	.ascii	"  45H --------------------------------------------)"
.LC25:
	.ascii	"(F12.8)"
.LC26:
	.ascii	"(6F16.8)"
	.align 8
.LC28:
	.ascii	"(41H  MAXIMUM ABSOLUTE VALUES OF DIFFERENCES )"
.LC29:
	.ascii	"(5E18.9)"
	.align 8
.LC30:
	.ascii	"(42H  MAXIMUM ABSOLUTE VALUES OF COEFFICIENTS )"
.LC31:
	.ascii	"(5F16.8)"
	.align 8
.LC32:
	.ascii	"(40H ---------------------------------------,I3,            "
	.ascii	"       45H --------------------------------------------)"
.LC33:
	.ascii	"(18H1   TEST OF QUINEQ)"
	.align 8
.LC34:
	.ascii	"(50H1         TEST OF QUINDF WITH NONEQUIDISTANT KNOTS)"
	.align 8
.LC39:
	.ascii	"(50H1  TEST OF QUINAT WITH NONEQUIDISTANT DOUBLE KNOTS)"
	.align 8
.LC40:
	.ascii	"(51H1         TEST OF QUINAT WITH NONEQUIDISTANT KNOTS,)"
	.align 8
.LC41:
	.ascii	"(40H             ONE DOUBLE, ONE TRIPLE KNOT)"
	.align 8
.LC43:
	.ascii	"(40H             TWO DOUBLE, ONE TRIPLE KNOT)"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$11896, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	$6, -48(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$454, -11904(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$55, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -9788(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -10592(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10588(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10584(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10580(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -10576(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -11392(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -11388(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -11384(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -11380(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -11376(%rbp)
	movl	$3, -9784(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$470, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L82:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L413
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L82
.L413:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L84:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L414
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L84
.L414:
	nop
	movl	-9788(%rbp), %r12d
	movl	$1, -9780(%rbp)
.L105:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L415
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L87:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L416
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L87
.L416:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$489, -11904(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$111, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$492, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L88
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$494, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L88:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L415
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$496, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L90:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L417
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L417
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L90
.L417:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L94:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L418
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L92
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L92:
	addl	$1, -36(%rbp)
	jmp	.L94
.L418:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L98:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L419
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L97:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L420
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L97
.L420:
	nop
	addl	$1, -36(%rbp)
	jmp	.L98
.L419:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$507, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L100:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L421
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L421
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L100
.L421:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L104:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L422
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L102
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L102
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L102:
	addl	$1, -36(%rbp)
	jmp	.L104
.L422:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L105
.L415:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$514, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$516, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L107:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L423
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L423
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L107
.L423:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$518, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L108
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L108:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$521, -11904(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L111:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L424
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L424
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L111
.L424:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$3, -9784(%rbp)
	movl	$10, -9788(%rbp)
	movl	$9, %ebx
.L149:
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-9788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movl	$1, -36(%rbp)
	movl	%edx, %eax
	subl	$1, %eax
	shrl	%eax
	testl	%edx, %edx
	jle	.L425
.L113:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	cvtsi2ssl	-36(%rbp), %xmm0
	movss	%xmm0, -10592(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -10592(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -11392(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11392(%rbp,%rdx,4)
	addl	$2, -36(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L425
	jmp	.L113
.L425:
	nop
	movl	-9788(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L426
	movl	-9788(%rbp), %edx
	movl	-9788(%rbp), %eax
	cltq
	subq	$1, %rax
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -10592(%rbp,%rax,4)
	movl	-9788(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -11392(%rbp,%rax,4)
	jmp	.L114
.L426:
	nop
.L114:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$538, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L116:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L427
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L116
.L427:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L118:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L428
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L118
.L428:
	nop
	movl	-9788(%rbp), %r13d
	movl	$1, -9780(%rbp)
.L141:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L429
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L121:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L430
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L121
.L430:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L122
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$558, -11904(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$116, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$561, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L122
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$563, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L122:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L429
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L123
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$566, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L125:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L431
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L431
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L125
.L431:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L123:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L129:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L432
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L127
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L127:
	addl	$1, -36(%rbp)
	jmp	.L129
.L432:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L133:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L433
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L132:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L434
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L132
.L434:
	nop
	addl	$1, -36(%rbp)
	jmp	.L133
.L433:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L134
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$577, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L136:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L435
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L435
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L136
.L435:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L134:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L140:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L436
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L138
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L138
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L138:
	addl	$1, -36(%rbp)
	jmp	.L140
.L436:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L141
.L429:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$584, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$586, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L143:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L437
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L437
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L143
.L437:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$588, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L144
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L144:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$591, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L147:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L438
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L438
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L147
.L438:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9788(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -9788(%rbp)
	movl	%ebx, %eax
	subl	$1, %ebx
	testl	%eax, %eax
	je	.L439
	jmp	.L149
.L439:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$598, -11904(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$23, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$3, -9784(%rbp)
	movl	$10, -9788(%rbp)
	movl	$9, %ebx
.L187:
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-9788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edx
	movl	$1, -36(%rbp)
	movl	%edx, %eax
	subl	$1, %eax
	shrl	%eax
	testl	%edx, %edx
	jle	.L440
.L151:
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	cvtsi2ssl	-36(%rbp), %xmm0
	movss	%xmm0, -10592(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -10592(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -11392(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11392(%rbp,%rdx,4)
	addl	$2, -36(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L440
	jmp	.L151
.L440:
	nop
	movl	-9788(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L441
	movl	-9788(%rbp), %edx
	movl	-9788(%rbp), %eax
	cltq
	subq	$1, %rax
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -10592(%rbp,%rax,4)
	movl	-9788(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -11392(%rbp,%rax,4)
	jmp	.L152
.L441:
	nop
.L152:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$615, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8976(%rbp), %r9
	leaq	-8144(%rbp), %r8
	leaq	-7312(%rbp), %rcx
	leaq	-6480(%rbp), %rdx
	leaq	-11392(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	subq	$8, %rsp
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quineq_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L154:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L442
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L154
.L442:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L156:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L443
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L156
.L443:
	nop
	movl	-9788(%rbp), %r13d
	movl	$1, -9780(%rbp)
.L179:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L444
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L159:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L445
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L159
.L445:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L160
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$635, -11904(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$116, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$638, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L160
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$640, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L160:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L444
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L161
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$643, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L163:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L446
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L446
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L163
.L446:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L161:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L167:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L447
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L165
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L165:
	addl	$1, -36(%rbp)
	jmp	.L167
.L447:
	nop
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L171:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L448
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L170:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L449
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L170
.L449:
	nop
	addl	$1, -36(%rbp)
	jmp	.L171
.L448:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L172
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$654, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L174:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L450
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L450
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L174
.L450:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L172:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L178:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L451
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L176
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L176
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L176:
	addl	$1, -36(%rbp)
	jmp	.L178
.L451:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L179
.L444:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$661, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$663, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L181:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L452
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L452
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L181
.L452:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$665, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L182
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L182:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$668, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L185:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L453
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L453
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L185
.L453:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9788(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -9788(%rbp)
	movl	%ebx, %eax
	subl	$1, %ebx
	testl	%eax, %eax
	je	.L454
	jmp	.L187
.L454:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$675, -11904(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$55, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -9788(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -10592(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10588(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10584(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10580(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -10576(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -11392(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -11388(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -11384(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -11380(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -11376(%rbp)
	movss	.LC35(%rip), %xmm0
	movss	%xmm0, -5680(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -5676(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -5672(%rbp)
	movss	.LC36(%rip), %xmm0
	movss	%xmm0, -5668(%rbp)
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, -5664(%rbp)
	movl	$3, -9784(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$696, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-5680(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quindf_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L189:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L455
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-5680(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L189
.L455:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L191:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L456
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L191
.L456:
	nop
	movl	-9788(%rbp), %r12d
	movl	$1, -9780(%rbp)
.L212:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L457
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L194:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L458
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L194
.L458:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$715, -11904(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$111, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$718, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L195
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$720, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L195:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L457
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$722, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L197:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L459
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L459
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L197
.L459:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L201:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L460
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L199
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L199:
	addl	$1, -36(%rbp)
	jmp	.L201
.L460:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L205:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L461
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L204:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L462
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L204
.L462:
	nop
	addl	$1, -36(%rbp)
	jmp	.L205
.L461:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$733, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L207:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L463
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L463
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L207
.L463:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L211:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L464
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L209
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L209
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L209:
	addl	$1, -36(%rbp)
	jmp	.L211
.L464:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L212
.L457:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$740, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$742, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L214:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L465
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L465
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L214
.L465:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$744, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L215
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L215:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$747, -11904(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L218:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L466
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L466
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L218
.L466:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$3, -9784(%rbp)
	movl	$10, -9788(%rbp)
	movl	$9, %ebx
.L255:
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-9788(%rbp), %r12d
	movl	$1, -36(%rbp)
.L220:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L467
	cvtsi2ssl	-36(%rbp), %xmm0
	call	sinf@PLT
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	addss	-44(%rbp), %xmm1
	cvtsi2ssl	-36(%rbp), %xmm2
	movss	.LC38(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -10592(%rbp,%rax,4)
	cvtsi2ssl	-36(%rbp), %xmm0
	call	cosf@PLT
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC8(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -11392(%rbp,%rax,4)
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cvtsi2ssl	%eax, %xmm0
	call	cosf@PLT
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC8(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -5680(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L220
.L467:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$760, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-5680(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quindf_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L222:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L468
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-5680(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L222
.L468:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L224:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L469
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L224
.L469:
	nop
	movl	-9788(%rbp), %r13d
	movl	$1, -9780(%rbp)
.L247:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L470
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L227:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L471
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L227
.L471:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L228
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$780, -11904(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$116, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$783, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L228
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$785, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L228:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L470
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L229
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$788, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L231:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L472
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L472
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L231
.L472:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L229:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L235:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L473
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L233
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L233:
	addl	$1, -36(%rbp)
	jmp	.L235
.L473:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L239:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L474
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L238:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L475
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L238
.L475:
	nop
	addl	$1, -36(%rbp)
	jmp	.L239
.L474:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L240
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$799, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L242:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L476
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L476
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L242
.L476:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L240:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L246:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L477
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L244
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L244
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L244:
	addl	$1, -36(%rbp)
	jmp	.L246
.L477:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L247
.L470:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$806, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$808, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L249:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L478
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L478
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L249
.L478:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$810, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L250
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L250:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$813, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L253:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L479
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L479
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L253
.L479:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9788(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -9788(%rbp)
	movl	%ebx, %eax
	subl	$1, %ebx
	testl	%eax, %eax
	je	.L480
	jmp	.L255
.L480:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$820, -11904(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$55, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -9788(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -10592(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -10588(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10584(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10580(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10576(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10572(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10568(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10564(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -10560(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -10556(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -11392(%rbp)
	movss	.LC35(%rip), %xmm0
	movss	%xmm0, -11388(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -11384(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -11380(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -11376(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -11372(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -11368(%rbp)
	movss	.LC36(%rip), %xmm0
	movss	%xmm0, -11364(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -11360(%rbp)
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, -11356(%rbp)
	movl	$3, -9784(%rbp)
	movl	-9788(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -9792(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$847, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9792(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9792(%rbp), %eax
	movl	$1, -36(%rbp)
.L257:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L481
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L257
.L481:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L259:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L482
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L259
.L482:
	nop
	movl	-9792(%rbp), %r12d
	movl	$1, -9780(%rbp)
.L280:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L483
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L262:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L484
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L262
.L484:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$866, -11904(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$111, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$869, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9792(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L263
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$871, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L263:
	movl	-9780(%rbp), %edx
	movl	-9792(%rbp), %eax
	cmpl	%eax, %edx
	je	.L483
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$873, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L265:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L485
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L485
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L265
.L485:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L269:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L486
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L267
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L267:
	addl	$1, -36(%rbp)
	jmp	.L269
.L486:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L273:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L487
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L272:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L488
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L272
.L488:
	nop
	addl	$1, -36(%rbp)
	jmp	.L273
.L487:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$884, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L275:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L489
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L489
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L275
.L489:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L279:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L490
	movl	-9792(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L277
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L277
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L277:
	addl	$1, -36(%rbp)
	jmp	.L279
.L490:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L280
.L483:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$891, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$893, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L282:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L491
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L491
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L282
.L491:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$895, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L283
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L283:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$898, -11904(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L286:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L492
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L492
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L286
.L492:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$3, -9784(%rbp)
	movl	$10, -9788(%rbp)
	movl	$9, %ebx
.L323:
	movl	-9788(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -9792(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-9788(%rbp), %r12d
	movl	$1, -36(%rbp)
.L288:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L493
	cvtsi2ssl	-36(%rbp), %xmm0
	call	sinf@PLT
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-44(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -10592(%rbp,%rax,4)
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cltq
	subq	$1, %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -10592(%rbp,%rax,4)
	cvtsi2ssl	-36(%rbp), %xmm0
	call	cosf@PLT
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	.LC8(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -11392(%rbp,%rax,4)
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cvtsi2ssl	%eax, %xmm0
	call	cosf@PLT
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	cltq
	subq	$1, %rax
	movss	.LC8(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -11392(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L288
.L493:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$913, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9792(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9792(%rbp), %eax
	movl	$1, -36(%rbp)
.L290:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L494
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L290
.L494:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L292:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L495
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L292
.L495:
	nop
	movl	-9792(%rbp), %r13d
	movl	$1, -9780(%rbp)
.L315:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L496
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L295:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L497
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L295
.L497:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L296
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$933, -11904(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$116, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$936, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9792(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L296
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$938, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L296:
	movl	-9780(%rbp), %edx
	movl	-9792(%rbp), %eax
	cmpl	%eax, %edx
	je	.L496
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L297
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$941, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L299:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L498
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L498
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L299
.L498:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L297:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L303:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L499
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L301
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L301:
	addl	$1, -36(%rbp)
	jmp	.L303
.L499:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L307:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L500
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L306:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L501
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L306
.L501:
	nop
	addl	$1, -36(%rbp)
	jmp	.L307
.L500:
	nop
	movl	-9788(%rbp), %eax
	cmpl	$10, %eax
	jg	.L308
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$952, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L310:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L502
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L502
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L310
.L502:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L308:
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L314:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L503
	movl	-9792(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L312
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L312
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L312:
	addl	$1, -36(%rbp)
	jmp	.L314
.L503:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L315
.L496:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$959, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$961, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L317:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L504
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L504
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L317
.L504:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$963, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L318
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L318:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$966, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %r12d
	movl	$1, -36(%rbp)
.L321:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L505
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L505
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L321
.L505:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9788(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -9788(%rbp)
	movl	%ebx, %eax
	subl	$1, %ebx
	testl	%eax, %eax
	je	.L506
	jmp	.L323
.L506:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$974, -11904(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$56, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$975, -11904(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$45, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$8, -9788(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -10592(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10588(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -10584(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10580(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10576(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10572(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10568(%rbp)
	movss	.LC19(%rip), %xmm0
	movss	%xmm0, -10564(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -11392(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -11388(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -11384(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -11380(%rbp)
	movss	.LC21(%rip), %xmm0
	movss	%xmm0, -11376(%rbp)
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, -11372(%rbp)
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -11368(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -11364(%rbp)
	movl	$3, -9784(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$998, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L325:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L507
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L325
.L507:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L327:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L508
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L327
.L508:
	nop
	movl	-9788(%rbp), %r12d
	movl	$1, -9780(%rbp)
.L348:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L509
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L330:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L510
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L330
.L510:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1017, -11904(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$111, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1020, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L331
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1022, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L331:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L509
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1024, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L333:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L511
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L511
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L333
.L511:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L337:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L512
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L335
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L335:
	addl	$1, -36(%rbp)
	jmp	.L337
.L512:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L341:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L513
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L340:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L514
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L340
.L514:
	nop
	addl	$1, -36(%rbp)
	jmp	.L341
.L513:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1035, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L343:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L515
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L515
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L343
.L515:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L347:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L516
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L345
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L345
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L345:
	addl	$1, -36(%rbp)
	jmp	.L347
.L516:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L348
.L509:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1042, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1044, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L350:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L517
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L517
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L350
.L517:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1046, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L351
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L351:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1049, -11904(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L354:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L518
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L518
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L354
.L518:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1056, -11904(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$56, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1057, -11904(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$45, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$10, -9788(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -10592(%rbp)
	movss	.LC35(%rip), %xmm0
	movss	%xmm0, -10588(%rbp)
	movss	.LC35(%rip), %xmm0
	movss	%xmm0, -10584(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10580(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10576(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -10572(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -10568(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -10564(%rbp)
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, -10560(%rbp)
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, -10556(%rbp)
	movss	.LC45(%rip), %xmm0
	movss	%xmm0, -11392(%rbp)
	movss	.LC46(%rip), %xmm0
	movss	%xmm0, -11388(%rbp)
	movss	.LC47(%rip), %xmm0
	movss	%xmm0, -11384(%rbp)
	movss	.LC48(%rip), %xmm0
	movss	%xmm0, -11380(%rbp)
	movss	.LC49(%rip), %xmm0
	movss	%xmm0, -11376(%rbp)
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, -11372(%rbp)
	movss	.LC51(%rip), %xmm0
	movss	%xmm0, -11368(%rbp)
	movss	.LC52(%rip), %xmm0
	movss	%xmm0, -11364(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -11360(%rbp)
	movss	.LC53(%rip), %xmm0
	movss	%xmm0, -11356(%rbp)
	movl	$3, -9784(%rbp)
	movl	-9784(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1084, -11904(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$25, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9788(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-9784(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-8144(%rbp), %r9
	leaq	-7312(%rbp), %r8
	leaq	-6480(%rbp), %rcx
	leaq	-11392(%rbp), %rdx
	leaq	-10592(%rbp), %rsi
	leaq	-9788(%rbp), %rax
	leaq	-9776(%rbp), %rdi
	pushq	%rdi
	leaq	-8976(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quinat_
	addq	$16, %rsp
	movl	-9788(%rbp), %eax
	movl	$1, -36(%rbp)
.L356:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L519
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-11392(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$199, %rdx
	movss	-6480(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$399, %rdx
	movss	-7312(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$599, %rdx
	movss	-8144(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$799, %rdx
	movss	-8976(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$999, %rdx
	movss	-9776(%rbp,%rcx,4), %xmm0
	movss	%xmm0, -4880(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L356
.L519:
	nop
	movl	-56(%rbp), %eax
	movl	$1, -36(%rbp)
.L358:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L520
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8176(%rbp,%rdx,4)
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, -7344(%rbp,%rdx,4)
	addl	$1, -36(%rbp)
	jmp	.L358
.L520:
	nop
	movl	-9788(%rbp), %r12d
	movl	$1, -9780(%rbp)
.L379:
	movl	-9780(%rbp), %eax
	cmpl	%eax, %r12d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L521
	movl	-52(%rbp), %ecx
	movl	$1, -36(%rbp)
.L361:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L522
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-201(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-4880(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -6512(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L361
.L522:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1103, -11904(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$111, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-9780(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1106, -11904(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$7, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-9780(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10592(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L362
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1108, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6512(%rbp), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L362:
	movl	-9780(%rbp), %edx
	movl	-9788(%rbp), %eax
	cmpl	%eax, %edx
	je	.L521
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1110, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L364:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L523
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L523
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L364
.L523:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L368:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L524
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-7344(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L366
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp,%rax,4)
.L366:
	addl	$1, -36(%rbp)
	jmp	.L368
.L524:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm0
	movl	-9780(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-10592(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	$2, -36(%rbp)
.L372:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L525
	movl	-36(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%edx, -40(%rbp)
.L371:
	cmpl	%ecx, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L526
	movl	-52(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	%esi, %edx
	subl	-40(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-60(%rbp), %xmm1
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movss	-6512(%rbp,%rdx,4), %xmm0
	movl	-64(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addss	%xmm1, %xmm0
	movss	%xmm0, -6512(%rbp,%rdx,4)
	addl	$1, -40(%rbp)
	jmp	.L371
.L526:
	nop
	addl	$1, -36(%rbp)
	jmp	.L372
.L525:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1121, -11904(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-52(%rbp), %ebx
	movl	$1, -36(%rbp)
.L374:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L527
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L527
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-6512(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L374
.L527:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %ecx
	movl	$1, -36(%rbp)
.L378:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L528
	movl	-9788(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-9780(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	cmpl	$1, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L376
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-6512(%rbp,%rax,4), %xmm0
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	subq	$201, %rax
	movss	-4880(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-8176(%rbp,%rax,4), %xmm1
	movss	-60(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L376
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -8176(%rbp,%rax,4)
.L376:
	addl	$1, -36(%rbp)
	jmp	.L378
.L528:
	nop
	movl	-9780(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -9780(%rbp)
	jmp	.L379
.L521:
	nop
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1128, -11904(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$46, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1130, -11904(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L381:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L529
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L529
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-8176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L381
.L529:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1132, -11904(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$47, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-7344(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L382
	movss	-6512(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -7344(%rbp)
.L382:
	leaq	.LC15(%rip), %rax
	movq	%rax, -11912(%rbp)
	movl	$1135, -11904(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -11840(%rbp)
	movq	$8, -11832(%rbp)
	movl	$4096, -11920(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -11916(%rbp)
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-56(%rbp), %ebx
	movl	$1, -36(%rbp)
.L385:
	movl	-11920(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L530
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L530
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7344(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-11920(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L385
.L530:
	nop
	leaq	-11920(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
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
	leaq	options.150.4966(%rip), %rsi
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
	.type	options.150.4966, @object
	.size	options.150.4966, 28
options.150.4966:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1086324736
	.align 4
.LC2:
	.long	1097859072
	.align 4
.LC3:
	.long	1101004800
	.align 4
.LC4:
	.long	1088421888
	.align 4
.LC5:
	.long	1090519040
	.align 4
.LC6:
	.long	1101529088
	.align 4
.LC7:
	.long	1077936128
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1065353216
	.align 4
.LC10:
	.long	1084227584
	.align 4
.LC11:
	.long	1092616192
	.align 16
.LC12:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC13:
	.long	1115947008
	.align 4
.LC14:
	.long	1104150528
	.align 4
.LC17:
	.long	3225419776
	.align 4
.LC18:
	.long	3212836864
	.align 4
.LC19:
	.long	1082130432
	.align 4
.LC20:
	.long	1093664768
	.align 4
.LC21:
	.long	1113587712
	.align 4
.LC22:
	.long	1105723392
	.align 16
.LC27:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC35:
	.long	1073741824
	.align 4
.LC36:
	.long	3252158464
	.align 4
.LC37:
	.long	3253731328
	.align 4
.LC38:
	.long	981668463
	.align 4
.LC42:
	.long	3235905536
	.align 4
.LC44:
	.long	1091567616
	.align 4
.LC45:
	.long	1126367232
	.align 4
.LC46:
	.long	1131216896
	.align 4
.LC47:
	.long	3271426048
	.align 4
.LC48:
	.long	1122893824
	.align 4
.LC49:
	.long	3263299584
	.align 4
.LC50:
	.long	1128267776
	.align 4
.LC51:
	.long	1133674496
	.align 4
.LC52:
	.long	1134755840
	.align 4
.LC53:
	.long	3285123072
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
