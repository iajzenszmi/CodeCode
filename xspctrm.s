	.file	"xspctrm.f"
	.text
	.section	.rodata
.LC4:
	.string	"xspctrm.f"
	.align 4
.LC5:
	.long	1
	.text
	.globl	spctrm_
	.type	spctrm_, @function
spctrm_:
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
	pushq	%rbx
	subq	$680, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	%rdx, -696(%rbp)
	movq	%rcx, -704(%rbp)
	movq	%r8, -712(%rbp)
	movq	%r9, -720(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	sall	$2, %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -112(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-136(%rbp), %eax
	movl	$1, -56(%rbp)
.L3:
	cmpl	%eax, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L30
	movl	-56(%rbp), %edx
	subl	$1, %edx
	cvtsi2ssl	%edx, %xmm0
	subss	-112(%rbp), %xmm0
	mulss	-116(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	andps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm0
	movss	-68(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L3
.L30:
	nop
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L5:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L31
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-680(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L5
.L31:
	nop
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L6
	leaq	.LC4(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$52, -656(%rbp)
	movl	$128, -672(%rbp)
	movl	$9, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -56(%rbp)
.L8:
	movl	-672(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L32
	cmpl	%ebx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L32
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-720(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	addl	$1, -56(%rbp)
	jmp	.L8
.L32:
	nop
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
.L6:
	movq	-696(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -64(%rbp)
.L26:
	cmpl	%r12d, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L33
	movl	$-1, -60(%rbp)
.L21:
	cmpl	$0, -60(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L34
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L11
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L13:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L35
	movl	-60(%rbp), %ecx
	movl	-56(%rbp), %eax
	addl	%eax, %ecx
	movl	-56(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, -120(%rbp)
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-120(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-720(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-712(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L13
.L35:
	nop
	leaq	.LC4(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$62, -656(%rbp)
	movl	$128, -672(%rbp)
	movl	$9, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-688(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -56(%rbp)
.L15:
	movl	-672(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L36
	cmpl	%ebx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L36
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-720(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	addl	$1, -56(%rbp)
	jmp	.L15
.L36:
	nop
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-136(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L17:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L37
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-124(%rbp), %ecx
	movl	-56(%rbp), %eax
	addl	%eax, %ecx
	movl	-56(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-720(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movq	-712(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L17
.L11:
	leaq	.LC4(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$69, -656(%rbp)
	movl	$128, -672(%rbp)
	movl	$9, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	-100(%rbp), %edx
	movl	%eax, -56(%rbp)
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %ebx
	shrl	%ebx
	cmpl	%eax, %edx
	jl	.L38
.L20:
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-712(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	movl	-672(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L38
	addl	$2, -56(%rbp)
	movl	%ebx, %eax
	subl	$1, %ebx
	testl	%eax, %eax
	je	.L38
	jmp	.L20
.L38:
	nop
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	jmp	.L18
.L37:
	nop
.L18:
	addl	$1, -60(%rbp)
	jmp	.L21
.L34:
	nop
	movl	-136(%rbp), %edx
	movl	$1, -56(%rbp)
.L23:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L39
	movl	-56(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -128(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm0
	subss	-112(%rbp), %xmm0
	mulss	-116(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	andps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -132(%rbp)
	movl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	-132(%rbp), %xmm0
	movq	-712(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	mulss	-132(%rbp), %xmm0
	movq	-712(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L23
.L39:
	nop
	leaq	-136(%rbp), %rcx
	movq	-712(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	four1_
	movq	-712(%rbp), %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movq	-712(%rbp), %rax
	movss	4(%rax), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movq	-680(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-680(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -56(%rbp)
.L25:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L40
	movl	-56(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movl	-104(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movl	-104(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-712(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movl	-108(%rbp), %eax
	subl	-128(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %esi
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-680(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvtsi2ssl	%esi, %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	addss	%xmm1, %xmm0
	movq	-680(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L25
.L40:
	nop
	movss	-52(%rbp), %xmm0
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	addl	$1, -64(%rbp)
	jmp	.L26
.L33:
	nop
	cvtsi2ssl	-100(%rbp), %xmm0
	movss	-52(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movq	-688(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L28:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L41
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-680(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	divss	-52(%rbp), %xmm0
	movq	-680(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L28
.L41:
	nop
	nop
	addq	$680, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	spctrm_, .-spctrm_
	.globl	four1_
	.type	four1_, @function
four1_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	movl	$1, -24(%rbp)
	movl	-60(%rbp), %edx
	movl	$1, -20(%rbp)
	movl	%edx, %eax
	subl	$1, %eax
	shrl	%eax
	testl	%edx, %edx
	jle	.L57
.L47:
	movl	-24(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jle	.L44
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	-64(%rbp), %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	-68(%rbp), %xmm0
	movss	%xmm0, (%rdx,%rcx,4)
.L44:
	movl	-60(%rbp), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, -28(%rbp)
.L46:
	cmpl	$1, -28(%rbp)
	setg	%dl
	movzbl	%dl, %ecx
	movl	-24(%rbp), %edx
	cmpl	-28(%rbp), %edx
	setg	%dl
	movzbl	%dl, %edx
	andl	%ecx, %edx
	testl	%edx, %edx
	je	.L45
	movl	-28(%rbp), %edx
	subl	%edx, -24(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, -28(%rbp)
	jmp	.L46
.L45:
	movl	-28(%rbp), %edx
	addl	%edx, -24(%rbp)
	addl	$2, -20(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L57
	jmp	.L47
.L57:
	nop
	movl	$2, -32(%rbp)
.L55:
	movl	-60(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L58
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -72(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	imull	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC6(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	sin@PLT
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	movq	.LC8(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -96(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	$1, -28(%rbp)
	movl	%eax, %edx
	subl	$1, %edx
	shrl	%edx
	movl	%edx, %r8d
	testl	%eax, %eax
	jle	.L59
.L54:
	movl	-28(%rbp), %ecx
	movl	-60(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	%ecx, -20(%rbp)
	testl	%esi, %esi
	jns	.L50
	movl	%ecx, %edx
	movl	%edi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%esi, %edx
	movl	%edx, %ebx
	negl	%ebx
	movl	$0, %edx
	divl	%ebx
	cmpl	%ecx, %edi
	jg	.L60
	jmp	.L53
.L50:
	movl	%edi, %edx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%esi, %ebx
	movl	$0, %edx
	divl	%ebx
	cmpl	%ecx, %edi
	jl	.L60
.L53:
	movl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -24(%rbp)
	cvtsd2ss	-48(%rbp), %xmm1
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	cvtsd2ss	-40(%rbp), %xmm2
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	cvtsd2ss	-48(%rbp), %xmm1
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	mulss	%xmm0, %xmm1
	cvtsd2ss	-40(%rbp), %xmm2
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	subss	-64(%rbp), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	subss	-68(%rbp), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	-64(%rbp), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	addss	-68(%rbp), %xmm0
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	addl	%esi, -20(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L60
	jmp	.L53
.L60:
	nop
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-48(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	addl	$2, -28(%rbp)
	movl	%r8d, %eax
	subl	$1, %r8d
	testl	%eax, %eax
	je	.L59
	jmp	.L54
.L59:
	nop
	movl	-72(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L55
.L58:
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	four1_, .-four1_
	.section	.rodata
.LC11:
	.ascii	"SPCTRL.DAT"
.LC12:
	.ascii	"OLD"
	.align 4
.LC13:
	.long	16
	.align 8
.LC14:
	.ascii	"               SPECTRUM OF DATA IN FILE SPCTRL.DAT"
.LC15:
	.ascii	"                OVERLAPPED   "
.LC16:
	.ascii	"    NON-OVERLAPPED"
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
	subq	$992, %rsp
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$8, -976(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -928(%rbp)
	movq	$10, -936(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -920(%rbp)
	movq	$3, -912(%rbp)
	movl	$0, -688(%rbp)
	movl	$16777984, -992(%rbp)
	movl	$9, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
	movl	$8, -8(%rbp)
	movl	$1, -12(%rbp)
	leaq	-464(%rbp), %rdi
	leaq	-400(%rbp), %rsi
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	spctrm_
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$17, -976(%rbp)
	movl	$0, -992(%rbp)
	movl	$9, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_rewind@PLT
	movl	$16, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-464(%rbp), %rdi
	leaq	-400(%rbp), %rsi
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	spctrm_
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$21, -976(%rbp)
	movl	$0, -992(%rbp)
	movl	$9, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$22, -976(%rbp)
	movl	$128, -992(%rbp)
	movl	$6, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-992(%rbp), %rax
	movl	$50, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$23, -976(%rbp)
	movl	$128, -992(%rbp)
	movl	$6, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-992(%rbp), %rax
	movl	$29, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-992(%rbp), %rax
	movl	$18, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L63:
	movl	-4(%rbp), %eax
	cmpl	$16, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L64
	leaq	.LC4(%rip), %rax
	movq	%rax, -984(%rbp)
	movl	$25, -976(%rbp)
	movl	$128, -992(%rbp)
	movl	$6, -988(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-992(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-80(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-992(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-144(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-992(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L63
.L64:
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
	leaq	options.27.4084(%rip), %rsi
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
	.type	options.27.4084, @object
	.size	options.27.4084, 28
options.27.4084:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC2:
	.long	1065353216
	.align 16
.LC3:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC6:
	.long	1413754140
	.long	1075388923
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.align 16
.LC8:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
