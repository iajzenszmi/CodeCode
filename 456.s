	.file	"456.f"
	.text
	.globl	routng_
	.type	routng_, @function
routng_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$544, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -648(%rbp)
	movq	%rsi, -656(%rbp)
	movq	%rdx, -664(%rbp)
	movq	%rcx, -672(%rbp)
	movq	%r8, -680(%rbp)
	movq	%r9, -688(%rbp)
	movq	-680(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-680(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -136(%rbp)
	movq	%rax, %rdx
	imulq	-136(%rbp), %rdx
	movl	$0, %ecx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movq	%rax, %rdx
	notq	%rdx
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	movq	%rcx, %r10
	movl	$0, %r11d
	movl	$0, -108(%rbp)
	movq	-680(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -36(%rbp)
.L6:
	cmpl	%ecx, -36(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L67
	movq	-680(%rbp), %rsi
	movl	(%rsi), %esi
	movl	$1, -72(%rbp)
.L5:
	cmpl	%esi, -72(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L68
	movl	-72(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-688(%rbp), %rdi
	movl	(%rdi,%r8,4), %edi
	cmpl	%edi, -108(%rbp)
	jge	.L4
	movl	-72(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-688(%rbp), %rdi
	movl	(%rdi,%r8,4), %edi
	movl	%edi, -108(%rbp)
.L4:
	addl	$1, -72(%rbp)
	jmp	.L5
.L68:
	nop
	addl	$1, -36(%rbp)
	jmp	.L6
.L67:
	nop
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	-108(%rbp), %esi
	imull	%esi, %ecx
	movl	%ecx, -108(%rbp)
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.L69
	movq	-680(%rbp), %rcx
	movl	(%rcx), %esi
	movl	$1, -36(%rbp)
.L8:
	cmpl	%esi, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L69
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rdi,%rcx), %r8
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rdi
	movq	-688(%rbp), %rcx
	movl	(%rcx,%r8,4), %ecx
	movl	%ecx, -400(%rbp,%rdi,4)
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movl	-108(%rbp), %ecx
	negl	%ecx
	movl	%ecx, %r8d
	movq	-688(%rbp), %rcx
	movl	%r8d, (%rcx,%rdi,4)
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-688(%rbp), %rcx
	movl	$0, (%rcx,%rdi,4)
	addl	$1, -36(%rbp)
	jmp	.L8
.L69:
	nop
	movq	-664(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, %esi
	sete	%cl
	movzbl	%cl, %esi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	orl	%esi, %ecx
	testl	%ecx, %ecx
	jne	.L70
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-688(%rbp), %rcx
	movl	(%rcx,%rsi,4), %ecx
	movl	%ecx, -400(%rbp)
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movl	-108(%rbp), %ecx
	movl	%ecx, %edi
	negl	%edi
	movq	-688(%rbp), %rcx
	movl	%edi, (%rcx,%rsi,4)
	jmp	.L9
.L70:
	nop
.L9:
	movq	16(%rbp), %rcx
	movl	-108(%rbp), %esi
	movl	%esi, (%rcx)
	movq	24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	$1, -68(%rbp)
.L60:
	cmpl	%edi, -68(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L71
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$2, -92(%rbp)
.L19:
	cmpl	%ecx, -92(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L72
	movl	-108(%rbp), %esi
	movl	%esi, -120(%rbp)
	movl	-92(%rbp), %r8d
	movq	-648(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%r8d, -72(%rbp)
.L17:
	cmpl	%esi, -72(%rbp)
	setg	%r8b
	movzbl	%r8b, %r8d
	testl	%r8d, %r8d
	jne	.L73
	movl	-72(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r9
	movq	-656(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	movl	%r8d, -84(%rbp)
	movl	-92(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -80(%rbp)
	movl	-80(%rbp), %r8d
	movl	$1, -36(%rbp)
.L16:
	cmpl	%r8d, -36(%rbp)
	setg	%r9b
	movzbl	%r9b, %r9d
	testl	%r9d, %r9d
	jne	.L74
	movl	-36(%rbp), %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -52(%rbp)
	movl	-36(%rbp), %r9d
	addl	$1, %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -56(%rbp)
	movl	-36(%rbp), %r9d
	cmpl	-80(%rbp), %r9d
	jne	.L14
	movq	-656(%rbp), %r9
	movl	(%r9), %r9d
	movl	%r9d, -56(%rbp)
.L14:
	movl	-84(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r10
	movl	-52(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r10
	movq	-688(%rbp), %r9
	movl	(%r9,%r10,4), %r10d
	movl	-56(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r11
	movl	-84(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r11
	movq	-688(%rbp), %r9
	movl	(%r9,%r11,4), %r9d
	leal	(%r10,%r9), %r11d
	movl	-56(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r10
	movl	-52(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r10
	movq	-688(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	subl	%r9d, %r11d
	movl	%r11d, %r9d
	movl	%r9d, -148(%rbp)
	movl	-148(%rbp), %r9d
	cmpl	-120(%rbp), %r9d
	jge	.L75
	movl	-72(%rbp), %r9d
	movl	%r9d, -76(%rbp)
	movl	-36(%rbp), %r9d
	movl	%r9d, -40(%rbp)
	movl	-148(%rbp), %r9d
	movl	%r9d, -120(%rbp)
	jmp	.L15
.L75:
	nop
.L15:
	addl	$1, -36(%rbp)
	jmp	.L16
.L74:
	nop
	addl	$1, -72(%rbp)
	jmp	.L17
.L73:
	nop
.L12:
	subl	$1, -76(%rbp)
	movl	-76(%rbp), %esi
	cmpl	-40(%rbp), %esi
	je	.L76
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r8
	movq	-656(%rbp), %rsi
	movl	(%rsi,%r8,4), %esi
	movl	%esi, -52(%rbp)
	movl	-76(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r8
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r9
	movq	-656(%rbp), %rsi
	movl	(%rsi,%r8,4), %r8d
	movq	-656(%rbp), %rsi
	movl	%r8d, (%rsi,%r9,4)
	movl	-76(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r9
	movq	-656(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	%r8d, (%rsi,%r9,4)
	jmp	.L12
.L76:
	nop
	addl	$1, -92(%rbp)
	jmp	.L19
.L72:
	nop
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movl	%ecx, -152(%rbp)
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	$2, %ecx
	jle	.L77
	movl	-152(%rbp), %ecx
	movl	$1, -96(%rbp)
.L49:
	cmpl	%ecx, -96(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L77
	movl	$0, -48(%rbp)
	jmp	.L48
.L87:
	nop
.L48:
	movl	$0, -44(%rbp)
	movq	-648(%rbp), %rsi
	movl	(%rsi), %esi
	movl	$1, -72(%rbp)
.L46:
	cmpl	%esi, -72(%rbp)
	setg	%r8b
	movzbl	%r8b, %r8d
	testl	%r8d, %r8d
	jne	.L78
	movl	$0, -104(%rbp)
	movl	$0, -116(%rbp)
	cmpl	$1, -96(%rbp)
	je	.L22
	movl	-72(%rbp), %r8d
	movl	%r8d, -36(%rbp)
	movl	$1, -100(%rbp)
	jmp	.L25
.L79:
	nop
.L25:
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -36(%rbp)
	jle	.L23
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	subl	%r8d, -36(%rbp)
.L23:
	movl	-36(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r9
	movq	-656(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	movl	%r8d, -52(%rbp)
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -56(%rbp)
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -56(%rbp)
	jle	.L24
	movl	$1, -56(%rbp)
.L24:
	movl	-56(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r9
	movq	-656(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	movl	%r8d, -56(%rbp)
	movl	-56(%rbp), %r8d
	movslq	%r8d, %r8
	imulq	%rax, %r8
	leaq	(%rdx,%r8), %r9
	movl	-52(%rbp), %r8d
	movslq	%r8d, %r8
	addq	%r8, %r9
	movq	-688(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	addl	%r8d, -104(%rbp)
	movl	-52(%rbp), %r8d
	movslq	%r8d, %r8
	imulq	%rax, %r8
	leaq	(%rdx,%r8), %r9
	movl	-56(%rbp), %r8d
	movslq	%r8d, %r8
	addq	%r8, %r9
	movq	-688(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	addl	%r8d, -116(%rbp)
	addl	$1, -36(%rbp)
	addl	$1, -100(%rbp)
	movl	-100(%rbp), %r8d
	cmpl	-96(%rbp), %r8d
	jl	.L79
.L22:
	movl	-108(%rbp), %r8d
	movl	%r8d, -120(%rbp)
	movl	-72(%rbp), %r9d
	movl	-96(%rbp), %r8d
	addl	%r9d, %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -76(%rbp)
	jle	.L26
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	subl	%r8d, -76(%rbp)
.L26:
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	movl	$1, -36(%rbp)
.L37:
	cmpl	%r8d, -36(%rbp)
	setg	%r9b
	movzbl	%r9b, %r9d
	testl	%r9d, %r9d
	jne	.L80
	movl	-72(%rbp), %r9d
	cmpl	-76(%rbp), %r9d
	setle	%r9b
	movzbl	%r9b, %r10d
	movl	-36(%rbp), %r9d
	cmpl	-72(%rbp), %r9d
	setge	%r9b
	movzbl	%r9b, %r11d
	movl	-36(%rbp), %r9d
	cmpl	-76(%rbp), %r9d
	setle	%r9b
	movzbl	%r9b, %r9d
	andl	%r11d, %r9d
	andl	%r10d, %r9d
	testl	%r9d, %r9d
	jne	.L81
	movl	-72(%rbp), %r9d
	cmpl	-76(%rbp), %r9d
	setg	%r9b
	movzbl	%r9b, %r10d
	movl	-36(%rbp), %r9d
	cmpl	-76(%rbp), %r9d
	setle	%r9b
	movzbl	%r9b, %r11d
	movl	-36(%rbp), %r9d
	cmpl	-72(%rbp), %r9d
	setge	%r9b
	movzbl	%r9b, %r9d
	orl	%r11d, %r9d
	andl	%r10d, %r9d
	testl	%r9d, %r9d
	jne	.L82
	movl	-36(%rbp), %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -52(%rbp)
	movl	-72(%rbp), %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -84(%rbp)
	movl	-76(%rbp), %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -88(%rbp)
	movl	-36(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -56(%rbp)
	movq	-648(%rbp), %r9
	movl	(%r9), %r9d
	cmpl	%r9d, -56(%rbp)
	jle	.L31
	movl	$1, -56(%rbp)
.L31:
	movl	-56(%rbp), %r9d
	movl	%r9d, -80(%rbp)
	movl	-56(%rbp), %r9d
	cmpl	-72(%rbp), %r9d
	jne	.L32
	movl	-76(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -56(%rbp)
.L32:
	movq	-648(%rbp), %r9
	movl	(%r9), %r9d
	cmpl	%r9d, -56(%rbp)
	jle	.L33
	movl	$1, -56(%rbp)
.L33:
	movl	-56(%rbp), %r9d
	movslq	%r9d, %r9
	leaq	-1(%r9), %r10
	movq	-656(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	movl	%r9d, -56(%rbp)
	movl	-104(%rbp), %r9d
	movl	%r9d, -112(%rbp)
	movl	$0, -60(%rbp)
.L36:
	movl	-84(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r10
	movl	-52(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r10
	movq	-688(%rbp), %r9
	movl	(%r9,%r10,4), %r10d
	movl	-112(%rbp), %r9d
	leal	(%r10,%r9), %r11d
	movl	-56(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r10
	movl	-88(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r10
	movq	-688(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	addl	%r9d, %r11d
	movl	-56(%rbp), %r9d
	movslq	%r9d, %r9
	imulq	%rax, %r9
	leaq	(%rdx,%r9), %r10
	movl	-52(%rbp), %r9d
	movslq	%r9d, %r9
	addq	%r9, %r10
	movq	-688(%rbp), %r9
	movl	(%r9,%r10,4), %r9d
	subl	%r9d, %r11d
	movl	%r11d, %r9d
	movl	%r9d, -148(%rbp)
	movl	-148(%rbp), %r9d
	cmpl	-120(%rbp), %r9d
	setg	%r9b
	movzbl	%r9b, %r10d
	movl	-148(%rbp), %r9d
	cmpl	-120(%rbp), %r9d
	sete	%r9b
	movzbl	%r9b, %r11d
	movl	-80(%rbp), %r9d
	cmpl	-72(%rbp), %r9d
	setne	%r9b
	movzbl	%r9b, %ebx
	movl	-80(%rbp), %r9d
	cmpl	-72(%rbp), %r9d
	sete	%r9b
	movzbl	%r9b, %r12d
	cmpl	$1, -60(%rbp)
	sete	%r9b
	movzbl	%r9b, %r9d
	andl	%r12d, %r9d
	orl	%ebx, %r9d
	andl	%r11d, %r9d
	orl	%r10d, %r9d
	testl	%r9d, %r9d
	jne	.L83
	movl	-36(%rbp), %r9d
	movl	%r9d, -40(%rbp)
	movl	-60(%rbp), %r9d
	movl	%r9d, -64(%rbp)
	movl	-148(%rbp), %r9d
	movl	%r9d, -120(%rbp)
	jmp	.L35
.L83:
	nop
.L35:
	cmpl	$1, -60(%rbp)
	je	.L84
	movl	$1, -60(%rbp)
	movl	-116(%rbp), %r9d
	movl	%r9d, -112(%rbp)
	movl	-84(%rbp), %r9d
	movl	%r9d, -92(%rbp)
	movl	-88(%rbp), %r9d
	movl	%r9d, -84(%rbp)
	movl	-92(%rbp), %r9d
	movl	%r9d, -88(%rbp)
	jmp	.L36
.L81:
	nop
	jmp	.L29
.L82:
	nop
	jmp	.L29
.L84:
	nop
.L29:
	addl	$1, -36(%rbp)
	jmp	.L37
.L80:
	nop
	movl	-40(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -36(%rbp)
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -36(%rbp)
	jle	.L38
	movl	$1, -36(%rbp)
.L38:
	movl	-36(%rbp), %r8d
	cmpl	-72(%rbp), %r8d
	sete	%r8b
	movzbl	%r8b, %r9d
	cmpl	$0, -64(%rbp)
	sete	%r8b
	movzbl	%r8b, %r8d
	andl	%r9d, %r8d
	testl	%r8d, %r8d
	jne	.L85
	movl	$1, -44(%rbp)
	movl	-72(%rbp), %r8d
	movl	%r8d, -92(%rbp)
	movl	$0, -80(%rbp)
	cmpl	$0, -64(%rbp)
	je	.L86
	movl	-76(%rbp), %r8d
	movl	%r8d, -92(%rbp)
	movl	$-1, -80(%rbp)
	jmp	.L40
.L86:
	nop
.L40:
	movl	$0, -100(%rbp)
.L45:
	addl	$1, -100(%rbp)
	movl	-100(%rbp), %r8d
	cmpl	-96(%rbp), %r8d
	jg	.L85
	movl	-92(%rbp), %r8d
	movl	%r8d, -36(%rbp)
	movl	-80(%rbp), %r8d
	addl	%r8d, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jg	.L44
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	movl	%r8d, -92(%rbp)
.L44:
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -52(%rbp)
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -52(%rbp)
	jle	.L42
	movl	$1, -52(%rbp)
.L42:
	movl	-36(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r9
	movq	-656(%rbp), %r8
	movl	(%r8,%r9,4), %r8d
	movl	%r8d, -84(%rbp)
	movl	-52(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r9
	movl	-36(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r10
	movq	-656(%rbp), %r8
	movl	(%r8,%r9,4), %r9d
	movq	-656(%rbp), %r8
	movl	%r9d, (%r8,%r10,4)
	movl	-52(%rbp), %r8d
	movslq	%r8d, %r8
	leaq	-1(%r8), %r10
	movq	-656(%rbp), %r8
	movl	-84(%rbp), %r9d
	movl	%r9d, (%r8,%r10,4)
	addl	$1, -36(%rbp)
	movq	-648(%rbp), %r8
	movl	(%r8), %r8d
	cmpl	%r8d, -36(%rbp)
	jle	.L43
	movl	$1, -36(%rbp)
.L43:
	movl	-52(%rbp), %r8d
	subl	-40(%rbp), %r8d
	testl	%r8d, %r8d
	jne	.L44
	nop
	jmp	.L45
.L85:
	nop
	addl	$1, -72(%rbp)
	jmp	.L46
.L78:
	nop
	cmpl	$0, -44(%rbp)
	je	.L47
	addl	$1, -48(%rbp)
	movq	-648(%rbp), %rsi
	movl	(%rsi), %esi
	cmpl	%esi, -48(%rbp)
	jl	.L87
.L47:
	addl	$1, -96(%rbp)
	jmp	.L49
.L77:
	nop
	movq	-648(%rbp), %rcx
	movl	(%rcx), %r8d
	movl	$1, -36(%rbp)
.L53:
	cmpl	%r8d, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L88
	movq	-656(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, %esi
	je	.L88
	movq	-656(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, -92(%rbp)
	movl	-152(%rbp), %r9d
	movl	$1, -72(%rbp)
.L52:
	cmpl	%r9d, -72(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L89
	movl	-72(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r10
	movq	-656(%rbp), %rcx
	movl	(%rcx,%rsi,4), %esi
	movq	-656(%rbp), %rcx
	movl	%esi, (%rcx,%r10,4)
	addl	$1, -72(%rbp)
	jmp	.L52
.L89:
	nop
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r9
	movq	-656(%rbp), %rcx
	movl	-92(%rbp), %esi
	movl	%esi, (%rcx,%r9,4)
	addl	$1, -36(%rbp)
	jmp	.L53
.L88:
	nop
	movl	$0, -104(%rbp)
	movl	-152(%rbp), %esi
	movl	$1, -36(%rbp)
.L55:
	cmpl	%esi, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L90
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r8
	movq	-656(%rbp), %rcx
	movl	(%rcx,%r8,4), %ecx
	movl	%ecx, -52(%rbp)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r8
	movq	-656(%rbp), %rcx
	movl	(%rcx,%r8,4), %ecx
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movq	-688(%rbp), %rcx
	movl	(%rcx,%r8,4), %ecx
	addl	%ecx, -104(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L55
.L90:
	nop
	movq	-656(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, -52(%rbp)
	movq	-664(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, %esi
	jne	.L56
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-688(%rbp), %rcx
	movl	(%rcx,%rsi,4), %ecx
	addl	%ecx, -104(%rbp)
.L56:
	movq	16(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, -104(%rbp)
	jge	.L91
	movq	16(%rbp), %rcx
	movl	-104(%rbp), %esi
	movl	%esi, (%rcx)
	movq	-648(%rbp), %rcx
	movl	(%rcx), %esi
	movl	$1, -36(%rbp)
.L58:
	cmpl	%esi, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L91
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r9
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r8
	movq	-656(%rbp), %rcx
	movl	(%rcx,%r9,4), %ecx
	movl	%ecx, -640(%rbp,%r8,4)
	addl	$1, -36(%rbp)
	jmp	.L58
.L91:
	nop
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, -72(%rbp)
	jle	.L59
	movq	-648(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	%ecx, -72(%rbp)
.L59:
	movq	-656(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, -92(%rbp)
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-656(%rbp), %rcx
	movl	(%rcx,%rsi,4), %esi
	movq	-656(%rbp), %rcx
	movl	%esi, (%rcx)
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %r8
	movq	-656(%rbp), %rcx
	movl	-92(%rbp), %esi
	movl	%esi, (%rcx,%r8,4)
	addl	$1, -68(%rbp)
	jmp	.L60
.L71:
	nop
	movq	-648(%rbp), %rcx
	movl	(%rcx), %edi
	movl	$1, -36(%rbp)
.L62:
	cmpl	%edi, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L92
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %r8
	movl	-640(%rbp,%rcx,4), %esi
	movq	-656(%rbp), %rcx
	movl	%esi, (%rcx,%r8,4)
	addl	$1, -36(%rbp)
	jmp	.L62
.L92:
	nop
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.L93
	movq	-680(%rbp), %rcx
	movl	(%rcx), %edi
	movl	$1, -36(%rbp)
.L64:
	cmpl	%edi, -36(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L93
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r8
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r8
	movl	-400(%rbp,%rsi,4), %esi
	movq	-688(%rbp), %rcx
	movl	%esi, (%rcx,%r8,4)
	addl	$1, -36(%rbp)
	jmp	.L64
.L93:
	nop
	movq	-664(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, %esi
	sete	%cl
	movzbl	%cl, %esi
	movq	-672(%rbp), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	orl	%esi, %ecx
	testl	%ecx, %ecx
	jne	.L94
	movq	-664(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rcx, %rax
	addq	%rax, %rdx
	movq	-672(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-400(%rbp), %edx
	movq	-688(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	jmp	.L65
.L94:
	nop
.L65:
	nop
	addq	$544, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	routng_, .-routng_
	.section	.rodata
.LC0:
	.string	"456.f"
.LC1:
	.ascii	"(a)"
.LC2:
	.ascii	" "
.LC3:
	.ascii	"TOMS456_PRB"
.LC4:
	.ascii	"  Test TOMS algorithm 456, for"
.LC5:
	.ascii	"  the routing problem."
.LC6:
	.ascii	"(a,i6)"
.LC7:
	.ascii	"  Start node SN =    "
.LC8:
	.ascii	"  End node EN =      "
.LC9:
	.ascii	"  Number of trials = "
	.align 4
.LC10:
	.long	15
	.align 8
.LC11:
	.ascii	"  The length of the optimal connection is "
.LC12:
	.ascii	"  Connection sequence:"
.LC13:
	.ascii	"(2x,i6,2x,i6)"
.LC14:
	.ascii	"  Normal end of execution."
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
	subq	$632, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$111, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$112, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$11, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$113, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$30, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$114, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$22, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -104(%rbp)
	movl	$1, -24(%rbp)
	movl	$5, -100(%rbp)
	movl	$1, -20(%rbp)
.L97:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L116
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp,%rdx,4)
	addl	$1, -20(%rbp)
	jmp	.L97
.L116:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$123, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$124, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-104(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$125, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$126, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rsi
	pushq	%rsi
	leaq	-28(%rbp), %rsi
	pushq	%rsi
	leaq	d.4060(%rip), %r9
	leaq	.LC10(%rip), %r8
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	routng_
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$130, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$132, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$42, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$134, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$135, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$22, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$136, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -108(%rbp)
	movl	$1, -20(%rbp)
.L100:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L117
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$140, -624(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$13, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-108(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	cmpl	$14, -20(%rbp)
	jg	.L99
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
.L99:
	addl	$1, -20(%rbp)
	jmp	.L100
.L117:
	nop
	movl	$1, -104(%rbp)
	movl	$13, -24(%rbp)
	movl	$5, -100(%rbp)
	movl	$1, -20(%rbp)
.L102:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L118
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp,%rdx,4)
	addl	$1, -20(%rbp)
	jmp	.L102
.L118:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$153, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$154, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-104(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$155, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$156, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rsi
	pushq	%rsi
	leaq	-28(%rbp), %rsi
	pushq	%rsi
	leaq	d.4060(%rip), %r9
	leaq	.LC10(%rip), %r8
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	routng_
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$160, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$162, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$42, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$164, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$165, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$22, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$166, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -108(%rbp)
	movl	$1, -20(%rbp)
.L105:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L119
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$170, -624(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$13, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-108(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	cmpl	$14, -20(%rbp)
	jg	.L104
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
.L104:
	addl	$1, -20(%rbp)
	jmp	.L105
.L119:
	nop
	movl	$1, -104(%rbp)
	movl	$0, -24(%rbp)
	movl	$5, -100(%rbp)
	movl	$1, -20(%rbp)
.L107:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L120
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp,%rdx,4)
	addl	$1, -20(%rbp)
	jmp	.L107
.L120:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$183, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$184, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-104(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$185, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$186, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %rsi
	pushq	%rsi
	leaq	-28(%rbp), %rsi
	pushq	%rsi
	leaq	d.4060(%rip), %r9
	leaq	.LC10(%rip), %r8
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	routng_
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$190, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$192, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$42, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$194, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$195, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$22, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$196, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -108(%rbp)
	movl	$1, -20(%rbp)
.L110:
	cmpl	$15, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L121
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$200, -624(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$13, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-108(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	cmpl	$14, -20(%rbp)
	jg	.L109
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
.L109:
	addl	$1, -20(%rbp)
	jmp	.L110
.L121:
	nop
	movl	$5, -32(%rbp)
	movl	$1, -104(%rbp)
	movl	$5, -24(%rbp)
	movl	$5, -100(%rbp)
	movl	-32(%rbp), %edx
	movl	$1, -20(%rbp)
.L112:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L122
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L112
.L122:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$214, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$215, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-104(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$216, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$217, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$21, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-24(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-32(%rbp), %rax
	leaq	-100(%rbp), %rdi
	pushq	%rdi
	leaq	-28(%rbp), %rdi
	pushq	%rdi
	leaq	d.4060(%rip), %r9
	leaq	.LC10(%rip), %r8
	movq	%rax, %rdi
	call	routng_
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$221, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$223, -624(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$6, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$42, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$225, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$226, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$22, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$227, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -108(%rbp)
	movl	-32(%rbp), %ebx
	movl	$1, -20(%rbp)
.L115:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L123
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$231, -624(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$13, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-108(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-32(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L114
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-96(%rbp,%rax,4), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	d.4060(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
.L114:
	addl	$1, -20(%rbp)
	jmp	.L115
.L123:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$237, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$238, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$11, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -632(%rbp)
	movl	$239, -624(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -560(%rbp)
	movq	$3, -552(%rbp)
	movl	$4096, -640(%rbp)
	movl	$6, -636(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-640(%rbp), %rax
	movl	$26, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-640(%rbp), %rax
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
	leaq	options.54.4160(%rip), %rsi
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
	.type	d.4060, @object
	.size	d.4060, 900
d.4060:
	.long	0
	.long	29
	.long	82
	.long	46
	.long	68
	.long	52
	.long	72
	.long	42
	.long	51
	.long	55
	.long	29
	.long	74
	.long	23
	.long	72
	.long	46
	.long	29
	.long	0
	.long	55
	.long	46
	.long	42
	.long	43
	.long	43
	.long	23
	.long	23
	.long	31
	.long	41
	.long	51
	.long	11
	.long	52
	.long	21
	.long	82
	.long	55
	.long	0
	.long	68
	.long	46
	.long	55
	.long	23
	.long	43
	.long	41
	.long	29
	.long	79
	.long	21
	.long	64
	.long	31
	.long	51
	.long	46
	.long	46
	.long	68
	.long	0
	.long	82
	.long	15
	.long	72
	.long	31
	.long	62
	.long	42
	.long	21
	.long	51
	.long	51
	.long	43
	.long	64
	.long	68
	.long	42
	.long	46
	.long	82
	.long	0
	.long	74
	.long	23
	.long	52
	.long	21
	.long	46
	.long	82
	.long	58
	.long	46
	.long	65
	.long	23
	.long	52
	.long	43
	.long	55
	.long	15
	.long	74
	.long	0
	.long	61
	.long	23
	.long	55
	.long	31
	.long	33
	.long	37
	.long	51
	.long	29
	.long	59
	.long	72
	.long	43
	.long	23
	.long	72
	.long	23
	.long	61
	.long	0
	.long	42
	.long	23
	.long	31
	.long	77
	.long	37
	.long	51
	.long	46
	.long	33
	.long	42
	.long	23
	.long	43
	.long	31
	.long	52
	.long	23
	.long	42
	.long	0
	.long	33
	.long	15
	.long	37
	.long	33
	.long	33
	.long	31
	.long	37
	.long	51
	.long	23
	.long	41
	.long	62
	.long	21
	.long	55
	.long	23
	.long	33
	.long	0
	.long	29
	.long	62
	.long	46
	.long	29
	.long	51
	.long	11
	.long	55
	.long	31
	.long	29
	.long	42
	.long	46
	.long	31
	.long	31
	.long	15
	.long	29
	.long	0
	.long	51
	.long	21
	.long	41
	.long	23
	.long	37
	.long	29
	.long	41
	.long	79
	.long	21
	.long	82
	.long	33
	.long	77
	.long	37
	.long	62
	.long	51
	.long	0
	.long	65
	.long	42
	.long	59
	.long	61
	.long	74
	.long	51
	.long	21
	.long	51
	.long	58
	.long	37
	.long	37
	.long	33
	.long	46
	.long	21
	.long	65
	.long	0
	.long	61
	.long	11
	.long	55
	.long	23
	.long	11
	.long	64
	.long	51
	.long	46
	.long	51
	.long	51
	.long	33
	.long	29
	.long	41
	.long	42
	.long	61
	.long	0
	.long	62
	.long	23
	.long	72
	.long	52
	.long	31
	.long	43
	.long	65
	.long	29
	.long	46
	.long	31
	.long	51
	.long	23
	.long	59
	.long	11
	.long	62
	.long	0
	.long	59
	.long	46
	.long	21
	.long	51
	.long	64
	.long	23
	.long	59
	.long	33
	.long	37
	.long	11
	.long	37
	.long	61
	.long	55
	.long	23
	.long	59
	.long	0
	.section	.rodata
	.align 16
	.type	options.54.4160, @object
	.size	options.54.4160, 28
options.54.4160:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
