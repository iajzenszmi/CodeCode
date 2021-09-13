	.file	"748_1.f"
	.text
	.section	.rodata
	.align 4
.LC3:
	.long	2
	.align 4
.LC4:
	.long	3
	.text
	.globl	rroot_
	.type	rroot_, @function
rroot_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movl	$0, -12(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	func_
	leaq	-88(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	func_
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
.L7:
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	addl	$1, -12(%rbp)
	movsd	-88(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0
	movq	.LC1(%rip), %xmm2
	andpd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L30
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	tole_
	jmp	.L4
.L30:
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	tole_
.L4:
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L33
	cmpl	$1, -12(%rbp)
	jne	.L6
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	-80(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2
	movsd	-80(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-56(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	brackt_
	addq	$48, %rsp
	movsd	-80(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L33
	jmp	.L7
.L6:
	movsd	-80(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-80(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movsd	-96(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cmpl	$2, -12(%rbp)
	sete	%al
	movzbl	%al, %edx
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L8
	leaq	-96(%rbp), %r9
	leaq	-88(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	newqua_
	addq	$16, %rsp
	jmp	.L9
.L8:
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	leaq	-104(%rbp), %rdi
	pushq	%rdi
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	pzero_
	addq	$32, %rsp
	movsd	-56(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-56(%rbp), %xmm0
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L9
	leaq	-96(%rbp), %r9
	leaq	-88(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	pushq	%rdi
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	newqua_
	addq	$16, %rsp
.L9:
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-56(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	brackt_
	addq	$48, %rsp
	movsd	-80(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L33
	movsd	-80(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-80(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movsd	-96(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0
	movsd	-104(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jp	.L11
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jne	.L11
	leaq	-96(%rbp), %r9
	leaq	-88(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rdi
	pushq	%rdi
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	newqua_
	addq	$16, %rsp
	jmp	.L13
.L11:
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	leaq	-104(%rbp), %rdi
	pushq	%rdi
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	pzero_
	addq	$32, %rsp
	movsd	-56(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-56(%rbp), %xmm0
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L13
	leaq	-96(%rbp), %r9
	leaq	-88(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rdi
	pushq	%rdi
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	newqua_
	addq	$16, %rsp
.L13:
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-56(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	brackt_
	addq	$48, %rsp
	movsd	-80(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L33
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-80(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movq	.LC1(%rip), %xmm2
	andpd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L31
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L17
.L31:
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.L17:
	movsd	-88(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LC5(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L18
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.L18:
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-56(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	brackt_
	addq	$48, %rsp
	movsd	-80(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L33
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L32
	jmp	.L7
.L32:
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	leaq	-88(%rbp), %r9
	leaq	-80(%rbp), %r8
	leaq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	leaq	-96(%rbp), %rdi
	pushq	%rdi
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	pushq	-152(%rbp)
	pushq	-144(%rbp)
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	brackt_
	addq	$48, %rsp
	movsd	-80(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	movq	-168(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L33
	jmp	.L7
.L33:
	nop
	movq	-160(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rroot_, .-rroot_
	.globl	brackt_
	.type	brackt_, @function
brackt_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L55
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L37
.L55:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm2
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L56
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L37
.L56:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L37
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
.L37:
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	func_
	movsd	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L41
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L41
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	48(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L34
.L41:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	isign_
	movl	%eax, %ebx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	isign_
	imull	%ebx, %eax
	testl	%eax, %eax
	jns	.L44
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L45
.L44:
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.L45:
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC1(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC1(%rip), %xmm2
	andpd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L57
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	tole_
	jmp	.L58
.L57:
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	tole_
.L58:
	nop
.L34:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	brackt_, .-brackt_
	.globl	newqua_
	.type	newqua_, @function
newqua_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -24(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	subsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.L69
.L73:
	nop
.L69:
	movsd	-64(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmove	%eax, %edx
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L59
.L60:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	isign_
	movl	%eax, %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	isign_
	imull	%ebx, %eax
	testl	%eax, %eax
	jle	.L62
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L63
.L62:
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
.L63:
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -20(%rbp)
.L68:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L72
	cmpl	$0, -24(%rbp)
	jne	.L65
	movq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0
	movq	-80(%rbp), %rdx
	movsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0
	movq	-72(%rbp), %rdx
	movsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0
	addsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	movq	-72(%rbp), %rdx
	movsd	(%rdx), %xmm1
	movq	-80(%rbp), %rdx
	movsd	(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jp	.L66
	pxor	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jne	.L66
	movl	$1, -24(%rbp)
	jmp	.L65
.L66:
	movq	16(%rbp), %rdx
	movsd	(%rdx), %xmm0
	movsd	-48(%rbp), %xmm1
	divsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
.L65:
	addl	$1, -20(%rbp)
	jmp	.L68
.L72:
	nop
	cmpl	$1, -24(%rbp)
	je	.L73
	nop
.L59:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	newqua_, .-newqua_
	.globl	pzero_
	.type	pzero_, @function
pzero_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-24(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	32(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	pzero_, .-pzero_
	.globl	isign_
	.type	isign_, @function
isign_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L85
	movl	$1, -4(%rbp)
	jmp	.L79
.L85:
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L80
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L80
	movl	$0, -4(%rbp)
	jmp	.L79
.L80:
	movl	$-1, -4(%rbp)
.L79:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	isign_, .-isign_
	.globl	tole_
	.type	tole_, @function
tole_:
.LFB5:
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
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1000, %eax
	jne	.L87
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L88
.L87:
	movq	-32(%rbp), %rax
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -4(%rbp)
.L89:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L91
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L89
.L91:
	nop
.L88:
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC1(%rip), %xmm2
	andpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	tole_, .-tole_
	.globl	__powidf2
	.globl	func_
	.type	func_, @function
func_:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	user_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$28, %eax
	ja	.L93
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L95(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L95(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L95:
	.long	.L93-.L95
	.long	.L93-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L146-.L95
	.long	.L111-.L95
	.long	.L110-.L95
	.long	.L109-.L95
	.long	.L108-.L95
	.long	.L148-.L95
	.long	.L148-.L95
	.long	.L105-.L95
	.long	.L104-.L95
	.long	.L103-.L95
	.long	.L102-.L95
	.long	.L101-.L95
	.long	.L100-.L95
	.long	.L99-.L95
	.long	.L98-.L95
	.long	.L97-.L95
	.long	.L147-.L95
	.long	.L94-.L95
	.text
.L122:
.L121:
.L120:
.L119:
.L118:
.L117:
.L116:
.L115:
.L114:
.L113:
.L112:
.L111:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-80(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L110:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-80(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L109:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC12(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-80(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L108:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	user_(%rip), %edx
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	movsd	.LC14(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L107:
.L106:
.L105:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L104:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-32(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-32(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	addsd	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L103:
	movsd	.LC7(%rip), %xmm0
	subsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L102:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC7(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movl	user_(%rip), %eax
	movl	%eax, %edi
	call	__powidf2@PLT
	movsd	-80(%rbp), %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L101:
	movsd	.LC7(%rip), %xmm0
	subsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$4, %edi
	movapd	%xmm2, %xmm0
	call	__powidf2@PLT
	movsd	.LC7(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movl	$4, %edi
	movsd	-88(%rbp), %xmm0
	call	__powidf2@PLT
	movsd	-80(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L100:
	movq	-64(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-32(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm5
	mulsd	-80(%rbp), %xmm5
	movsd	%xmm5, -80(%rbp)
	movl	user_(%rip), %eax
	movl	%eax, %edi
	movq	%rbx, %xmm0
	call	__powidf2@PLT
	addsd	-80(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L99:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L98:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rbx
	movsd	.LC7(%rip), %xmm0
	divsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, -80(%rbp)
	movsd	.LC7(%rip), %xmm0
	divsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rbx, %xmm0
	call	pow@PLT
	movsd	-80(%rbp), %xmm6
	subsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L97:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L128
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L126
	jmp	.L128
.L96:
.L94:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	-32(%rbp), %xmm2
	movsd	.LC7(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LC15(%rip), %xmm1
	divsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jnb	.L130
	jmp	.L143
.L93:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC16(%rip), %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L146:
	nop
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movl	$1, -20(%rbp)
.L133:
	cmpl	$20, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L149
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC17(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm7
	movsd	%xmm7, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movl	$3, %edi
	call	__powidf2@PLT
	movsd	-88(%rbp), %xmm7
	divsd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	addsd	-80(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -20(%rbp)
	jmp	.L133
.L149:
	nop
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L148:
	nop
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	user_(%rip), %edx
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L126:
	movq	-72(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L92
.L128:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm4
	movsd	%xmm4, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	divsd	%xmm1, %xmm0
	call	exp@PLT
	movsd	-80(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L147:
	nop
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L144
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC18(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	addsd	-80(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC19(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L144:
	movsd	-32(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC19(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L92
.L130:
	movq	-72(%rbp), %rax
	movsd	.LC20(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L150
.L143:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L145
	movsd	-32(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	movsd	.LC22(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L150
.L145:
	movq	-72(%rbp), %rax
	movsd	.LC23(%rip), %xmm0
	movsd	%xmm0, (%rax)
.L150:
	nop
.L92:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func_, .-func_
	.globl	init_
	.type	init_, @function
init_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	.LC24(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$28, %eax
	ja	.L152
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L154(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L154(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L154:
	.long	.L152-.L154
	.long	.L152-.L154
	.long	.L180-.L154
	.long	.L179-.L154
	.long	.L178-.L154
	.long	.L177-.L154
	.long	.L176-.L154
	.long	.L175-.L154
	.long	.L174-.L154
	.long	.L173-.L154
	.long	.L172-.L154
	.long	.L171-.L154
	.long	.L186-.L154
	.long	.L186-.L154
	.long	.L186-.L154
	.long	.L187-.L154
	.long	.L187-.L154
	.long	.L165-.L154
	.long	.L164-.L154
	.long	.L188-.L154
	.long	.L188-.L154
	.long	.L188-.L154
	.long	.L188-.L154
	.long	.L188-.L154
	.long	.L158-.L154
	.long	.L157-.L154
	.long	.L156-.L154
	.long	.L155-.L154
	.long	.L153-.L154
	.text
.L181:
.L180:
	movq	-32(%rbp), %rax
	movsd	.LC25(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC26(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L179:
	movq	-32(%rbp), %rax
	movsd	.LC27(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC28(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L178:
	movq	-32(%rbp), %rax
	movsd	.LC29(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC30(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L177:
	movq	-32(%rbp), %rax
	movsd	.LC31(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC32(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L176:
	movq	-32(%rbp), %rax
	movsd	.LC33(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC34(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L175:
	movq	-32(%rbp), %rax
	movsd	.LC35(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC36(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L174:
	movq	-32(%rbp), %rax
	movsd	.LC37(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC38(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L173:
	movq	-32(%rbp), %rax
	movsd	.LC39(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC40(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L172:
	movq	-32(%rbp), %rax
	movsd	.LC41(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC42(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L171:
	movq	-32(%rbp), %rax
	movsd	.LC43(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC44(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L170:
.L169:
.L168:
.L167:
.L166:
.L165:
	movq	-32(%rbp), %rax
	movsd	.LC45(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC46(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L164:
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC18(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L163:
.L162:
.L161:
.L160:
.L159:
.L158:
	movq	-32(%rbp), %rax
	movsd	.LC47(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L157:
	movq	-32(%rbp), %rax
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L156:
	movq	-32(%rbp), %rax
	movsd	.LC48(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC49(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L155:
	movq	-32(%rbp), %rax
	movsd	.LC50(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-8(%rbp), %xmm0
	movsd	.LC16(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L151
.L153:
	movq	-32(%rbp), %rax
	movsd	.LC50(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC51(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L152:
	movsd	-8(%rbp), %xmm0
	movsd	.LC16(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L186:
	nop
	movq	-32(%rbp), %rax
	movsd	.LC52(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC53(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L187:
	nop
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC17(%rip), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L151
.L188:
	nop
	movq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, (%rax)
	nop
.L151:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	init_, .-init_
	.globl	rmp_
	.type	rmp_, @function
rmp_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movsd	.LC16(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
.L192:
	movsd	-8(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L195
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L192
.L195:
	movsd	-8(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	rmp_, .-rmp_
	.section	.rodata
.LC54:
	.string	"748_1.f"
.LC55:
	.ascii	"PROBLEM NUMBER "
.LC56:
	.ascii	" WITH PROBLEM PARAMETER "
.LC57:
	.ascii	"COMPUTED ROOT ="
.LC58:
	.ascii	" "
	.text
	.type	MAIN__, @function
MAIN__:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
.L198:
	leaq	.LC54(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$50, -560(%rbp)
	movl	$136, -576(%rbp)
	movl	$5, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	leaq	user_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-576(%rbp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.L197
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L197:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rmp_
	movl	$1000, -28(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	init_
	leaq	-40(%rbp), %r8
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rroot_
	leaq	.LC54(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$69, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$15, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-576(%rbp), %rax
	movl	$24, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	leaq	user_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC54(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$70, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$15, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC54(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$71, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$1, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L198
	.cfi_endproc
.LFE9:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB10:
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
	leaq	options.4.4186(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.comm	user_,4,16
	.section	.rodata
	.align 16
	.type	options.4.4186, @object
	.size	options.4.4186, 28
options.4.4186:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC0:
	.long	0
	.long	1090021888
	.align 16
.LC1:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	1717986918
	.long	1072064102
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	1076101120
	.align 8
.LC9:
	.long	0
	.long	1078198272
	.align 16
.LC10:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC11:
	.long	0
	.long	1079574528
	.align 8
.LC12:
	.long	0
	.long	1080623104
	.align 8
.LC13:
	.long	0
	.long	1074266112
	.align 8
.LC14:
	.long	2576980378
	.long	1070176665
	.align 8
.LC15:
	.long	3539053052
	.long	1063281229
	.align 8
.LC16:
	.long	0
	.long	1073741824
	.align 8
.LC17:
	.long	0
	.long	1075052544
	.align 8
.LC18:
	.long	0
	.long	1073217536
	.align 8
.LC19:
	.long	0
	.long	1077149696
	.align 8
.LC20:
	.long	2598955764
	.long	1072398140
	.align 8
.LC21:
	.long	0
	.long	1083129856
	.align 8
.LC22:
	.long	3367254360
	.long	1073593974
	.align 8
.LC23:
	.long	2439541424
	.long	-1075086099
	.align 8
.LC24:
	.long	776530087
	.long	1074340351
	.align 8
.LC25:
	.long	4503600
	.long	1072693248
	.align 8
.LC26:
	.long	4292715496
	.long	1074790399
	.align 8
.LC27:
	.long	1125900
	.long	1074790400
	.align 8
.LC28:
	.long	4294404346
	.long	1075970047
	.align 8
.LC29:
	.long	562950
	.long	1075970048
	.align 8
.LC30:
	.long	4294404346
	.long	1076887551
	.align 8
.LC31:
	.long	281475
	.long	1076887552
	.align 8
.LC32:
	.long	4294685821
	.long	1077477375
	.align 8
.LC33:
	.long	281475
	.long	1077477376
	.align 8
.LC34:
	.long	4294826559
	.long	1078067199
	.align 8
.LC35:
	.long	140737
	.long	1078067200
	.align 8
.LC36:
	.long	4294826559
	.long	1078493183
	.align 8
.LC37:
	.long	140737
	.long	1078493184
	.align 8
.LC38:
	.long	4294826559
	.long	1078984703
	.align 8
.LC39:
	.long	70369
	.long	1078984704
	.align 8
.LC40:
	.long	4294896927
	.long	1079263231
	.align 8
.LC41:
	.long	70369
	.long	1079263232
	.align 8
.LC42:
	.long	4294896927
	.long	1079574527
	.align 8
.LC43:
	.long	70369
	.long	1079574528
	.align 8
.LC44:
	.long	4294896927
	.long	1079918591
	.align 8
.LC45:
	.long	1717986918
	.long	-1074895258
	.align 8
.LC46:
	.long	858993459
	.long	1074803507
	.align 8
.LC47:
	.long	1202590843
	.long	1065646817
	.align 8
.LC48:
	.long	0
	.long	-1074790400
	.align 8
.LC49:
	.long	0
	.long	1074790400
	.align 8
.LC50:
	.long	0
	.long	-1060927488
	.align 8
.LC51:
	.long	3944497965
	.long	1058682594
	.align 8
.LC52:
	.long	0
	.long	-1071513600
	.align 8
.LC53:
	.long	0
	.long	1077870592
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
