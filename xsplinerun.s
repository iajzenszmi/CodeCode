	.file	"xsplinerun.f"
	.text
	.globl	splin5_
	.type	splin5_, @function
splin5_:
.LFB0:
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
	movl	$1, -4(%rbp)
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	.L13
	pxor	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	.L14
	nop
	movl	$2, -4(%rbp)
	jmp	.L6
.L13:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -4(%rbp)
.L8:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-64(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L8
.L15:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L6
.L14:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
	jmp	.L9
.L6:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	divss	-16(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	-12(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-28(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	-20(%rbp), %xmm4
	movss	.LC2(%rip), %xmm0
	mulss	%xmm0, %xmm4
	movss	.LC3(%rip), %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm3, %xmm0
	movss	.LC4(%rip), %xmm3
	xorps	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-20(%rbp), %xmm1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-28(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC5(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	.LC6(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC2(%rip), %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movaps	%xmm1, %xmm2
	mulss	-28(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC5(%rip), %xmm1
	mulss	%xmm3, %xmm1
	movss	.LC7(%rip), %xmm3
	subss	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC8(%rip), %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-28(%rbp), %xmm2
	movss	.LC5(%rip), %xmm0
	subss	-20(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC5(%rip), %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-28(%rbp), %xmm2
	movss	.LC9(%rip), %xmm0
	subss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC10(%rip), %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-16(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movss	.LC11(%rip), %xmm1
	divss	%xmm1, %xmm0
	addss	-36(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	addss	-32(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-12(%rbp), %xmm1
	movss	.LC12(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1
	movss	-20(%rbp), %xmm2
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm2
	movss	.LC13(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC10(%rip), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-24(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	.LC13(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC14(%rip), %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movaps	%xmm1, %xmm2
	mulss	-24(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC3(%rip), %xmm1
	mulss	%xmm1, %xmm3
	movss	.LC15(%rip), %xmm1
	addss	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	movss	.LC4(%rip), %xmm1
	xorps	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC16(%rip), %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-24(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC17(%rip), %xmm0
	mulss	%xmm0, %xmm3
	movss	.LC16(%rip), %xmm0
	subss	%xmm3, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC18(%rip), %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-24(%rbp), %xmm2
	movss	-20(%rbp), %xmm3
	movss	.LC17(%rip), %xmm0
	mulss	%xmm3, %xmm0
	movss	.LC19(%rip), %xmm3
	subss	%xmm3, %xmm0
	movaps	%xmm0, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC5(%rip), %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-32(%rbp), %xmm0
	divss	-16(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-36(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movss	.LC11(%rip), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-20(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-12(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	movss	.LC5(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC10(%rip), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movss	.LC20(%rip), %xmm0
	subss	-8(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC2(%rip), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movss	-8(%rbp), %xmm1
	movss	.LC21(%rip), %xmm3
	subss	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC8(%rip), %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movss	.LC14(%rip), %xmm0
	subss	-8(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	.LC18(%rip), %xmm3
	subss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	mulss	-20(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movss	-8(%rbp), %xmm0
	movss	.LC16(%rip), %xmm3
	subss	%xmm3, %xmm0
	movaps	%xmm0, %xmm3
	mulss	-20(%rbp), %xmm3
	movss	.LC5(%rip), %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm2, %xmm0
	mulss	-20(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	divss	-16(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	mulss	-36(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	divss	-16(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
.L9:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	splin5_, .-splin5_
	.globl	inspls_
	.type	inspls_, @function
inspls_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	movq	%r8, -568(%rbp)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-96(%rbp), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -64(%rbp)
	jmp	.L17
.L39:
	nop
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
.L27:
	movss	-60(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	-100(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
.L17:
	movss	-108(%rbp), %xmm1
	movss	.LC23(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-72(%rbp), %xmm1
	movss	.LC16(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-80(%rbp), %xmm0
	movss	-100(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-76(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-84(%rbp), %xmm0
	movss	-96(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L31
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L32
	testl	%eax, %eax
	jns	.L33
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	divss	-100(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	jmp	.L20
.L32:
	nop
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm1
	divss	-100(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	jmp	.L20
.L31:
	nop
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	movl	-64(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-104(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-104(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-72(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -64(%rbp)
	jge	.L34
	movl	-64(%rbp), %eax
	addl	$2, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	jmp	.L21
.L34:
	nop
.L21:
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC24(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-112(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-104(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC23(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC16(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-100(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-96(%rbp), %xmm0
	movss	-32(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC25(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-108(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-72(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	mulss	-80(%rbp), %xmm0
	mulss	-100(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-72(%rbp), %xmm0
	mulss	-80(%rbp), %xmm0
	movss	-96(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-88(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-104(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-100(%rbp), %xmm1
	movss	-92(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	cmpl	$1, -64(%rbp)
	jg	.L33
	movss	-40(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-544(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L35
	testl	%eax, %eax
	jns	.L36
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-560(%rbp), %rax
	movss	8(%rax), %xmm1
	movss	-524(%rbp), %xmm0
	movss	-528(%rbp), %xmm2
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	divss	-100(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	jmp	.L23
.L35:
	nop
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	jmp	.L20
.L33:
	nop
.L20:
	movl	-68(%rbp), %eax
	subl	$3, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-4(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	subl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-12(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-68(%rbp), %eax
	subl	$3, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	subl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-4(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-12(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	-32(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L23
.L36:
	nop
.L23:
	movss	-20(%rbp), %xmm0
	mulss	-32(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	cmpl	$1, -64(%rbp)
	je	.L37
	movl	-68(%rbp), %eax
	subl	$5, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-88(%rbp), %xmm1
	movl	-68(%rbp), %eax
	subl	$4, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-12(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -88(%rbp)
	movl	-68(%rbp), %eax
	subl	$5, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-8(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-92(%rbp), %xmm1
	movl	-68(%rbp), %eax
	subl	$4, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	jmp	.L24
.L37:
	nop
.L24:
	movss	-32(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	-92(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-20(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jge	.L38
	movss	-32(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-20(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	mulss	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-32(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	mulss	-52(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-24(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	mulss	-52(%rbp), %xmm0
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-116(%rbp), %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$6, -68(%rbp)
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	subl	$2, %eax
	testl	%eax, %eax
	jne	.L39
	jmp	.L27
.L38:
	nop
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-68(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	-100(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movss	-36(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	subl	$6, -68(%rbp)
	movq	-536(%rbp), %rax
	movl	(%rax), %ecx
	movl	$2, -64(%rbp)
.L29:
	cmpl	%ecx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L40
	movq	-536(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	subl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-68(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-36(%rbp), %xmm1
	divss	-100(%rbp), %xmm1
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	subss	%xmm1, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-68(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	-100(%rbp), %xmm0
	movl	-68(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-2(%rax), %rdx
	movq	-560(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	mulss	-100(%rbp), %xmm2
	movl	-68(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm2, %xmm1
	mulss	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm0
	movl	-124(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-528(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movss	-128(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movss	-128(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	subl	$6, -68(%rbp)
	addl	$1, -64(%rbp)
	jmp	.L29
.L40:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	inspls_, .-inspls_
	.section	.rodata
	.align 4
.LC32:
	.long	-1
	.align 4
.LC33:
	.long	1
.LC34:
	.string	"xsplinerun.f"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1472, %rsp
	movl	$1, -4(%rbp)
.L43:
	cmpl	$99, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L46
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -432(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -832(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L43
.L46:
	nop
	movl	$1, -436(%rbp)
.L45:
	movl	-436(%rbp), %eax
	cmpl	$30, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L47
	movq	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -832(%rbp)
	movss	.LC27(%rip), %xmm0
	movss	%xmm0, -828(%rbp)
	movss	.LC28(%rip), %xmm0
	movss	%xmm0, -824(%rbp)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -820(%rbp)
	movss	.LC28(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC30(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	movss	.LC28(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC30(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC31(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	leaq	-432(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-436(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	inspls_
	leaq	-28(%rbp), %rdi
	leaq	-836(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-432(%rbp), %rsi
	leaq	-436(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	splin5_
	leaq	.LC34(%rip), %rax
	movq	%rax, -1368(%rbp)
	movl	$24, -1360(%rbp)
	movl	$128, -1376(%rbp)
	movl	$6, -1372(%rbp)
	leaq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	$4, -1440(%rbp)
	movq	$0, -1456(%rbp)
	movq	$0, -1448(%rbp)
	movq	$4, -1456(%rbp)
	movb	$2, -1444(%rbp)
	movb	$3, -1443(%rbp)
	movq	$1, -1424(%rbp)
	movq	$3, -1416(%rbp)
	movq	$1, -1432(%rbp)
	movq	$1, -1400(%rbp)
	movq	$1, -1392(%rbp)
	movq	$3, -1408(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movq	$-4, -1464(%rbp)
	leaq	-1472(%rbp), %rsi
	leaq	-1376(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1376(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-436(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -436(%rbp)
	jmp	.L45
.L47:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB3:
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
	leaq	options.2.4014(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.2.4014, @object
	.size	options.2.4014, 28
options.2.4014:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1092616192
	.align 4
.LC2:
	.long	1086324736
	.align 4
.LC3:
	.long	1097859072
	.align 16
.LC4:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	3238002688
	.align 4
.LC7:
	.long	1088421888
	.align 4
.LC8:
	.long	1082130432
	.align 4
.LC9:
	.long	3221225472
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC11:
	.long	1073741824
	.align 4
.LC12:
	.long	1106247680
	.align 4
.LC13:
	.long	1107296256
	.align 4
.LC14:
	.long	1099956224
	.align 4
.LC15:
	.long	1105199104
	.align 4
.LC16:
	.long	1094713344
	.align 4
.LC17:
	.long	1084227584
	.align 4
.LC18:
	.long	1091567616
	.align 4
.LC19:
	.long	1090519040
	.align 4
.LC20:
	.long	3246391296
	.align 4
.LC21:
	.long	1096810496
	.align 4
.LC22:
	.long	1101703851
	.align 4
.LC23:
	.long	1115684864
	.align 4
.LC24:
	.long	1101004800
	.align 4
.LC25:
	.long	1113587712
	.align 4
.LC26:
	.long	1045220557
	.align 4
.LC27:
	.long	1053609165
	.align 4
.LC28:
	.long	1056964608
	.align 4
.LC29:
	.long	1087163597
	.align 4
.LC30:
	.long	1061997773
	.align 4
.LC31:
	.long	1060320051
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
