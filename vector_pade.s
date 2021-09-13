	.file	"vector_pade.f90"
	.text
	.globl	scale_s_star_
	.type	scale_s_star_, @function
scale_s_star_:
.LFB0:
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
	subq	$8, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	jne	.L3
	movl	$1, %ecx
.L3:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	imulq	%rcx, %rax
	movl	$0, %edi
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	movl	$1, %eax
.L5:
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rdx
	movq	56(%rdx), %rsi
	movq	-160(%rbp), %rdx
	movq	48(%rdx), %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	imulq	%rax, %rdx
	movq	%rdx, %rsi
	movl	$0, %edx
	movq	%rsi, %r8
	movl	$0, %r9d
	movq	-136(%rbp), %rsi
	movq	40(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.L7
	movl	$1, %esi
.L7:
	movq	-136(%rbp), %r8
	movq	(%r8), %r8
	movq	%r8, -88(%rbp)
	movq	-136(%rbp), %r8
	movq	56(%r8), %r9
	movq	-136(%rbp), %r8
	movq	48(%r8), %r8
	subq	%r8, %r9
	movq	%r9, %r8
	movq	%r8, -96(%rbp)
	movq	-136(%rbp), %r8
	movq	64(%r8), %r10
	movq	-136(%rbp), %r8
	movq	80(%r8), %r9
	movq	-136(%rbp), %r8
	movq	72(%r8), %r8
	subq	%r8, %r9
	movq	%r9, %r8
	movq	%r8, -104(%rbp)
	movq	-136(%rbp), %r8
	movq	88(%r8), %r8
	movq	-136(%rbp), %r9
	movq	104(%r9), %r11
	movq	-136(%rbp), %r9
	movq	96(%r9), %r9
	subq	%r9, %r11
	movq	%r11, %r9
	movq	%r9, -112(%rbp)
	movq	-112(%rbp), %r9
	addq	$1, %r9
	movq	%r9, %r11
	imulq	%r8, %r11
	movl	$0, %r9d
	movq	%r11, %r12
	movl	$0, %r13d
	movl	$0, %ebx
	movq	-64(%rbp), %r14
	movl	$0, %r11d
.L9:
	cmpq	%r14, %r11
	jg	.L8
	movq	%r11, %r12
	imulq	%rcx, %r12
	leaq	(%rdi,%r12), %r13
	movq	-56(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	addl	%r12d, %ebx
	addq	$1, %r11
	jmp	.L9
.L8:
	movl	%ebx, -116(%rbp)
	movq	-152(%rbp), %r11
	movl	(%r11), %r11d
	movl	$0, -36(%rbp)
.L17:
	cmpl	%r11d, -36(%rbp)
	setg	%bl
	movzbl	%bl, %ebx
	testl	%ebx, %ebx
	jne	.L35
	movl	-36(%rbp), %ebx
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	leaq	(%rdx,%rbx), %r12
	movq	-72(%rbp), %rbx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rbx,%r12,4)
	movq	-152(%rbp), %rbx
	movl	(%rbx), %ebx
	movl	$0, -40(%rbp)
.L16:
	cmpl	%ebx, -40(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L36
	cmpl	$0, -36(%rbp)
	jne	.L12
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%rdi,%r12), %r13
	movq	-56(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	-116(%rbp), %r13d
	subl	%r12d, %r13d
	movl	%r13d, %r12d
	movl	%r12d, -48(%rbp)
	jmp	.L13
.L12:
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%rdi,%r12), %r13
	movq	-56(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	-116(%rbp), %r13d
	subl	%r12d, %r13d
	movl	%r13d, %r12d
	addl	$1, %r12d
	movl	%r12d, -48(%rbp)
.L13:
	movl	-48(%rbp), %r13d
	movl	$0, -44(%rbp)
.L15:
	cmpl	%r13d, -44(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L37
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	movq	-72(%rbp), %r12
	movss	(%r12,%r14,4), %xmm1
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r10, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	addq	%r12, %r14
	movq	-88(%rbp), %r12
	movss	(%r12,%r14,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	addss	%xmm1, %xmm0
	movq	-72(%rbp), %r12
	movss	%xmm0, (%r12,%r14,4)
	addl	$1, -44(%rbp)
	jmp	.L15
.L37:
	nop
	addl	$1, -40(%rbp)
	jmp	.L16
.L36:
	nop
	addl	$1, -36(%rbp)
	jmp	.L17
.L35:
	nop
	movq	-152(%rbp), %r11
	movl	(%r11), %r11d
	movl	$0, -36(%rbp)
.L27:
	cmpl	%r11d, -36(%rbp)
	setg	%bl
	movzbl	%bl, %ebx
	testl	%ebx, %ebx
	jne	.L38
	movl	-36(%rbp), %ebx
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	leaq	(%rdx,%rbx), %r12
	movq	-72(%rbp), %rbx
	movss	(%rbx,%r12,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L33
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L19
.L33:
	movq	-152(%rbp), %rbx
	movl	(%rbx), %ebx
	movl	$0, -40(%rbp)
.L26:
	cmpl	%ebx, -40(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L39
	cmpl	$0, -36(%rbp)
	jne	.L22
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%rdi,%r12), %r13
	movq	-56(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	-116(%rbp), %r13d
	subl	%r12d, %r13d
	movl	%r13d, %r12d
	movl	%r12d, -48(%rbp)
	jmp	.L23
.L22:
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%rdi,%r12), %r13
	movq	-56(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	-116(%rbp), %r13d
	subl	%r12d, %r13d
	movl	%r13d, %r12d
	addl	$1, %r12d
	movl	%r12d, -48(%rbp)
.L23:
	movl	-48(%rbp), %r13d
	movl	$0, -44(%rbp)
.L25:
	cmpl	%r13d, -44(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L40
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r10, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	addq	%r12, %r14
	movq	-88(%rbp), %r12
	movss	(%r12,%r14,4), %xmm0
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	movq	-72(%rbp), %r12
	movss	(%r12,%r14,4), %xmm1
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r10, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	addq	%r12, %r14
	divss	%xmm1, %xmm0
	movq	-88(%rbp), %r12
	movss	%xmm0, (%r12,%r14,4)
	addl	$1, -44(%rbp)
	jmp	.L25
.L40:
	nop
	addl	$1, -40(%rbp)
	jmp	.L26
.L39:
	nop
.L19:
	addl	$1, -36(%rbp)
	jmp	.L27
.L38:
	nop
	movq	-88(%rbp), %rcx
	movss	(%rcx,%r9,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-72(%rbp), %rcx
	movss	%xmm0, (%rcx,%rdx,4)
	movq	-152(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -36(%rbp)
.L31:
	cmpl	%ecx, -36(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L41
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-72(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L34
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L29
.L34:
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-72(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm1
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-72(%rbp), %rsi
	movss	%xmm0, (%rsi,%rdi,4)
.L29:
	addl	$1, -36(%rbp)
	jmp	.L31
.L41:
	nop
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	scale_s_star_, .-scale_s_star_
	.globl	scale_s_
	.type	scale_s_, @function
scale_s_:
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
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$1, %eax
.L44:
	movq	-144(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-144(%rbp), %rdx
	movq	56(%rdx), %rcx
	movq	-144(%rbp), %rdx
	movq	48(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	imulq	%rax, %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rcx, %r10
	movl	$0, %r11d
	movq	-128(%rbp), %rcx
	movq	40(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.L46
	movl	$1, %ecx
.L46:
	movq	-128(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	-128(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	-128(%rbp), %rsi
	movq	48(%rsi), %rsi
	subq	%rsi, %rdi
	movq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rsi
	addq	$1, %rsi
	imulq	%rcx, %rsi
	movl	$0, %r10d
	movq	%rsi, %r8
	movl	$0, %r9d
	movq	-120(%rbp), %rsi
	movq	40(%rsi), %rdi
	testq	%rdi, %rdi
	jne	.L48
	movl	$1, %edi
.L48:
	movq	-120(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movq	-120(%rbp), %rsi
	movq	56(%rsi), %r8
	movq	-120(%rbp), %rsi
	movq	48(%rsi), %rsi
	subq	%rsi, %r8
	movq	%r8, %rsi
	movq	%rsi, -96(%rbp)
	movq	-120(%rbp), %rsi
	movq	64(%rsi), %r8
	movq	-120(%rbp), %rsi
	movq	80(%rsi), %r9
	movq	-120(%rbp), %rsi
	movq	72(%rsi), %rsi
	subq	%rsi, %r9
	movq	%r9, %rsi
	movq	%rsi, -104(%rbp)
	movq	-120(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	-120(%rbp), %r9
	movq	104(%r9), %r11
	movq	-120(%rbp), %r9
	movq	96(%r9), %r9
	subq	%r9, %r11
	movq	%r11, %r9
	movq	%r9, -112(%rbp)
	movq	-112(%rbp), %r9
	addq	$1, %r9
	movq	%r9, %r11
	imulq	%rsi, %r11
	movl	$0, %r9d
	movq	%r11, %r12
	movl	$0, %r13d
	movq	-136(%rbp), %r11
	movl	(%r11), %r11d
	movl	$0, -40(%rbp)
.L56:
	cmpl	%r11d, -40(%rbp)
	setg	%bl
	movzbl	%bl, %ebx
	testl	%ebx, %ebx
	jne	.L71
	movl	-40(%rbp), %ebx
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	leaq	(%rdx,%rbx), %r12
	movq	-56(%rbp), %rbx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rbx,%r12,4)
	movq	-136(%rbp), %rbx
	movl	(%rbx), %ebx
	movl	$0, -36(%rbp)
.L55:
	cmpl	%ebx, -36(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L72
	cmpl	$0, -40(%rbp)
	jne	.L51
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%r10,%r12), %r13
	movq	-72(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	addl	$1, %r12d
	movl	%r12d, -48(%rbp)
	jmp	.L52
.L51:
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%r10,%r12), %r13
	movq	-72(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	%r12d, -48(%rbp)
.L52:
	movl	-48(%rbp), %r13d
	movl	$0, -44(%rbp)
.L54:
	cmpl	%r13d, -44(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L73
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	movq	-56(%rbp), %r12
	movss	(%r12,%r14,4), %xmm1
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rdi, %r12
	addq	%r12, %r14
	movq	-88(%rbp), %r12
	movss	(%r12,%r14,4), %xmm0
	movss	.LC1(%rip), %xmm2
	andps	%xmm2, %xmm0
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	addss	%xmm1, %xmm0
	movq	-56(%rbp), %r12
	movss	%xmm0, (%r12,%r14,4)
	addl	$1, -44(%rbp)
	jmp	.L54
.L73:
	nop
	addl	$1, -36(%rbp)
	jmp	.L55
.L72:
	nop
	addl	$1, -40(%rbp)
	jmp	.L56
.L71:
	nop
	movq	-136(%rbp), %r11
	movl	(%r11), %r11d
	movl	$0, -40(%rbp)
.L66:
	cmpl	%r11d, -40(%rbp)
	setg	%bl
	movzbl	%bl, %ebx
	testl	%ebx, %ebx
	jne	.L74
	movl	-40(%rbp), %ebx
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	leaq	(%rdx,%rbx), %r12
	movq	-56(%rbp), %rbx
	movss	(%rbx,%r12,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L70
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L58
.L70:
	movq	-136(%rbp), %rbx
	movl	(%rbx), %ebx
	movl	$0, -36(%rbp)
.L65:
	cmpl	%ebx, -36(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L75
	cmpl	$0, -40(%rbp)
	jne	.L61
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%r10,%r12), %r13
	movq	-72(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	addl	$1, %r12d
	movl	%r12d, -48(%rbp)
	jmp	.L62
.L61:
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rcx, %r12
	leaq	(%r10,%r12), %r13
	movq	-72(%rbp), %r12
	movl	(%r12,%r13,4), %r12d
	movl	%r12d, -48(%rbp)
.L62:
	movl	-48(%rbp), %r13d
	movl	$0, -44(%rbp)
.L64:
	cmpl	%r13d, -44(%rbp)
	setg	%r12b
	movzbl	%r12b, %r12d
	testl	%r12d, %r12d
	jne	.L76
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rdi, %r12
	addq	%r12, %r14
	movq	-88(%rbp), %r12
	movss	(%r12,%r14,4), %xmm0
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rax, %r12
	leaq	(%rdx,%r12), %r14
	movq	-56(%rbp), %r12
	movss	(%r12,%r14,4), %xmm1
	movl	-40(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rsi, %r12
	leaq	(%r9,%r12), %r14
	movl	-36(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%r8, %r12
	addq	%r12, %r14
	movl	-44(%rbp), %r12d
	movslq	%r12d, %r12
	imulq	%rdi, %r12
	addq	%r12, %r14
	divss	%xmm1, %xmm0
	movq	-88(%rbp), %r12
	movss	%xmm0, (%r12,%r14,4)
	addl	$1, -44(%rbp)
	jmp	.L64
.L76:
	nop
	addl	$1, -36(%rbp)
	jmp	.L65
.L75:
	nop
.L58:
	addl	$1, -40(%rbp)
	jmp	.L66
.L74:
	nop
	movq	-56(%rbp), %rcx
	movss	(%rcx,%rdx,4), %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-56(%rbp), %rcx
	movss	%xmm0, (%rcx,%rdx,4)
	movq	-136(%rbp), %rcx
	movl	(%rcx), %edi
	movl	$1, -40(%rbp)
.L68:
	cmpl	%edi, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L77
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rsi, %rcx
	leaq	(%r9,%rcx), %r10
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%r8, %rcx
	addq	%rcx, %r10
	movq	-88(%rbp), %rcx
	movss	(%rcx,%r10,4), %xmm0
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %r10
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	-56(%rbp), %rcx
	movss	%xmm0, (%rcx,%r10,4)
	addl	$1, -40(%rbp)
	jmp	.L68
.L77:
	nop
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	scale_s_, .-scale_s_
	.globl	mult_s_star_
	.type	mult_s_star_, @function
mult_s_star_:
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
	pushq	%rbx
	subq	$256, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movq	-256(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L80
	movl	$1, %ebx
.L80:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-256(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-256(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movq	$0, -296(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-272(%rbp), %rax
	movq	40(%rax), %r9
	testq	%r9, %r9
	jne	.L82
	movl	$1, %r9d
.L82:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	imulq	%r9, %rax
	movq	$0, -304(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-288(%rbp), %rax
	movq	40(%rax), %r8
	testq	%r8, %r8
	jne	.L84
	movl	$1, %r8d
.L84:
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-288(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	imulq	%r8, %rax
	movq	$0, -312(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-280(%rbp), %rax
	movq	40(%rax), %r10
	testq	%r10, %r10
	jne	.L86
	movl	$1, %r10d
.L86:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-280(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-280(%rbp), %rax
	movq	64(%rax), %r13
	movq	-280(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-280(%rbp), %rax
	movq	88(%rax), %r11
	movq	-280(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	imulq	%r11, %rax
	movq	$0, -320(%rbp)
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	-264(%rbp), %rax
	movq	40(%rax), %r14
	testq	%r14, %r14
	jne	.L88
	movl	$1, %r14d
.L88:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-264(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-264(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-264(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-264(%rbp), %rax
	movq	88(%rax), %rdi
	movq	%rdi, -376(%rbp)
	movq	-264(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	imulq	%rdi, %rax
	movq	$0, -384(%rbp)
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %r12
	testq	%r12, %r12
	jne	.L90
	movl	$1, %r12d
.L90:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-248(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-248(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rax
	movq	88(%rax), %rsi
	movq	%rsi, -392(%rbp)
	movq	-248(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	imulq	%rsi, %rax
	movq	$0, -400(%rbp)
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L92:
	cmpq	%rdi, %rcx
	jg	.L91
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	-296(%rbp), %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L92
.L91:
	movl	%esi, -228(%rbp)
	movl	$0, %esi
	movq	-112(%rbp), %rdi
	movl	$0, %ecx
.L94:
	cmpq	%rdi, %rcx
	jg	.L93
	movq	%rcx, %rax
	imulq	%r9, %rax
	movq	-304(%rbp), %rdx
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L94
.L93:
	movl	%esi, -232(%rbp)
	movl	$0, %esi
	movq	-128(%rbp), %rdi
	movl	$0, %ecx
.L96:
	cmpq	%rdi, %rcx
	jg	.L95
	movq	%rcx, %rax
	imulq	%r8, %rax
	movq	-312(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L96
.L95:
	movl	%esi, -236(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -368(%rbp)
	movl	$0, -52(%rbp)
.L112:
	movl	-368(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L114
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -404(%rbp)
	movl	$0, -56(%rbp)
.L111:
	movl	-404(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L115
	cmpl	$0, -52(%rbp)
	jne	.L99
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	movq	-312(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movq	-120(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-236(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -76(%rbp)
	jmp	.L100
.L99:
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	movq	-312(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movq	-120(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-236(%rbp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.L100:
	movl	-76(%rbp), %r15d
	movl	$0, -72(%rbp)
.L110:
	cmpl	%r15d, -72(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L116
	movl	-56(%rbp), %eax
	cltq
	imulq	%r11, %rax
	movq	-320(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r10, %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	16(%rbp), %rax
	movl	(%rax), %edi
	movl	$0, -68(%rbp)
.L109:
	cmpl	%edi, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L117
	cmpl	$0, -68(%rbp)
	jne	.L103
	movl	$0, %esi
	movl	-72(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	%eax, %ecx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-296(%rbp), %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%ecx, %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	movl	%eax, -80(%rbp)
	jmp	.L104
.L103:
	movl	$0, %esi
	movl	-72(%rbp), %eax
	subl	-228(%rbp), %eax
	movl	%eax, %ecx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-296(%rbp), %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%ecx, %eax
	subl	$1, %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	movl	%eax, -80(%rbp)
.L104:
	cmpl	$0, -52(%rbp)
	jne	.L105
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %eax
	cltq
	imulq	%r9, %rax
	movq	-304(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-232(%rbp), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L106
.L105:
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %eax
	cltq
	imulq	%r9, %rax
	movq	-304(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-232(%rbp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
.L106:
	movl	-80(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -64(%rbp)
.L108:
	cmpl	%ecx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L118
	movl	-56(%rbp), %eax
	cltq
	imulq	%r11, %rax
	movq	-320(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r10, %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-68(%rbp), %eax
	cltq
	imulq	-376(%rbp), %rax
	movq	-384(%rbp), %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-336(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r14, %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-56(%rbp), %eax
	cltq
	imulq	-392(%rbp), %rax
	movq	-400(%rbp), %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	-352(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movq	-200(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%r11, %rax
	leaq	(%rsi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r10, %rax
	addq	%rax, %rdx
	addss	%xmm1, %xmm0
	movq	-136(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -64(%rbp)
	jmp	.L108
.L118:
	nop
	addl	$1, -68(%rbp)
	jmp	.L109
.L117:
	nop
	addl	$1, -72(%rbp)
	jmp	.L110
.L116:
	nop
	addl	$1, -56(%rbp)
	jmp	.L111
.L115:
	nop
	addl	$1, -52(%rbp)
	jmp	.L112
.L114:
	nop
	nop
	addq	$256, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mult_s_star_, .-mult_s_star_
	.globl	mult_s_
	.type	mult_s_, @function
mult_s_:
.LFB3:
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
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	40(%rax), %r9
	testq	%r9, %r9
	jne	.L121
	movl	$1, %r9d
.L121:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-272(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	imulq	%r9, %rax
	movq	$0, -280(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-264(%rbp), %rax
	movq	40(%rax), %r8
	testq	%r8, %r8
	jne	.L123
	movl	$1, %r8d
.L123:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	64(%rax), %r14
	movq	-264(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-264(%rbp), %rax
	movq	88(%rax), %r10
	movq	-264(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	imulq	%r10, %rax
	movl	$0, %r15d
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-256(%rbp), %rax
	movq	40(%rax), %rdi
	testq	%rdi, %rdi
	jne	.L125
	movl	$1, %edi
.L125:
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-256(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	imulq	%rdi, %rax
	movq	$0, -288(%rbp)
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rsi
	testq	%rsi, %rsi
	jne	.L127
	movl	$1, %esi
.L127:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-240(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	$1, %rax
	imulq	%rsi, %rax
	movq	$0, -304(%rbp)
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-232(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L129
	movl	$1, %ebx
.L129:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-232(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-232(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-232(%rbp), %rax
	movq	88(%rax), %rcx
	movq	%rcx, -360(%rbp)
	movq	-232(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	imulq	%rcx, %rax
	movq	$0, -368(%rbp)
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %r11
	testq	%r11, %r11
	jne	.L131
	movl	$1, %r11d
.L131:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-248(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-248(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-248(%rbp), %rax
	movq	88(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-248(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	imulq	%rcx, %rax
	movq	$0, -384(%rbp)
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -352(%rbp)
	movl	$0, -52(%rbp)
.L147:
	movl	-352(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L149
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -388(%rbp)
	movl	$0, -56(%rbp)
.L146:
	movl	-388(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L150
	cmpl	$0, -56(%rbp)
	jne	.L134
	movl	-52(%rbp), %eax
	cltq
	imulq	%r9, %rax
	movq	-280(%rbp), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L135
.L134:
	movl	-52(%rbp), %eax
	cltq
	imulq	%r9, %rax
	movq	-280(%rbp), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -76(%rbp)
.L135:
	movl	-76(%rbp), %r13d
	movl	$0, -72(%rbp)
.L145:
	cmpl	%r13d, -72(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L151
	movl	-56(%rbp), %eax
	cltq
	imulq	%r10, %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r14, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r8, %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	16(%rbp), %rax
	movl	(%rax), %r12d
	movl	$0, -68(%rbp)
.L144:
	cmpl	%r12d, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L152
	cmpl	$0, -56(%rbp)
	jne	.L138
	movl	$0, %ecx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdi, %rax
	movq	-288(%rbp), %rdx
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-72(%rbp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	%eax, -80(%rbp)
	jmp	.L139
.L138:
	movl	$0, %ecx
	movl	-68(%rbp), %eax
	cltq
	imulq	%rdi, %rax
	movq	-288(%rbp), %rdx
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-72(%rbp), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	%eax, -80(%rbp)
.L139:
	cmpl	$0, -68(%rbp)
	jne	.L140
	movl	-72(%rbp), %ecx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	movq	-304(%rbp), %rdx
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L141
.L140:
	movl	-72(%rbp), %ecx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	movq	-304(%rbp), %rdx
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
.L141:
	movl	-80(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -64(%rbp)
.L143:
	cmpl	%ecx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L153
	movl	-56(%rbp), %eax
	cltq
	imulq	%r10, %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r14, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r8, %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-68(%rbp), %eax
	cltq
	imulq	-360(%rbp), %rax
	movq	-368(%rbp), %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-320(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-56(%rbp), %eax
	cltq
	imulq	-376(%rbp), %rax
	movq	-384(%rbp), %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	-336(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cltq
	imulq	%r11, %rax
	addq	%rax, %rdx
	movq	-200(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%r10, %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r14, %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	%r8, %rax
	addq	%rax, %rdx
	addss	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -64(%rbp)
	jmp	.L143
.L153:
	nop
	addl	$1, -68(%rbp)
	jmp	.L144
.L152:
	nop
	addl	$1, -72(%rbp)
	jmp	.L145
.L151:
	nop
	addl	$1, -56(%rbp)
	jmp	.L146
.L150:
	nop
	addl	$1, -52(%rbp)
	jmp	.L147
.L149:
	nop
	nop
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mult_s_, .-mult_s_
	.globl	gen_next_vector_
	.type	gen_next_vector_, @function
gen_next_vector_:
.LFB4:
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, -20(%rbp)
.L156:
	cmpl	%esi, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L158
	movl	$0, %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -20(%rbp)
	jmp	.L156
.L158:
	nop
	nop
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	gen_next_vector_, .-gen_next_vector_
	.section	.rodata
	.align 4
.LC4:
	.long	0
	.text
	.globl	build_s_star_
	.type	build_s_star_, @function
build_s_star_:
.LFB5:
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
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %r12
	testq	%r12, %r12
	jne	.L161
	movl	$1, %r12d
.L161:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-248(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	imulq	%r12, %rax
	movl	$0, %r15d
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-264(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -280(%rbp)
	testq	%rax, %rax
	jne	.L163
	movq	$1, -280(%rbp)
.L163:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-264(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-264(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-264(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-264(%rbp), %rax
	movq	88(%rax), %r13
	movq	-264(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	imulq	%r13, %rax
	movl	$0, %r14d
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	-232(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -312(%rbp)
	testq	%rax, %rax
	jne	.L165
	movq	$1, -312(%rbp)
.L165:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-232(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-232(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-232(%rbp), %rax
	movq	88(%rax), %rbx
	movq	-232(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	%rbx, %rax
	imulq	-160(%rbp), %rax
	movq	%rbx, %rdi
	negq	%rdi
	movq	%rdi, -304(%rbp)
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	-256(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	movq	-256(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -192(%rbp)
	movq	-256(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rdi
	cmovns	%rax, %rdi
	movq	-256(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -208(%rbp)
	movq	%rdi, -336(%rbp)
	movq	%rdi, %rax
	imulq	-208(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, -384(%rbp)
	movq	$0, -376(%rbp)
	salq	$2, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -216(%rbp)
	movq	-336(%rbp), %r11
	notq	%r11
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L167:
	cmpq	%rdi, %rcx
	jg	.L166
	movq	%rcx, %rax
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L167
.L166:
	movl	%esi, -220(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -52(%rbp)
.L173:
	cmpl	%ecx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L215
	movq	-240(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, -56(%rbp)
.L172:
	cmpl	%esi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L216
	movl	$0, -76(%rbp)
.L171:
	cmpl	$1, -76(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L217
	movl	-56(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-288(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -76(%rbp)
	jmp	.L171
.L217:
	nop
	addl	$1, -56(%rbp)
	jmp	.L172
.L216:
	nop
	addl	$1, -52(%rbp)
	jmp	.L173
.L215:
	nop
	movq	-104(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%r14,4)
	movq	-240(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -56(%rbp)
.L175:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L218
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-304(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%rsi,%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	-320(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	divss	%xmm1, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rdx
	movss	.LC3(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -56(%rbp)
	jmp	.L175
.L218:
	nop
	cmpl	$0, -220(%rbp)
	jne	.L176
	movq	-240(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -52(%rbp)
.L178:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L219
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-304(%rbp), %rdi
	leaq	(%rdi,%rax), %rcx
	movl	-52(%rbp), %eax
	cltq
	imulq	-320(%rbp), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rcx
	movl	-52(%rbp), %eax
	cltq
	imulq	-288(%rbp), %rax
	addq	%rcx, %rax
	movq	-280(%rbp), %rdi
	leaq	(%rdi,%rax), %rcx
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -52(%rbp)
	jmp	.L178
.L176:
	movl	$0, -80(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %r9d
	movl	$1, -56(%rbp)
.L189:
	cmpl	%r9d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L220
	movl	$0, -64(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %r10d
	movl	$0, -52(%rbp)
.L188:
	cmpl	%r10d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L221
	movl	-220(%rbp), %r8d
	movl	$1, -68(%rbp)
.L187:
	cmpl	%r8d, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L222
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-220(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edi
	movl	$1, -72(%rbp)
.L186:
	cmpl	%edi, -72(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L223
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.L184
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	-336(%rbp), %rax
	leaq	(%r11,%rax), %rcx
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movq	-216(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L185
.L184:
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-304(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-320(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	cltq
	imulq	-312(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-64(%rbp), %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	-336(%rbp), %rax
	leaq	(%r11,%rax), %rcx
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-216(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
.L185:
	addl	$1, -72(%rbp)
	jmp	.L186
.L223:
	nop
	addl	$1, -68(%rbp)
	jmp	.L187
.L222:
	nop
	movl	-64(%rbp), %edx
	movl	-220(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -64(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L188
.L221:
	nop
	movl	-220(%rbp), %eax
	addl	%eax, -80(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L189
.L220:
	nop
	leaq	-224(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-256(%rbp), %rdi
	movq	-216(%rbp), %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r9, %rdi
	call	sgefa_@PLT
	movl	$0, -60(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -56(%rbp)
.L195:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L224
	movl	-220(%rbp), %esi
	movl	$1, -68(%rbp)
.L194:
	cmpl	%esi, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L225
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-304(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	-312(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	movss	.LC3(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-240(%rbp), %rax
	movl	(%rax), %edi
	movl	$1, -72(%rbp)
.L193:
	cmpl	%edi, -72(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L226
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-176(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-304(%rbp), %rdx
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	imulq	-320(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	-312(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-72(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rdx
	movq	-104(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	subss	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -72(%rbp)
	jmp	.L193
.L226:
	nop
	addl	$1, -68(%rbp)
	jmp	.L194
.L225:
	nop
	movl	-220(%rbp), %eax
	addl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L195
.L224:
	nop
	movq	-176(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-216(%rbp), %rax
	leaq	.LC4(%rip), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sgesl_@PLT
	movl	$0, -60(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %edx
	movl	$0, -56(%rbp)
.L199:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L227
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	-220(%rbp), %ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	$1, -76(%rbp)
.L198:
	cmpl	%edi, -76(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L228
	movl	-60(%rbp), %ecx
	movl	-76(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-56(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rcx
	movl	-76(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	addq	%rax, %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -76(%rbp)
	jmp	.L198
.L228:
	nop
	movl	-60(%rbp), %ecx
	movl	-220(%rbp), %eax
	leal	(%rcx,%rax), %esi
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L199
.L227:
	nop
	movl	-224(%rbp), %eax
	testl	%eax, %eax
	jle	.L200
	movq	-272(%rbp), %rax
	movl	$1, (%rax)
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -52(%rbp)
.L206:
	cmpl	%eax, -52(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L229
	movq	-240(%rbp), %rdx
	movl	(%rdx), %edx
	movl	$0, -56(%rbp)
.L205:
	cmpl	%edx, -56(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L230
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%r12, %rcx
	leaq	(%r15,%rcx), %rsi
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rsi,4), %ecx
	movl	-220(%rbp), %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	leal	1(%rcx), %edi
	movl	$0, -76(%rbp)
.L204:
	cmpl	%edi, -76(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L231
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%r13, %rcx
	leaq	(%r14,%rcx), %rsi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	-288(%rbp), %rcx
	addq	%rcx, %rsi
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	-280(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-104(%rbp), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	addl	$1, -76(%rbp)
	jmp	.L204
.L231:
	nop
	addl	$1, -56(%rbp)
	jmp	.L205
.L230:
	nop
	addl	$1, -52(%rbp)
	jmp	.L206
.L200:
	movq	-272(%rbp), %rax
	movl	$0, (%rax)
	movq	-240(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -52(%rbp)
.L213:
	cmpl	%ebx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L232
	movq	-256(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -68(%rbp)
.L208:
	cmpl	%edx, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L233
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -68(%rbp)
	jmp	.L208
.L233:
	nop
	movl	-52(%rbp), %eax
	imull	-220(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-176(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-176(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	-216(%rbp), %rax
	leaq	.LC4(%rip), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sgesl_@PLT
	movl	$0, -60(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %edx
	movl	$0, -56(%rbp)
.L212:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L234
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	-220(%rbp), %ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	$1, -76(%rbp)
.L211:
	cmpl	%edi, -76(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L235
	movl	-60(%rbp), %ecx
	movl	-76(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-56(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%r14,%rax), %rcx
	movl	-52(%rbp), %eax
	cltq
	imulq	-288(%rbp), %rax
	addq	%rax, %rcx
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	-280(%rbp), %rax
	addq	%rax, %rcx
	movq	-176(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -76(%rbp)
	jmp	.L211
.L235:
	nop
	movl	-60(%rbp), %ecx
	movl	-220(%rbp), %eax
	leal	(%rcx,%rax), %esi
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	(%r15,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L212
.L234:
	nop
	addl	$1, -52(%rbp)
	jmp	.L213
.L219:
	nop
	jmp	.L179
.L229:
	nop
	jmp	.L179
.L232:
	nop
.L179:
	nop
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$344, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	build_s_star_, .-build_s_star_
	.globl	build_s_
	.type	build_s_, @function
build_s_:
.LFB6:
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
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	%r9, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)
	testq	%rax, %rax
	jne	.L238
	movq	$1, -264(%rbp)
.L238:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-248(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-248(%rbp), %rax
	movq	88(%rax), %rbx
	movq	%rbx, -280(%rbp)
	movq	-248(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movl	$0, %r15d
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-216(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -288(%rbp)
	testq	%rax, %rax
	jne	.L240
	movq	$1, -288(%rbp)
.L240:
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-216(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-216(%rbp), %rax
	movq	64(%rax), %rbx
	movq	%rbx, -296(%rbp)
	movq	-216(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movl	$0, %r14d
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-232(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L242
	movl	$1, %ebx
.L242:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-232(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movl	$0, %r13d
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -160(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, -352(%rbp)
	movq	$0, -344(%rbp)
	salq	$2, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -176(%rbp)
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r12
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -192(%rbp)
	movq	%r12, %rax
	imulq	-192(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, -368(%rbp)
	movq	$0, -360(%rbp)
	salq	$2, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -200(%rbp)
	movq	%r12, %rdi
	notq	%rdi
	movq	-224(%rbp), %rax
	movl	(%rax), %edx
	movl	$0, -52(%rbp)
.L244:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L285
	movl	-52(%rbp), %eax
	cltq
	movq	-272(%rbp), %rsi
	imulq	%rsi, %rax
	leaq	(%r15,%rax), %rcx
	movq	-80(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	-52(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	addq	%r15, %rax
	movq	-264(%rbp), %rsi
	leaq	(%rsi,%rax), %rcx
	movq	-80(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -52(%rbp)
	jmp	.L244
.L285:
	nop
	movq	-224(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -52(%rbp)
.L250:
	cmpl	%ecx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L286
	movq	-224(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, -56(%rbp)
.L249:
	cmpl	%esi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L287
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.L247
	movl	-56(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L248
.L247:
	movl	-56(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
.L248:
	addl	$1, -56(%rbp)
	jmp	.L249
.L287:
	nop
	addl	$1, -52(%rbp)
	jmp	.L250
.L286:
	nop
	movq	-224(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L252:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L288
	movl	-56(%rbp), %eax
	cltq
	imulq	-296(%rbp), %rax
	leaq	(%r14,%rax), %rcx
	movq	-112(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movq	-112(%rbp), %rax
	movss	(%rax,%r14,4), %xmm1
	divss	%xmm1, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	leaq	(%r15,%rax), %rcx
	movss	.LC3(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L252
.L288:
	nop
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L253
	movq	-112(%rbp), %rax
	movss	(%rax,%r14,4), %xmm1
	movq	-264(%rbp), %rdx
	addq	%r15, %rdx
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-256(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L302
.L253:
	movl	$0, -60(%rbp)
	movq	-224(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, -56(%rbp)
.L262:
	cmpl	%esi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L289
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %r9d
	movl	$0, -64(%rbp)
.L261:
	cmpl	%r9d, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L290
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	leal	-1(%rax), %r8d
	movl	$0, -68(%rbp)
.L260:
	cmpl	%r8d, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L291
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.L258
	movl	-56(%rbp), %eax
	cltq
	imulq	-296(%rbp), %rax
	leaq	(%r14,%rax), %rdx
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	imulq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cltq
	imulq	%r12, %rax
	leaq	(%rdi,%rax), %rdx
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movq	-200(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L259
.L258:
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cltq
	imulq	%r12, %rax
	leaq	(%rdi,%rax), %rdx
	movl	-64(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-200(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
.L259:
	addl	$1, -68(%rbp)
	jmp	.L260
.L291:
	nop
	addl	$1, -64(%rbp)
	jmp	.L261
.L290:
	nop
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, -60(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L262
.L289:
	nop
	leaq	-204(%rbp), %rdi
	movq	-176(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sgefa_@PLT
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movl	$1, -64(%rbp)
.L264:
	cmpl	%ecx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L292
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -64(%rbp)
	jmp	.L264
.L292:
	nop
	movq	-240(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-160(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-240(%rbp), %rdi
	movq	-200(%rbp), %r10
	leaq	.LC4(%rip), %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	call	sgesl_@PLT
	movl	$0, -60(%rbp)
	movq	-224(%rbp), %rax
	movl	(%rax), %edx
	movl	$0, -52(%rbp)
.L268:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L293
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rcx
	movq	-136(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movl	$1, -68(%rbp)
.L267:
	cmpl	%ecx, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L294
	movl	-60(%rbp), %esi
	movl	-68(%rbp), %eax
	addl	%esi, %eax
	cltq
	leaq	-1(%rax), %rdi
	movl	-52(%rbp), %eax
	cltq
	imulq	-272(%rbp), %rax
	leaq	(%r15,%rax), %rsi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	-264(%rbp), %rax
	addq	%rax, %rsi
	movq	-160(%rbp), %rax
	movss	(%rax,%rdi,4), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rsi,4)
	addl	$1, -68(%rbp)
	jmp	.L267
.L294:
	nop
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rcx
	movq	-136(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	addl	%eax, -60(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L268
.L293:
	nop
	movl	-204(%rbp), %eax
	testl	%eax, %eax
	jle	.L269
	movq	-256(%rbp), %rax
	movl	$1, (%rax)
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -56(%rbp)
.L275:
	cmpl	%eax, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L295
	movq	-224(%rbp), %rdx
	movl	(%rdx), %edx
	movl	$0, -52(%rbp)
.L274:
	cmpl	%edx, -52(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L296
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rbx, %rcx
	leaq	0(%r13,%rcx), %rsi
	movq	-136(%rbp), %rcx
	movl	(%rcx,%rsi,4), %esi
	movl	$0, -68(%rbp)
.L273:
	cmpl	%esi, -68(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L297
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	-280(%rbp), %rcx
	leaq	(%r15,%rcx), %rdi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	-272(%rbp), %rcx
	addq	%rcx, %rdi
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	-264(%rbp), %rcx
	addq	%rcx, %rdi
	movq	-80(%rbp), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rdi,4)
	addl	$1, -68(%rbp)
	jmp	.L273
.L297:
	nop
	addl	$1, -52(%rbp)
	jmp	.L274
.L296:
	nop
	addl	$1, -56(%rbp)
	jmp	.L275
.L269:
	movq	-256(%rbp), %rax
	movl	$0, (%rax)
	movq	-224(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -56(%rbp)
.L282:
	cmpl	%r12d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L298
	movq	-240(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -64(%rbp)
.L277:
	cmpl	%edx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L299
	movl	-64(%rbp), %eax
	cltq
	movq	-288(%rbp), %rdi
	imulq	%rdi, %rax
	leaq	(%r14,%rax), %rcx
	movq	-112(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	movq	-296(%rbp), %rsi
	imulq	%rsi, %rax
	leaq	(%r14,%rax), %rcx
	movq	-112(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movss	(%rax,%r14,4), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	leaq	(%r14,%rax), %rcx
	movl	-64(%rbp), %eax
	cltq
	imulq	%rdi, %rax
	addq	%rax, %rcx
	movq	-112(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -64(%rbp)
	jmp	.L277
.L299:
	nop
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-240(%rbp), %rdi
	movq	-200(%rbp), %r10
	leaq	.LC4(%rip), %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	call	sgesl_@PLT
	movl	$0, -60(%rbp)
	movq	-224(%rbp), %rax
	movl	(%rax), %ecx
	movl	$0, -52(%rbp)
.L281:
	cmpl	%ecx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L300
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %esi
	movl	$1, -68(%rbp)
.L280:
	cmpl	%esi, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L301
	movl	-60(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdi
	movl	-56(%rbp), %eax
	cltq
	imulq	-280(%rbp), %rax
	leaq	(%r15,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-272(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdi,4), %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -68(%rbp)
	jmp	.L280
.L301:
	nop
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(%r13,%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, -60(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L281
.L300:
	nop
	addl	$1, -56(%rbp)
	jmp	.L282
.L295:
	nop
	jmp	.L302
.L298:
	nop
.L302:
	nop
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	build_s_, .-build_s_
	.globl	build_t_star_
	.type	build_t_star_, @function
build_t_star_:
.LFB7:
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
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	%r9, -240(%rbp)
	movq	-224(%rbp), %rax
	movq	40(%rax), %rbx
	testq	%rbx, %rbx
	jne	.L305
	movl	$1, %ebx
.L305:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-224(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movq	$0, -248(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	16(%rbp), %rax
	movq	40(%rax), %r9
	testq	%r9, %r9
	jne	.L307
	movl	$1, %r9d
.L307:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	16(%rbp), %rax
	movq	64(%rax), %r12
	movq	16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	16(%rbp), %rax
	movq	88(%rax), %r8
	movq	16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	16(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	%r8, %rax
	imulq	-120(%rbp), %rax
	movq	%r8, %r13
	negq	%r13
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-208(%rbp), %rax
	movq	40(%rax), %r11
	testq	%r11, %r11
	jne	.L309
	movl	$1, %r11d
.L309:
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-208(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-208(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-208(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-208(%rbp), %rax
	movq	88(%rax), %rdi
	movq	%rdi, -296(%rbp)
	movq	-208(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	imulq	%rdi, %rax
	movq	$0, -264(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-200(%rbp), %rax
	movq	40(%rax), %r10
	testq	%r10, %r10
	jne	.L311
	movl	$1, %r10d
.L311:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	64(%rax), %r14
	movq	-200(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	addq	$1, %rax
	imulq	%r14, %rax
	movq	$0, -272(%rbp)
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movl	$0, %esi
	movq	-88(%rbp), %rdi
	movl	$0, %ecx
.L313:
	cmpq	%rdi, %rcx
	jg	.L312
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L313
.L312:
	movl	%esi, -180(%rbp)
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -288(%rbp)
	movl	$0, -52(%rbp)
.L327:
	movl	-288(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L329
	movq	-216(%rbp), %rax
	movl	(%rax), %r15d
	movl	$1, -56(%rbp)
.L326:
	cmpl	%r15d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L330
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-240(%rbp), %rax
	movl	(%rax), %edi
	movl	%edx, -64(%rbp)
.L325:
	cmpl	%edi, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L331
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	leaq	0(%r13,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	cmpl	$0, -52(%rbp)
	jne	.L317
	movl	-64(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	-248(%rbp), %rsi
	movl	(%rax,%rsi,4), %edx
	movl	-180(%rbp), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L318
.L317:
	movl	-64(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	-248(%rbp), %rsi
	movl	(%rax,%rsi,4), %edx
	movl	-180(%rbp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
.L318:
	movl	-60(%rbp), %esi
	movl	$0, -68(%rbp)
.L320:
	cmpl	%esi, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L332
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	leaq	0(%r13,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-52(%rbp), %eax
	cltq
	imulq	-256(%rbp), %rax
	movq	-264(%rbp), %rcx
	leaq	(%rcx,%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%r11, %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-56(%rbp), %eax
	cltq
	imulq	%r14, %rax
	movq	-272(%rbp), %rcx
	addq	%rax, %rcx
	movl	-180(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	subl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%r10, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	leaq	0(%r13,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	subss	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -68(%rbp)
	jmp	.L320
.L332:
	nop
	cmpl	$0, -52(%rbp)
	jne	.L321
	movl	-64(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %ecx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-248(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-180(%rbp), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L322
.L321:
	movl	-64(%rbp), %edx
	movl	-180(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %ecx
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-248(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-180(%rbp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -60(%rbp)
.L322:
	movl	-60(%rbp), %ecx
	movl	$0, -68(%rbp)
.L324:
	cmpl	%ecx, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L333
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	leaq	0(%r13,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	-296(%rbp), %rax
	movq	-264(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-256(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%r11, %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-180(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	subl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%r10, %rax
	movq	-272(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-160(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%r8, %rax
	leaq	0(%r13,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	addss	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -68(%rbp)
	jmp	.L324
.L333:
	nop
	addl	$1, -64(%rbp)
	jmp	.L325
.L331:
	nop
	addl	$1, -56(%rbp)
	jmp	.L326
.L330:
	nop
	addl	$1, -52(%rbp)
	jmp	.L327
.L329:
	nop
	nop
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	build_t_star_, .-build_t_star_
	.globl	build_t_
	.type	build_t_, @function
build_t_:
.LFB8:
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
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-208(%rbp), %rax
	movq	40(%rax), %r8
	testq	%r8, %r8
	jne	.L336
	movl	$1, %r8d
.L336:
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-208(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	imulq	%r8, %rax
	movq	$0, -232(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	16(%rbp), %rax
	movq	40(%rax), %r9
	testq	%r9, %r9
	jne	.L338
	movl	$1, %r9d
.L338:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	16(%rbp), %rax
	movq	64(%rax), %rbx
	movq	16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movl	$0, %r14d
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-184(%rbp), %rax
	movq	40(%rax), %r12
	testq	%r12, %r12
	jne	.L340
	movl	$1, %r12d
.L340:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-184(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movq	64(%rax), %r13
	movq	-184(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	imulq	%r13, %rax
	movq	$0, -240(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-192(%rbp), %rax
	movq	40(%rax), %r10
	testq	%r10, %r10
	jne	.L342
	movl	$1, %r10d
.L342:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-192(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-192(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-192(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-192(%rbp), %rax
	movq	88(%rax), %r11
	movq	-192(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	addq	$1, %rax
	imulq	%r11, %rax
	movq	$0, -272(%rbp)
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movl	$0, %esi
	movq	-88(%rbp), %rdi
	movl	$0, %ecx
.L344:
	cmpq	%rdi, %rcx
	jg	.L343
	movq	%rcx, %rax
	imulq	%r8, %rax
	movq	-232(%rbp), %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L344
.L343:
	movl	%esi, -172(%rbp)
	movq	-200(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, -56(%rbp)
.L348:
	cmpl	%esi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L360
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-224(%rbp), %rax
	movl	(%rax), %ecx
	movl	%edx, -60(%rbp)
.L347:
	cmpl	%ecx, -60(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L361
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r14,%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -60(%rbp)
	jmp	.L347
.L361:
	nop
	addl	$1, -56(%rbp)
	jmp	.L348
.L360:
	nop
	movq	-200(%rbp), %rax
	movl	(%rax), %edi
	movl	$0, -52(%rbp)
.L358:
	cmpl	%edi, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L362
	movq	-200(%rbp), %rax
	movl	(%rax), %r15d
	movl	$0, -56(%rbp)
.L357:
	cmpl	%r15d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L363
	movq	-216(%rbp), %rax
	movl	(%rax), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
	leal	2(%rax), %ecx
	movq	-224(%rbp), %rax
	movl	(%rax), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %esi
	movl	%ecx, -64(%rbp)
.L356:
	cmpl	%esi, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L364
	cmpl	$0, -56(%rbp)
	jne	.L352
	movl	$0, %ecx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r8, %rax
	movq	-232(%rbp), %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-64(%rbp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	%eax, -72(%rbp)
	jmp	.L353
.L352:
	movl	$0, %ecx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r8, %rax
	movq	-232(%rbp), %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-64(%rbp), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	%eax, -72(%rbp)
.L353:
	movl	-64(%rbp), %ecx
	movq	-224(%rbp), %rax
	movl	(%rax), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	%eax, -176(%rbp)
	movl	-72(%rbp), %eax
	movl	-176(%rbp), %ecx
	movl	%eax, -68(%rbp)
.L355:
	cmpl	%ecx, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L365
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r14,%rax), %rdx
	movl	-64(%rbp), %eax
	subl	-172(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	movq	-240(%rbp), %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-56(%rbp), %eax
	cltq
	imulq	%r11, %rax
	movq	-272(%rbp), %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-264(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	imulq	%r10, %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r14,%rax), %rdx
	movl	-64(%rbp), %eax
	subl	-172(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%r9, %rax
	addq	%rax, %rdx
	addss	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -68(%rbp)
	jmp	.L355
.L365:
	nop
	addl	$1, -64(%rbp)
	jmp	.L356
.L364:
	nop
	addl	$1, -56(%rbp)
	jmp	.L357
.L363:
	nop
	addl	$1, -52(%rbp)
	jmp	.L358
.L362:
	nop
	nop
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	build_t_, .-build_t_
	.section	.rodata
	.align 8
.LC5:
	.string	"Integer overflow when calculating the amount of memory to allocate"
.LC6:
	.string	"s_hat"
	.align 8
.LC7:
	.string	"Attempting to allocate already allocated variable '%s'"
	.align 8
.LC8:
	.string	"At line 280 of file vector_pade.f90"
	.align 8
.LC9:
	.string	"Allocation would exceed memory limit"
.LC10:
	.string	"new_s"
	.align 8
.LC11:
	.string	"At line 281 of file vector_pade.f90"
.LC12:
	.string	"t"
	.align 8
.LC13:
	.string	"At line 282 of file vector_pade.f90"
.LC14:
	.string	"s_star_hat"
	.align 8
.LC15:
	.string	"At line 284 of file vector_pade.f90"
.LC16:
	.string	"new_s_star"
	.align 8
.LC17:
	.string	"At line 285 of file vector_pade.f90"
.LC18:
	.string	"t_star"
	.align 8
.LC19:
	.string	"At line 286 of file vector_pade.f90"
	.align 8
.LC21:
	.string	"Attempt to DEALLOCATE unallocated '%s'"
	.align 8
.LC22:
	.string	"At line 486 of file vector_pade.f90"
	.text
	.globl	vector_pade_
	.type	vector_pade_, @function
vector_pade_:
.LFB9:
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
	pushq	%rbx
	subq	$1256, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -1000(%rbp)
	movq	%rsi, -1008(%rbp)
	movq	%rdx, -1016(%rbp)
	movq	%rcx, -1024(%rbp)
	movq	%r8, -1032(%rbp)
	movq	%r9, -1040(%rbp)
	movq	-1008(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1048(%rbp)
	testq	%rax, %rax
	jne	.L368
	movq	$1, -1048(%rbp)
.L368:
	movq	-1008(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-1008(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-1008(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$1, %rax
	imulq	-1048(%rbp), %rax
	movq	$0, -1056(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-1016(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1152(%rbp)
	testq	%rax, %rax
	jne	.L370
	movq	$1, -1152(%rbp)
.L370:
	movq	-1016(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-1016(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-1016(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-1016(%rbp), %rax
	movq	64(%rax), %rbx
	movq	%rbx, -1192(%rbp)
	movq	-1016(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-1016(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movq	$0, -1200(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-1032(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1080(%rbp)
	testq	%rax, %rax
	jne	.L372
	movq	$1, -1080(%rbp)
.L372:
	movq	-1032(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-1032(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-1032(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-1032(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1064(%rbp)
	movq	-1032(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-1032(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-1032(%rbp), %rax
	movq	88(%rax), %rbx
	movq	%rbx, -1088(%rbp)
	movq	-1032(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-1032(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movq	$0, -1096(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1104(%rbp)
	testq	%rax, %rax
	jne	.L374
	movq	$1, -1104(%rbp)
.L374:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	16(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1072(%rbp)
	movq	16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	16(%rbp), %rax
	movq	88(%rax), %rbx
	movq	%rbx, -1112(%rbp)
	movq	16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	16(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	imulq	%rbx, %rax
	movq	$0, -1120(%rbp)
	movq	%rax, -1136(%rbp)
	movq	$0, -1128(%rbp)
	movq	32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1136(%rbp)
	testq	%rax, %rax
	jne	.L376
	movq	$1, -1136(%rbp)
.L376:
	movq	32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	32(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	addq	$1, %rax
	imulq	-1136(%rbp), %rax
	movq	$0, -1144(%rbp)
	movq	%rax, -1168(%rbp)
	movq	$0, -1160(%rbp)
	movq	-1040(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1168(%rbp)
	testq	%rax, %rax
	jne	.L378
	movq	$1, -1168(%rbp)
.L378:
	movq	-1040(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-1040(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-1040(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	addq	$1, %rax
	imulq	-1168(%rbp), %rax
	movq	$0, -1208(%rbp)
	movq	%rax, -1184(%rbp)
	movq	$0, -1176(%rbp)
	movq	24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -1184(%rbp)
	testq	%rax, %rax
	jne	.L380
	movq	$1, -1184(%rbp)
.L380:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	24(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	addq	$1, %rax
	imulq	-1184(%rbp), %rax
	movq	$0, -1216(%rbp)
	movq	%rax, -1232(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1248(%rbp)
	movq	$0, -1240(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1264(%rbp)
	movq	$0, -1256(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -264(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1280(%rbp)
	movq	$0, -1272(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -280(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1296(%rbp)
	movq	$0, -1288(%rbp)
	leaq	0(,%rdx,4), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -296(%rbp)
	movq	$0, 16+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_s_hat(%rip)
	movb	$3, 28+__working_area_vector_pade_MOD_s_hat(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_s_hat(%rip)
	movl	$-2147483648, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L382:
	cmpq	%rdi, %rcx
	jg	.L381
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	addq	$1, %rcx
	jmp	.L382
.L381:
	leal	1(%rsi), %eax
	movslq	%eax, %r15
	movq	$-1, %rax
	testq	%r15, %r15
	cmovns	%r15, %rax
	leaq	1(%rax), %r14
	testq	%r14, %r14
	je	.L383
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r14
	testq	%rax, %rax
	jg	.L384
	movl	$1, %esi
	jmp	.L386
.L384:
	movl	$0, %esi
	jmp	.L386
.L383:
	movl	$0, %esi
.L386:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	$-1, %rax
	testq	%r12, %r12
	cmovns	%r12, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L387
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r14
	jle	.L388
	movl	$1, %eax
	jmp	.L390
.L388:
	movl	$0, %eax
	jmp	.L390
.L387:
	movl	$0, %eax
.L390:
	addl	%eax, %esi
	imulq	%r14, %rcx
	movq	%rcx, %r13
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	$-1, %rax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L391
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r13
	jle	.L392
	movl	$1, %eax
	jmp	.L394
.L392:
	movl	$0, %eax
	jmp	.L394
.L391:
	movl	$0, %eax
.L394:
	addl	%eax, %esi
	imulq	%r13, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L395
	movl	$1, %eax
	jmp	.L396
.L395:
	movl	$0, %eax
.L396:
	addl	%eax, %esi
	movq	%r15, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%r12, %rax
	shrq	$63, %rax
	orl	%eax, %edx
	movq	%rbx, %rax
	shrq	$63, %rax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L397
	movl	$0, %edx
	jmp	.L398
.L397:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L398:
	movq	__working_area_vector_pade_MOD_s_hat(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L399
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L399:
	movq	__working_area_vector_pade_MOD_s_hat(%rip), %rax
	testq	%rax, %rax
	je	.L400
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L400:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_s_hat(%rip)
	movq	__working_area_vector_pade_MOD_s_hat(%rip), %rax
	testq	%rax, %rax
	jne	.L401
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L401:
	movq	$0, 48+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	%r15, 56+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	%r12, 80+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	%r14, 64+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$0, 96+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	%rbx, 104+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	%r13, 88+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$0, 8+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_s_hat(%rip)
	movq	$0, 16+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_new_s(%rip)
	movb	$3, 28+__working_area_vector_pade_MOD_new_s(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_new_s(%rip)
	movl	$-2147483648, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L403:
	cmpq	%rdi, %rcx
	jg	.L402
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	addq	$1, %rcx
	jmp	.L403
.L402:
	leal	1(%rsi), %eax
	movslq	%eax, %r15
	movq	$-1, %rax
	testq	%r15, %r15
	cmovns	%r15, %rax
	leaq	1(%rax), %r14
	testq	%r14, %r14
	je	.L404
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r14
	testq	%rax, %rax
	jg	.L405
	movl	$1, %esi
	jmp	.L407
.L405:
	movl	$0, %esi
	jmp	.L407
.L404:
	movl	$0, %esi
.L407:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	$-1, %rax
	testq	%r12, %r12
	cmovns	%r12, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L408
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r14
	jle	.L409
	movl	$1, %eax
	jmp	.L411
.L409:
	movl	$0, %eax
	jmp	.L411
.L408:
	movl	$0, %eax
.L411:
	addl	%eax, %esi
	imulq	%r14, %rcx
	movq	%rcx, %r13
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	$-1, %rax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L412
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r13
	jle	.L413
	movl	$1, %eax
	jmp	.L415
.L413:
	movl	$0, %eax
	jmp	.L415
.L412:
	movl	$0, %eax
.L415:
	addl	%eax, %esi
	imulq	%r13, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L416
	movl	$1, %eax
	jmp	.L417
.L416:
	movl	$0, %eax
.L417:
	addl	%eax, %esi
	movq	%r15, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%r12, %rax
	shrq	$63, %rax
	orl	%eax, %edx
	movq	%rbx, %rax
	shrq	$63, %rax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L418
	movl	$0, %edx
	jmp	.L419
.L418:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L419:
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L420
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L420:
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rax
	testq	%rax, %rax
	je	.L421
	leaq	.LC10(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L421:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_new_s(%rip)
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rax
	testq	%rax, %rax
	jne	.L422
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L422:
	movq	$0, 48+__working_area_vector_pade_MOD_new_s(%rip)
	movq	%r15, 56+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_new_s(%rip)
	movq	%r12, 80+__working_area_vector_pade_MOD_new_s(%rip)
	movq	%r14, 64+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$0, 96+__working_area_vector_pade_MOD_new_s(%rip)
	movq	%rbx, 104+__working_area_vector_pade_MOD_new_s(%rip)
	movq	%r13, 88+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$0, 8+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_new_s(%rip)
	movq	$0, 16+__working_area_vector_pade_MOD_t(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_t(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_t(%rip)
	movb	$2, 28+__working_area_vector_pade_MOD_t(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_t(%rip)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L424:
	cmpq	%rdi, %rcx
	jg	.L423
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L424
.L423:
	movslq	%esi, %r13
	movq	$-1, %rax
	testq	%r13, %r13
	cmovns	%r13, %rax
	leaq	1(%rax), %r12
	testq	%r12, %r12
	je	.L425
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r12
	testq	%rax, %rax
	jg	.L426
	movl	$1, %esi
	jmp	.L428
.L426:
	movl	$0, %esi
	jmp	.L428
.L425:
	movl	$0, %esi
.L428:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	$-1, %rax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L429
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r12
	jle	.L430
	movl	$1, %eax
	jmp	.L432
.L430:
	movl	$0, %eax
	jmp	.L432
.L429:
	movl	$0, %eax
.L432:
	addl	%eax, %esi
	imulq	%r12, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L433
	movl	$1, %eax
	jmp	.L434
.L433:
	movl	$0, %eax
.L434:
	addl	%eax, %esi
	movq	%r13, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%rbx, %rax
	shrq	$63, %rax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L435
	movl	$0, %edx
	jmp	.L436
.L435:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L436:
	movq	__working_area_vector_pade_MOD_t(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L437
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L437:
	movq	__working_area_vector_pade_MOD_t(%rip), %rax
	testq	%rax, %rax
	je	.L438
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L438:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_t(%rip)
	movq	__working_area_vector_pade_MOD_t(%rip), %rax
	testq	%rax, %rax
	jne	.L439
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L439:
	movq	$0, 48+__working_area_vector_pade_MOD_t(%rip)
	movq	%r13, 56+__working_area_vector_pade_MOD_t(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_t(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_t(%rip)
	movq	%rbx, 80+__working_area_vector_pade_MOD_t(%rip)
	movq	%r12, 64+__working_area_vector_pade_MOD_t(%rip)
	movq	$0, 8+__working_area_vector_pade_MOD_t(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_t(%rip)
	movq	$0, 16+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movb	$3, 28+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L441:
	cmpq	%rdi, %rcx
	jg	.L440
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L441
.L440:
	movslq	%esi, %r15
	movq	$-1, %rax
	testq	%r15, %r15
	cmovns	%r15, %rax
	leaq	1(%rax), %r14
	testq	%r14, %r14
	je	.L442
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r14
	testq	%rax, %rax
	jg	.L443
	movl	$1, %esi
	jmp	.L445
.L443:
	movl	$0, %esi
	jmp	.L445
.L442:
	movl	$0, %esi
.L445:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	$-1, %rax
	testq	%r12, %r12
	cmovns	%r12, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L446
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r14
	jle	.L447
	movl	$1, %eax
	jmp	.L449
.L447:
	movl	$0, %eax
	jmp	.L449
.L446:
	movl	$0, %eax
.L449:
	addl	%eax, %esi
	imulq	%r14, %rcx
	movq	%rcx, %r13
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	$-1, %rax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L450
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r13
	jle	.L451
	movl	$1, %eax
	jmp	.L453
.L451:
	movl	$0, %eax
	jmp	.L453
.L450:
	movl	$0, %eax
.L453:
	addl	%eax, %esi
	imulq	%r13, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L454
	movl	$1, %eax
	jmp	.L455
.L454:
	movl	$0, %eax
.L455:
	addl	%eax, %esi
	movq	%r15, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%r12, %rax
	shrq	$63, %rax
	orl	%eax, %edx
	movq	%rbx, %rax
	shrq	$63, %rax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L456
	movl	$0, %edx
	jmp	.L457
.L456:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L457:
	movq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L458
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L458:
	movq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rax
	testq	%rax, %rax
	je	.L459
	leaq	.LC14(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L459:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rax
	testq	%rax, %rax
	jne	.L460
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L460:
	movq	$0, 48+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	%r15, 56+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	%r12, 80+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	%r14, 64+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$0, 96+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	%rbx, 104+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	%r13, 88+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$0, 8+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	$0, 16+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_new_s_star(%rip)
	movb	$3, 28+__working_area_vector_pade_MOD_new_s_star(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_new_s_star(%rip)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L462:
	cmpq	%rdi, %rcx
	jg	.L461
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L462
.L461:
	movslq	%esi, %r15
	movq	$-1, %rax
	testq	%r15, %r15
	cmovns	%r15, %rax
	leaq	1(%rax), %r14
	testq	%r14, %r14
	je	.L463
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r14
	testq	%rax, %rax
	jg	.L464
	movl	$1, %esi
	jmp	.L466
.L464:
	movl	$0, %esi
	jmp	.L466
.L463:
	movl	$0, %esi
.L466:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r12
	movq	$-1, %rax
	testq	%r12, %r12
	cmovns	%r12, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L467
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r14
	jle	.L468
	movl	$1, %eax
	jmp	.L470
.L468:
	movl	$0, %eax
	jmp	.L470
.L467:
	movl	$0, %eax
.L470:
	addl	%eax, %esi
	imulq	%r14, %rcx
	movq	%rcx, %r13
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movq	$-1, %rax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L471
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r13
	jle	.L472
	movl	$1, %eax
	jmp	.L474
.L472:
	movl	$0, %eax
	jmp	.L474
.L471:
	movl	$0, %eax
.L474:
	addl	%eax, %esi
	imulq	%r13, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L475
	movl	$1, %eax
	jmp	.L476
.L475:
	movl	$0, %eax
.L476:
	addl	%eax, %esi
	movq	%r15, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%r12, %rax
	shrq	$63, %rax
	orl	%eax, %edx
	movq	%rbx, %rax
	shrq	$63, %rax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L477
	movl	$0, %edx
	jmp	.L478
.L477:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L478:
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L479
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L479:
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	testq	%rax, %rax
	je	.L480
	leaq	.LC16(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L480:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_new_s_star(%rip)
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	testq	%rax, %rax
	jne	.L481
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L481:
	movq	$0, 48+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	%r15, 56+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	%r12, 80+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	%r14, 64+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$0, 96+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	%rbx, 104+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	%r13, 88+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$0, 8+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_new_s_star(%rip)
	movq	$0, 16+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$0, 24+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$4, 16+__working_area_vector_pade_MOD_t_star(%rip)
	movb	$3, 28+__working_area_vector_pade_MOD_t_star(%rip)
	movb	$3, 29+__working_area_vector_pade_MOD_t_star(%rip)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L483:
	cmpq	%rdi, %rcx
	jg	.L482
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L483
.L482:
	movslq	%esi, %r15
	movq	$-1, %rax
	testq	%r15, %r15
	cmovns	%r15, %rax
	leaq	1(%rax), %r14
	testq	%r14, %r14
	je	.L484
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%r14
	testq	%rax, %rax
	jg	.L485
	movl	$1, %esi
	jmp	.L487
.L485:
	movl	$0, %esi
	jmp	.L487
.L484:
	movl	$0, %esi
.L487:
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %r13
	movq	$-1, %rax
	testq	%r13, %r13
	cmovns	%r13, %rax
	leaq	1(%rax), %rcx
	testq	%rcx, %rcx
	je	.L488
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r14
	jle	.L489
	movl	$1, %eax
	jmp	.L491
.L489:
	movl	$0, %eax
	jmp	.L491
.L488:
	movl	$0, %eax
.L491:
	addl	%eax, %esi
	imulq	%r14, %rcx
	movq	%rcx, %r12
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movl	$0, %eax
	testq	%rbx, %rbx
	cmovns	%rbx, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L492
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %r12
	jle	.L493
	movl	$1, %eax
	jmp	.L495
.L493:
	movl	$0, %eax
	jmp	.L495
.L492:
	movl	$0, %eax
.L495:
	addl	%eax, %esi
	imulq	%r12, %rcx
	movq	%rcx, %rdx
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	jbe	.L496
	movl	$1, %eax
	jmp	.L497
.L496:
	movl	$0, %eax
.L497:
	addl	%eax, %esi
	movq	%r12, %rax
	negq	%rax
	movq	%rax, -1232(%rbp)
	movq	%r15, %rax
	shrq	$63, %rax
	movl	%eax, %edx
	movq	%r13, %rax
	shrq	$63, %rax
	orl	%eax, %edx
	testq	%rbx, %rbx
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L498
	movl	$0, %edx
	jmp	.L499
.L498:
	movq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
.L499:
	movq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	testq	%rax, %rax
	testl	%esi, %esi
	je	.L500
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L500:
	movq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	testq	%rax, %rax
	je	.L501
	leaq	.LC18(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L501:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, __working_area_vector_pade_MOD_t_star(%rip)
	movq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	testq	%rax, %rax
	jne	.L502
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L502:
	movq	$0, 48+__working_area_vector_pade_MOD_t_star(%rip)
	movq	%r15, 56+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$1, 40+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$0, 72+__working_area_vector_pade_MOD_t_star(%rip)
	movq	%r13, 80+__working_area_vector_pade_MOD_t_star(%rip)
	movq	%r14, 64+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$1, 96+__working_area_vector_pade_MOD_t_star(%rip)
	movq	%rbx, 104+__working_area_vector_pade_MOD_t_star(%rip)
	movq	%r12, 88+__working_area_vector_pade_MOD_t_star(%rip)
	movq	-1232(%rbp), %rax
	movq	%rax, 8+__working_area_vector_pade_MOD_t_star(%rip)
	movq	$4, 32+__working_area_vector_pade_MOD_t_star(%rip)
	movl	$0, %esi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
.L504:
	cmpq	%rdi, %rcx
	jg	.L503
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %esi
	addq	$1, %rcx
	jmp	.L504
.L503:
	movl	%esi, -300(%rbp)
	movq	48(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	$4, -960(%rbp)
	movq	$0, -976(%rbp)
	movq	$0, -968(%rbp)
	movq	$4, -976(%rbp)
	movb	$1, -964(%rbp)
	movb	$1, -963(%rbp)
	movq	$0, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	-1048(%rbp), %rax
	movq	%rax, -952(%rbp)
	movq	$0, -992(%rbp)
	movq	$0, -984(%rbp)
	leaq	-992(%rbp), %r8
	movq	-112(%rbp), %rax
	movq	$4, -896(%rbp)
	movq	$0, -912(%rbp)
	movq	$0, -904(%rbp)
	movq	$4, -912(%rbp)
	movb	$1, -900(%rbp)
	movb	$3, -899(%rbp)
	movq	$0, -880(%rbp)
	movq	%rax, -872(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -888(%rbp)
	movq	$0, -928(%rbp)
	movq	$0, -920(%rbp)
	leaq	-928(%rbp), %r11
	movq	-120(%rbp), %rax
	movq	$4, -832(%rbp)
	movq	$0, -848(%rbp)
	movq	$0, -840(%rbp)
	movq	$4, -848(%rbp)
	movb	$1, -836(%rbp)
	movb	$3, -835(%rbp)
	movq	$0, -816(%rbp)
	movq	%rax, -808(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -824(%rbp)
	movq	$0, -864(%rbp)
	movq	$0, -856(%rbp)
	leaq	-864(%rbp), %r10
	movl	$-2147483648, %edi
	movq	-96(%rbp), %rsi
	movl	$0, %ecx
.L506:
	cmpq	%rsi, %rcx
	jg	.L505
	movq	-1048(%rbp), %rax
	imulq	%rcx, %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	addq	$1, %rcx
	jmp	.L506
.L505:
	movq	-136(%rbp), %rax
	movq	$4, -768(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -776(%rbp)
	movq	$4, -784(%rbp)
	movb	$1, -772(%rbp)
	movb	$3, -771(%rbp)
	movq	$0, -752(%rbp)
	movq	%rax, -744(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -760(%rbp)
	movq	$0, -800(%rbp)
	movq	$0, -792(%rbp)
	leaq	-800(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	$4, -704(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$4, -720(%rbp)
	movb	$1, -708(%rbp)
	movb	$3, -707(%rbp)
	movq	$0, -688(%rbp)
	movq	%rax, -680(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -696(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -728(%rbp)
	leaq	-736(%rbp), %r9
	movq	-152(%rbp), %rax
	movq	$4, -640(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$4, -656(%rbp)
	movb	$1, -644(%rbp)
	movb	$3, -643(%rbp)
	movq	$0, -624(%rbp)
	movq	%rax, -616(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	leaq	-672(%rbp), %rbx
	movq	-168(%rbp), %rax
	movq	$4, -576(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$4, -592(%rbp)
	movb	$1, -580(%rbp)
	movb	$3, -579(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	-1104(%rbp), %rax
	movq	%rax, -568(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-608(%rbp), %r13
	movq	-176(%rbp), %rax
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$1, -516(%rbp)
	movb	$3, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	-1072(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -536(%rbp)
	leaq	-544(%rbp), %r12
	movq	-184(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1112(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	leaq	-448(%rbp), %r14
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %ecx
	movq	56(%r8), %rdx
	movq	48(%r8), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r11), %rdx
	movq	48(%r11), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cmpl	%eax, -300(%rbp)
	setge	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r10), %rdx
	movq	48(%r10), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	-104(%rbp), %rax
	movq	-1200(%rbp), %rdx
	movss	(%rax,%rdx,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %edx
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	cmovne	%edx, %eax
	orl	%eax, %ecx
	movq	56(%rsi), %rdx
	movq	48(%rsi), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	subl	$1, %eax
	cmpl	%eax, %edi
	setge	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r9), %rdx
	movq	48(%r9), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%rbx), %rdx
	movq	48(%rbx), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r13), %rdx
	movq	48(%r13), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cmpl	%eax, -300(%rbp)
	setge	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r12), %rdx
	movq	48(%r12), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	56(%r14), %rdx
	movq	48(%r14), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, %edx
	movq	-1000(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L507
	movq	48(%rbp), %rax
	movl	$3, (%rax)
.L507:
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L566
	movl	$1, -80(%rbp)
	movq	-248(%rbp), %rax
	movl	$-1, (%rax)
	movq	-1000(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -56(%rbp)
.L511:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L567
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	$0, (%rax,%rdx,4)
	addl	$1, -56(%rbp)
	jmp	.L511
.L567:
	nop
	movq	-192(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movq	-1144(%rbp), %rbx
	movss	%xmm0, (%rax,%rbx,4)
	movq	-1000(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, -52(%rbp)
.L517:
	cmpl	%esi, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L568
	movq	-1000(%rbp), %rax
	movl	(%rax), %ecx
	movl	$0, -56(%rbp)
.L516:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L569
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.L514
	movl	-56(%rbp), %eax
	cltq
	imulq	-1088(%rbp), %rax
	movq	-1096(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1064(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-56(%rbp), %eax
	cltq
	imulq	-1112(%rbp), %rax
	movq	-1120(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1072(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L515
.L514:
	movl	-56(%rbp), %eax
	cltq
	imulq	-1088(%rbp), %rax
	movq	-1096(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1064(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-56(%rbp), %eax
	cltq
	imulq	-1112(%rbp), %rax
	movq	-1120(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1072(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
.L515:
	addl	$1, -56(%rbp)
	jmp	.L516
.L569:
	nop
	movl	-52(%rbp), %eax
	cltq
	imulq	-1064(%rbp), %rax
	addq	-1096(%rbp), %rax
	movq	-1080(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movq	-128(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movl	-52(%rbp), %eax
	cltq
	imulq	-1072(%rbp), %rax
	addq	-1120(%rbp), %rax
	movq	-1104(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-160(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -52(%rbp)
	jmp	.L517
.L568:
	nop
	movl	$0, -60(%rbp)
	movq	40(%rbp), %rax
	movl	$0, (%rax)
	movq	-1000(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, -56(%rbp)
.L519:
	cmpl	%esi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L570
	movq	40(%rbp), %rax
	movl	(%rax), %ecx
	movl	-56(%rbp), %eax
	cltq
	imulq	-1048(%rbp), %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -56(%rbp)
	jmp	.L519
.L570:
	nop
	movq	-88(%rbp), %rax
	movq	-1056(%rbp), %rdi
	movl	(%rax,%rdi,4), %edx
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	leal	1(%rax), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
.L557:
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -60(%rbp)
	setge	%al
	movzbl	%al, %edx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L571
	movl	$0, %ecx
	movq	-240(%rbp), %rsi
	movl	$0, %edx
.L522:
	cmpq	%rsi, %rdx
	jg	.L521
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %ecx
	addq	$1, %rdx
	jmp	.L522
.L521:
	movl	%ecx, -304(%rbp)
	movq	-88(%rbp), %rax
	movq	-1056(%rbp), %rbx
	movl	(%rax,%rbx,4), %edx
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-280(%rbp), %rax
	movl	%edx, (%rax)
	movq	-1000(%rbp), %rax
	movl	(%rax), %edi
	movl	$1, -56(%rbp)
.L524:
	cmpl	%edi, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L572
	movl	-56(%rbp), %eax
	cltq
	imulq	-1048(%rbp), %rax
	movq	-1056(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax,%rdx,4), %esi
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-56(%rbp), %eax
	movslq	%eax, %rcx
	subl	%edx, %esi
	movl	%esi, %edx
	movq	-280(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L524
.L572:
	nop
	movl	$0, -80(%rbp)
	movq	48(%rbp), %rax
	movl	$1, (%rax)
	movl	$-1, -316(%rbp)
.L538:
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movq	40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %edx
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L573
	addl	$1, -80(%rbp)
	movq	48(%rbp), %rax
	movl	$1, (%rax)
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -324(%rbp)
	movq	-1000(%rbp), %rdi
	leaq	-324(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-296(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	gen_next_vector_
	movl	$0, %ecx
	movq	-288(%rbp), %rsi
	movl	$0, %edx
.L527:
	cmpq	%rsi, %rdx
	jg	.L526
	movq	-296(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %ecx
	addq	$1, %rdx
	jmp	.L527
.L526:
	movl	%ecx, -312(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %edx
	movl	-312(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -308(%rbp)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$2, -516(%rbp)
	movb	$3, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	-1152(%rbp), %rbx
	movq	%rbx, -504(%rbp)
	movq	$0, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	-1192(%rbp), %r15
	movq	%r15, -480(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	-1200(%rbp), %r14
	movq	%r14, -536(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$3, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -352(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-240(%rbp), %rax
	movq	$4, -576(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$4, -592(%rbp)
	movb	$1, -580(%rbp)
	movb	$1, -579(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	$1, -568(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-312(%rbp), %r9
	leaq	-316(%rbp), %r8
	leaq	-608(%rbp), %rcx
	movq	-1000(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-544(%rbp), %rdi
	subq	$8, %rsp
	leaq	__working_area_vector_pade_MOD_t(%rip), %rax
	pushq	%rax
	call	build_t_
	addq	$16, %rsp
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$2, -516(%rbp)
	movb	$3, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rbx, -504(%rbp)
	movq	$0, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%r15, -480(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	%r14, -536(%rbp)
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$3, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1104(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-1072(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -352(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-1112(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-240(%rbp), %rax
	movq	$4, -576(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$4, -592(%rbp)
	movb	$1, -580(%rbp)
	movb	$1, -579(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	$1, -568(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -600(%rbp)
	leaq	-312(%rbp), %r9
	leaq	-316(%rbp), %r8
	leaq	-608(%rbp), %rcx
	movq	-1000(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-544(%rbp), %rdi
	subq	$8, %rsp
	leaq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	pushq	%rax
	call	build_t_star_
	addq	$16, %rsp
	movl	-312(%rbp), %eax
	movl	%eax, -316(%rbp)
	movq	-288(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$1, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	$1, -408(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	$0, -440(%rbp)
	leaq	-320(%rbp), %rsi
	leaq	-312(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	movq	-1000(%rbp), %rax
	movq	%rsi, %r9
	leaq	__working_area_vector_pade_MOD_s_hat(%rip), %r8
	movq	%rax, %rsi
	leaq	__working_area_vector_pade_MOD_t(%rip), %rdi
	call	build_s_
	movl	-320(%rbp), %eax
	testl	%eax, %eax
	je	.L528
	movq	48(%rbp), %rax
	movl	$2, (%rax)
.L528:
	movq	-288(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$1, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	$1, -408(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	$0, -440(%rbp)
	leaq	-320(%rbp), %rsi
	leaq	-308(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	movq	-1000(%rbp), %rax
	movq	%rsi, %r9
	leaq	__working_area_vector_pade_MOD_s_star_hat(%rip), %r8
	movq	%rax, %rsi
	leaq	__working_area_vector_pade_MOD_t_star(%rip), %rdi
	call	build_s_star_
	movl	-320(%rbp), %eax
	testl	%eax, %eax
	je	.L529
	movq	48(%rbp), %rax
	movl	$2, (%rax)
.L529:
	movq	-96(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$1, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1048(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1056(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_internal_pack@PLT
	movq	%rax, %rbx
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -328(%rbp)
	movq	-1000(%rbp), %rsi
	leaq	-328(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	gen_next_vector_
	movq	-448(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L530
	leaq	-448(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_gfortran_internal_unpack@PLT
	movq	%rbx, %rdi
	call	free@PLT
.L530:
	movl	$0, %ecx
	movq	-256(%rbp), %rsi
	movl	$0, %edx
.L532:
	cmpq	%rsi, %rdx
	jg	.L531
	movq	-264(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %ecx
	addq	$1, %rdx
	jmp	.L532
.L531:
	movl	%ecx, -68(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$3, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -352(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-240(%rbp), %rax
	movq	$4, -640(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$4, -656(%rbp)
	movb	$1, -644(%rbp)
	movb	$1, -643(%rbp)
	movq	$0, -624(%rbp)
	movq	%rax, -616(%rbp)
	movq	$1, -632(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	-288(%rbp), %rax
	movq	$4, -576(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$4, -592(%rbp)
	movb	$1, -580(%rbp)
	movb	$1, -579(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	$1, -568(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	-256(%rbp), %rax
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$1, -516(%rbp)
	movb	$1, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	$1, -504(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -536(%rbp)
	leaq	-544(%rbp), %rdx
	leaq	-608(%rbp), %rax
	leaq	-672(%rbp), %rsi
	leaq	-448(%rbp), %rdi
	subq	$8, %rsp
	pushq	-1000(%rbp)
	movq	%rdx, %r9
	leaq	__working_area_vector_pade_MOD_new_s(%rip), %r8
	movq	%rax, %rcx
	leaq	__working_area_vector_pade_MOD_s_hat(%rip), %rdx
	call	mult_s_
	addq	$16, %rsp
	movq	-168(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$3, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1104(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	$0, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movq	-1072(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$0, -352(%rbp)
	movq	%rcx, -344(%rbp)
	movq	-1112(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-240(%rbp), %rax
	movq	$4, -640(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$4, -656(%rbp)
	movb	$1, -644(%rbp)
	movb	$1, -643(%rbp)
	movq	$0, -624(%rbp)
	movq	%rax, -616(%rbp)
	movq	$1, -632(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	-288(%rbp), %rax
	movq	$4, -576(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$4, -592(%rbp)
	movb	$1, -580(%rbp)
	movb	$1, -579(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	$1, -568(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	-256(%rbp), %rax
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$1, -516(%rbp)
	movb	$1, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	$1, -504(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -536(%rbp)
	leaq	-544(%rbp), %rdx
	leaq	-608(%rbp), %rax
	leaq	-672(%rbp), %rsi
	leaq	-448(%rbp), %rdi
	subq	$8, %rsp
	pushq	-1000(%rbp)
	movq	%rdx, %r9
	leaq	__working_area_vector_pade_MOD_new_s_star(%rip), %r8
	movq	%rax, %rcx
	leaq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rdx
	call	mult_s_star_
	addq	$16, %rsp
	movq	-256(%rbp), %rax
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$1, -516(%rbp)
	movb	$1, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	$1, -504(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	-216(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1168(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-448(%rbp), %rcx
	movq	-1000(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rax, %rsi
	leaq	__working_area_vector_pade_MOD_new_s(%rip), %rdi
	call	scale_s_
	movq	-256(%rbp), %rax
	movq	$4, -512(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$4, -528(%rbp)
	movb	$1, -516(%rbp)
	movb	$1, -515(%rbp)
	movq	$0, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	$1, -504(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	-232(%rbp), %rax
	movq	$4, -416(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movq	$4, -432(%rbp)
	movb	$1, -420(%rbp)
	movb	$3, -419(%rbp)
	movq	$0, -400(%rbp)
	movq	%rax, -392(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -440(%rbp)
	leaq	-448(%rbp), %rcx
	movq	-1000(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rax, %rsi
	leaq	__working_area_vector_pade_MOD_new_s_star(%rip), %rdi
	call	scale_s_star_
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L533
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	-1136(%rbp), %rax
	movq	-1144(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movq	-192(%rbp), %rax
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.L538
.L533:
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	-1136(%rbp), %rax
	movq	-1144(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-192(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-1000(%rbp), %rax
	movl	(%rax), %ecx
	movl	$0, -56(%rbp)
.L536:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L574
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	movq	-1136(%rbp), %rbx
	imulq	%rbx, %rax
	movq	-1144(%rbp), %rdi
	leaq	(%rdi,%rax), %rdx
	movq	-192(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	-1168(%rbp), %rax
	movq	-1208(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-208(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	movl	-56(%rbp), %eax
	cltq
	imulq	-1184(%rbp), %rax
	movq	-1216(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movq	-224(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	movss	.LC2(%rip), %xmm0
	divss	%xmm2, %xmm0
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%rdi,%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -56(%rbp)
	jmp	.L536
.L574:
	nop
	movl	-60(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	cltq
	imulq	-1136(%rbp), %rax
	movq	-1144(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movq	-192(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-1024(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L534
	movq	48(%rbp), %rax
	movl	$0, (%rax)
.L534:
	jmp	.L538
.L573:
	nop
	movl	-80(%rbp), %eax
	addl	%eax, -60(%rbp)
	movq	-256(%rbp), %rsi
	movl	$0, %ecx
.L540:
	cmpq	%rsi, %rcx
	jg	.L539
	movq	-264(%rbp), %rax
	movl	(%rax,%rcx,4), %edx
	movq	-248(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	addq	$1, %rcx
	jmp	.L540
.L539:
	movl	-68(%rbp), %eax
	movl	%eax, -304(%rbp)
	movq	-1000(%rbp), %rax
	movl	(%rax), %r9d
	movl	$0, -52(%rbp)
.L548:
	cmpl	%r9d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L575
	movq	-1000(%rbp), %rax
	movl	(%rax), %r8d
	movl	$0, -56(%rbp)
.L547:
	cmpl	%r8d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L576
	cmpl	$0, -56(%rbp)
	jne	.L543
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L544
.L543:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -72(%rbp)
.L544:
	movl	-72(%rbp), %edi
	movl	$0, -64(%rbp)
.L546:
	cmpl	%edi, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L577
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rsi
	movq	8+__working_area_vector_pade_MOD_new_s(%rip), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	88+__working_area_vector_pade_MOD_new_s(%rip), %rax
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	64+__working_area_vector_pade_MOD_new_s(%rip), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-56(%rbp), %eax
	cltq
	imulq	-1088(%rbp), %rax
	movq	-1096(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1064(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	-1080(%rbp), %rax
	addq	%rax, %rdx
	movss	(%rsi,%rcx,4), %xmm0
	movq	-128(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -64(%rbp)
	jmp	.L546
.L577:
	nop
	addl	$1, -56(%rbp)
	jmp	.L547
.L576:
	nop
	addl	$1, -52(%rbp)
	jmp	.L548
.L575:
	nop
	movq	-1000(%rbp), %rax
	movl	(%rax), %r9d
	movl	$0, -52(%rbp)
.L556:
	cmpl	%r9d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L578
	movq	-1000(%rbp), %rax
	movl	(%rax), %r8d
	movl	$0, -56(%rbp)
.L555:
	cmpl	%r8d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L579
	cmpl	$0, -52(%rbp)
	jne	.L551
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-304(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -76(%rbp)
	jmp	.L552
.L551:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	-304(%rbp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.L552:
	movl	-76(%rbp), %edi
	movl	$0, -64(%rbp)
.L554:
	cmpl	%edi, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L580
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rsi
	movq	8+__working_area_vector_pade_MOD_new_s_star(%rip), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	88+__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	imulq	%rdx, %rax
	addq	%rax, %rcx
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	64+__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-56(%rbp), %eax
	cltq
	imulq	-1112(%rbp), %rax
	movq	-1120(%rbp), %rbx
	leaq	(%rbx,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-1072(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	-1104(%rbp), %rax
	addq	%rax, %rdx
	movss	(%rsi,%rcx,4), %xmm0
	movq	-160(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -64(%rbp)
	jmp	.L554
.L580:
	nop
	addl	$1, -56(%rbp)
	jmp	.L555
.L579:
	nop
	addl	$1, -52(%rbp)
	jmp	.L556
.L578:
	nop
	jmp	.L557
.L571:
	nop
	movq	__working_area_vector_pade_MOD_s_hat(%rip), %rax
	testq	%rax, %rax
	jne	.L558
	leaq	.LC6(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L558:
	movq	__working_area_vector_pade_MOD_s_hat(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_s_hat(%rip)
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rax
	testq	%rax, %rax
	jne	.L559
	leaq	.LC10(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L559:
	movq	__working_area_vector_pade_MOD_new_s(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_new_s(%rip)
	movq	__working_area_vector_pade_MOD_t(%rip), %rax
	testq	%rax, %rax
	jne	.L560
	leaq	.LC12(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L560:
	movq	__working_area_vector_pade_MOD_t(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_t(%rip)
	movq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rax
	testq	%rax, %rax
	jne	.L561
	leaq	.LC14(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L561:
	movq	__working_area_vector_pade_MOD_s_star_hat(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_s_star_hat(%rip)
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	testq	%rax, %rax
	jne	.L562
	leaq	.LC16(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L562:
	movq	__working_area_vector_pade_MOD_new_s_star(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_new_s_star(%rip)
	movq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	testq	%rax, %rax
	jne	.L563
	leaq	.LC18(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L563:
	movq	__working_area_vector_pade_MOD_t_star(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, __working_area_vector_pade_MOD_t_star(%rip)
	jmp	.L509
.L566:
	nop
.L509:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	vector_pade_, .-vector_pade_
	.section	.rodata
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC2:
	.long	1065353216
	.align 16
.LC3:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC20:
	.long	2139095039
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
