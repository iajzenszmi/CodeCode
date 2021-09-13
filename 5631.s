	.file	"5631.f"
	.text
	.globl	cl1_
	.type	cl1_, @function
cl1_:
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
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	leaq	-60(%rbp), %r9
	leaq	-56(%rbp), %r8
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-52(%rbp), %rdi
	pushq	%rdi
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	-160(%rbp)
	leaq	-68(%rbp), %rdi
	pushq	%rdi
	leaq	-100(%rbp), %rdi
	pushq	%rdi
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-92(%rbp), %rdi
	pushq	%rdi
	leaq	-84(%rbp), %rdi
	pushq	%rdi
	leaq	-88(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	setup_
	addq	$96, %rsp
	jmp	.L3
.L6:
	nop
.L3:
	movl	-84(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-136(%rbp), %r9
	movq	-128(%rbp), %r10
	movq	-120(%rbp), %rcx
	movq	-152(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	80(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	pushq	%r8
	pushq	72(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	-160(%rbp)
	pushq	-144(%rbp)
	movq	%r10, %r8
	movq	%rax, %rdi
	call	newpen_
	addq	$96, %rsp
	jmp	.L2
.L5:
	nop
.L2:
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r11
	movl	-92(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movl	-100(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-136(%rbp), %r12
	movq	-128(%rbp), %rbx
	movq	-120(%rbp), %rcx
	movq	-152(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	-144(%rbp)
	pushq	%rdi
	pushq	80(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-76(%rbp), %rdi
	pushq	%rdi
	pushq	64(%rbp)
	pushq	%r8
	pushq	72(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	16(%rbp)
	pushq	-160(%rbp)
	leaq	-68(%rbp), %rdi
	pushq	%rdi
	pushq	-144(%rbp)
	movq	%r12, %r9
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	update_
	addq	$160, %rsp
	movq	24(%rbp), %r9
	leaq	-68(%rbp), %r8
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	80(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-76(%rbp), %rdi
	pushq	%rdi
	pushq	64(%rbp)
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	pushq	48(%rbp)
	movq	%rax, %rdi
	call	monit_
	addq	$48, %rsp
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-92(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r11
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movl	-100(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-88(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-144(%rbp), %r13
	movq	-136(%rbp), %r12
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-72(%rbp), %rax
	pushq	%rbx
	pushq	%r11
	pushq	%r10
	pushq	-144(%rbp)
	pushq	%rdi
	pushq	80(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-52(%rbp), %rdi
	pushq	%rdi
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	pushq	64(%rbp)
	pushq	%r9
	pushq	%r8
	pushq	72(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	-160(%rbp)
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rax, %rdi
	call	findp_
	addq	$144, %rsp
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movl	-88(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	88(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-144(%rbp), %rbx
	movq	-136(%rbp), %r11
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-64(%rbp), %rax
	pushq	%rdi
	pushq	80(%rbp)
	leaq	-80(%rbp), %rdi
	pushq	%rdi
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	72(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	-160(%rbp)
	movq	%rbx, %r9
	movq	%r11, %r8
	movq	%rax, %rdi
	call	step_
	addq	$96, %rsp
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L5
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movss	-80(%rbp), %xmm1
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-52(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-52(%rbp), %xmm0
	ucomiss	%xmm0, %xmm1
	setp	%al
	movzbl	%al, %eax
	movl	$1, %ecx
	ucomiss	%xmm0, %xmm1
	cmovne	%ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	nop
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cl1_, .-cl1_
	.section	.rodata
	.align 4
.LC0:
	.long	1
	.align 4
.LC3:
	.long	1
	.align 4
.LC4:
	.long	0
	.text
	.globl	step_
	.type	step_, @function
step_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movss	zero.4102(%rip), %xmm0
	movq	80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	$0, -108(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L24
	movq	-128(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L10:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L24
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	96(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-72(%rbp), %eax
	cltq
	leaq	-1(%rax), %r14
	movq	64(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movd	%xmm0, %eax
	movq	72(%rbp), %rdx
	movl	%eax, (%rdx,%r14,4)
	addl	$1, -36(%rbp)
	jmp	.L10
.L24:
	nop
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L25
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L8
.L25:
	nop
	movl	-68(%rbp), %eax
	movl	-64(%rbp), %r13d
	movl	%eax, -36(%rbp)
.L15:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L26
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	96(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	48(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	64(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movd	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	72(%rbp), %rax
	movss	-80(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movss	one.4095(%rip), %xmm0
	movss	-76(%rbp), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm3
	movaps	%xmm1, %xmm5
	andps	%xmm3, %xmm5
	andps	%xmm2, %xmm0
	orps	%xmm5, %xmm0
	movss	one.4095(%rip), %xmm1
	movss	-80(%rbp), %xmm2
	movss	.LC1(%rip), %xmm3
	movss	.LC2(%rip), %xmm4
	movaps	%xmm2, %xmm6
	andps	%xmm4, %xmm6
	andps	%xmm3, %xmm1
	orps	%xmm6, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	ucomiss	%xmm1, %xmm0
	cmove	%eax, %edx
	movss	zero.4102(%rip), %xmm0
	ucomiss	-76(%rbp), %xmm0
	setp	%al
	movzbl	%al, %eax
	movl	$1, %ecx
	ucomiss	-76(%rbp), %xmm0
	cmovne	%ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L27
	movss	-76(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-80(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	one.4095(%rip), %xmm1
	movss	-80(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L14
	movss	big.4077(%rip), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-80(%rbp), %xmm1
	movss	-76(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L27
.L14:
	movss	-76(%rbp), %xmm0
	divss	-80(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movl	-108(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	96(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	96(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	96(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-108(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	104(%rbp), %rax
	movss	-84(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L13
.L27:
	nop
.L13:
	addl	$1, -36(%rbp)
	jmp	.L15
.L26:
	nop
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	jg	.L28
	movq	16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L8
.L28:
	nop
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	96(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	104(%rbp), %rdx
	leaq	-108(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	call	dkheap_
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	64(%rbp), %rdx
	movq	56(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movd	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movq	64(%rbp), %rcx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movq	56(%rbp), %rcx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movl	-108(%rbp), %ebx
	movl	$1, -36(%rbp)
.L21:
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	96(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	48(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	one.4095(%rip), %xmm0
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm3
	movaps	%xmm1, %xmm7
	andps	%xmm3, %xmm7
	andps	%xmm2, %xmm0
	orps	%xmm7, %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.L18
	movss	two.4101(%rip), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
.L18:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jg	.L19
	movq	88(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
.L19:
	movl	-72(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	eps.4084(%rip), %xmm0
	mulss	-100(%rbp), %xmm0
	mulss	-96(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	-40(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L30
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	96(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	104(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	call	dkheap_
	addl	$1, -36(%rbp)
	jmp	.L21
.L29:
	nop
	movq	16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L8
.L30:
	nop
	movq	-120(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	104(%rbp), %rax
	movss	(%rax), %xmm0
	movq	80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	40(%rbp), %rcx
	movq	64(%rbp), %rdx
	movq	80(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
	jmp	.L8
.L23:
	nop
.L8:
	nop
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	step_, .-step_
	.globl	saxpy_
	.type	saxpy_, @function
saxpy_:
.LFB2:
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
	setle	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L31
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L34
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	testl	%eax, %eax
	jg	.L50
	testl	%eax, %eax
	jns	.L51
.L34:
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L37
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L37:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L38
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L38:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L40:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L52
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
	jmp	.L40
.L52:
	nop
	jmp	.L31
.L51:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L41
	movl	-20(%rbp), %edx
	movl	$1, -4(%rbp)
.L43:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L53
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
	jmp	.L43
.L53:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jle	.L31
.L41:
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
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L54
.L45:
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
	je	.L54
	jmp	.L45
.L54:
	nop
	jmp	.L31
.L50:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L46
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L55
	jmp	.L49
.L46:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L55
.L49:
	movq	-48(%rbp), %rdx
	movss	(%rdx), %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-56(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	mulss	%xmm0, %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-72(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L55
	jmp	.L49
.L55:
	nop
	nop
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	saxpy_, .-saxpy_
	.globl	dkheap_
	.type	dkheap_, @function
dkheap_:
.LFB3:
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
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L68
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L69
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L69
.L68:
	nop
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L60
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L60:
	movl	$0, -16(%rbp)
.L67:
	cmpl	$1, -4(%rbp)
	jg	.L70
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L56
	movl	$1, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L71
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L56
.L70:
	nop
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L63
.L71:
	nop
.L63:
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
.L66:
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	sall	-12(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jg	.L72
	testl	%eax, %eax
	jns	.L73
	nop
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L73
	addl	$1, -12(%rbp)
	jmp	.L65
.L73:
	nop
.L65:
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	comiss	-20(%rbp), %xmm0
	jnb	.L72
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L66
.L72:
	nop
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L67
.L69:
	nop
.L56:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dkheap_, .-dkheap_
	.globl	sasum_
	.type	sasum_, @function
sasum_:
.LFB4:
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
	movss	%xmm0, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L75
	movss	-20(%rbp), %xmm0
	jmp	.L87
.L75:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L88
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L78
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L89
	jmp	.L81
.L78:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L89
.L81:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-48(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L89
	jmp	.L81
.L89:
	nop
	movss	-20(%rbp), %xmm0
	jmp	.L87
.L88:
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
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L82
	movl	-12(%rbp), %edx
	movl	$1, -4(%rbp)
.L84:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L90
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L84
.L90:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jg	.L82
	movss	-20(%rbp), %xmm0
	jmp	.L87
.L82:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
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
	jl	.L91
.L86:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$6, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L91
	jmp	.L86
.L91:
	nop
	movss	-20(%rbp), %xmm0
.L87:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	sasum_, .-sasum_
	.globl	sdot_
	.type	sdot_, @function
sdot_:
.LFB5:
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
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L93
	movss	-28(%rbp), %xmm0
	jmp	.L111
.L93:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L95
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	testl	%eax, %eax
	jg	.L112
	testl	%eax, %eax
	jns	.L113
.L95:
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L98
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L98:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L99
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L99:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L101:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L114
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
	mulss	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L101
.L114:
	nop
	movss	-28(%rbp), %xmm0
	jmp	.L111
.L113:
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
	je	.L102
	movl	-20(%rbp), %edx
	movl	$1, -4(%rbp)
.L104:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L115
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
	mulss	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L104
.L115:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jg	.L102
	movss	-28(%rbp), %xmm0
	jmp	.L111
.L102:
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
	jl	.L116
.L106:
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
	mulss	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm0, %xmm1
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
	movss	%xmm0, -28(%rbp)
	addl	$5, -4(%rbp)
	movl	%edx, %eax
	subl	$1, %edx
	testl	%eax, %eax
	je	.L116
	jmp	.L106
.L116:
	nop
	movss	-28(%rbp), %xmm0
	jmp	.L111
.L112:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L107
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L117
	jmp	.L110
.L107:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L117
.L110:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-48(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	mulss	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L117
	jmp	.L110
.L117:
	nop
	movss	-28(%rbp), %xmm0
.L111:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sdot_, .-sdot_
	.globl	findp_
	.type	findp_, @function
findp_:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L140
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	$1, -76(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movq	64(%rbp), %r9
	movq	136(%rbp), %r8
	movq	128(%rbp), %rcx
	movq	120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	-92(%rbp), %rdi
	pushq	%rdi
	pushq	72(%rbp)
	movq	%rax, %rdi
	call	zdrpoc_
	addq	$16, %rsp
	movl	-92(%rbp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L141
	movq	16(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L119
.L141:
	nop
	movss	equiv.21.4328(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movq	72(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	sscal_
	movq	72(%rbp), %rcx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	64(%rbp), %rcx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movq	88(%rbp), %rax
	movss	(%rax), %xmm1
	movq	104(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	96(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	eps.4337(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L140
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L142
	movl	-76(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	152(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	64(%rbp), %r9
	movq	144(%rbp), %r10
	movq	128(%rbp), %rcx
	movq	120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	-92(%rbp), %rdi
	pushq	%rdi
	pushq	%r8
	movq	%r10, %r8
	movq	%rax, %rdi
	call	zdrgnv_
	addq	$16, %rsp
	movl	-92(%rbp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L143
	movq	16(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L119
.L143:
	nop
	movl	-76(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	152(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	24(%rbp), %r9
	leaq	-96(%rbp), %r8
	movq	-136(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	pushq	112(%rbp)
	pushq	104(%rbp)
	pushq	%rdi
	pushq	64(%rbp)
	pushq	32(%rbp)
	movq	%rax, %rdi
	call	getv_
	addq	$48, %rsp
	movss	equiv.20.4322(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L144
	movl	-80(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	152(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-76(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	152(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	144(%rbp), %r8
	movq	128(%rbp), %rcx
	movq	120(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	leaq	-92(%rbp), %rdi
	pushq	%rdi
	pushq	72(%rbp)
	movq	%rax, %rdi
	call	zdrgit_
	addq	$32, %rsp
	movl	-92(%rbp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L124
	movq	72(%rbp), %rcx
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
.L124:
	movl	-92(%rbp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L144
	movq	16(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L119
.L144:
	nop
	movq	88(%rbp), %rax
	movss	(%rax), %xmm1
	movq	104(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movq	96(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	eps.4337(%rip), %xmm0
	mulss	%xmm1, %xmm0
	comiss	-44(%rbp), %xmm0
	jnb	.L142
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -36(%rbp)
.L129:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L142
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	48(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-160(%rbp), %rdx
	movl	(%rdx), %edx
	movl	$1, -40(%rbp)
.L128:
	cmpl	%edx, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L145
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rbx, %rcx
	leaq	(%r12,%rcx), %rsi
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	24(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-88(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L126
	movss	-88(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L126:
	addl	$1, -40(%rbp)
	jmp	.L128
.L145:
	nop
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	eps.4337(%rip), %xmm1
	mulss	-48(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L140
	addl	$1, -36(%rbp)
	jmp	.L129
.L142:
	nop
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	movq	24(%rbp), %rdi
	movq	-160(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	pushq	152(%rbp)
	pushq	144(%rbp)
	pushq	128(%rbp)
	pushq	120(%rbp)
	pushq	112(%rbp)
	pushq	56(%rbp)
	pushq	80(%rbp)
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%rdi, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rdi
	call	refine_
	addq	$80, %rsp
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L140
	movl	-100(%rbp), %eax
	cmpl	%eax, -72(%rbp)
	jg	.L140
	movl	-72(%rbp), %edx
	movl	-100(%rbp), %eax
	movl	%edx, -36(%rbp)
.L136:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L140
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	48(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-160(%rbp), %rdx
	movl	(%rdx), %edx
	movl	$1, -40(%rbp)
.L133:
	cmpl	%edx, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L146
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rbx, %rcx
	leaq	(%r12,%rcx), %rsi
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	24(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movq	40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-88(%rbp), %xmm0
	comiss	-48(%rbp), %xmm0
	jbe	.L131
	movss	-88(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L131:
	addl	$1, -40(%rbp)
	jmp	.L133
.L146:
	nop
	movss	eps.4337(%rip), %xmm0
	movss	-48(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-96(%rbp), %edx
	cmpl	%edx, -36(%rbp)
	jg	.L147
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-48(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L148
	movq	16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L119
.L147:
	nop
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	-48(%rbp), %xmm1
	movss	.LC2(%rip), %xmm2
	xorps	%xmm2, %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L148
	movq	16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L119
.L148:
	nop
	addl	$1, -36(%rbp)
	jmp	.L136
.L140:
	nop
.L119:
	nop
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	findp_, .-findp_
	.globl	refine_
	.type	refine_, @function
refine_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r13
	notq	%r13
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L157
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -36(%rbp)
.L152:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L158
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	56(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	32(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	48(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L152
.L158:
	nop
	movq	48(%rbp), %r9
	movq	80(%rbp), %r8
	movq	72(%rbp), %rcx
	movq	64(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-112(%rbp), %rax
	subq	$8, %rsp
	pushq	88(%rbp)
	leaq	-68(%rbp), %rdi
	pushq	%rdi
	pushq	24(%rbp)
	movq	%rax, %rdi
	call	zdrgit_
	addq	$32, %rsp
	movl	-68(%rbp), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L159
	movq	-120(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L150
.L159:
	nop
	movss	zero.4507(%rip), %xmm0
	movq	40(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -36(%rbp)
.L155:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L157
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	24(%rbp), %rdx
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	48(%rbp), %rax
	movss	-64(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L154
	movq	40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-64(%rbp), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	40(%rbp), %rax
	movss	%xmm0, (%rax)
.L154:
	addl	$1, -36(%rbp)
	jmp	.L155
.L157:
	nop
.L150:
	nop
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	refine_, .-refine_
	.section	.rodata
	.align 4
.LC6:
	.long	0
	.text
	.globl	zdrgit_
	.type	zdrgit_, @function
zdrgit_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r13
	notq	%r13
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L169
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L160
.L169:
	nop
	movq	32(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	scopy_
	movl	$2, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -36(%rbp)
.L166:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L170
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-60(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	one.4546(%rip), %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L171
	movss	-64(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-60(%rbp), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm0, %xmm2
	movss	big.4542(%rip), %xmm0
	mulss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	.L171
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L160
.L171:
	nop
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-64(%rbp), %xmm0
	divss	-60(%rbp), %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L165
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	leaq	-72(%rbp), %rsi
	leaq	-68(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
.L165:
	movl	-44(%rbp), %eax
	addl	%eax, -40(%rbp)
	subl	$1, -44(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L166
.L170:
	nop
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.38.4539(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movq	-96(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -36(%rbp)
.L168:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L172
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	32(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	16(%rbp), %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
	addl	$1, -36(%rbp)
	jmp	.L168
.L172:
	nop
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L160:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	zdrgit_, .-zdrgit_
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
	jle	.L173
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L176
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	testl	%eax, %eax
	jg	.L192
	testl	%eax, %eax
	jns	.L193
.L176:
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L179
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L179:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L180
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L180:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L182:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L194
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
	jmp	.L182
.L194:
	nop
	jmp	.L173
.L193:
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
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	sall	$3, %edx
	subl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L183
	movl	-20(%rbp), %edx
	movl	$1, -4(%rbp)
.L185:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L195
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
	jmp	.L185
.L195:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jle	.L173
.L183:
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
	imulq	$613566757, %rdx, %rdx
	shrq	$32, %rdx
	subl	%edx, %esi
	shrl	%esi
	addl	%esi, %edx
	shrl	$2, %edx
	cmpl	%eax, %ecx
	jl	.L196
.L187:
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
	je	.L196
	jmp	.L187
.L196:
	nop
	jmp	.L173
.L192:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L188
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L197
	jmp	.L191
.L188:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L197
.L191:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-48(%rbp), %rdx
	movss	(%rdx,%rdi,4), %xmm0
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L197
	jmp	.L191
.L197:
	nop
	nop
.L173:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	scopy_, .-scopy_
	.globl	getv_
	.type	getv_, @function
getv_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movss	one.4644(%rip), %xmm1
	movss	eps.4639(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movss	zero.4649(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L209
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm5
	movss	%xmm5, -116(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	unif01_
	mulss	-116(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -24(%rbp)
.L206:
	cmpl	%eax, -24(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L210
	addl	$1, -28(%rbp)
	movq	-80(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, -28(%rbp)
	jle	.L201
	movl	$1, -28(%rbp)
.L201:
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	48(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	movl	%edx, -56(%rbp)
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	32(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movss	zero.4649(%rip), %xmm0
	movq	32(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movq	-104(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, -56(%rbp)
	jg	.L211
	movq	-96(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, -56(%rbp)
	jg	.L203
	movq	40(%rbp), %rdx
	movss	(%rdx), %xmm1
	movss	-20(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
.L203:
	movss	-20(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-52(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	jmp	.L204
.L211:
	nop
	movss	eps.4639(%rip), %xmm0
	addss	-20(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
.L204:
	movss	-64(%rbp), %xmm0
	comiss	-36(%rbp), %xmm0
	jnb	.L212
	movq	-72(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, (%rdx)
	movss	one.4644(%rip), %xmm0
	movss	-20(%rbp), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andps	%xmm2, %xmm0
	orps	%xmm4, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-64(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L205
.L212:
	nop
.L205:
	addl	$1, -24(%rbp)
	jmp	.L206
.L210:
	nop
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L209
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	one.4644(%rip), %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	48(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jg	.L209
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-32(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-32(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jg	.L207
	movq	40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
.L207:
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	24(%rbp), %rcx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
	jmp	.L199
.L209:
	nop
.L199:
	nop
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	getv_, .-getv_
	.globl	unif01_
	.type	unif01_, @function
unif01_:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L214
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	imulq	$-767004587, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$13, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$9973, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L214
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, ix0.4676(%rip)
.L214:
	movl	ix0.4676(%rip), %eax
	imull	$66, %eax, %eax
	movslq	%eax, %rdx
	imulq	$-767004587, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$13, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$9973, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	imull	$52, %edx, %eax
	movslq	%eax, %rdx
	imulq	$-767004587, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$13, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$9973, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, ix0.4676(%rip)
	movl	ix0.4676(%rip), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	ix0.4676(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	unif01_, .-unif01_
	.globl	zdrgnv_
	.type	zdrgnv_, @function
zdrgnv_:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r14
	notq	%r14
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L225
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L216
.L225:
	nop
	movq	-96(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -36(%rbp)
.L220:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L226
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r14, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %r13
	movq	-128(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movd	%xmm0, %eax
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx,%r13,4)
	addl	$1, -36(%rbp)
	jmp	.L220
.L226:
	nop
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	imull	%eax, %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	3(%rax), %esi
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$2, %eax
	imull	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$2, %eax
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$3, %eax
	movl	%eax, -48(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -40(%rbp)
.L224:
	cmpl	%ebx, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L227
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -52(%rbp)
	cmpl	$1, -40(%rbp)
	jle	.L222
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-120(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movss	-52(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
.L222:
	movss	-68(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	one.4686(%rip), %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L228
	movss	-52(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-68(%rbp), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm0, %xmm2
	movss	big.4681(%rip), %xmm0
	mulss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	.L228
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L216
.L228:
	nop
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-52(%rbp), %xmm0
	divss	-68(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-48(%rbp), %eax
	subl	%eax, -44(%rbp)
	addl	$1, -48(%rbp)
	addl	$1, -40(%rbp)
	jmp	.L224
.L227:
	nop
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L216:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	zdrgnv_, .-zdrgnv_
	.globl	sscal_
	.type	sscal_, @function
sscal_:
.LFB13:
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
	jle	.L229
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L242
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L233
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L243
	jmp	.L236
.L233:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L243
.L236:
	movq	-32(%rbp), %rdx
	movss	(%rdx), %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L243
	jmp	.L236
.L243:
	nop
	jmp	.L229
.L242:
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
	je	.L237
	movl	-12(%rbp), %edx
	movl	$1, -4(%rbp)
.L239:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L244
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
	jmp	.L239
.L244:
	nop
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L229
.L237:
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
	jl	.L245
.L241:
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
	je	.L245
	jmp	.L241
.L245:
	nop
	nop
.L229:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sscal_, .-sscal_
	.globl	zdrpoc_
	.type	zdrpoc_, @function
zdrpoc_:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%eax, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L254
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L246
.L254:
	nop
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L255
	movq	-112(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	scopy_
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L246
.L255:
	nop
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L256
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.59.4750(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L246
.L256:
	nop
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.59.4750(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L252:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L257
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	leaq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	16(%rbp), %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
	addl	$1, -36(%rbp)
	jmp	.L252
.L257:
	nop
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L246:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	zdrpoc_, .-zdrpoc_
	.section	.rodata
.LC8:
	.string	"5631.f"
	.align 8
.LC9:
	.ascii	"(20H0***** CYCLE NUMBER ,I5/                                "
	.ascii	"       6X,13HSTEP TAKEN = ,1PE15.7/                         "
	.ascii	"             6X,11HX-VECTOR...)"
.LC10:
	.ascii	"(5X,3(1PE15.7))"
	.align 8
.LC11:
	.ascii	"(6X,38HNUMBER OF ACTIVE EQUATIONS/CONSTRAINTS,I5)"
	.align 8
.LC12:
	.ascii	"(6X,31HACTIVE EQUATIONS/CONSTRAINTS...)"
.LC13:
	.ascii	"(5X,7I5)"
	.align 8
.LC14:
	.ascii	"(6X,19HRESIDUAL L1 NORM = ,1PE15.7)"
	.align 8
.LC15:
	.ascii	"(6X,20HPENALTY PARAMETER = ,1PE10.2/                        "
	.ascii	"       6X,25HPENALTY FUNCTION VALUE = ,1PE15.7)"
	.text
	.globl	monit_
	.type	monit_, @function
monit_:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movq	%r8, -600(%rbp)
	movq	%r9, -608(%rbp)
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L266
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$857, -544(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$151, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-600(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	24(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$858, -544(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-592(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -20(%rbp)
.L261:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L267
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L267
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L261
.L267:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$859, -544(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$49, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-568(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L268
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$861, -544(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$39, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$862, -544(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$8, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-568(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -20(%rbp)
.L264:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L269
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L269
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L264
.L269:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L262
.L268:
	nop
.L262:
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$864, -544(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$35, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	32(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-576(%rbp), %rax
	movl	(%rax), %edx
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jle	.L266
	leaq	.LC8(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$865, -544(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$107, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	nxoutp.4787(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	48(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movq	40(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
.L266:
	nop
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	monit_, .-monit_
	.globl	update_
	.type	update_, @function
update_:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$80, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L274
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	24(%rbp), %rax
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L275
	movq	32(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L271
.L275:
	nop
	movq	136(%rbp), %rdi
	movq	128(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	120(%rbp)
	pushq	152(%rbp)
	pushq	144(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	delcol_
	addq	$32, %rsp
	movq	56(%rbp), %rdi
	movq	48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	120(%rbp)
	pushq	80(%rbp)
	pushq	72(%rbp)
	pushq	64(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	resid_
	addq	$32, %rsp
	movq	136(%rbp), %rdi
	movq	128(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	160(%rbp)
	pushq	120(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	pushq	152(%rbp)
	pushq	144(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	16(%rbp), %rcx
	movq	%rax, %rdi
	call	addcol_
	addq	$48, %rsp
	leaq	-40(%rbp), %rdi
	leaq	-36(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	120(%rbp)
	pushq	112(%rbp)
	pushq	104(%rbp)
	pushq	96(%rbp)
	pushq	88(%rbp)
	pushq	80(%rbp)
	pushq	56(%rbp)
	pushq	48(%rbp)
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	object_
	addq	$64, %rsp
	jmp	.L271
.L274:
	nop
.L271:
	nop
	leaq	-16(%rbp), %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	update_, .-update_
	.globl	object_
	.type	object_, @function
object_:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r13
	notq	%r13
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movss	equiv.79.4902(%rip), %xmm0
	movq	48(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	equiv.79.4902(%rip), %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	40(%rbp), %rdx
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.79.4902(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jg	.L283
	movl	-52(%rbp), %eax
	movq	-104(%rbp), %rdx
	movl	(%rdx), %r12d
	movl	%eax, -36(%rbp)
.L281:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L283
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	72(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	one.4915(%rip), %xmm0
	movss	-40(%rbp), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andps	%xmm2, %xmm0
	orps	%xmm4, %xmm0
	movss	%xmm0, -64(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L278
	movss	half.4910(%rip), %xmm6
	movss	%xmm6, -116(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	unif01_
	movss	-116(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movss	one.4915(%rip), %xmm0
	movss	.LC1(%rip), %xmm2
	movss	.LC2(%rip), %xmm3
	movaps	%xmm1, %xmm5
	andps	%xmm3, %xmm5
	andps	%xmm2, %xmm0
	orps	%xmm5, %xmm0
	movss	%xmm0, -64(%rbp)
.L278:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	setg	%al
	movzbl	%al, %edx
	movss	-64(%rbp), %xmm0
	movss	equiv.79.4902(%rip), %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L284
	movss	-40(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jg	.L285
	movq	48(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-40(%rbp), %xmm0
	movq	48(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	64(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-40(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	64(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-64(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	jmp	.L280
.L285:
	nop
.L280:
	movq	56(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-40(%rbp), %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movq	40(%rbp), %rcx
	leaq	-64(%rbp), %rsi
	movq	-112(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	saxpy_
	jmp	.L279
.L284:
	nop
.L279:
	addl	$1, -36(%rbp)
	jmp	.L281
.L283:
	nop
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	object_, .-object_
	.globl	addcol_
	.type	addcol_, @function
addcol_:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jg	.L291
	movl	-64(%rbp), %eax
	movq	-104(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L289:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L291
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	48(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	leaq	-84(%rbp), %rdi
	pushq	%rdi
	pushq	56(%rbp)
	movq	%r8, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rdi
	call	zdrpoc_
	addq	$16, %rsp
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movq	56(%rbp), %rcx
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_
	movd	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movss	eps.4944(%rip), %xmm0
	mulss	-76(%rbp), %xmm0
	comiss	-80(%rbp), %xmm0
	setnb	%al
	movzbl	%al, %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L292
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	48(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	48(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	24(%rbp), %r9
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	subq	$8, %rsp
	pushq	56(%rbp)
	leaq	-84(%rbp), %rdi
	pushq	%rdi
	pushq	%r8
	movq	16(%rbp), %r8
	movq	%rax, %rdi
	call	zdrcin_
	addq	$32, %rsp
	jmp	.L288
.L292:
	nop
.L288:
	addl	$1, -36(%rbp)
	jmp	.L289
.L291:
	nop
	nop
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	addcol_, .-addcol_
	.globl	zdrcin_
	.type	zdrcin_, @function
zdrcin_:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %eax
	andl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L305
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L293
.L305:
	nop
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L306
	movq	-128(%rbp), %rax
	movl	$0, (%rax)
	movq	-152(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.93.4998(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -104(%rbp)
	movq	-136(%rbp), %rdx
	leaq	-104(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	equiv.92.4992(%rip), %rsi
	movq	%rax, %rdi
	call	scopy_
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -36(%rbp)
.L297:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L306
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movss	equiv.93.4998(%rip), %xmm0
	movq	-136(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L297
.L306:
	nop
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	movl	%eax, -64(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L299:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L307
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %r14
	movq	-120(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movd	%xmm0, %eax
	movq	32(%rbp), %rdx
	movl	%eax, (%rdx,%r14,4)
	addl	$1, -36(%rbp)
	jmp	.L299
.L307:
	nop
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jg	.L308
	movl	-64(%rbp), %eax
	movq	-120(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L301:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L308
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	leaq	-68(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	srotmg_
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-100(%rbp), %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-68(%rbp), %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-136(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-96(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %r9
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	srotm_
	addl	$1, -36(%rbp)
	jmp	.L301
.L308:
	nop
	movl	-64(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %edx
	movl	$1, -36(%rbp)
.L303:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L309
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	32(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-44(%rbp), %eax
	addl	%eax, -40(%rbp)
	subl	$1, -44(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L303
.L309:
	nop
	movq	-128(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L293:
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	zdrcin_, .-zdrcin_
	.globl	srotm_
	.type	srotm_, @function
srotm_:
.LFB20:
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
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movss	two.5082(%rip), %xmm0
	addss	-16(%rbp), %xmm0
	movss	zero.5085(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	ucomiss	%xmm1, %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L343
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L344
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	movss	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	.L341
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	ja	.L345
	nop
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-20(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L316
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L346
	jmp	.L319
.L316:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L346
.L319:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-80(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	-32(%rbp), %xmm0
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	movss	-32(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	-36(%rbp), %xmm0
	movq	-80(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L346
	jmp	.L319
.L346:
	nop
	jmp	.L311
.L341:
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-96(%rbp), %rax
	movss	16(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-20(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L320
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L347
	jmp	.L323
.L320:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L347
.L323:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-80(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	-36(%rbp), %xmm0
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	movss	-28(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	subss	-32(%rbp), %xmm0
	movq	-80(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L347
	jmp	.L323
.L347:
	nop
	jmp	.L311
.L345:
	nop
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-96(%rbp), %rax
	movss	16(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-20(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -4(%rbp)
	testl	%ecx, %ecx
	jns	.L324
	movl	%esi, %eax
	movl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	movl	$0, %edx
	divl	%edi
	cmpl	$1, %esi
	jg	.L348
	jmp	.L327
.L324:
	movl	%esi, %eax
	subl	$1, %eax
	movl	%ecx, %edi
	movl	$0, %edx
	divl	%edi
	testl	%esi, %esi
	jle	.L348
.L327:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-64(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-80(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	%xmm1, %xmm0
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addss	%xmm1, %xmm0
	movq	-80(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	%ecx, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L348
	jmp	.L327
.L348:
	nop
	jmp	.L311
.L344:
	nop
	movl	$1, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L328
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L328:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L329
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L329:
	movss	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	.L342
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	ja	.L349
	nop
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L334:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L350
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	-32(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	-32(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	-36(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L334
.L350:
	nop
	jmp	.L311
.L342:
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-96(%rbp), %rax
	movss	16(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L336:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L351
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	-36(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	-28(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	-32(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L336
.L351:
	nop
	jmp	.L311
.L349:
	nop
	movq	-96(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-96(%rbp), %rax
	movss	12(%rax), %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-96(%rbp), %rax
	movss	8(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-96(%rbp), %rax
	movss	16(%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L337:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L343
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-36(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L337
.L343:
	nop
.L311:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	srotm_, .-srotm_
	.section	.rodata
	.align 8
.LC16:
	.string	"Assigned label is not a target label"
.LC17:
	.string	"At line 3045 of file 5631.f"
	.text
	.globl	srotmg_
	.type	srotmg_, @function
srotmg_:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$-2, -8(%rbp)
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movss	zero.5157(%rip), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L386
	nop
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	zero.5157(%rip), %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L355
	ucomiss	-40(%rbp), %xmm0
	jne	.L387
	movss	two.5156(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L356
.L387:
	nop
.L355:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-40(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-48(%rbp), %xmm1
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L388
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-40(%rbp), %xmm0
	divss	-44(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	one.5142(%rip), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	-32(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	zero.5157(%rip), %xmm0
	comiss	-56(%rbp), %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L389
	nop
	movss	zero.5157(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm0
	divss	-56(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	divss	-56(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-56(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L372
.L388:
	nop
	movss	zero.5157(%rip), %xmm0
	comiss	-48(%rbp), %xmm0
	seta	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L390
	nop
	movss	one.5142(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-44(%rbp), %xmm0
	divss	-40(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-36(%rbp), %xmm1
	movss	one.5142(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	divss	-56(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm0
	divss	-56(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-56(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L372
.L386:
	nop
	jmp	.L354
.L389:
	nop
	jmp	.L354
.L390:
	nop
.L354:
	movss	one.5142(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	zero.5157(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	zero.5157(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	zero.5157(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	zero.5157(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	zero.5157(%rip), %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	zero.5157(%rip), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	zero.5157(%rip), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L361
.L371:
	movss	zero.5157(%rip), %xmm1
	movss	-20(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L391
	movss	zero.5157(%rip), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L363
	ucomiss	-20(%rbp), %xmm0
	jne	.L392
	movss	one.5142(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	one.5142(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	one.5142(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L362
.L392:
	nop
.L363:
	movss	one.5142(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	one.5142(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	one.5142(%rip), %xmm0
	movss	.LC2(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L362
.L391:
	nop
.L362:
	cmpq	$-1, -8(%rbp)
	je	.L364
	leaq	.LC16(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L364:
	movq	-16(%rbp), %rax
	nop
	jmp	*%rax
.L372:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movss	rgamsq.5144(%rip), %xmm0
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L393
	movl	iflag.5138(%rip), %eax
	cmpl	$1, %eax
	jne	.L394
	movss	one.5142(%rip), %xmm0
	movss	gam.5136(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, rgam.5143(%rip)
	movss	gam.5136(%rip), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, gamsq.5137(%rip)
	movss	rgam.5143(%rip), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, rgamsq.5144(%rip)
	movl	$2, iflag.5138(%rip)
	jmp	.L367
.L394:
	nop
.L367:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm0
	movss	zero.5157(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L382
	ucomiss	%xmm1, %xmm0
	je	.L368
.L382:
	movq	$-1, -8(%rbp)
	leaq	.L370(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L371
.L370:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movss	gamsq.5137(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm1
	movss	rgam.5143(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	rgam.5143(%rip), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	rgam.5143(%rip), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L372
.L393:
	nop
.L366:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm0
	movss	gamsq.5137(%rip), %xmm1
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L395
	movq	$-1, -8(%rbp)
	leaq	.L373(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L371
.L373:
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm1
	movss	rgamsq.5144(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movss	(%rax), %xmm1
	movss	gam.5136(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	gam.5136(%rip), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	gam.5136(%rip), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.L366
.L395:
	nop
.L368:
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	rgamsq.5144(%rip), %xmm0
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L396
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movss	zero.5157(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L383
	ucomiss	%xmm1, %xmm0
	je	.L361
.L383:
	movq	$-1, -8(%rbp)
	leaq	.L376(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L371
.L376:
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm1
	movss	gamsq.5137(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	rgam.5143(%rip), %xmm0
	movss	-32(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	rgam.5143(%rip), %xmm0
	movss	-36(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L368
.L396:
	nop
.L374:
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	gamsq.5137(%rip), %xmm1
	comiss	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	xorl	$1, %eax
	testl	%eax, %eax
	jne	.L397
	movq	$-1, -8(%rbp)
	leaq	.L377(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L371
.L377:
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm1
	movss	rgamsq.5144(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	gam.5136(%rip), %xmm0
	movss	-32(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	gam.5136(%rip), %xmm0
	movss	-36(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L374
.L397:
	nop
.L361:
	movss	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	.L385
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	ja	.L398
	nop
	movq	-104(%rbp), %rax
	movss	-32(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-104(%rbp), %rax
	movss	-28(%rbp), %xmm0
	movss	%xmm0, 12(%rax)
	jmp	.L356
.L385:
	movq	-104(%rbp), %rax
	movss	-24(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-104(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	jmp	.L356
.L398:
	nop
	movq	-104(%rbp), %rax
	movss	-24(%rbp), %xmm0
	movss	%xmm0, 4(%rax)
	movq	-104(%rbp), %rax
	movss	-32(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-104(%rbp), %rax
	movss	-28(%rbp), %xmm0
	movss	%xmm0, 12(%rax)
	movq	-104(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
.L356:
	movq	-104(%rbp), %rax
	movss	-20(%rbp), %xmm0
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	srotmg_, .-srotmg_
	.globl	resid_
	.type	resid_, @function
resid_:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	eps.5209(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L414
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -36(%rbp)
.L401:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L414
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	40(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	zero.5221(%rip), %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L401
.L414:
	nop
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jg	.L415
	movl	-72(%rbp), %eax
	movq	-120(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L409:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L415
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	40(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	16(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	sdot_
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -40(%rbp)
.L406:
	cmpl	%eax, -40(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L416
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	16(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0
	comiss	-44(%rbp), %xmm0
	jbe	.L404
	movss	-80(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
.L404:
	addl	$1, -40(%rbp)
	jmp	.L406
.L416:
	nop
	movss	-44(%rbp), %xmm0
	mulss	-60(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-76(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L417
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L408
.L417:
	nop
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	40(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	40(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	zero.5221(%rip), %xmm0
	movq	32(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
.L408:
	addl	$1, -36(%rbp)
	jmp	.L409
.L415:
	nop
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jge	.L418
	movl	-64(%rbp), %eax
	movq	-104(%rbp), %rdx
	movl	(%rdx), %ebx
	movl	%eax, -36(%rbp)
.L411:
	cmpl	%ebx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L418
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, -148(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	unif01_
	mulss	-148(%rbp), %xmm0
	cvttss2sil	%xmm0, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	40(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	40(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	40(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L411
.L418:
	nop
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	resid_, .-resid_
	.globl	delcol_
	.type	delcol_, @function
delcol_:
.LFB23:
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
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L424
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -4(%rbp)
.L422:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L425
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	32(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L422
.L425:
	nop
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	32(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	24(%rbp), %r8
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	leaq	-28(%rbp), %rdi
	pushq	%rdi
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rdi
	call	zdrcou_
	addq	$16, %rsp
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L420
.L424:
	nop
.L420:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	delcol_, .-delcol_
	.globl	zdrcou_
	.type	zdrcou_, @function
zdrcou_:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-128(%rbp), %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L437
	movq	24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L426
.L437:
	nop
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L438
	movq	-128(%rbp), %rax
	movl	$0, (%rax)
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L426
.L438:
	nop
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L439
	movq	-128(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L426
.L439:
	nop
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L435:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L440
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%eax, -40(%rbp)
.L433:
	cmpl	%edx, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L441
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-160(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -40(%rbp)
	jmp	.L433
.L441:
	nop
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L442
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	srotmg_
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-100(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	-76(%rbp), %xmm0
	movq	-152(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-44(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-160(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rax
	movq	%rcx, %r9
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	srotm_
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-136(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r12, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-136(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-96(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %r9
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	srotm_
	addl	$1, -52(%rbp)
	jmp	.L434
.L442:
	nop
.L434:
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	addl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	addl	%eax, -44(%rbp)
	subl	$1, -48(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L435
.L440:
	nop
	movq	-128(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L426:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	zdrcou_, .-zdrcou_
	.globl	newpen_
	.type	newpen_, @function
newpen_:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r13
	notq	%r13
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L447
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	24(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movss	zero.5344(%rip), %xmm0
	movq	80(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	88(%rbp), %rax
	movss	(%rax), %xmm0
	movss	oct.5342(%rip), %xmm1
	divss	%xmm1, %xmm0
	movq	88(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-52(%rbp), %r12d
	movl	$1, -36(%rbp)
.L445:
	cmpl	%r12d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L447
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	48(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rdi
	call	sdot_
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	subss	%xmm1, %xmm0
	movq	64(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	zero.5344(%rip), %xmm0
	movq	72(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	96(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -36(%rbp)
	jmp	.L445
.L447:
	nop
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	newpen_, .-newpen_
	.globl	setup_
	.type	setup_, @function
setup_:
.LFB26:
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
	movq	80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	movq	%rax, %rcx
	notq	%rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%edx, %esi
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%esi, %edx
	movl	%edx, -28(%rbp)
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	testl	%edx, %edx
	setg	%dl
	movzbl	%dl, %esi
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	notl	%edx
	shrl	$31, %edx
	andl	%edx, %esi
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	notl	%edx
	shrl	$31, %edx
	andl	%edx, %esi
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	notl	%edx
	shrl	$31, %edx
	andl	%edx, %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, -28(%rbp)
	setge	%dl
	movzbl	%dl, %edx
	movl	%esi, %edi
	andl	%edx, %edi
	movq	80(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, %esi
	setge	%dl
	movzbl	%dl, %edx
	andl	%edi, %edx
	testl	%edx, %edx
	jne	.L468
	movq	64(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L450
.L468:
	nop
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movq	-80(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-80(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%edx, %esi
	movq	16(%rbp), %rdx
	movl	%esi, (%rdx)
	movq	16(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%edx, %esi
	movq	24(%rbp), %rdx
	movl	%esi, (%rdx)
	movq	24(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-28(%rbp), %edx
	addl	%edx, %esi
	movq	-72(%rbp), %rdx
	movl	%esi, (%rdx)
	movq	-72(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	addl	%edx, %esi
	movq	32(%rbp), %rdx
	movl	%esi, (%rdx)
	movq	32(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	leal	1(%rdx), %edi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	addl	$2, %edx
	imull	%edi, %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edi, %edx
	sarl	%edx
	addl	%edx, %esi
	movq	48(%rbp), %rdx
	movl	%esi, (%rdx)
	movq	48(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	imull	%edi, %edx
	addl	%edx, %esi
	movq	40(%rbp), %rdx
	movl	%esi, (%rdx)
	movss	zero.5368(%rip), %xmm0
	movq	88(%rbp), %rdx
	movss	%xmm0, (%rdx)
	movss	zero.5368(%rip), %xmm0
	movq	96(%rbp), %rdx
	movss	%xmm0, (%rdx)
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	testl	%edx, %edx
	jle	.L469
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movl	$1, -8(%rbp)
.L457:
	cmpl	%edx, -8(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L469
	movss	zero.5368(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	movl	$1, -4(%rbp)
.L453:
	cmpl	%edi, -4(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L470
	movl	-8(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rcx,%rsi), %r8
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	72(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L453
.L470:
	nop
	movss	zero.5368(%rip), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L471
	movq	64(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L450
.L471:
	nop
	movq	88(%rbp), %rsi
	movss	(%rsi), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L455
	movq	88(%rbp), %rsi
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rsi)
.L455:
	addl	$1, -8(%rbp)
	jmp	.L457
.L469:
	nop
	movl	-32(%rbp), %edx
	cmpl	-28(%rbp), %edx
	jg	.L472
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	%esi, -8(%rbp)
.L464:
	cmpl	%edx, -8(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L472
	movss	zero.5368(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	movl	$1, -4(%rbp)
.L460:
	cmpl	%edi, -4(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L473
	movl	-8(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rcx,%rsi), %r8
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	72(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L460
.L473:
	nop
	movss	zero.5368(%rip), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	ja	.L474
	movq	64(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L450
.L474:
	nop
	movq	96(%rbp), %rsi
	movss	(%rsi), %xmm1
	movss	-12(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L462
	movq	96(%rbp), %rsi
	movss	-12(%rbp), %xmm0
	movss	%xmm0, (%rsi)
.L462:
	addl	$1, -8(%rbp)
	jmp	.L464
.L472:
	nop
	movq	64(%rbp), %rax
	movl	$2, (%rax)
	movq	56(%rbp), %rax
	movl	$-1, (%rax)
	movss	oct.5366(%rip), %xmm0
	movq	104(%rbp), %rax
	movss	%xmm0, (%rax)
.L450:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	setup_, .-setup_
	.section	.rodata
.LC18:
	.ascii	"(18H0SPECIFY EQUATIONS)"
	.align 8
.LC19:
	.ascii	"(1H ,I3,28H  COEFFICIENTS FOR EQUATION ,                    "
	.ascii	"       I3,13H (8(F8.3,2X)))"
.LC20:
	.ascii	"(8(F8.3,2X))"
.LC21:
	.ascii	"(24H RIGHT-HAND SIDE  (F8.3))"
	.align 8
.LC22:
	.ascii	"(29H0SPECIFY EQUALITY CONSTRAINTS )"
	.align 8
.LC23:
	.ascii	"(1H ,I3,                                                    "
	.ascii	"       39H  COEFFICIENTS FOR EQUALITY CONSTRAINT  ,         "
	.ascii	"             I3,10H (F8.3,2X))"
	.align 8
.LC24:
	.ascii	"(31H0SPECIFY INEQUALITY CONSTRAINTS )"
	.align 8
.LC25:
	.ascii	"(1H ,I3,                                                    "
	.ascii	"       41H  COEFFICIENTS FOR INEQUALITY CONSTRAINT ,        "
	.ascii	"             I3,10H (F8.3,2X))"
	.align 8
.LC26:
	.ascii	"(37H0SPECIFY STARTING POINT  (8(F8.3,2X)))"
.LC27:
	.ascii	"(16H0STARTING POINT /1H )"
.LC28:
	.ascii	"(8(2X,F8.3))"
.LC29:
	.ascii	"(18H0ARRAYS  E  AND  F/1H )"
	.text
	.globl	datfl2_
	.type	datfl2_, @function
datfl2_:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$608, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%rdx, -616(%rbp)
	movq	%rcx, -624(%rbp)
	movq	%r8, -632(%rbp)
	movq	%r9, -640(%rbp)
	movq	-624(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r12
	notq	%r12
	movq	-600(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L497
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$182, -576(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$23, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-600(%rbp), %rax
	movl	(%rax), %r14d
	movl	$1, -56(%rbp)
.L479:
	movl	-56(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L497
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$184, -576(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$87, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-56(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$185, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L478:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L498
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L498
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-632(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	addl	$1, -36(%rbp)
	jmp	.L478
.L498:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$186, -576(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$29, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$187, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L479
.L497:
	nop
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L499
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$199, -576(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$35, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-608(%rbp), %rax
	movl	(%rax), %r14d
	movl	$1, -56(%rbp)
.L483:
	movl	-56(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L499
	movq	-600(%rbp), %rax
	movl	(%rax), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$202, -576(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$150, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-56(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$203, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L482:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L500
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L500
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-632(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	addl	$1, -36(%rbp)
	jmp	.L482
.L500:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$204, -576(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$29, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$205, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-52(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L483
.L499:
	nop
	movq	-616(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L501
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$217, -576(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$37, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-616(%rbp), %rax
	movl	(%rax), %r14d
	movl	$1, -56(%rbp)
.L487:
	movl	-56(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L501
	movq	-600(%rbp), %rax
	movl	(%rax), %edx
	movl	-56(%rbp), %eax
	addl	%eax, %edx
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$220, -576(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$150, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-624(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-56(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$221, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L486:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L502
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L502
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-632(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	addl	$1, -36(%rbp)
	jmp	.L486
.L502:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$222, -576(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$29, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$223, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-52(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L487
.L501:
	nop
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$232, -576(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$42, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$233, -576(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -56(%rbp)
.L489:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L503
	movl	-56(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L503
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-640(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L489
.L503:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$234, -576(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$25, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$240, -576(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -56(%rbp)
.L491:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L504
	movl	-56(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L504
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-640(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L491
.L504:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$241, -576(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$27, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-600(%rbp), %rax
	movl	(%rax), %edx
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-616(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %r14d
	movl	$1, -56(%rbp)
.L495:
	movl	-56(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L505
	leaq	.LC8(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$244, -576(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$12, -504(%rbp)
	movl	$4096, -592(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-624(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -36(%rbp)
.L494:
	movl	-592(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L506
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L506
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-632(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -36(%rbp)
	jmp	.L494
.L506:
	nop
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L495
.L505:
	nop
	nop
	addq	$608, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	datfl2_, .-datfl2_
	.section	.rodata
	.align 8
.LC30:
	.ascii	"(27H0NEW PROBLEM (1=YES,0=STOP))"
.LC31:
	.ascii	"(I1)"
	.align 8
.LC32:
	.ascii	"(20H0NUMBER OF VARIABLES/                                   "
	.ascii	"        11X,9HEQUATIONS/11X,20HEQUALITY CONSTRAINTS/        "
	.ascii	"              11X,28HINEQUALITY CONSTRAINTS (4I5))"
.LC33:
	.ascii	"(10I5)"
	.align 8
.LC34:
	.ascii	"(23H0NUMBER OF VARIABLES = ,I3/                             "
	.ascii	"       23H0NUMBER OF EQUATIONS = ,I3/                       "
	.ascii	"             34H0NUMBER OF EQUALITY CONSTRAINTS = ,I3/      "
	.ascii	"                   36H0NUMBER OF INEQUALITY CONSTRAINTS = ,I"
	.ascii	"3)"
	.align 8
.LC35:
	.ascii	"(26H0NUMBER OF ITERATIONS (I5))"
	.align 8
.LC36:
	.ascii	"(24H0NUMBER OF ITERATIONS =  ,I3)"
	.align 8
.LC37:
	.ascii	"(35H0INTERMEDIATE PRINTING (1=YES,0=NO))"
	.text
	.globl	datfl1_
	.type	datfl1_, @function
datfl1_:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	%rcx, -576(%rbp)
	movq	%r8, -584(%rbp)
	movq	%r9, -592(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$114, -528(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$32, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$115, -528(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$4, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L508
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L508:
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$123, -528(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$170, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$124, -528(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$6, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-576(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	movq	-552(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	movq	-560(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	movq	-568(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$125, -528(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$242, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-576(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	-552(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	-560(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movq	-568(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$132, -528(%rbp)
	leaq	.LC35(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$31, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$133, -528(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$6, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-584(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$134, -528(%rbp)
	leaq	.LC36(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$33, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-584(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$142, -528(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$40, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$143, -528(%rbp)
	leaq	.LC31(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$4, -456(%rbp)
	movl	$4096, -544(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movq	-592(%rbp), %rax
	movl	$0, (%rax)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	.L511
	movq	-592(%rbp), %rax
	movl	$1, (%rax)
	nop
.L511:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	datfl1_, .-datfl1_
	.section	.rodata
.LC38:
	.ascii	"(1H1)"
	.align 8
.LC39:
	.ascii	"(21H0TERMINATION CODE =   ,I2/                              "
	.ascii	"       16H0L1 VALUE.     = ,1PE15.7/                        "
	.ascii	"             9H0X-VECTOR )"
.LC40:
	.ascii	"(5(1PE15.7))"
	.align 8
.LC41:
	.ascii	"(29H0ACTIVE EQUATIONS/CONSTRAINTS)"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$5544, %rsp
	.cfi_offset 3, -24
.L518:
	leaq	.LC8(%rip), %rax
	movq	%rax, -5544(%rbp)
	movl	$65, -5536(%rbp)
	leaq	.LC38(%rip), %rax
	movq	%rax, -5472(%rbp)
	movq	$5, -5464(%rbp)
	movl	$4096, -5552(%rbp)
	movl	nxoutp.5544(%rip), %eax
	movl	%eax, -5548(%rbp)
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-2476(%rbp), %r9
	leaq	-2452(%rbp), %r8
	leaq	-2472(%rbp), %rcx
	leaq	-2468(%rbp), %rdx
	leaq	-2460(%rbp), %rsi
	leaq	-2464(%rbp), %rax
	subq	$8, %rsp
	leaq	nxprmp.5545(%rip), %rdi
	pushq	%rdi
	leaq	nxoutp.5544(%rip), %rdi
	pushq	%rdi
	leaq	nxinpt.5543(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	datfl1_
	addq	$32, %rsp
	leaq	-5024(%rbp), %r9
	leaq	-2032(%rbp), %r8
	leaq	-2472(%rbp), %rcx
	leaq	-2468(%rbp), %rdx
	leaq	-2460(%rbp), %rsi
	leaq	-2464(%rbp), %rax
	leaq	nxprmp.5545(%rip), %rdi
	pushq	%rdi
	leaq	nxoutp.5544(%rip), %rdi
	pushq	%rdi
	leaq	nxinpt.5543(%rip), %rdi
	pushq	%rdi
	leaq	-2240(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	datfl2_
	addq	$32, %rsp
	leaq	-2244(%rbp), %r9
	leaq	-2456(%rbp), %r8
	leaq	-2472(%rbp), %rcx
	leaq	-2468(%rbp), %rdx
	leaq	-2460(%rbp), %rsi
	leaq	-2464(%rbp), %rax
	leaq	-4976(%rbp), %rdi
	pushq	%rdi
	leaq	-2448(%rbp), %rdi
	pushq	%rdi
	leaq	-2688(%rbp), %rdi
	pushq	%rdi
	leaq	-2036(%rbp), %rdi
	pushq	%rdi
	leaq	-2240(%rbp), %rdi
	pushq	%rdi
	leaq	-5024(%rbp), %rdi
	pushq	%rdi
	leaq	-2472(%rbp), %rdi
	pushq	%rdi
	leaq	-2032(%rbp), %rdi
	pushq	%rdi
	leaq	-2476(%rbp), %rdi
	pushq	%rdi
	leaq	-2452(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	cl1_
	addq	$80, %rsp
	leaq	.LC8(%rip), %rax
	movq	%rax, -5544(%rbp)
	movl	$81, -5536(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -5472(%rbp)
	movq	$146, -5464(%rbp)
	movl	$4096, -5552(%rbp)
	movl	nxoutp.5544(%rip), %eax
	movl	%eax, -5548(%rbp)
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-2244(%rbp), %rcx
	leaq	-5552(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-2036(%rbp), %rcx
	leaq	-5552(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -5544(%rbp)
	movl	$82, -5536(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -5472(%rbp)
	movq	$12, -5464(%rbp)
	movl	$4096, -5552(%rbp)
	movl	nxoutp.5544(%rip), %eax
	movl	%eax, -5548(%rbp)
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-2472(%rbp), %ebx
	movl	$1, -20(%rbp)
.L514:
	movl	-5552(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L519
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L519
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-5552(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L514
.L519:
	nop
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-2456(%rbp), %eax
	testl	%eax, %eax
	jle	.L520
	leaq	.LC8(%rip), %rax
	movq	%rax, -5544(%rbp)
	movl	$84, -5536(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -5472(%rbp)
	movq	$34, -5464(%rbp)
	movl	$4096, -5552(%rbp)
	movl	nxoutp.5544(%rip), %eax
	movl	%eax, -5548(%rbp)
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, -5544(%rbp)
	movl	$85, -5536(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -5472(%rbp)
	movq	$6, -5464(%rbp)
	movl	$4096, -5552(%rbp)
	movl	nxoutp.5544(%rip), %eax
	movl	%eax, -5548(%rbp)
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-2456(%rbp), %ebx
	movl	$1, -20(%rbp)
.L517:
	movl	-5552(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L521
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L521
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-2448(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-5552(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L517
.L521:
	nop
	leaq	-5552(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L518
.L520:
	nop
	jmp	.L518
	.cfi_endproc
.LFE29:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB30:
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
	leaq	options.166.5573(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.local	zero.4102
	.comm	zero.4102,4,4
	.data
	.align 4
	.type	one.4095, @object
	.size	one.4095, 4
one.4095:
	.long	1065353216
	.align 4
	.type	big.4077, @object
	.size	big.4077, 4
big.4077:
	.long	1929146236
	.align 4
	.type	two.4101, @object
	.size	two.4101, 4
two.4101:
	.long	1073741824
	.local	eps.4084
	.comm	eps.4084,4,4
	.align 4
	.type	equiv.21.4328, @object
	.size	equiv.21.4328, 4
equiv.21.4328:
	.long	1065353216
	.local	eps.4337
	.comm	eps.4337,4,4
	.local	equiv.20.4322
	.comm	equiv.20.4322,4,4
	.local	zero.4507
	.comm	zero.4507,4,4
	.align 4
	.type	one.4546, @object
	.size	one.4546, 4
one.4546:
	.long	1065353216
	.align 4
	.type	big.4542, @object
	.size	big.4542, 4
big.4542:
	.long	1929146236
	.local	equiv.38.4539
	.comm	equiv.38.4539,4,4
	.align 4
	.type	one.4644, @object
	.size	one.4644, 4
one.4644:
	.long	1065353216
	.local	eps.4639
	.comm	eps.4639,4,4
	.local	zero.4649
	.comm	zero.4649,4,4
	.align 4
	.type	ix0.4676, @object
	.size	ix0.4676, 4
ix0.4676:
	.long	2
	.align 4
	.type	one.4686, @object
	.size	one.4686, 4
one.4686:
	.long	1065353216
	.align 4
	.type	big.4681, @object
	.size	big.4681, 4
big.4681:
	.long	1929146236
	.local	equiv.59.4750
	.comm	equiv.59.4750,4,4
	.align 4
	.type	nxoutp.4787, @object
	.size	nxoutp.4787, 4
nxoutp.4787:
	.long	6
	.local	zero.4816
	.comm	zero.4816,4,4
	.align 4
	.type	one.4815, @object
	.size	one.4815, 4
one.4815:
	.long	1065353216
	.local	equiv.79.4902
	.comm	equiv.79.4902,4,4
	.align 4
	.type	one.4915, @object
	.size	one.4915, 4
one.4915:
	.long	1065353216
	.align 4
	.type	half.4910, @object
	.size	half.4910, 4
half.4910:
	.long	1056964608
	.local	eps.4944
	.comm	eps.4944,4,4
	.align 4
	.type	equiv.93.4998, @object
	.size	equiv.93.4998, 4
equiv.93.4998:
	.long	1065353216
	.local	equiv.92.4992
	.comm	equiv.92.4992,4,4
	.align 4
	.type	two.5082, @object
	.size	two.5082, 4
two.5082:
	.long	1073741824
	.local	zero.5085
	.comm	zero.5085,4,4
	.local	zero.5157
	.comm	zero.5157,4,4
	.align 4
	.type	two.5156, @object
	.size	two.5156, 4
two.5156:
	.long	1073741824
	.align 4
	.type	one.5142, @object
	.size	one.5142, 4
one.5142:
	.long	1065353216
	.align 4
	.type	rgamsq.5144, @object
	.size	rgamsq.5144, 4
rgamsq.5144:
	.long	864025317
	.align 4
	.type	iflag.5138, @object
	.size	iflag.5138, 4
iflag.5138:
	.long	1
	.align 4
	.type	gam.5136, @object
	.size	gam.5136, 4
gam.5136:
	.long	1166016512
	.align 4
	.type	rgam.5143, @object
	.size	rgam.5143, 4
rgam.5143:
	.long	964687128
	.align 4
	.type	gamsq.5137, @object
	.size	gamsq.5137, 4
gamsq.5137:
	.long	1266681200
	.local	eps.5209
	.comm	eps.5209,4,4
	.local	zero.5221
	.comm	zero.5221,4,4
	.local	zero.5344
	.comm	zero.5344,4,4
	.align 4
	.type	oct.5342, @object
	.size	oct.5342, 4
oct.5342:
	.long	1090519040
	.align 4
	.type	one.5343, @object
	.size	one.5343, 4
one.5343:
	.long	1065353216
	.local	zero.5368
	.comm	zero.5368,4,4
	.align 4
	.type	oct.5366, @object
	.size	oct.5366, 4
oct.5366:
	.long	1090519040
	.align 4
	.type	nxoutp.5544, @object
	.size	nxoutp.5544, 4
nxoutp.5544:
	.long	6
	.align 4
	.type	nxinpt.5543, @object
	.size	nxinpt.5543, 4
nxinpt.5543:
	.long	5
	.align 4
	.type	nxprmp.5545, @object
	.size	nxprmp.5545, 4
nxprmp.5545:
	.long	7
	.section	.rodata
	.align 16
	.type	options.166.5573, @object
	.size	options.166.5573, 28
options.166.5573:
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
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC7:
	.long	1176228864
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
