	.file	"718-ssevas.f"
	.text
	.section	.rodata
	.align 4
.LC0:
	.long	1
	.text
	.globl	spost_
	.type	spost_, @function
spost_:
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
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r12
	notq	%r12
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movq	-96(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L3:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L5
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	16(%rbp), %rdi
	call	sdot_@PLT
	movq	-112(%rbp), %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-80(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %r9
	movq	%rsi, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	saxpy_@PLT
	addl	$1, -36(%rbp)
	jmp	.L3
.L5:
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
.LFE0:
	.size	spost_, .-spost_
	.globl	sprem_
	.type	sprem_, @function
sprem_:
.LFB1:
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
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r12
	notq	%r12
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movq	-104(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L8:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L10
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	sdot_@PLT
	movq	-112(%rbp), %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-56(%rbp), %rax
	leaq	.LC0(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	saxpy_@PLT
	addl	$1, -36(%rbp)
	jmp	.L8
.L10:
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
.LFE1:
	.size	sprem_, .-sprem_
	.globl	seigck_
	.type	seigck_, @function
seigck_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L12
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-4(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-8(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L12
	movl	$0, -12(%rbp)
.L12:
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	seigck_, .-seigck_
	.section	.rodata
	.align 4
.LC3:
	.long	3
	.text
	.globl	scrh_
	.type	scrh_, @function
scrh_:
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
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r12
	notq	%r12
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movq	-80(%rbp), %rdx
	movl	(%rdx), %edx
	leal	3(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L16:
	cmpl	%r13d, -36(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L18
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-36(%rbp), %eax
	leal	-3(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, (%rax,%rdx,4)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$3, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rdi
	call	scopy_@PLT
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	shouse_
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm4
	movss	%xmm4, -116(%rbp)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC3(%rip), %rdi
	call	snrm2_@PLT
	movss	.LC2(%rip), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	-116(%rbp), %xmm3
	andps	%xmm2, %xmm3
	andps	%xmm1, %xmm0
	orps	%xmm3, %xmm0
	movss	.LC1(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -60(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	leaq	-60(%rbp), %r8
	leaq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	spost_
	addq	$16, %rsp
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	subl	$2, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -64(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	sprem_
	addq	$16, %rsp
	subl	$1, -36(%rbp)
	jmp	.L16
.L18:
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
.LFE3:
	.size	scrh_, .-scrh_
	.globl	shouse_
	.type	shouse_, @function
shouse_:
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
	addq	$4, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	call	isamax_@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC5(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-12(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	call	sscal_@PLT
	movq	-24(%rbp), %rax
	movss	12(%rax), %xmm4
	movss	%xmm4, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	call	snrm2_@PLT
	movss	.LC2(%rip), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	-28(%rbp), %xmm3
	andps	%xmm2, %xmm3
	andps	%xmm1, %xmm0
	orps	%xmm3, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movss	12(%rax), %xmm0
	addss	-8(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-24(%rbp), %rax
	movss	12(%rax), %xmm0
	mulss	-8(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	shouse_, .-shouse_
	.globl	sappsh_
	.type	sappsh_, @function
sappsh_:
.LFB5:
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
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	notq	%rdx
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	leal	1(%rcx), %esi
	movq	24(%rbp), %rcx
	movl	%esi, (%rcx)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edi
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	subl	$2, %edi
	movq	16(%rbp), %rcx
	movl	%edi, (%rcx,%rsi,4)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm2
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	-3(%rcx), %rsi
	mulss	%xmm1, %xmm0
	movq	-80(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm0, %xmm1
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm2
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	mulss	-12(%rbp), %xmm1
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	-2(%rcx), %rsi
	subss	%xmm1, %xmm0
	movq	-80(%rbp), %rcx
	movss	%xmm0, (%rcx,%rsi,4)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm1
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm0, %xmm1
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm2
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	-40(%rbp), %rcx
	movss	(%rcx,%rsi,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-56(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	imulq	%rcx, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-12(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	-1(%rax), %rdx
	addss	-16(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	shouse_
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -20(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	leaq	-20(%rbp), %r8
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	spost_
	addq	$16, %rsp
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	sprem_
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sappsh_, .-sappsh_
	.globl	sgteps_
	.type	sgteps_, @function
sgteps_:
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
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r13
	notq	%r13
	movq	-120(%rbp), %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L35
	movq	-120(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L26
.L35:
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	jmp	.L27
.L36:
	nop
.L27:
	movss	-36(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, maceps_(%rip)
	leaq	maceps_(%rip), %rdi
	call	sstore_
	movss	maceps_(%rip), %xmm0
	movss	.LC5(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L27
	movss	.LC5(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L36
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-120(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L26:
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_@PLT
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -40(%rbp)
.L31:
	cmpl	%r12d, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L37
	movl	-40(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sasum_@PLT
	movd	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movss	-68(%rbp), %xmm0
	comiss	-44(%rbp), %xmm0
	jbe	.L29
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
.L29:
	addl	$1, -40(%rbp)
	jmp	.L31
.L37:
	nop
	movss	-36(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-72(%rbp), %xmm0
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sgteps_, .-sgteps_
	.globl	sstore_
	.type	sstore_, @function
sstore_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, maceps_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sstore_, .-sstore_
	.globl	scntmk_
	.type	scntmk_, @function
scntmk_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r12
	notq	%r12
	movl	$1, -20(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.L47:
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L49
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L42
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rsi
	leaq	-44(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	scopy_@PLT
	movq	-96(%rbp), %rax
	movss	(%rax), %xmm5
	movss	%xmm5, -108(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-44(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	snrm2_@PLT
	movss	.LC2(%rip), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	-108(%rbp), %xmm3
	andps	%xmm2, %xmm3
	andps	%xmm1, %xmm0
	orps	%xmm3, %xmm0
	movss	.LC1(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -24(%rbp)
.L44:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L50
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-96(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -24(%rbp)
	jmp	.L44
.L42:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	-44(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	-44(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cltq
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-44(%rbp), %rax
	leaq	.LC0(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	scopy_@PLT
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm6
	movss	%xmm6, -108(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-44(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	snrm2_@PLT
	movss	.LC2(%rip), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	-108(%rbp), %xmm4
	andps	%xmm2, %xmm4
	andps	%xmm1, %xmm0
	orps	%xmm4, %xmm0
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movss	.LC1(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	%ecx, -24(%rbp)
.L46:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L51
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	-44(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -24(%rbp)
	jmp	.L46
.L50:
	nop
	jmp	.L45
.L51:
	nop
.L45:
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	svhous_
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-80(%rbp), %r8
	leaq	-52(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	sprem_
	addq	$16, %rsp
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	leaq	-56(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-44(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	spost_
	addq	$16, %rsp
	movl	-44(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.L47
.L49:
	nop
	nop
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	scntmk_, .-scntmk_
	.globl	svhous_
	.type	svhous_, @function
svhous_:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	isamax_@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	.LC5(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-12(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	sscal_@PLT
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm4
	movss	%xmm4, -36(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	snrm2_@PLT
	movss	.LC2(%rip), %xmm1
	movss	.LC1(%rip), %xmm2
	movss	-36(%rbp), %xmm3
	andps	%xmm2, %xmm3
	andps	%xmm1, %xmm0
	orps	%xmm3, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm0
	addss	-8(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm0
	mulss	-8(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	svhous_, .-svhous_
	.section	.rodata
.LC7:
	.string	"718-ssevas.f"
	.align 8
.LC8:
	.ascii	"(1X,'COMPLEX EIGENVALUES ARE NOT COMPLEX CONJUGATES.')"
	.align 8
.LC9:
	.ascii	"(1X,I4,' EIGENVALUES ALLOCATED.')"
	.align 8
.LC10:
	.ascii	"(1X,'SYSTEM IS CLOSE TO UNCONTROLLABLE')"
.LC11:
	.ascii	"(1X,'USING TOLERANCE ',E20.12)"
	.text
	.globl	ssevas_
	.type	ssevas_, @function
ssevas_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$704, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	%rdx, -696(%rbp)
	movq	%rcx, -704(%rbp)
	movq	%r8, -712(%rbp)
	movq	%r9, -720(%rbp)
	movq	-696(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r12
	notq	%r12
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	%rax, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L55
	movq	24(%rbp), %rdi
	movq	-704(%rbp), %rcx
	movq	-696(%rbp), %rdx
	movq	-688(%rbp), %rsi
	movq	-680(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	scntmk_
.L55:
	movq	40(%rbp), %rdi
	movq	-704(%rbp), %rcx
	movq	-696(%rbp), %rdx
	movq	-688(%rbp), %rsi
	movq	-680(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sgteps_
	movd	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	leal	-2(%rax), %ecx
	movl	$1, -48(%rbp)
.L59:
	cmpl	%ecx, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L82
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-48(%rbp), %eax
	leal	2(%rax), %esi
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	%esi, -36(%rbp)
.L58:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L83
	movl	-48(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rsi
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movq	-680(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rsi,4)
	addl	$1, -36(%rbp)
	jmp	.L58
.L83:
	nop
	addl	$1, -48(%rbp)
	jmp	.L59
.L82:
	nop
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	48(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -104(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.L65:
	cmpl	$2, -44(%rbp)
	jle	.L84
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -84(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-712(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seigck_
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L61
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$256, -656(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$54, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$257, -656(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$33, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -116(%rbp)
	leaq	-116(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L62
.L61:
	movq	-720(%rbp), %r9
	movq	-712(%rbp), %r8
	movq	-696(%rbp), %rcx
	movq	-688(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-680(%rbp), %rax
	leaq	-104(%rbp), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	sappsh_
	addq	$16, %rsp
	movq	-720(%rbp), %r8
	movq	-696(%rbp), %rcx
	movq	-688(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-680(%rbp), %rax
	subq	$8, %rsp
	leaq	-104(%rbp), %rdi
	pushq	%rdi
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	scrh_
	addq	$16, %rsp
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-104(%rbp), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-720(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-112(%rbp), %rdx
	movq	-696(%rbp), %rsi
	movq	-704(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	leaq	.LC0(%rip), %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	sprem_
	addq	$16, %rsp
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L80
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$290, -656(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$40, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$291, -656(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$30, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$292, -656(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$33, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-112(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -120(%rbp)
	leaq	-120(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-84(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L62
.L80:
	movl	-112(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-112(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-112(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	subl	$2, -44(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L65
.L84:
	nop
	cmpl	$1, -44(%rbp)
	jne	.L66
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L81
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$326, -656(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$40, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$327, -656(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$30, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$328, -656(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$33, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)
	leaq	-124(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L62
.L81:
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L62
.L66:
	leaq	-100(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-712(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	seigck_
	xorl	$1, %eax
	movl	%eax, %ecx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L69
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-680(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	.LC2(%rip), %xmm1
	andps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L70
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$347, -656(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$40, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$348, -656(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$30, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L71
.L70:
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$350, -656(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$54, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L71:
	leaq	.LC7(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$352, -656(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$33, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -128(%rbp)
	leaq	-128(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L62
.L69:
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm1, %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-712(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	addss	%xmm1, %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-92(%rbp), %xmm0
	subss	-88(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	subss	-92(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-680(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	subss	-96(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
.L62:
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
.L73:
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L85
	movl	-108(%rbp), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-720(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-108(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movq	-696(%rbp), %rsi
	movq	56(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC3(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	leaq	.LC0(%rip), %r8
	leaq	.LC0(%rip), %rcx
	movq	%rax, %rdi
	call	sprem_
	addq	$16, %rsp
	movl	-108(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.L73
.L85:
	nop
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L86
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	subl	$4, %eax
	movl	%eax, -40(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %ebx
	movl	$2, -108(%rbp)
.L76:
	movl	-108(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L87
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	-108(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	-108(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-40(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-136(%rbp), %rcx
	leaq	-132(%rbp), %rdx
	movq	56(%rbp), %rax
	subq	$8, %rsp
	leaq	-108(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	leaq	.LC0(%rip), %r8
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	spost_
	addq	$16, %rsp
	movl	-108(%rbp), %eax
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.L76
.L87:
	nop
	nop
.L86:
	nop
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ssevas_, .-ssevas_
	.comm	maceps_,4,16
	.section	.rodata
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC2:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC6:
	.long	1073741824
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
