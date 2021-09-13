	.file	"6934.f"
	.text
	.section	.rodata
	.align 4
.LC0:
	.long	80
.LC1:
	.string	"6934.f"
	.align 8
.LC2:
	.ascii	"(/' ERROR IN ROOTS.  THE CORRECT RESULT SHOULD BE:'         "
	.ascii	"       //6X,A/)"
	.text
	.globl	check_
	.type	check_, @function
check_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$672, %rsp
	movq	%rdi, -632(%rbp)
	movq	%rsi, -640(%rbp)
	movq	%rdx, -648(%rbp)
	movq	%rcx, -656(%rbp)
	movq	%r8, -664(%rbp)
	leaq	-96(%rbp), %rsi
	movq	-640(%rbp), %rax
	movl	$1, %ecx
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rdi
	call	fmout_
	movl	$1, -4(%rbp)
.L5:
	cmpl	$80, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L7
	movl	-4(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movzbl	-96(%rbp,%rdx), %ecx
	movq	-632(%rbp), %rdx
	movzbl	-1(%rdx,%rax), %eax
	cmpb	%al, %cl
	je	.L3
	movq	-648(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-648(%rbp), %rax
	movl	%edx, (%rax)
	leaq	.LC1(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$9526, -608(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$75, -536(%rbp)
	movl	$4096, -624(%rbp)
	movq	-656(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-632(%rbp), %rcx
	leaq	-624(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1
.L3:
	addl	$1, -4(%rbp)
	jmp	.L5
.L7:
	nop
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	check_, .-check_
	.section	.rodata
	.align 4
.LC5:
	.long	0
	.align 4
.LC6:
	.long	1
	.text
	.globl	fmout_
	.type	fmout_, @function
fmout_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -4136(%rbp)
	movq	%rsi, -4144(%rbp)
	movq	%rdx, -4152(%rbp)
	movq	%rcx, -4160(%rbp)
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movl	24+fmuser_(%rip), %eax
	movl	%eax, -116(%rbp)
	movl	$0, 24+fmuser_(%rip)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$32, (%rdx,%rax)
	movq	-4152(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -20(%rbp)
.L10:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L109
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	nbl.4001(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L10
.L109:
	nop
	movq	-4136(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L11
	movl	$1, -20(%rbp)
.L13:
	cmpl	$12, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L110
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	leaq	nunkno.4021(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	addl	$1, -20(%rbp)
	jmp	.L13
.L110:
	nop
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	jmp	.L8
.L11:
	movq	-4136(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L15
	movl	$1, -20(%rbp)
.L17:
	cmpl	$12, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L111
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	leaq	nexpov.4010(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	addl	$1, -20(%rbp)
	jmp	.L17
.L111:
	nop
	movzbl	nplus.4013(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L18
	movzbl	minus.3993(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
.L18:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	jmp	.L8
.L15:
	movq	-4136(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L19
	movl	$1, -20(%rbp)
.L21:
	cmpl	$12, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L112
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	leaq	nexpun.4012(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	addl	$1, -20(%rbp)
	jmp	.L21
.L112:
	nop
	movzbl	nplus.4013(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L22
	movzbl	minus.3993(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
.L22:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	jmp	.L8
.L19:
	movl	2628+fm_(%rip), %eax
	movl	%eax, -120(%rbp)
	movl	$1, 2628+fm_(%rip)
	movl	40+fmuser_(%rip), %eax
	movl	%eax, -124(%rbp)
	movl	$1, 40+fmuser_(%rip)
	movl	8+fmuser_(%rip), %eax
	movl	%eax, -128(%rbp)
	movl	12+fmuser_(%rip), %eax
	movl	%eax, -132(%rbp)
.L29:
	movl	12+fmuser_(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	8+fmuser_(%rip), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-4136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L23
	movl	12+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, -4164(%rbp)
	movq	-4136(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm4
	movss	%xmm4, -4168(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	mulss	-4168(%rbp), %xmm0
	movss	-4164(%rbp), %xmm1
	addss	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -76(%rbp)
.L23:
	cmpl	$1, -76(%rbp)
	jg	.L24
	movl	fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm5
	movss	%xmm5, -4164(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	mulss	-4164(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	12+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -76(%rbp)
.L24:
	movl	12+fmuser_(%rip), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movl	8+fmuser_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L25
	movl	fmuser_(%rip), %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm3
	movss	%xmm3, -4164(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	movss	-4164(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -76(%rbp)
.L25:
	cmpl	$1, -76(%rbp)
	jg	.L26
	movl	$2, -76(%rbp)
.L26:
	movl	-76(%rbp), %eax
	leal	5(%rax), %edx
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L27
	movl	8+fmuser_(%rip), %eax
	cmpl	$2, %eax
	jne	.L113
	movl	$0, 8+fmuser_(%rip)
	movl	$0, 12+fmuser_(%rip)
	jmp	.L29
.L27:
	movl	2652+fm_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	cvttss2sil	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	4+fmuser_(%rip), %eax
	movl	%eax, -168(%rbp)
	movl	fmuser_(%rip), %eax
	movl	%eax, -4116(%rbp)
	movl	2620+fm_(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	2624+fm_(%rip), %eax
	movl	%eax, 2620+fm_(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, 4+fmuser_(%rip)
	movl	-76(%rbp), %eax
	cltd
	idivl	-84(%rbp)
	addl	$2, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L31
	movl	$2, fmuser_(%rip)
.L31:
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L32
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L30
.L32:
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L33
	leaq	-2800(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	jmp	.L34
.L33:
	movl	-84(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	movl	$1, -20(%rbp)
.L39:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L114
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, 4+fmuser_(%rip)
	movl	4+fmuser_(%rip), %edx
	movl	-168(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L36
	movl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-76(%rbp), %eax
	cltd
	idivl	-84(%rbp)
	addl	$2, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L37
	movl	$2, fmuser_(%rip)
.L37:
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L38
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L30
.L38:
	leaq	-4116(%rbp), %rdx
	leaq	-2800(%rbp), %rsi
	movq	-4136(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movl	-2796(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, -2796(%rbp)
	jmp	.L34
.L36:
	addl	$1, -20(%rbp)
	jmp	.L39
.L114:
	nop
	leaq	-1488(%rbp), %rdx
	leaq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmim_
	movl	-4116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	leaq	-4112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
	movl	$1, -60(%rbp)
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-136(%rbp), %eax
	movl	$3, -20(%rbp)
.L41:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L115
	subl	$1, -64(%rbp)
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-4136(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	jne	.L115
	addl	$1, -20(%rbp)
	jmp	.L41
.L115:
	nop
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, -176(%rbp)
	leaq	-2800(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmim_
	movl	fmuser_(%rip), %eax
	movl	%eax, -144(%rbp)
	movl	-64(%rbp), %ebx
	movl	$3, -20(%rbp)
.L47:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L116
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-4136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -176(%rbp)
	movl	-168(%rbp), %eax
	cmpl	$2, %eax
	jne	.L43
	movl	$2, %edx
	movl	-2800(%rbp), %eax
	addl	$1, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	-2800(%rbp), %rdx
	leaq	-2800(%rbp), %rcx
	leaq	-2800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd2_
	jmp	.L44
.L43:
	movl	$2, %edx
	movl	-2800(%rbp), %ecx
	movl	-1488(%rbp), %eax
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	-2800(%rbp), %rdx
	leaq	-1488(%rbp), %rcx
	leaq	-2800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy2_
.L44:
	movl	-176(%rbp), %eax
	testl	%eax, %eax
	jle	.L45
	movl	-176(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	je	.L46
	movl	$2, %edx
	movl	-1488(%rbp), %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	-4112(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmim_
	movl	-176(%rbp), %eax
	movl	%eax, -60(%rbp)
.L46:
	movl	-2800(%rbp), %eax
	movl	-4112(%rbp), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	$2, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	-2800(%rbp), %rdx
	leaq	-4112(%rbp), %rcx
	leaq	-2800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd2_
.L45:
	addl	$1, -20(%rbp)
	jmp	.L47
.L116:
	nop
	movl	-144(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-4112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
	movq	-4136(%rbp), %rax
	movl	(%rax), %eax
	subl	-140(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -28(%rbp)
	subl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L48
	leaq	-4112(%rbp), %rsi
	leaq	-1488(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L52
.L48:
	leaq	-4112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
.L52:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movl	$2, %edx
	movl	-1488(%rbp), %eax
	addl	%eax, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	cmpl	$0, -28(%rbp)
	jle	.L50
	leaq	-1488(%rbp), %rdx
	leaq	-1488(%rbp), %rcx
	leaq	-1488(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy2_
.L50:
	movl	-28(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L51
	movl	$2, %edx
	movl	-4112(%rbp), %ecx
	movl	-1488(%rbp), %eax
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	-144(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	-4112(%rbp), %rdx
	leaq	-1488(%rbp), %rcx
	leaq	-4112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy2_
.L51:
	cmpl	$1, -28(%rbp)
	jg	.L52
	movl	-144(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-4136(%rbp), %rax
	movl	(%rax), %eax
	subl	-140(%rbp), %eax
	testl	%eax, %eax
	jns	.L53
	leaq	-2800(%rbp), %rdx
	leaq	-4112(%rbp), %rcx
	leaq	-2800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmdiv2_
	jmp	.L34
.L53:
	leaq	-2800(%rbp), %rdx
	leaq	-4112(%rbp), %rcx
	leaq	-2800(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy2_
.L34:
	movl	-2800(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.L70
.L118:
	nop
.L70:
	movl	-2800(%rbp), %eax
	movl	-84(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	4+fmuser_(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	-84(%rbp), %edx
	movl	$1, -20(%rbp)
.L56:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L117
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rcx
	shrq	$32, %rcx
	sarl	$2, %ecx
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-2796(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	setg	%al
	movzbl	%al, %ecx
	movl	-2796(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L55
	subl	$1, -52(%rbp)
	subl	$1, -56(%rbp)
.L55:
	addl	$1, -20(%rbp)
	jmp	.L56
.L117:
	nop
	movl	8+fmuser_(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-2796(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L57
	subl	$1, -52(%rbp)
.L57:
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	8+fmuser_(%rip), %eax
	cmpl	$2, %eax
	jne	.L58
	movl	12+fmuser_(%rip), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L59
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)
.L59:
	movl	-88(%rbp), %eax
	subl	-56(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-84(%rbp)
	addl	$2, %eax
	movl	%eax, -96(%rbp)
	cmpl	$1, -96(%rbp)
	jg	.L60
	movl	$-1, -96(%rbp)
.L60:
	movl	fmuser_(%rip), %eax
	cmpl	%eax, -96(%rbp)
	jle	.L61
	movl	$0, -96(%rbp)
.L61:
	cmpl	$1, -96(%rbp)
	setg	%al
	movzbl	%al, %edx
	cmpl	$0, -88(%rbp)
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L62
	movl	$-1, -96(%rbp)
	jmp	.L62
.L58:
	movl	-76(%rbp), %eax
	subl	-56(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-84(%rbp)
	addl	$2, %eax
	movl	%eax, -96(%rbp)
.L62:
	movl	-96(%rbp), %eax
	subl	$2, %eax
	imull	-84(%rbp), %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -152(%rbp)
	cmpl	$1, -96(%rbp)
	jg	.L63
	movl	$0, -92(%rbp)
	jmp	.L64
.L63:
	movl	-152(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, -92(%rbp)
.L64:
	cmpl	$1, -96(%rbp)
	jle	.L65
	pxor	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	cmpl	$1, -92(%rbp)
	jle	.L66
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %eax
	cltd
	idivl	-92(%rbp)
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -100(%rbp)
.L66:
	movl	fmuser_(%rip), %eax
	cmpl	%eax, -96(%rbp)
	jg	.L67
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	-100(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
.L67:
	cvtsi2ssl	-92(%rbp), %xmm1
	movss	-100(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC8(%rip), %xmm0
	comiss	-100(%rbp), %xmm0
	ja	.L65
	movl	-2796(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %eax
	cltd
	idivl	-92(%rbp)
	movl	%eax, %ecx
	movl	-96(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	%ecx, %eax
	imull	-92(%rbp), %eax
	movl	%eax, -2800(%rbp,%rdx,4)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movl	$0, -2800(%rbp,%rax,4)
	movl	-96(%rbp), %eax
	addl	$2, %eax
	cltq
	subq	$1, %rax
	movl	$0, -2800(%rbp,%rax,4)
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %ecx
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-92(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -2800(%rbp,%rax,4)
	movl	-96(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L68
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4120(%rbp)
	movl	-96(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4124(%rbp)
	cmpl	$2, -96(%rbp)
	jle	.L69
	leaq	-4124(%rbp), %rcx
	leaq	-4120(%rbp), %rdx
	leaq	-2800(%rbp), %rsi
	leaq	-2800(%rbp), %rax
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L68
.L69:
	movl	-2800(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2800(%rbp)
	movl	-2796(%rbp), %eax
	movl	4+fmuser_(%rip), %ebx
	cltd
	idivl	%ebx
	movl	%eax, -2796(%rbp)
	movl	$0, -2792(%rbp)
.L68:
	movl	-2800(%rbp), %eax
	cmpl	%eax, -148(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	-2796(%rbp), %eax
	cmpl	%eax, -156(%rbp)
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L118
.L65:
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L71
	movzbl	minus.3993(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax)
.L71:
	movzbl	ndpt.4006(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, -28(%rbp)
	movl	$2, -68(%rbp)
	cmpl	$-1, -96(%rbp)
	jne	.L72
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)
.L72:
	movl	-88(%rbp), %ecx
	movl	$1, -20(%rbp)
.L75:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L119
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L74
	movl	4+fmuser_(%rip), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	addl	$1, -68(%rbp)
.L74:
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -176(%rbp)
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-2800(%rbp,%rax,4), %eax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	cltd
	idivl	-28(%rbp)
	movl	%edx, %eax
	movl	%eax, -2800(%rbp,%rsi,4)
	movl	-176(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rsi
	leaq	numb.4019(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L75
.L119:
	nop
	movl	-88(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -160(%rbp)
	movl	-76(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jl	.L76
	movl	-160(%rbp), %eax
	movl	-40(%rbp), %ecx
	movl	%eax, -20(%rbp)
.L78:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L120
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	numb.4019(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L78
.L120:
	nop
.L76:
	movl	-76(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	m.3990(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	movl	-76(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	nplus.4013(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	cmpl	$0, -52(%rbp)
	jns	.L79
	movl	-76(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	minus.3993(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
.L79:
	movq	-4136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L80
	movl	-76(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	nbl.4001(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
.L80:
	movl	$1, -80(%rbp)
	movl	-52(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	-52(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-4152(%rbp), %rax
	movl	(%rax), %esi
	movl	$1, -20(%rbp)
.L86:
	cmpl	%esi, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L121
	movl	-48(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -176(%rbp)
	movl	-176(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-76(%rbp), %eax
	leal	4(%rax), %ecx
	movl	-20(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rcx
	leaq	numb.4019(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L121
	movl	-76(%rbp), %eax
	leal	5(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L82
	movq	-4152(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -28(%rbp)
.L84:
	cmpl	%ecx, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L122
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	kstar.3985(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -28(%rbp)
	jmp	.L84
.L122:
	nop
	jmp	.L85
.L82:
	addl	$1, -80(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L86
.L121:
	nop
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jle	.L123
	movl	-76(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -32(%rbp)
	movl	-76(%rbp), %eax
	leal	5(%rax), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-164(%rbp), %ecx
	movl	$1, -20(%rbp)
.L87:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L123
	addl	$1, -32(%rbp)
	subl	$1, -36(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-4144(%rbp), %rax
	movzbl	(%rax,%rdx), %eax
	movb	%al, -169(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-4144(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	-169(%rbp), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L87
.L123:
	nop
.L85:
	movl	8+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L88
	movq	-4144(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -169(%rbp)
	movq	-4144(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 1(%rax)
	movzbl	-169(%rbp), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, 2(%rax)
.L88:
	movl	8+fmuser_(%rip), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movl	12+fmuser_(%rip), %edx
	notl	%edx
	shrl	$31, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L124
	movl	12+fmuser_(%rip), %eax
	negl	%eax
	cmpl	%eax, -52(%rbp)
	setle	%al
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	setge	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L90
	movl	$0, 8+fmuser_(%rip)
	movl	$0, 12+fmuser_(%rip)
	movl	-168(%rbp), %eax
	movl	%eax, 4+fmuser_(%rip)
	movl	-4116(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, 2620+fm_(%rip)
	movq	-4152(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -20(%rbp)
.L92:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L125
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	nbl.4001(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L92
.L125:
	nop
	jmp	.L29
.L90:
	movl	-76(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movq	-4152(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -20(%rbp)
.L94:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L126
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	numb.4019(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L94
.L126:
	nop
	cmpl	$0, -52(%rbp)
	jle	.L95
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %ecx
	movl	$1, -20(%rbp)
.L97:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L127
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-4144(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L97
.L127:
	nop
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	ndpt.4006(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
.L95:
	cmpl	$0, -52(%rbp)
	jns	.L98
	movl	-52(%rbp), %eax
	negl	%eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -160(%rbp)
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-160(%rbp), %eax
	movq	-4152(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	%eax, -20(%rbp)
.L100:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L128
	subl	$1, -40(%rbp)
	subl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-4144(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	numb.4019(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L100
.L128:
	nop
.L98:
	movl	$0, -24(%rbp)
	movq	-4152(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -20(%rbp)
.L104:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L129
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-4144(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movzbl	ndpt.4006(%rip), %edx
	cmpb	%dl, %cl
	jne	.L102
	movl	-20(%rbp), %edx
	movl	%edx, -24(%rbp)
.L102:
	cmpl	$0, -24(%rbp)
	setg	%dl
	movzbl	%dl, %ecx
	movl	12+fmuser_(%rip), %esi
	movl	-24(%rbp), %edx
	addl	%esi, %edx
	cmpl	%edx, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	andl	%ecx, %edx
	testl	%edx, %edx
	je	.L103
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movzbl	nbl.4001(%rip), %ecx
	movq	-4144(%rbp), %rdx
	movb	%cl, (%rdx,%rsi)
.L103:
	addl	$1, -20(%rbp)
	jmp	.L104
.L129:
	nop
	movl	12+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L124
	movl	-48(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rcx
	movzbl	nbl.4001(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rcx)
	jmp	.L124
.L113:
	nop
.L30:
	movl	$-8, 32+fmuser_(%rip)
	movq	-4152(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -20(%rbp)
.L107:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L130
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movzbl	kstar.3985(%rip), %edx
	movq	-4144(%rbp), %rax
	movb	%dl, (%rax,%rsi)
	addl	$1, -20(%rbp)
	jmp	.L107
.L130:
	nop
	call	fmwarn_
	jmp	.L105
.L124:
	nop
.L105:
	movl	-168(%rbp), %eax
	movl	%eax, 4+fmuser_(%rip)
	movl	-4116(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, 2620+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-120(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	movl	-116(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	movl	-124(%rbp), %eax
	movl	%eax, 40+fmuser_(%rip)
	movl	-128(%rbp), %eax
	movl	%eax, 8+fmuser_(%rip)
	movl	-132(%rbp), %eax
	movl	%eax, 12+fmuser_(%rip)
	nop
.L8:
	addq	$4168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fmout_, .-fmout_
	.section	.rodata
.LC10:
	.ascii	"(6X,73A1)"
	.text
	.globl	fmprnt_
	.type	fmprnt_, @function
fmprnt_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$584, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -584(%rbp)
	movl	32+fmuser_(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, -588(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	movss	-588(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jg	.L132
	movl	$2, -28(%rbp)
.L132:
	movl	2652+fm_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movss	.LC9(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	12+fmuser_(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	-28(%rbp), %ecx
	movl	-36(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	$1545, %edx
	cmpl	$1545, %eax
	cmovg	%edx, %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-584(%rbp), %rax
	movl	$1, %ecx
	leaq	fmbuff_(%rip), %rsi
	movq	%rax, %rdi
	call	fmout_
	movl	-32(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	movl	$1, -20(%rbp)
.L138:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L140
	movl	-40(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	leaq	fmbuff_(%rip), %rdx
	movzbl	(%rcx,%rdx), %edx
	cmpb	$32, %dl
	setne	%dl
	movzbl	%dl, %ecx
	movl	-48(%rbp), %edx
	cmpl	%edx, -20(%rbp)
	sete	%dl
	movzbl	%dl, %edx
	orl	%ecx, %edx
	testl	%edx, %edx
	je	.L134
	movl	-40(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$7396, -560(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$9, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-44(%rbp), %ebx
	movl	$1, -24(%rbp)
.L136:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L141
	cmpl	%ebx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L141
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	fmbuff_(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L136
.L141:
	nop
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L131
.L134:
	addl	$1, -20(%rbp)
	jmp	.L138
.L140:
	nop
	nop
.L131:
	addq	$584, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fmprnt_, .-fmprnt_
	.section	.rodata
	.align 4
.LC11:
	.long	2
	.text
	.globl	fmsub_
	.type	fmsub_, @function
fmsub_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$40, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L143
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L143:
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L144
	movl	$1, -4(%rbp)
.L144:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L145
	movl	$0, -4(%rbp)
.L145:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd2_
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L146
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L147
.L146:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4(%rax)
.L147:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$1, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L148
	movl	$0, 32+fmuser_(%rip)
.L148:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L149
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L149:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fmsub_, .-fmsub_
	.globl	fmdiv_
	.type	fmdiv_, @function
fmdiv_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$12, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L152
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L152:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmdiv2_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L153
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L153:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fmdiv_, .-fmdiv_
	.globl	fmmpy_
	.type	fmmpy_, @function
fmmpy_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$29, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L156
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L156:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy2_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L157
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L157:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fmmpy_, .-fmmpy_
	.globl	fmadd_
	.type	fmadd_, @function
fmadd_:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$3, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L160
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L160:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd2_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L161
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L161:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fmadd_, .-fmadd_
	.globl	fmi2m_
	.type	fmi2m_, @function
fmi2m_:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$16, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L164
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntri_
.L164:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmim_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L165
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L165:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fmi2m_, .-fmi2m_
	.globl	fmdp2m_
	.type	fmdp2m_, @function
fmdp2m_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$14, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L168
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntrr_
.L168:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdm_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L169
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L169:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fmdp2m_, .-fmdp2m_
	.globl	fmdig_
	.type	fmdig_, @function
fmdig_:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -16(%rbp)
.L174:
	movsd	-24(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L181
	addl	$1, -16(%rbp)
	jmp	.L174
.L181:
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
	movl	fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -8(%rbp)
	setl	%al
	movzbl	%al, %edx
	cmpl	$2, -8(%rbp)
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L171
.L175:
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L177
	addl	$1, -12(%rbp)
.L177:
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	-16(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -8(%rbp)
	setge	%al
	movzbl	%al, %edx
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L175
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	$1, -4(%rbp)
.L179:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L182
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L179
.L182:
	nop
	nop
.L171:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fmdig_, .-fmdig_
	.globl	fpset_
	.type	fpset_, @function
fpset_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fmset_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fpset_, .-fpset_
	.globl	fmpack_
	.type	fmpack_, @function
fmpack_:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$2, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	4+fmuser_(%rip), %edx
	imull	%eax, %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L186
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
.L186:
	movl	fmuser_(%rip), %eax
	cmpl	$3, %eax
	jle	.L187
	movl	fmuser_(%rip), %edx
	movl	$4, -4(%rbp)
	movl	%edx, %eax
	subl	$4, %eax
	shrl	%eax
	cmpl	$3, %edx
	jle	.L192
.L189:
	addl	$1, -8(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movl	4+fmuser_(%rip), %edx
	movl	%ecx, %esi
	imull	%edx, %esi
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	addl	%edx, %esi
	movq	-32(%rbp), %rdx
	movl	%esi, (%rdx,%rcx,4)
	addl	$2, -4(%rbp)
	movl	%eax, %edx
	subl	$1, %eax
	testl	%edx, %edx
	je	.L192
	jmp	.L189
.L192:
	nop
.L187:
	movl	fmuser_(%rip), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L193
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	4+fmuser_(%rip), %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	imull	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	nop
.L193:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fmpack_, .-fmpack_
	.globl	fmulp_
	.type	fmulp_, @function
fmulp_:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$43, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L195
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L195:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, -4(%rbp)
.L197:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L204
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L197
.L204:
	nop
	movl	$1, 4+fm_(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L198
	movl	$-1, 4+fm_(%rip)
.L198:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	fmuser_(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, fm_(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setge	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L199
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, -8(%rbp)
	je	.L200
	call	fmwarn_
	jmp	.L200
.L199:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L201
	movl	$0, 36+fmuser_(%rip)
.L201:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	movl	-16(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
.L200:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L202
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L202:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fmulp_, .-fmulp_
	.globl	fmunpk_
	.type	fmunpk_, @function
fmunpk_:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$2, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	4+fmuser_(%rip), %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L206
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
.L206:
	movl	fmuser_(%rip), %eax
	cmpl	$3, %eax
	jle	.L207
	movl	fmuser_(%rip), %eax
	movl	$4, -4(%rbp)
	movl	%eax, %edx
	subl	$4, %edx
	movl	%edx, %ecx
	shrl	%ecx
	cmpl	$3, %eax
	jle	.L212
.L209:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edi
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	subq	$1, %rsi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edi
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	cltd
	idivl	%edi
	movq	-32(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$2, -4(%rbp)
	movl	%ecx, %eax
	subl	$1, %ecx
	testl	%eax, %eax
	je	.L212
	jmp	.L209
.L212:
	nop
.L207:
	movl	fmuser_(%rip), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L213
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edi
	movl	fmuser_(%rip), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	nop
.L213:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fmunpk_, .-fmunpk_
	.section	.rodata
	.align 4
.LC14:
	.long	42
	.align 4
.LC15:
	.long	-1
	.text
	.globl	fmtanh_
	.type	fmtanh_, @function
fmtanh_:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L214
	movl	$0, 2628+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmexp_
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L217
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L218
.L217:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L219
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	call	fmi2m_
	jmp	.L218
.L219:
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	cmpl	$0, -8(%rbp)
	jle	.L220
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
	movq	-48(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsub_
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
	jmp	.L218
.L220:
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	fmi2m_
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmadd_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
.L218:
	cmpl	$0, -12(%rbp)
	jns	.L221
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 4(%rax)
.L221:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-20(%rbp), %r8
	leaq	-16(%rbp), %rdi
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fmtanh_, .-fmtanh_
	.section	.rodata
	.align 4
.LC16:
	.long	41
	.align 4
.LC17:
	.long	180
	.text
	.globl	fmtan_
	.type	fmtan_, @function
fmtan_:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-28(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-36(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L223
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmrdc_
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L226
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L227
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L234
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L234
.L227:
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L229
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L230
	movl	fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L230:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	32+fmsave_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L229:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L231
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmsin2_
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	2616+fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
	leaq	2616+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmsqrt_
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L232
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv_
	jmp	.L231
.L232:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdiv_
.L231:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	imull	%edx, %eax
	cmpl	$-1, %eax
	jne	.L226
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L226
.L234:
	nop
.L226:
	leaq	-24(%rbp), %r8
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fmtan_, .-fmtan_
	.section	.rodata
	.align 4
.LC18:
	.long	39
	.text
	.globl	fmsqrt_
	.type	fmsqrt_, @function
fmsqrt_:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	leaq	-52(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	leaq	-44(%rbp), %rcx
	pushq	%rcx
	leaq	-60(%rbp), %rcx
	pushq	%rcx
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L235
	movq	-168(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	$0, 1308+fm1_(%rip)
	leaq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmm2dp_
	movsd	-152(%rbp), %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-28(%rbp), %eax
	subl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L238
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	sqrtsd	%xmm1, %xmm1
	movsd	-152(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -24(%rbp)
.L238:
	movq	-176(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	movq	-176(%rbp), %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	movl	%eax, 1308+fm1_(%rip)
	leaq	-56(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	movl	-56(%rbp), %ebx
	movl	$1, -20(%rbp)
.L240:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L242
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-144(%rbp,%rax,4), %eax
	movl	%eax, fmuser_(%rip)
	movq	-176(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
	movq	-176(%rbp), %rdx
	movq	-176(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movq	-176(%rbp), %rdx
	movq	-176(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
	addl	$1, -20(%rbp)
	jmp	.L240
.L242:
	nop
	leaq	-48(%rbp), %r8
	leaq	-44(%rbp), %rdi
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L235:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fmsqrt_, .-fmsqrt_
	.globl	fmsp2m_
	.type	fmsp2m_, @function
fmsp2m_:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$38, (%rdx,%rax)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L244
	leaq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntrr_
.L244:
	movq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdm_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L245
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L245:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	fmsp2m_, .-fmsp2m_
	.section	.rodata
	.align 4
.LC19:
	.long	37
	.text
	.globl	fmsinh_
	.type	fmsinh_, @function
fmsinh_:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L247
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$0, 2628+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmexp_
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L257
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L252
	movl	2636+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 4(%rax)
	jmp	.L251
.L252:
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	cmpl	$0, -4(%rbp)
	jle	.L253
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsub_
	jmp	.L254
.L253:
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
.L254:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
	jmp	.L251
.L257:
	nop
.L251:
	cmpl	$0, -8(%rbp)
	jns	.L255
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 4(%rax)
.L255:
	movl	-12(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-20(%rbp), %r8
	leaq	-16(%rbp), %rdi
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fmsinh_, .-fmsinh_
	.section	.rodata
	.align 4
.LC20:
	.long	36
	.text
	.globl	fmsin_
	.type	fmsin_, @function
fmsin_:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-28(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-36(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L258
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmrdc_
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L261
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L262
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L263
	movl	fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L263:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	32+fmsave_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L262:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L264
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L265
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmsin2_
	jmp	.L264
.L265:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmcos2_
.L264:
	movl	-12(%rbp), %eax
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L261
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
.L261:
	leaq	-24(%rbp), %r8
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	fmsin_, .-fmsin_
	.globl	fmsign_
	.type	fmsign_, @function
fmsign_:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$35, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L268
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L268:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L269
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L270
.L269:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	js	.L271
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 4(%rdx)
	jmp	.L270
.L271:
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	negl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
.L270:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L272
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L272:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	fmsign_, .-fmsign_
	.section	.rodata
	.align 8
.LC23:
	.ascii	"(//' PRECISION OUT OF RANGE WHEN CALLING FMSET.',           "
	.ascii	"       '  NPREC =',I20/' THE NEAREST VALID NDIG WILL BE USED"
	.ascii	"',           ' INSTEAD:   NDIG =',I6//)"
	.text
	.globl	fmset_
	.type	fmset_, @function
fmset_:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -568(%rbp)
	movl	$6, 20+fmuser_(%rip)
	movl	$3, 2736+fm_(%rip)
.L276:
	movl	2736+fm_(%rip), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	2736+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L275
	movl	-8(%rbp), %eax
	movl	%eax, 2736+fm_(%rip)
	jmp	.L276
.L275:
	movsd	.LC21(%rip), %xmm0
	movsd	%xmm0, 2744+fm_(%rip)
	movss	.LC22(%rip), %xmm0
	movss	%xmm0, 2740+fm_(%rip)
	movl	$326, 2656+fm_(%rip)
	movl	2736+fm_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	sqrtsd	%xmm0, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, 2652+fm_(%rip)
	movl	2652+fm_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	cvttss2sil	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, 4+fmuser_(%rip)
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	cltd
	idivl	-20(%rbp)
	addl	$2, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %edx
	movl	fmuser_(%rip), %eax
	cmpl	$256, %eax
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L277
	movl	$256, %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$467, -544(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$159, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
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
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -4(%rbp)
.L277:
	movl	$0, 32+fmuser_(%rip)
	movl	$0, 24+fmuser_(%rip)
	movl	$1, 28+fmuser_(%rip)
	movl	$0, 2616+fm_(%rip)
	movl	$0, fmsave_(%rip)
	movl	$0, 4+fmsave_(%rip)
	movl	$0, 8+fmsave_(%rip)
	movl	$0, 12+fmsave_(%rip)
	movl	$0, 16+fmsave_(%rip)
	movl	$0, 20+fmsave_(%rip)
	movl	$0, 24+fmsave_(%rip)
	movl	$0, 28+fmsave_(%rip)
	movl	2652+fm_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -576(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	addsd	%xmm0, %xmm0
	movsd	-576(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, 2620+fm_(%rip)
	movl	2620+fm_(%rip), %eax
	leal	(%rax,%rax), %ecx
	movl	2620+fm_(%rip), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, 2624+fm_(%rip)
	movl	$0, 2628+fm_(%rip)
	movl	2624+fm_(%rip), %eax
	movl	$-1280, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 2632+fm_(%rip)
	movl	2632+fm_(%rip), %eax
	negl	%eax
	movl	%eax, 2636+fm_(%rip)
	movl	2636+fm_(%rip), %eax
	addl	$1280, %eax
	movl	%eax, 2640+fm_(%rip)
	movss	2740+fm_(%rip), %xmm1
	movss	.LC24(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC25(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, 2648+fm_(%rip)
	movl	2652+fm_(%rip), %edx
	movl	2652+fm_(%rip), %eax
	imull	%edx, %eax
	negl	%eax
	movl	%eax, 2644+fm_(%rip)
	movl	$1, 8+fmuser_(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, 12+fmuser_(%rip)
	movl	$1, 16+fmuser_(%rip)
	movl	$1, 36+fmuser_(%rip)
	movl	$1, 40+fmuser_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	fmset_, .-fmset_
	.section	.rodata
	.align 4
.LC26:
	.long	34
	.text
	.globl	fmpwr_
	.type	fmpwr_, @function
fmpwr_:
.LFB22:
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
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-20(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmmi_
	movl	-8(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	movl	%eax, -12(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-36(%rbp), %rcx
	pushq	%rcx
	leaq	-40(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	.L279
	movl	$0, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L282
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-40(%rbp), %edx
	movl	$2, -4(%rbp)
.L284:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L289
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L284
.L289:
	nop
	leaq	-28(%rbp), %r8
	leaq	-24(%rbp), %rdi
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	jmp	.L279
.L282:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	6540+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	cmpl	$0, -12(%rbp)
	jne	.L285
	movq	-72(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmipwr_
	jmp	.L286
.L285:
	movl	6544+fm1_(%rip), %eax
	testl	%eax, %eax
	jg	.L287
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L286
.L287:
	leaq	6540+fm1_(%rip), %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmln_
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	leaq	6540+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmmpy_
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmexp_
.L286:
	movl	-8(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-28(%rbp), %r8
	leaq	-24(%rbp), %rdi
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	fmpwr_, .-fmpwr_
	.section	.rodata
.LC27:
	.ascii	"(' INPUT TO FMPI')"
	.text
	.globl	fmpi_
	.type	fmpi_, @function
fmpi_:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -568(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$33, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %edx
	movl	2616+fm_(%rip), %ecx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L291
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$7198, -544(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$18, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L291:
	movl	2628+fm_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$1, 2628+fm_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jne	.L292
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L292
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-568(%rbp), %rax
	movl	%edx, (%rax)
	movq	-568(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-24(%rbp), %edx
	movl	$2, -4(%rbp)
.L294:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L299
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-568(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L294
.L299:
	nop
	jmp	.L295
.L292:
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setge	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L296
	leaq	-24(%rbp), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmsave_(%rip), %rdx
	movq	%rax, %rsi
	leaq	32+fmsave_(%rip), %rdi
	call	fmequ_
	jmp	.L295
.L296:
	movl	fmuser_(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	leaq	-24(%rbp), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	32+fmsave_(%rip), %rdi
	call	fmequ_
	movl	-20(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L295:
	movl	-24(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L297
	movq	-568(%rbp), %rdx
	movq	-568(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L297:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	fmpi_, .-fmpi_
	.section	.rodata
	.align 4
.LC30:
	.long	31
	.text
	.globl	fmnint_
	.type	fmnint_, @function
fmnint_:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-20(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L300
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-28(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 4(%rdx)
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdivi_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmint_
	cmpl	$0, -8(%rbp)
	jns	.L303
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 4(%rax)
.L303:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-16(%rbp), %r8
	leaq	-12(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	fmnint_, .-fmnint_
	.globl	fmmpyi_
	.type	fmmpyi_, @function
fmmpyi_:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$30, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L306
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
	movq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntri_
.L306:
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L307
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L308
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L308:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L307:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L310
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L311
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L311:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L310:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L312
	movl	-12(%rbp), %ecx
	movl	$1, -4(%rbp)
.L314:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L338
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L314
.L338:
	nop
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L315
	movl	$-5, 32+fmuser_(%rip)
.L315:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L316
	movl	$-6, 32+fmuser_(%rip)
.L316:
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L317
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L317:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L312:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L318
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	$-5, 32+fmuser_(%rip)
	movl	2636+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-16(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	cmpl	$0, -16(%rbp)
	setg	%al
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L319
	movq	-88(%rbp), %rax
	movl	$-1, 4(%rax)
.L319:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L320
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L320:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L318:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L321
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L322
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L322:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L321:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -20(%rbp)
	subl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	addl	$1, %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	movss	%xmm0, -92(%rbp)
	cvtsi2ssl	-20(%rbp), %xmm0
	call	logf@PLT
	addss	-92(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	movss	-92(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	2652+fm_(%rip), %eax
	imull	%eax, %eax
	movl	-48(%rbp), %ecx
	movl	fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	setg	%dl
	movzbl	%dl, %ecx
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	cmpl	%eax, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L323
	movq	-80(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmim_
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy2_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L324
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L324:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L305
.L323:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, fm_(%rip)
	movl	-48(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	fmuser_(%rip), %eax
	leal	1(%rax), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$5, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L325
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%edx, -4(%rbp)
.L327:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L339
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L327
.L339:
	nop
.L325:
	movl	$0, -8(%rbp)
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -4(%rbp)
.L329:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L340
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	4+fmuser_(%rip), %esi
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdi
	movl	-44(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	leaq	0(,%rdi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	4+fmuser_(%rip), %edi
	movl	-44(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L329
.L340:
	nop
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	cmpl	$1, -28(%rbp)
	jle	.L330
	movl	-28(%rbp), %ecx
	movl	$2, -4(%rbp)
.L332:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L341
	movl	4+fmuser_(%rip), %esi
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdi
	movl	-8(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %esi
	leaq	0(,%rdi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	4+fmuser_(%rip), %edi
	movl	-8(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L332
.L341:
	nop
.L330:
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	jne	.L333
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	leaq	-52(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
	jmp	.L334
.L333:
	leaq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
.L334:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	-16(%rbp), %edx
	shrl	$31, %edx
	andl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	shrl	$31, %eax
	movl	%eax, %ecx
	cmpl	$0, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L335
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
.L335:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L336
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L336:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fmmpyi_, .-fmmpyi_
	.section	.rodata
	.align 4
.LC31:
	.long	28
.LC32:
	.ascii	"GE"
	.text
	.globl	fmmod_
	.type	fmmod_, @function
fmmod_:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jne	.L342
	movl	$0, 2628+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L345
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L346
.L345:
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L347
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	fmuser_(%rip), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, fmuser_(%rip)
.L347:
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L348
	movl	$-9, 32+fmuser_(%rip)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L349
	movl	$-4, 32+fmuser_(%rip)
.L349:
	movl	-8(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, 2620+fm_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-32(%rbp), %edx
	movl	$2, -4(%rbp)
.L351:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L357
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L351
.L357:
	nop
	movl	-32(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L352
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L352:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L342
.L348:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	1312+fm1_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, 1312+fm1_(%rip)
	movl	2620+fm1_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, 2620+fm1_(%rip)
	leaq	fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
	leaq	fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmint_
	leaq	fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmmpy_
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
	movl	24+fmuser_(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, 24+fmuser_(%rip)
	movl	$2, %ecx
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L353
	movl	-12(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	leaq	fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmsub_
.L353:
	movl	-12(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	movl	4+fm1_(%rip), %eax
	testl	%eax, %eax
	jns	.L354
	leaq	fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmadd_
.L354:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	movl	%eax, %ecx
	movl	fm1_(%rip), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L346
	movl	4+fm1_(%rip), %eax
	negl	%eax
	movl	%eax, 4+fm1_(%rip)
.L346:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L355
	movl	$0, 32+fmuser_(%rip)
.L355:
	movl	-8(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-20(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmexit_
	nop
.L342:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	fmmod_, .-fmmod_
	.section	.rodata
.LC33:
	.ascii	"GT"
	.text
	.globl	fmmin_
	.type	fmmin_, @function
fmmin_:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$27, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L359
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L359:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L360
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L361
.L360:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %ecx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L362
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L361
.L362:
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
.L361:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L363
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L363:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	fmmin_, .-fmmin_
	.section	.rodata
.LC34:
	.ascii	"LT"
	.text
	.globl	fmmax_
	.type	fmmax_, @function
fmmax_:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$26, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L366
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L366:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L367
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L368
.L367:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$2, %ecx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L369
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L368
.L369:
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
.L368:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L370
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L370:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	fmmax_, .-fmmax_
	.section	.rodata
	.align 4
.LC35:
	.long	25
	.text
	.globl	fmm2sp_
	.type	fmm2sp_, @function
fmm2sp_:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$25, (%rdx,%rax)
	leaq	-4(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC35(%rip), %rdi
	call	fmargs_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L373
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L373:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L374
	movss	2648+fm_(%rip), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$-4, 32+fmuser_(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L375
	call	fmwarn_
.L375:
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L376
	leaq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntrr_
.L376:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L372
.L374:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmmd_
	movsd	-16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L378
	leaq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntrr_
.L378:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L372:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	fmm2sp_, .-fmm2sp_
	.globl	fmm2i_
	.type	fmm2i_, @function
fmm2i_:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$24, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L381
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L381:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmmi_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L382
	movq	-16(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntri_
.L382:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	fmm2i_, .-fmm2i_
	.section	.rodata
	.align 4
.LC36:
	.long	23
	.text
	.globl	fmm2dp_
	.type	fmm2dp_, @function
fmm2dp_:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$23, (%rdx,%rax)
	leaq	-4(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC36(%rip), %rdi
	call	fmargs_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L385
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L385:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L386
	movss	2648+fm_(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$-4, 32+fmuser_(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L387
	call	fmwarn_
.L387:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L388
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntrr_
.L388:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L384
.L386:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmmd_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L390
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntrr_
.L390:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L384:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	fmm2dp_, .-fmm2dp_
	.section	.rodata
	.align 4
.LC38:
	.long	126
	.align 4
.LC39:
	.long	225
	.align 4
.LC40:
	.long	2401
	.align 4
.LC41:
	.long	4375
	.text
	.globl	fmlni_
	.type	fmlni_, @function
fmlni_:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$22, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L393
	movq	-120(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntri_
.L393:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L394
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-128(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L395
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L395:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L392
.L394:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L397
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L398
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L398:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L392
.L397:
	movl	fmuser_(%rip), %eax
	movl	%eax, -108(%rbp)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jne	.L399
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-64(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L399
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-128(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-108(%rbp), %edx
	movl	$2, -8(%rbp)
.L401:
	cmpl	%edx, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L425
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-128(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -8(%rbp)
	jmp	.L401
.L425:
	nop
	movl	-108(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L402
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L402:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L392
.L399:
	movl	2628+fm_(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	$1, 2628+fm_(%rip)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	2736+fm_(%rip), %eax
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rcx
	shrq	$32, %rcx
	sarl	$5, %ecx
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L403
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
.L403:
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-76(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC37(%rip), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movl	$1, -40(%rbp)
	movl	-80(%rbp), %ecx
	movl	$1, -24(%rbp)
.L416:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L426
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	movzbl	%al, %esi
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	setl	%al
	movzbl	%al, %eax
	andl	%esi, %eax
	testl	%eax, %eax
	jne	.L427
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-80(%rbp), %esi
	movl	$1, -20(%rbp)
.L415:
	cmpl	%esi, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L428
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	movzbl	%al, %edi
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	setl	%al
	movzbl	%al, %eax
	andl	%edi, %eax
	testl	%eax, %eax
	jne	.L429
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-80(%rbp), %edi
	movl	$1, -16(%rbp)
.L414:
	cmpl	%edi, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L430
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	movzbl	%al, %r8d
	movl	-32(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	setl	%al
	movzbl	%al, %eax
	andl	%r8d, %eax
	testl	%eax, %eax
	jne	.L431
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-80(%rbp), %r8d
	movl	$1, -12(%rbp)
.L413:
	cmpl	%r8d, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L432
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	jl	.L411
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -60(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L433
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -60(%rbp)
	subl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L426
.L411:
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L432
	sall	-28(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L413
.L432:
	nop
	jmp	.L410
.L433:
	nop
.L410:
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L414
.L430:
	nop
	jmp	.L408
.L431:
	nop
.L408:
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L415
.L428:
	nop
	jmp	.L406
.L429:
	nop
.L406:
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, -40(%rbp)
	addl	$1, -24(%rbp)
	jmp	.L416
.L426:
	nop
	jmp	.L404
.L427:
	nop
.L404:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L417
	movl	-112(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L418
	movl	-112(%rbp), %eax
	imull	$100, %eax, %eax
	movl	%eax, -112(%rbp)
	addl	$2, -44(%rbp)
	addl	$2, -52(%rbp)
	jmp	.L417
.L418:
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	imulq	$1402438301, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-112(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L419
	movl	-112(%rbp), %eax
	imull	$98, %eax, %eax
	movl	%eax, -112(%rbp)
	addl	$1, -44(%rbp)
	addl	$2, -56(%rbp)
	jmp	.L417
.L419:
	movl	-112(%rbp), %eax
	imull	$70, %eax, %eax
	movl	%eax, -112(%rbp)
	addl	$1, -44(%rbp)
	addl	$1, -52(%rbp)
	addl	$1, -56(%rbp)
.L417:
	movl	-44(%rbp), %eax
	imull	$-72, %eax, %edx
	movl	-48(%rbp), %eax
	imull	$-114, %eax, %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	imull	$-167, %eax, %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	imull	$-202, %eax, %eax
	addl	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-44(%rbp), %eax
	imull	$-27, %eax, %edx
	movl	-48(%rbp), %eax
	imull	$-43, %eax, %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	sall	$6, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	imull	$-76, %eax, %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-48(%rbp), %eax
	imull	$30, %eax, %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	imull	$44, %eax, %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	imull	$53, %eax, %eax
	addl	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	sall	$5, %eax
	subl	%eax, %edx
	movl	-48(%rbp), %eax
	imull	$-49, %eax, %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	imull	$-72, %eax, %eax
	addl	%eax, %edx
	movl	-56(%rbp), %eax
	imull	$-87, %eax, %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	4+fmuser_(%rip), %edx
	movl	28+fmsave_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmuser_(%rip), %ecx
	movl	24+fmsave_(%rip), %eax
	cmpl	%eax, %ecx
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L420
	movl	fmuser_(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 28+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, 24+fmsave_(%rip)
	leaq	3956+fmsave_(%rip), %rdx
	leaq	.LC38(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmlni2_
	leaq	5264+fmsave_(%rip), %rdx
	leaq	.LC39(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmlni2_
	leaq	6572+fmsave_(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmlni2_
	leaq	7880+fmsave_(%rip), %rdx
	leaq	.LC41(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmlni2_
	movl	-84(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L420:
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	-112(%rbp), %eax
	cmpl	%eax, %edx
	je	.L421
	movl	-112(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmlni2_
.L421:
	leaq	-88(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3956+fmsave_(%rip), %rdi
	call	fmmpyi_
	leaq	-92(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5264+fmsave_(%rip), %rdi
	call	fmmpyi_
	leaq	1308+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmadd_
	leaq	-96(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	6572+fmsave_(%rip), %rdi
	call	fmmpyi_
	leaq	1308+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmadd_
	leaq	-100(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	7880+fmsave_(%rip), %rdi
	call	fmmpyi_
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	-112(%rbp), %eax
	cmpl	%eax, %edx
	je	.L422
	movq	-128(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmadd_
.L422:
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	leaq	fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmadd_
	leaq	-108(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	-108(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L423
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L423:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-72(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	nop
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	fmlni_, .-fmlni_
	.section	.rodata
	.align 4
.LC42:
	.long	21
	.text
	.globl	fmln_
	.type	fmln_, @function
fmln_:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	leaq	-80(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rdx
	movq	-200(%rbp), %rax
	leaq	-76(%rbp), %rcx
	pushq	%rcx
	leaq	-68(%rbp), %rcx
	pushq	%rcx
	leaq	-92(%rbp), %rcx
	pushq	%rcx
	leaq	-96(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jne	.L434
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-200(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, %edx
	movq	-200(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%edx, %esi
	andl	%eax, %esi
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-200(%rbp), %rax
	movl	4(%rax), %eax
	movl	4+fmuser_(%rip), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	je	.L437
	leaq	-96(%rbp), %rdx
	movq	-200(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	leaq	fm1_(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	fmi2m_
	leaq	2616+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	movl	fmuser_(%rip), %eax
	movl	%eax, -52(%rbp)
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmequ_
	leaq	5232+fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
	movq	-208(%rbp), %rax
	movq	%rax, %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmequ_
	movl	$2, -72(%rbp)
	jmp	.L438
.L463:
	nop
.L438:
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-208(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	-72(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-52(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	3924+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
	movl	$2, %edx
	movl	3924+fm1_(%rip), %ecx
	movl	fm1_(%rip), %eax
	subl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	leaq	-72(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-52(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	5232+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmadd_
	movl	$2, %edx
	movl	3924+fm1_(%rip), %ecx
	movl	fm1_(%rip), %eax
	subl	%eax, %ecx
	movl	-52(%rbp), %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L463
	movl	-52(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	5232+fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpy_
	movq	-208(%rbp), %rax
	movq	%rax, %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsub_
	jmp	.L439
.L437:
	movl	$0, -24(%rbp)
	movq	-200(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-200(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmm2i_
	movl	-36(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %ecx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L440
	movq	-208(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmlni_
	jmp	.L439
.L440:
	movl	fmuser_(%rip), %eax
	addl	$3, %eax
	movl	%eax, -40(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	$2, -20(%rbp)
.L443:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L464
	movl	-40(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	$1308, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	je	.L442
	movl	-40(%rbp), %eax
	subl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L441
.L442:
	addl	$1, -20(%rbp)
	jmp	.L443
.L464:
	nop
.L441:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, 5232+fm1_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmm2i_
	movl	-36(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %ecx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L444
	leaq	-56(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmlni_
	movl	-56(%rbp), %eax
	cmpl	$1, %eax
	jne	.L445
	movl	$1, -24(%rbp)
.L445:
	movl	$0, -64(%rbp)
	jmp	.L446
.L444:
	movl	$1, 5232+fm1_(%rip)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmm2dp_
	movsd	-184(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC43(%rip), %xmm1
	divsd	%xmm1, %xmm0
	call	log@PLT
	movsd	.LC44(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	.LC45(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L462
	movl	$-1, -64(%rbp)
	leaq	5232+fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpyi_
	movsd	-184(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	jmp	.L449
.L462:
	movl	-64(%rbp), %eax
	cmpl	$31, %eax
	jg	.L450
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	js	.L451
	movl	-64(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L453
.L451:
	movl	$0, %eax
	jmp	.L453
.L450:
	movl	$0, %eax
.L453:
	movl	%eax, -60(%rbp)
	leaq	-60(%rbp), %rax
	leaq	5232+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmdivi_
	movsd	-184(%rbp), %xmm0
	movl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
.L449:
	movq	-184(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	movq	%xmm0, %rax
	movq	%rax, -184(%rbp)
	leaq	-184(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	-88(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	movl	-88(%rbp), %ebx
	movl	$1, -20(%rbp)
.L454:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L465
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-176(%rbp,%rax,4), %eax
	movl	%eax, fmuser_(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmexp_
	movq	-208(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
	movq	-208(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
	movq	-208(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
	addl	$1, -20(%rbp)
	jmp	.L454
.L465:
	nop
.L446:
	movl	20+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	16+fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L455
	movl	fmuser_(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	2648+fmsave_(%rip), %rsi
	leaq	4+fmuser_(%rip), %rdi
	call	fmlni_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 20+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, 16+fmsave_(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L455:
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	cmpl	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L456
	movq	-208(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	leaq	2648+fmsave_(%rip), %rdi
	call	fmmpyi_
	movq	-208(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
	jmp	.L457
.L456:
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L458
	movq	-208(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	leaq	2648+fmsave_(%rip), %rdi
	call	fmmpyi_
	jmp	.L457
.L458:
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L459
	movq	-208(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmequ_
	jmp	.L457
.L459:
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L457
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
.L457:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.L439
	leaq	3924+fm1_(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	fmlni_
	leaq	-64(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmmpyi_
	movq	-208(%rbp), %rdx
	movq	-208(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
.L439:
	leaq	-76(%rbp), %r8
	leaq	-68(%rbp), %rdi
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L434:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	fmln_, .-fmln_
	.section	.rodata
	.align 4
.LC46:
	.long	20
	.align 4
.LC47:
	.long	10
	.text
	.globl	fmlg10_
	.type	fmlg10_, @function
fmlg10_:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-12(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-8(%rbp), %rcx
	pushq	%rcx
	leaq	-4(%rbp), %rcx
	pushq	%rcx
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L466
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmln_
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	call	fmlni_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv_
	leaq	-8(%rbp), %r8
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L466:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	fmlg10_, .-fmlg10_
	.globl	fmipwr_
	.type	fmipwr_, @function
fmipwr_:
.LFB35:
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
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$19, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L471
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
	movq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntri_
.L471:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L472
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	cmpl	$0, -32(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L473
	call	fmwarn_
.L473:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L474
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L474:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L472:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L476
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L477
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L477:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L476:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L478
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L479
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	jmp	.L480
.L479:
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
.L480:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L481
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L481:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	jmp	.L470
.L478:
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L482
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L483
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L483:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L482:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L484
	movl	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L485
	movl	$-1, -8(%rbp)
.L485:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L486
	movl	2636+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	_gfortran_pow_i4_i4@PLT
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$-5, 32+fmuser_(%rip)
	jmp	.L487
.L486:
	movl	2632+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	_gfortran_pow_i4_i4@PLT
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$-6, 32+fmuser_(%rip)
.L487:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L488
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L488:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L484:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L489
	movl	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L490
	movl	$-1, -8(%rbp)
.L490:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L491
	movl	2632+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	_gfortran_pow_i4_i4@PLT
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$-6, 32+fmuser_(%rip)
	jmp	.L492
.L491:
	movl	2636+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	_gfortran_pow_i4_i4@PLT
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$-5, 32+fmuser_(%rip)
.L492:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L493
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L493:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L489:
	movl	fmuser_(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jne	.L494
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -16(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-16(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	-76(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L494
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-36(%rbp), %edx
	movl	$2, -4(%rbp)
.L496:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L506
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L496
.L506:
	nop
	movl	-36(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L497
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L497:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L470
.L494:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -12(%rbp)
	subl	%eax, -12(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L498
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L501
.L498:
	movq	-72(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmequ_
.L501:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	leaq	fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmmpy_
	movl	-12(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L500
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmmpy_
.L500:
	cmpl	$1, -12(%rbp)
	jg	.L501
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L502
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
.L502:
	movl	-24(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-36(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	-36(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jns	.L503
	call	fmwarn_
.L503:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L504
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L504:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L470:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	fmipwr_, .-fmipwr_
	.section	.rodata
	.align 4
.LC48:
	.long	18
	.text
	.globl	fmint_
	.type	fmint_, @function
fmint_:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$18, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L508
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L508:
	movl	2628+fm_(%rip), %eax
	cmpl	$1, %eax
	je	.L509
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rsi
	leaq	.LC48(%rip), %rdi
	call	fmargs_
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L509
	leaq	-20(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fmrslt_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L510
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L510:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L507
.L509:
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L512
	movl	-8(%rbp), %edx
	movl	$1, -4(%rbp)
.L514:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L524
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L514
.L524:
	nop
	jmp	.L515
.L512:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L516
	movl	-8(%rbp), %ecx
	movl	$1, -4(%rbp)
.L518:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L525
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L518
.L525:
	nop
	jmp	.L515
.L516:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	$1, -4(%rbp)
.L520:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L526
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L520
.L526:
	nop
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, -4(%rbp)
.L521:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L527
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L521
.L527:
	nop
.L515:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L522
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L522:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L507:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	fmint_, .-fmint_
	.section	.rodata
.LC49:
	.ascii	"(' INPUT TO FMINP'/(14X,65A1))"
	.text
	.globl	fminp_
	.type	fminp_, @function
fminp_:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$728, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	%rcx, -720(%rbp)
	movq	%r8, -728(%rbp)
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$17, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %edx
	movl	2616+fm_(%rip), %ecx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L529
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$4028, -672(%rbp)
	leaq	.LC49(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$30, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-712(%rbp), %rax
	movl	(%rax), %eax
	movq	-720(%rbp), %rdx
	movl	(%rdx), %ebx
	movl	%eax, -64(%rbp)
.L531:
	movl	-688(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L609
	cmpl	%ebx, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L609
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-696(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-688(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	addl	$1, -64(%rbp)
	jmp	.L531
.L609:
	nop
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L529:
	movl	fmuser_(%rip), %eax
	movl	%eax, -160(%rbp)
	movl	2628+fm_(%rip), %eax
	movl	%eax, -84(%rbp)
	movl	$1, 2628+fm_(%rip)
	movl	40+fmuser_(%rip), %eax
	movl	%eax, -88(%rbp)
	movl	$1, 40+fmuser_(%rip)
	movl	$0, 32+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	$0, 24+fmuser_(%rip)
	movl	$1, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	$1, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-712(%rbp), %rax
	movl	(%rax), %edx
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -20(%rbp)
.L538:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L610
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-696(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movzbl	kminus.8093(%rip), %edx
	cmpb	%dl, %cl
	jne	.L533
	movl	$-1, -40(%rbp)
.L533:
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-696(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	leaq	kovfl.8097(%rip), %rdx
	movzbl	(%rsi,%rdx), %edx
	cmpb	%dl, %cl
	jne	.L534
	addl	$1, -44(%rbp)
	cmpl	$5, -44(%rbp)
	jne	.L534
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2636+fm_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-704(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L535
.L534:
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-696(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	leaq	kunfl.8111(%rip), %rdx
	movzbl	(%rsi,%rdx), %edx
	cmpb	%dl, %cl
	jne	.L536
	addl	$1, -56(%rbp)
	cmpl	$5, -56(%rbp)
	jne	.L536
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2632+fm_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-704(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L535
.L536:
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-696(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	leaq	kunkn.8113(%rip), %rdx
	movzbl	(%rsi,%rdx), %edx
	cmpb	%dl, %cl
	jne	.L537
	addl	$1, -60(%rbp)
	cmpl	$5, -60(%rbp)
	jne	.L537
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-704(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L535
.L537:
	addl	$1, -20(%rbp)
	jmp	.L538
.L610:
	nop
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jne	.L539
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	-96(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L539
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-704(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-160(%rbp), %edx
	movl	$2, -20(%rbp)
.L541:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L611
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-704(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L541
.L611:
	nop
	jmp	.L535
.L539:
	movl	fmuser_(%rip), %eax
	movl	%eax, -100(%rbp)
	movq	-712(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -132(%rbp)
	movq	-720(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -136(%rbp)
	movl	$1, -24(%rbp)
	movl	$1, -48(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	$1, -20(%rbp)
.L543:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L612
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	$327, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	$654, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	$981, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	$1308, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -20(%rbp)
	jmp	.L543
.L612:
	nop
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	log10f@PLT
	movss	.LC8(%rip), %xmm1
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %eax
	jne	.L544
	leaq	-136(%rbp), %rcx
	leaq	-132(%rbp), %rdx
	movq	-696(%rbp), %rsi
	movq	-704(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	$1
	leaq	-128(%rbp), %rdi
	pushq	%rdi
	leaq	kblank.8088(%rip), %r9
	leaq	jtrans.8084(%rip), %r8
	movq	%rax, %rdi
	call	fminp2_
	addq	$32, %rsp
	jmp	.L545
.L544:
	movl	$0, -68(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -116(%rbp)
	movl	$1, -144(%rbp)
	movl	$1, -148(%rbp)
	movl	$1, -140(%rbp)
	movl	$0, -32(%rbp)
	movl	2652+fm_(%rip), %edx
	movl	2652+fm_(%rip), %eax
	imull	%edx, %eax
	subl	$10, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -36(%rbp)
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ebx
	movl	%eax, -20(%rbp)
.L579:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L613
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-696(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	movzbl	kblank.8088(%rip), %eax
	cmpb	%al, %dl
	je	.L547
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-696(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-156(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	call	fminpt_
	movl	-152(%rbp), %eax
	cmpl	$4, %eax
	jg	.L614
	movl	-152(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$9, %rax
	leaq	0(,%rax,4), %rdx
	leaq	jtrans.8084(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24(%rbp)
	cmpl	$9, -24(%rbp)
	ja	.L549
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L551(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L551(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L551:
	.long	.L549-.L551
	.long	.L615-.L551
	.long	.L549-.L551
	.long	.L557-.L551
	.long	.L616-.L551
	.long	.L555-.L551
	.long	.L554-.L551
	.long	.L553-.L551
	.long	.L552-.L551
	.long	.L615-.L551
	.text
.L559:
.L558:
.L557:
	movl	$1, -36(%rbp)
	movl	-120(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movl	-144(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L560
	jmp	.L547
.L556:
.L555:
	movl	$1, -36(%rbp)
	addl	$1, -68(%rbp)
	movl	-124(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%rbp)
	movl	-148(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L562
	jmp	.L547
.L554:
	cmpl	$0, -36(%rbp)
	je	.L564
	jmp	.L547
.L553:
	movl	-156(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L547
.L552:
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -116(%rbp)
	movl	-140(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L566
	jmp	.L547
.L550:
.L549:
	movl	-156(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L547
.L560:
	movl	-144(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	2620+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L567
	movq	-704(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-144(%rbp), %eax
	movl	%eax, -32(%rbp)
.L567:
	movl	2620+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L568
	leaq	-120(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L569
.L568:
	movl	2616+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-120(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	2616+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	.L570
	leaq	2616+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
.L570:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L569:
	movl	$0, -120(%rbp)
	movl	$1, -144(%rbp)
	jmp	.L547
.L562:
	movl	-148(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L571
	movq	-704(%rbp), %rdx
	leaq	-148(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-148(%rbp), %eax
	movl	%eax, -32(%rbp)
.L571:
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L572
	leaq	-124(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L573
.L572:
	movl	3924+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-124(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	3924+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	je	.L574
	leaq	3924+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
.L574:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L573:
	movl	$0, -124(%rbp)
	movl	$1, -148(%rbp)
	jmp	.L547
.L564:
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L547
.L566:
	movl	-140(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L575
	movq	-704(%rbp), %rdx
	leaq	-140(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-140(%rbp), %eax
	movl	%eax, -32(%rbp)
.L575:
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L576
	leaq	-116(%rbp), %rax
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L577
.L576:
	movl	5232+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	5232+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-116(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	5232+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	je	.L578
	leaq	5232+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmadd_
.L578:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L577:
	movl	$0, -116(%rbp)
	movl	$1, -140(%rbp)
	jmp	.L547
.L616:
	nop
.L547:
	addl	$1, -20(%rbp)
	jmp	.L579
.L613:
	nop
	movl	-144(%rbp), %eax
	cmpl	$1, %eax
	jle	.L580
	movl	-144(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	2620+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L581
	movq	-704(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-144(%rbp), %eax
	movl	%eax, -32(%rbp)
.L581:
	movl	2620+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L582
	leaq	-120(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L580
.L582:
	movl	2616+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-120(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	2616+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	.L583
	leaq	2616+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
.L583:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L580:
	movl	-148(%rbp), %eax
	cmpl	$1, %eax
	jle	.L584
	movl	-148(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L585
	movq	-704(%rbp), %rdx
	leaq	-148(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-148(%rbp), %eax
	movl	%eax, -32(%rbp)
.L585:
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L586
	leaq	-124(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L584
.L586:
	movl	3924+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-124(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	3924+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	je	.L587
	leaq	3924+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
.L587:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L584:
	movl	-140(%rbp), %eax
	cmpl	$1, %eax
	jle	.L588
	movl	-140(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L589
	movq	-704(%rbp), %rdx
	leaq	-140(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	-140(%rbp), %eax
	movl	%eax, -32(%rbp)
.L589:
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L590
	leaq	-116(%rbp), %rax
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	jmp	.L588
.L590:
	movl	5232+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	5232+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-116(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	5232+fm1_(%rip), %eax
	movl	1308+fm1_(%rip), %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	je	.L591
	leaq	5232+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmadd_
.L591:
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L588:
	cmpl	$-1, -52(%rbp)
	jne	.L592
	movl	5236+fm1_(%rip), %eax
	negl	%eax
	movl	%eax, 5236+fm1_(%rip)
.L592:
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	je	.L593
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	call	fmi2m_
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L594
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L597
.L594:
	movq	-704(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmequ_
.L597:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movl	1308+fm1_(%rip), %eax
	addl	%eax, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	1308+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-28(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L596
	movl	1308+fm1_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rdx
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
.L596:
	cmpl	$1, -28(%rbp)
	jg	.L597
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-704(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmdiv_
.L593:
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	je	.L598
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	call	fmi2m_
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -112(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-116(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmm2i_
	movl	-112(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L614
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -28(%rbp)
	subl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L599
	leaq	5232+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L602
.L599:
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmequ_
.L602:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movl	1308+fm1_(%rip), %eax
	addl	%eax, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	1308+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-28(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L601
	movl	1308+fm1_(%rip), %edx
	movl	5232+fm1_(%rip), %eax
	addl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	cmovle	-100(%rbp), %eax
	movl	$2, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	5232+fm1_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
.L601:
	cmpl	$1, -28(%rbp)
	jg	.L602
	movl	-100(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	jns	.L598
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	5232+fm1_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
.L598:
	movq	-704(%rbp), %rax
	movq	%rax, %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	movl	5236+fm1_(%rip), %eax
	testl	%eax, %eax
	je	.L603
	movq	-704(%rbp), %rdx
	movq	-704(%rbp), %rax
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
.L603:
	cmpl	$-1, -48(%rbp)
	jne	.L545
	movq	-704(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-704(%rbp), %rax
	movl	%edx, 4(%rax)
.L545:
	leaq	-160(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	-704(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	-704(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L614
.L535:
	movl	-160(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-84(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, 24+fmuser_(%rip)
	movl	-88(%rbp), %eax
	movl	%eax, 40+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L604
	movl	$0, 32+fmuser_(%rip)
.L604:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L605
	movq	-704(%rbp), %rdx
	movq	-704(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L605:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L608
.L614:
	nop
	jmp	.L548
.L615:
	nop
.L548:
	movq	-704(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-704(%rbp), %rax
	movl	%edx, (%rax)
	movq	-704(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-7, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L535
.L608:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	fminp_, .-fminp_
	.section	.rodata
	.align 4
.LC50:
	.long	15
	.text
	.globl	fmexp_
	.type	fmexp_, @function
fmexp_:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-52(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	leaq	-44(%rbp), %rcx
	pushq	%rcx
	leaq	-60(%rbp), %rcx
	pushq	%rcx
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L617
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movl	2620+fm_(%rip), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	.LC24(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	logf@PLT
	movss	%xmm0, -84(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	call	logf@PLT
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-16(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-16(%rbp), %eax
	subl	%edx, %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	movss	%xmm0, -84(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	movss	-84(%rbp), %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm2, -84(%rbp)
	cvtsi2ssl	-12(%rbp), %xmm4
	movss	%xmm4, -88(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	call	logf@PLT
	mulss	-88(%rbp), %xmm0
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L626:
	movss	-8(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jb	.L641
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	cmpl	$0, -16(%rbp)
	jle	.L622
	movl	$-5, 32+fmuser_(%rip)
	movl	2636+fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L623
.L622:
	movl	$-6, 32+fmuser_(%rip)
	movl	2632+fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
.L623:
	movl	-64(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-60(%rbp), %eax
	movl	%eax, 2620+fm_(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, 2628+fm_(%rip)
	call	fmwarn_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L624
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L624:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L617
.L641:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-80(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmint_
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsub_
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmm2i_
	movl	-24(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L625
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L626
.L625:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jle	.L627
	movl	-56(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	%xmm0, -84(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	-84(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	setg	%al
	movzbl	%al, %edx
	movl	fmuser_(%rip), %ecx
	movl	-36(%rbp), %eax
	addl	%eax, %ecx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L628
	movl	-36(%rbp), %edx
	movl	$1, -4(%rbp)
.L630:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L642
	movl	fmuser_(%rip), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L630
.L642:
	nop
.L628:
	movl	fmuser_(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L631
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-64(%rbp), %edx
	movl	$2, -4(%rbp)
.L633:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L643
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L633
.L643:
	nop
	leaq	-48(%rbp), %r8
	leaq	-44(%rbp), %rdi
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	jmp	.L617
.L631:
	movl	12+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmuser_(%rip), %ecx
	movl	8+fmsave_(%rip), %eax
	cmpl	%eax, %ecx
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L627
	movl	fmuser_(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	1340+fmsave_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	1340+fmsave_(%rip), %rsi
	leaq	1340+fmsave_(%rip), %rdi
	call	fmexp2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 12+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, 8+fmsave_(%rip)
	movl	-40(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L627:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L634
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmexp2_
	leaq	-56(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1340+fmsave_(%rip), %rdi
	call	fmipwr_
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	jmp	.L635
.L634:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L636
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmexp2_
	jmp	.L635
.L636:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L637
	movq	-80(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	1340+fmsave_(%rip), %rdi
	call	fmipwr_
	jmp	.L635
.L637:
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
.L635:
	cmpl	$0, -16(%rbp)
	jns	.L638
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
.L638:
	movl	-24(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-48(%rbp), %r8
	leaq	-44(%rbp), %rdi
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L617:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	fmexp_, .-fmexp_
	.globl	fmequ_
	.type	fmequ_, @function
fmequ_:
.LFB39:
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
	movq	%rcx, -80(%rbp)
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L645
	movl	$1, -12(%rbp)
.L645:
	movl	-8(%rbp), %eax
	movl	2652+fm_(%rip), %ecx
	movl	2620+fm_(%rip), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, 32+fmuser_(%rip)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2636+fm_(%rip), %edx
	cmpl	%edx, %eax
	jl	.L646
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -4(%rbp)
.L648:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L681
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L648
.L681:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L649
.L646:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L682
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L683
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L652
	movl	-20(%rbp), %ecx
	movl	$1, -4(%rbp)
.L654:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L684
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L654
.L684:
	nop
.L652:
	cmpl	$0, -16(%rbp)
	setle	%al
	movzbl	%al, %edx
	movl	40+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L685
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L685
	movl	4+fmuser_(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L655
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L685
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L656
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jg	.L657
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -4(%rbp)
.L659:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L686
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	jg	.L656
	addl	$1, -4(%rbp)
	jmp	.L659
.L686:
	nop
.L657:
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L685
	jmp	.L656
.L655:
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	addl	%eax, %eax
	leal	1(%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L656
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jg	.L656
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -4(%rbp)
.L661:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L687
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	addl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jl	.L685
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	leal	(%rdx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jg	.L656
	addl	$1, -4(%rbp)
	jmp	.L661
.L687:
	nop
	jmp	.L649
.L656:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax,%rdx,4)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rdx,4)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$2, -32(%rbp)
	jle	.L662
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %ecx
	movl	$3, -4(%rbp)
.L665:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L688
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L689
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %esi
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edi
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	addl	%edi, %esi
	movq	-64(%rbp), %rax
	movl	%esi, (%rax,%rdx,4)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edi
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	cltd
	idivl	%edi
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L665
.L688:
	nop
.L662:
	movq	-64(%rbp), %rax
	movl	4(%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L689
	cmpl	$3, -32(%rbp)
	jle	.L666
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %ecx
	movl	$4, -4(%rbp)
.L668:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L690
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L668
.L690:
	nop
.L666:
	cmpl	$2, -32(%rbp)
	jle	.L669
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	4+fmuser_(%rip), %ecx
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
.L669:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L664
.L689:
	nop
.L664:
	cmpl	$0, -28(%rbp)
	jns	.L691
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L691
.L682:
	nop
	cmpl	$0, -12(%rbp)
	jne	.L692
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	$1, -4(%rbp)
.L673:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L693
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L673
.L693:
	nop
	jmp	.L692
.L683:
	nop
	cmpl	$0, -12(%rbp)
	jne	.L674
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	$1, -4(%rbp)
.L676:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L694
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L676
.L694:
	nop
.L674:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%eax, -4(%rbp)
.L677:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L685
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L677
.L685:
	nop
	jmp	.L649
.L691:
	nop
	jmp	.L649
.L692:
	nop
.L649:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2620+fm_(%rip), %edx
	cmpl	%edx, %eax
	jle	.L695
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L679
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	fmtrap_
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
.L679:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L695
	movl	$-4, 32+fmuser_(%rip)
	nop
.L695:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	fmequ_, .-fmequ_
	.globl	fmdivi_
	.type	fmdivi_, @function
fmdivi_:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L697
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
	movq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntri_
.L697:
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L698
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, -52(%rbp)
	je	.L699
	call	fmwarn_
.L699:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L700
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L700:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L698:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L702
	movl	-24(%rbp), %ecx
	movl	$1, -4(%rbp)
.L704:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L733
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L704
.L733:
	nop
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L705
	movl	$-5, 32+fmuser_(%rip)
.L705:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L706
	movl	$-6, 32+fmuser_(%rip)
.L706:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L707
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L707:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L702:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L708
	movl	-24(%rbp), %edx
	movl	$1, -4(%rbp)
.L710:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L734
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L710
.L734:
	nop
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L711
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L711:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L708:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L712
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2632+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-32(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	cmpl	$0, -32(%rbp)
	setg	%al
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L713
	movq	-88(%rbp), %rax
	movl	$-1, 4(%rax)
.L713:
	movl	$-6, 32+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L714
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L714:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L712:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L715
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L716
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L716:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L715:
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jle	.L717
	movl	$1, -56(%rbp)
	jmp	.L718
.L717:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -56(%rbp)
.L718:
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2652+fm_(%rip), %edx
	cmpl	%edx, %eax
	jle	.L719
	movq	-80(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmim_
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv2_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L720
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L720:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L696
.L719:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -36(%rbp)
	subl	%eax, -36(%rbp)
	movl	$0, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	$2, -4(%rbp)
.L723:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L735
	movl	-4(%rbp), %edx
	movl	%edx, -8(%rbp)
	movl	4+fmuser_(%rip), %edx
	movl	%edx, %ecx
	imull	-16(%rbp), %ecx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rsi,4), %edx
	addl	%ecx, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	cmpl	-36(%rbp), %edx
	jge	.L722
	addl	$1, -4(%rbp)
	jmp	.L723
.L735:
	nop
	addl	$1, -8(%rbp)
	movl	4+fmuser_(%rip), %eax
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L735
.L722:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	addl	$2, %eax
	subl	-8(%rbp), %eax
	movl	%eax, fm_(%rip)
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, 4+fm_(%rip)
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%edx, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L724
	movl	$3, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	%eax, -4(%rbp)
.L726:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L736
	movl	4+fmuser_(%rip), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rsi,4), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, %edi
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%edi, (%rdx,%rax)
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%edx, -20(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L726
.L736:
	nop
	movl	-44(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
.L724:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.L727
	movl	-40(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -4(%rbp)
.L729:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L737
	movl	4+fmuser_(%rip), %eax
	movl	-20(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, %edi
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%edi, (%rdx,%rax)
	movl	-16(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%edx, -20(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L729
.L737:
	nop
.L727:
	movq	-72(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
	leaq	-56(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	movl	-32(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	cmpl	$0, -32(%rbp)
	setg	%al
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L730
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
.L730:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L731
	movq	-88(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L731:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
.L696:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	fmdivi_, .-fmdivi_
	.section	.rodata
	.align 4
.LC51:
	.long	11
	.text
	.globl	fmdim_
	.type	fmdim_, @function
fmdim_:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	leaq	-8(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L738
	movl	$0, 2628+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, 2620+fm_(%rip)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	$2, %ecx
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC34(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L741
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
	jmp	.L742
.L741:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmsub_
.L742:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L743
	movl	$0, 32+fmuser_(%rip)
.L743:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-12(%rbp), %r8
	leaq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L738:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	fmdim_, .-fmdim_
	.globl	fmcosh_
	.type	fmcosh_, @function
fmcosh_:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	leaq	-8(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L745
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movl	$0, 2628+fm_(%rip)
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmexp_
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L752
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L750
	movl	2636+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L749
.L750:
	leaq	fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
	jmp	.L749
.L752:
	nop
.L749:
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-12(%rbp), %r8
	leaq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L745:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	fmcosh_, .-fmcosh_
	.section	.rodata
	.align 4
.LC52:
	.long	9
	.text
	.globl	fmcos_
	.type	fmcos_, @function
fmcos_:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-28(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	leaq	-36(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC52(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L753
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmrdc_
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L756
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L757
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L758
	movl	fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L758:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	32+fmsave_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L757:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L759
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L760
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmcos2_
	jmp	.L759
.L760:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmsin2_
.L759:
	movl	-8(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L756
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
.L756:
	leaq	-24(%rbp), %r8
	leaq	-20(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L753:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	fmcos_, .-fmcos_
	.section	.rodata
.LC53:
	.ascii	"(' INPUT TO FMCOMP')"
.LC54:
	.ascii	"(7X,'.',A2,'.')"
.LC55:
	.ascii	"EQ"
.LC56:
	.ascii	"NE"
.LC57:
	.ascii	"LE"
	.align 8
.LC58:
	.ascii	"(/' ERROR OF TYPE KFLAG = -4 IN FM PACKAGE IN ROUTINE',     "
	.ascii	"       ' FMCOMP'//1X,A,' IS NOT ONE OF THE SIX RECOGNIZED', "
	.ascii	"             ' COMPARISONS.'//' .FALSE. HAS BEEN RETURNED.'/"
	.ascii	")"
	.align 8
.LC59:
	.ascii	"(/' ERROR OF TYPE KFLAG = -4 IN FM PACKAGE IN ROUTINE',     "
	.ascii	"       ' FMCOMP'//' TWO NUMBERS IN THE SAME OVERFLOW OR',   "
	.ascii	"             ' UNDERLOW CATEGORY CANNOT BE COMPARED.'//     "
	.ascii	"                   ' .FALSE. HAS BEEN RETURNED.'/)"
	.align 8
.LC60:
	.ascii	"(' FMCOMP',15X,'CALL LEVEL =',I2,5X,'JBASE =',              "
	.ascii	"       I10,5X,'NDIG =',I6)"
	.align 8
.LC61:
	.ascii	"(' FMCOMP',6X,'CALL LEVEL =',I2,4X,'JBASE =',               "
	.ascii	"       I10,4X,'NDIG =',I6,4X,'KFLAG =',I3)"
.LC62:
	.ascii	"(7X,'.TRUE.')"
.LC63:
	.ascii	"(7X,'.FALSE.')"
	.text
	.globl	fmcomp_
	.type	fmcomp_, @function
fmcomp_:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$576, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$8, (%rdx,%rax)
	movl	2616+fm_(%rip), %edx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %ecx
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L763
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$1970, -544(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$20, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	jle	.L764
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	fmprnt_
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$1975, -544(%rbp)
	leaq	.LC54(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-576(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	call	fmprnt_
	jmp	.L763
.L764:
	movq	-568(%rbp), %rax
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	fmntrj_
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$1980, -544(%rbp)
	leaq	.LC54(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-576(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-584(%rbp), %rax
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	fmntrj_
.L763:
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%ebx, %eax
	testl	%eax, %eax
	je	.L765
	movl	$-4, 32+fmuser_(%rip)
	movl	$0, -32(%rbp)
	movl	36+fmuser_(%rip), %eax
	testl	%eax, %eax
	jle	.L766
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$1996, -544(%rbp)
	leaq	.LC58(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$181, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-576(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L766
.L765:
	movq	-568(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-584(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L767
	movl	$-4, 32+fmuser_(%rip)
	movl	$0, -32(%rbp)
	jmp	.L766
.L767:
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2636+fm_(%rip), %edx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %ecx
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-568(%rbp), %rax
	movl	4(%rax), %edx
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L768
	movl	$-4, 32+fmuser_(%rip)
	movl	$0, -32(%rbp)
	movl	36+fmuser_(%rip), %eax
	testl	%eax, %eax
	jle	.L766
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$2014, -544(%rbp)
	leaq	.LC59(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$230, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L766
.L768:
	movl	$0, 32+fmuser_(%rip)
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L769
	movl	$2, -24(%rbp)
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L770
	movl	$1, -24(%rbp)
.L770:
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jle	.L792
	movl	$3, -24(%rbp)
	jmp	.L792
.L769:
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L773
	movl	$1, -24(%rbp)
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L793
	movl	$3, -24(%rbp)
	jmp	.L793
.L773:
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L775
	movl	$1, -24(%rbp)
	jmp	.L772
.L775:
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L776
	movl	$3, -24(%rbp)
	jmp	.L772
.L776:
	movq	-568(%rbp), %rax
	movl	(%rax), %edx
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L777
	movl	$1, -24(%rbp)
	jmp	.L772
.L777:
	movq	-584(%rbp), %rax
	movl	(%rax), %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L778
	movl	$3, -24(%rbp)
	jmp	.L772
.L778:
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	movl	$2, -20(%rbp)
.L782:
	cmpl	%esi, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L794
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-568(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-584(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L780
	movl	$1, -24(%rbp)
	jmp	.L772
.L780:
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-584(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-568(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L781
	movl	$3, -24(%rbp)
	jmp	.L772
.L781:
	addl	$1, -20(%rbp)
	jmp	.L782
.L794:
	nop
	movl	$2, -24(%rbp)
	jmp	.L772
.L792:
	nop
	jmp	.L772
.L793:
	nop
.L772:
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L783
	movl	$3, -24(%rbp)
	jmp	.L784
.L783:
	cmpl	$3, -24(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-584(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L784
	movl	$1, -24(%rbp)
.L784:
	movl	$0, -32(%rbp)
	cmpl	$1, -24(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%r12d, %eax
	andl	%ebx, %eax
	testl	%eax, %eax
	je	.L785
	movl	$1, -32(%rbp)
.L785:
	cmpl	$2, -24(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%r12d, %eax
	andl	%ebx, %eax
	testl	%eax, %eax
	je	.L786
	movl	$1, -32(%rbp)
.L786:
	cmpl	$3, -24(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %r12d
	movq	-576(%rbp), %rax
	movl	$2, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%r12d, %eax
	andl	%ebx, %eax
	testl	%eax, %eax
	je	.L766
	movl	$1, -32(%rbp)
.L766:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L787
	movl	2616+fm_(%rip), %edx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %ecx
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L787
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L788
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$2093, -544(%rbp)
	leaq	.LC60(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$86, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L789
.L788:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$2097, -544(%rbp)
	leaq	.LC61(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$102, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	leaq	32+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L789:
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L790
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$2102, -544(%rbp)
	leaq	.LC62(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$13, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L787
.L790:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$2105, -544(%rbp)
	leaq	.LC63(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$14, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L787:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	-32(%rbp), %eax
	addq	$576, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	fmcomp_, .-fmcomp_
	.globl	fmbig_
	.type	fmbig_, @function
fmbig_:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$7, (%rdx,%rax)
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	$2, -4(%rbp)
.L797:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L800
	movl	4+fmuser_(%rip), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leal	-1(%rax), %esi
	movq	-24(%rbp), %rax
	movl	%esi, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L797
.L800:
	nop
	movl	2620+fm_(%rip), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L798
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L798:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	fmbig_, .-fmbig_
	.section	.rodata
	.align 4
.LC64:
	.long	6
	.align 4
.LC65:
	.long	90
	.align 4
.LC66:
	.long	-90
	.align 4
.LC67:
	.long	-2
	.text
	.globl	fmatn2_
	.type	fmatn2_, @function
fmatn2_:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-20(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	leaq	-28(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L801
	movl	$0, 2628+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	leaq	-28(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L804
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L805
.L804:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L806
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L807
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	call	fmi2m_
	jmp	.L805
.L807:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
	jmp	.L805
.L806:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L809
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L810
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC66(%rip), %rdi
	call	fmi2m_
	jmp	.L805
.L810:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
	jmp	.L805
.L809:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %esi
	movl	fmuser_(%rip), %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L812
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L813
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	call	fmi2m_
	jmp	.L814
.L813:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L814:
	movl	4+fm1_(%rip), %eax
	testl	%eax, %eax
	jns	.L840
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L840
.L812:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-24(%rbp), %ecx
	movl	fmuser_(%rip), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	$2, %eax
	cmpl	%eax, %esi
	setl	%al
	movzbl	%al, %eax
	andl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L816
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L817
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
	jmp	.L818
.L817:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
.L818:
	movl	4+fm1_(%rip), %eax
	testl	%eax, %eax
	jns	.L841
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L841
.L816:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %esi
	movl	fmuser_(%rip), %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	andl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L820
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L821
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
	jmp	.L822
.L821:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
.L822:
	movl	4+fm1_(%rip), %eax
	testl	%eax, %eax
	jns	.L842
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L842
.L820:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L824
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L825
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L826
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
	jmp	.L805
.L826:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	jmp	.L805
.L825:
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
	jmp	.L805
.L824:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-24(%rbp), %ecx
	movl	fmuser_(%rip), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	$2, %eax
	cmpl	%eax, %esi
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L828
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L829
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	call	fmi2m_
	jmp	.L830
.L829:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L830:
	movl	4+fm1_(%rip), %eax
	testl	%eax, %eax
	jns	.L843
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L843
.L828:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L832
	movl	$1, -4(%rbp)
.L832:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L833
	movl	$2, -4(%rbp)
.L833:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L834
	movl	$3, -4(%rbp)
.L834:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L835
	movl	$4, -4(%rbp)
.L835:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmdiv_
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmatan_
	cmpl	$2, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$3, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L836
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L837
	leaq	5232+fm1_(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
	jmp	.L836
.L837:
	leaq	5232+fm1_(%rip), %rdi
	call	fmpi_
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
.L836:
	cmpl	$3, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$4, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L805
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L805
.L840:
	nop
	jmp	.L805
.L841:
	nop
	jmp	.L805
.L842:
	nop
	jmp	.L805
.L843:
	nop
.L805:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L838
	movl	$0, 32+fmuser_(%rip)
.L838:
	movl	-8(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-16(%rbp), %r8
	leaq	-12(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L801:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	fmatn2_, .-fmatn2_
	.section	.rodata
	.align 4
.LC68:
	.long	5
	.text
	.globl	fmatan_
	.type	fmatan_, @function
fmatan_:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-72(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-184(%rbp), %rax
	leaq	-68(%rbp), %rcx
	pushq	%rcx
	leaq	-64(%rbp), %rcx
	pushq	%rcx
	leaq	-80(%rbp), %rcx
	pushq	%rcx
	leaq	-84(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC68(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	jne	.L844
	leaq	-84(%rbp), %rdx
	movq	-184(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	5236+fm1_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, 5236+fm1_(%rip)
	cmpl	$0, -20(%rbp)
	jle	.L847
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-192(%rbp), %rax
	leaq	5232+fm1_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv_
.L847:
	movl	16+fmuser_(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	$1, 16+fmuser_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	5232+fm1_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -168(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	2652+fm_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	setg	%al
	movzbl	%al, %edx
	cmpl	$0, -28(%rbp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L848
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L848
	movl	fmuser_(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L848:
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	movsd	-168(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	movsd	.LC69(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	.LC70(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	comisd	-200(%rbp), %xmm0
	jbe	.L862
	movl	$0, 36+fmuser_(%rip)
	movq	-192(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmequ_
	leaq	6540+fm1_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpy_
	movl	$3, -60(%rbp)
	movl	fmuser_(%rip), %eax
	movl	%eax, -56(%rbp)
.L854:
	leaq	5232+fm1_(%rip), %rdx
	leaq	6540+fm1_(%rip), %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmmpy_
	movl	5236+fm1_(%rip), %eax
	negl	%eax
	movl	%eax, 5236+fm1_(%rip)
	leaq	-60(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-56(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L851
	movl	$0, 32+fmuser_(%rip)
	jmp	.L852
.L851:
	movq	-192(%rbp), %rax
	movl	(%rax), %edx
	movl	2616+fm1_(%rip), %eax
	subl	%eax, %edx
	movl	-56(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L853
	movl	$2, fmuser_(%rip)
.L853:
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -60(%rbp)
	jmp	.L854
.L862:
	leaq	-168(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmm2dp_
	movq	-168(%rbp), %rax
	movq	%rax, %xmm0
	call	atan@PLT
	movq	%xmm0, %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	leaq	-76(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	movl	-76(%rbp), %ebx
	movl	$1, -60(%rbp)
.L855:
	movl	-60(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L863
	movl	-60(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, fmuser_(%rip)
	movq	-192(%rbp), %rax
	leaq	6540+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsin_
	leaq	2616+fm1_(%rip), %rdx
	leaq	6540+fm1_(%rip), %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	3924+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	2616+fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsub_
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmsqrt_
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmdiv_
	leaq	3924+fm1_(%rip), %rdx
	leaq	5232+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsub_
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsub_
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.L855
.L863:
	nop
.L852:
	cmpl	$0, -20(%rbp)
	jle	.L856
	leaq	6540+fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	32+fmsave_(%rip), %rdi
	call	fmdivi_
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	leaq	6540+fm1_(%rip), %rdi
	call	fmsub_
.L856:
	movl	-28(%rbp), %eax
	movl	%eax, 16+fmuser_(%rip)
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L857
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpyi_
	movq	-192(%rbp), %rdx
	movq	-192(%rbp), %rax
	leaq	32+fmsave_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv_
.L857:
	cmpl	$0, -24(%rbp)
	jns	.L858
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-192(%rbp), %rax
	movl	%edx, 4(%rax)
.L858:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L859
	movl	$0, 32+fmuser_(%rip)
.L859:
	movl	-32(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	leaq	-68(%rbp), %r8
	leaq	-64(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-192(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L844:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	fmatan_, .-fmatan_
	.section	.rodata
	.align 4
.LC71:
	.long	4
	.text
	.globl	fmasin_
	.type	fmasin_, @function
fmasin_:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-12(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-8(%rbp), %rcx
	pushq	%rcx
	leaq	-4(%rbp), %rcx
	pushq	%rcx
	leaq	-16(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L864
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	leaq	5232+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-48(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
	movq	-48(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmadd_
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	3924+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsqrt_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdiv_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmatan_
	leaq	-8(%rbp), %r8
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L864:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	fmasin_, .-fmasin_
	.globl	fmacos_
	.type	fmacos_, @function
fmacos_:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	-12(%rbp), %rcx
	pushq	%rcx
	leaq	-8(%rbp), %rcx
	pushq	%rcx
	leaq	-20(%rbp), %rcx
	pushq	%rcx
	leaq	-24(%rbp), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmentr_
	addq	$32, %rsp
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L868
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 4(%rdx)
	leaq	5232+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-48(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
	movq	-48(%rbp), %rax
	leaq	3924+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmadd_
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	leaq	3924+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsqrt_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmdiv_
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmatan_
	cmpl	$0, -4(%rbp)
	jns	.L871
	movl	16+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L872
	leaq	5232+fm1_(%rip), %rdi
	call	fmpi_
	jmp	.L873
.L872:
	leaq	5232+fm1_(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
.L873:
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	5232+fm1_(%rip), %rdi
	call	fmsub_
.L871:
	leaq	-12(%rbp), %r8
	leaq	-8(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmexit_
	nop
.L868:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	fmacos_, .-fmacos_
	.globl	fmabs_
	.type	fmabs_, @function
fmabs_:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L876
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L876:
	movl	$0, 32+fmuser_(%rip)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-32(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L877
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L877:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	fmabs_, .-fmabs_
	.section	.rodata
.LC72:
	.ascii	"(' INPUT TO FM',A4)"
	.align 8
.LC73:
	.ascii	"(' FM',A4,15X,'CALL LEVEL =',I2,5X,'JBASE =',               "
	.ascii	"       I10,5X,'NDIG =',I6)"
	.align 8
.LC74:
	.ascii	"(' FM',A4,6X,'CALL LEVEL =',I2,4X,'JBASE =',                "
	.ascii	"       I10,4X,'NDIG =',I6,4X,'KFLAG =',I3)"
	.text
	.globl	fmntr_
	.type	fmntr_, @function
fmntr_:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	%rcx, -576(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L879
	movl	2616+fm_(%rip), %edx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jg	.L879
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L879
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L884
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6432, -528(%rbp)
	leaq	.LC72(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$19, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L885
.L884:
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L886
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6437, -528(%rbp)
	leaq	.LC73(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$86, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L885
.L886:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6441, -528(%rbp)
	leaq	.LC74(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$102, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	32+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L885:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	jns	.L887
	movq	-560(%rbp), %rax
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	fmntrj_
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L887
	movq	-568(%rbp), %rax
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	fmntrj_
.L887:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	jle	.L890
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	fmprnt_
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L890
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	fmprnt_
.L890:
	nop
.L879:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	fmntr_, .-fmntr_
	.globl	fmmove_
	.type	fmmove_, @function
fmmove_:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	je	.L892
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	$1, -4(%rbp)
.L894:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L901
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L894
.L892:
	movl	fmuser_(%rip), %eax
	addl	$2, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %ecx
	movl	$3, -4(%rbp)
.L897:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L902
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L897
.L902:
	nop
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L898
	movl	fm_(%rip), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L895
.L898:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L895
.L901:
	nop
.L895:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2620+fm_(%rip), %edx
	cmpl	%edx, %eax
	jle	.L903
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fmtrap_
	nop
.L903:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	fmmove_, .-fmmove_
	.section	.rodata
	.align 8
.LC75:
	.ascii	"(/' ERROR OF TYPE KFLAG =',I3,                              "
	.ascii	"       ' IN FM PACKAGE IN ROUTINE FM',A4/)"
.LC76:
	.ascii	"( ' CALLED FROM FM',A4)"
	.align 8
.LC77:
	.ascii	"(' NDIG MUST BE BETWEEN 2 AND',I10/)"
	.align 4
.LC78:
	.long	256
	.align 8
.LC79:
	.ascii	"(' JBASE MUST BE BETWEEN 2 AND',I10/)"
	.align 8
.LC80:
	.ascii	"(' AN INPUT ARGUMENT IS NOT A VALID FM NUMBER.',            "
	.ascii	"       '  ITS EXPONENT IS OUT OF RANGE.'/)"
	.align 8
.LC81:
	.ascii	"(' UNKNOWN HAS BEEN RETURNED.'/)"
	.align 8
.LC82:
	.ascii	"(' INVALID INPUT ARGUMENT FOR THIS ROUTINE.'/)"
	.align 8
.LC83:
	.ascii	"(' THE RESULT HAS OVERFLOWED.'/)"
	.align 8
.LC84:
	.ascii	"(' THE RESULT HAS UNDERFLOWED.'/)"
	.align 8
.LC85:
	.ascii	"(' THE RESULT ARRAY IS NOT BIG ENOUGH TO HOLD THE',         "
	.ascii	"       ' OUTPUT CHARACTER STRING'/' IN THE CURRENT FORMAT.'/"
	.ascii	"             ' THE RESULT ''***...***'' HAS BEEN RETURNED.'/"
	.ascii	")"
	.align 8
.LC86:
	.ascii	"(' PRECISION COULD NOT BE RAISED ENOUGH TO PROVIDE ALL'     "
	.ascii	"       ,' REQUESTED GUARD DIGITS.'/)"
	.align 8
.LC87:
	.ascii	"(' REQUESTED NDIG=',I7,'.  MAXIMUM AVAILABLE NDIG=',I7/)"
	.align 8
.LC88:
	.ascii	"(' AN FM NUMBER WAS TOO SMALL IN MAGNITUDE TO ',            "
	.ascii	"       'CONVERT TO SINGLE PRECISION.'/)"
	.align 8
.LC89:
	.ascii	"(' AN FM NUMBER WAS TOO SMALL IN MAGNITUDE TO ',            "
	.ascii	"       'CONVERT TO DOUBLE PRECISION.'/)"
.LC90:
	.ascii	"(' ZERO HAS BEEN RETURNED.'/)"
	.text
	.globl	fmwarn_
	.type	fmwarn_, @function
fmwarn_:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movl	32+fmuser_(%rip), %eax
	notl	%eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	36+fmuser_(%rip), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L904
	movl	2616+fm_(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8714, -528(%rbp)
	leaq	.LC75(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$102, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	32+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L908:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	testl	%eax, %eax
	jle	.L907
	leaq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8721, -528(%rbp)
	leaq	.LC76(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$23, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L908
.L907:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-1, %eax
	jne	.L909
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8727, -528(%rbp)
	leaq	.LC77(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$36, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L909:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-2, %eax
	jne	.L911
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8730, -528(%rbp)
	leaq	.LC79(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$37, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2652+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L911:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-3, %eax
	jne	.L912
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8733, -528(%rbp)
	leaq	.LC80(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$102, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8736, -528(%rbp)
	leaq	.LC81(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$32, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L912:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-4, %eax
	sete	%al
	movzbl	%al, %edx
	movl	32+fmuser_(%rip), %eax
	cmpl	$-7, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L913
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8739, -528(%rbp)
	leaq	.LC82(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$46, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8741, -528(%rbp)
	leaq	.LC81(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$32, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L913:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-5, %eax
	jne	.L914
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8743, -528(%rbp)
	leaq	.LC83(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$32, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L914:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-6, %eax
	jne	.L915
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8746, -528(%rbp)
	leaq	.LC84(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$33, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L915:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-8, %eax
	jne	.L916
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8749, -528(%rbp)
	leaq	.LC85(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$181, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L916:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-9, %eax
	jne	.L917
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8754, -528(%rbp)
	leaq	.LC86(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$96, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8757, -528(%rbp)
	leaq	.LC87(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$56, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2656+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8759, -528(%rbp)
	leaq	.LC81(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$32, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L910
.L917:
	movl	32+fmuser_(%rip), %eax
	cmpl	$-10, %eax
	jne	.L910
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$25, %eax
	jne	.L918
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8762, -528(%rbp)
	leaq	.LC88(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$99, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L919
.L918:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8766, -528(%rbp)
	leaq	.LC89(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$99, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L919:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$8770, -528(%rbp)
	leaq	.LC90(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$29, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L910:
	movl	-4(%rbp), %eax
	movl	%eax, 2616+fm_(%rip)
	movl	36+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jle	.L922
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L922:
	nop
.L904:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	fmwarn_, .-fmwarn_
	.globl	fmim_
	.type	fmim_, @function
fmim_:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -4(%rbp)
	subl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L924
	movl	-12(%rbp), %edx
	movl	$1, -8(%rbp)
.L926:
	cmpl	%edx, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L936
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -8(%rbp)
	jmp	.L926
.L936:
	nop
	jmp	.L927
.L924:
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L929
.L937:
	nop
.L929:
	movl	4+fmuser_(%rip), %edi
	movl	-4(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -16(%rbp)
	movl	4+fmuser_(%rip), %eax
	imull	-16(%rbp), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	cmpl	$0, -16(%rbp)
	jle	.L928
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	subl	$1, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	.L937
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdm_
	jmp	.L927
.L928:
	movl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %ecx
	movl	$2, -8(%rbp)
.L931:
	cmpl	%ecx, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L938
	movl	-8(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-64(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -8(%rbp)
	jmp	.L931
.L938:
	nop
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.L932
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, -8(%rbp)
.L934:
	cmpl	%edx, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L939
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -8(%rbp)
	jmp	.L934
.L939:
	nop
.L932:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L940
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 4(%rax)
.L927:
	nop
.L940:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	fmim_, .-fmim_
	.globl	fmexit_
	.type	fmexit_, @function
fmexit_:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, 2620+fm_(%rip)
	movl	32+fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	32+fmuser_(%rip), %eax
	cmpl	$-5, %eax
	setne	%al
	movzbl	%al, %edx
	movl	32+fmuser_(%rip), %eax
	cmpl	$-6, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L942
	movl	-8(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
.L942:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, fmuser_(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L943
	movl	$0, 32+fmuser_(%rip)
.L943:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movl	32+fmuser_(%rip), %eax
	cmpl	$-9, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	orl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L944
	call	fmwarn_
.L944:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L945
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L945:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, 2628+fm_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	fmexit_, .-fmexit_
	.globl	fmentr_
	.type	fmentr_, @function
fmentr_:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	2616+fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	movl	2616+fm_(%rip), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	addq	$665, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L948
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmntr_
.L948:
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fmargs_
	movq	40(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L949
	movq	40(%rbp), %rax
	movl	$1, (%rax)
.L949:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L950
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L950
	movq	40(%rbp), %rax
	movl	$1, (%rax)
.L950:
	movl	fmuser_(%rip), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jne	.L951
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L951
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movq	-64(%rbp), %rax
	movl	$12, (%rax)
.L951:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L952
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L953
	movl	16+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L954
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmpi_
	jmp	.L955
.L954:
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
.L955:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jg	.L956
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L956:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$13, %eax
	jle	.L957
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	fmdivi_
.L957:
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	16(%rbp), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, fmuser_(%rip)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$14, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L958
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 4(%rax)
.L958:
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L959
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L959:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L947
.L953:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, fmuser_(%rip)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fmrslt_
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L961
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmntr_
.L961:
	movl	2616+fm_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 2616+fm_(%rip)
	jmp	.L947
.L952:
	movl	2628+fm_(%rip), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, 2628+fm_(%rip)
	movl	2620+fm_(%rip), %edx
	movq	24(%rbp), %rax
	movl	%edx, (%rax)
	movl	2624+fm_(%rip), %eax
	movl	%eax, 2620+fm_(%rip)
	nop
.L947:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	fmentr_, .-fmentr_
	.globl	__powisf2
	.section	.rodata
	.align 4
.LC101:
	.long	3
	.align 4
.LC102:
	.long	-4
	.text
	.globl	fmsin2_
	.type	fmsin2_, @function
fmsin2_:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L963
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
	jmp	.L962
.L963:
	movl	fmuser_(%rip), %eax
	movl	%eax, -92(%rbp)
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	$0, 36+fmuser_(%rip)
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	fmuser_(%rip), %eax
	subl	-36(%rbp), %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movss	.LC91(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-40(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movss	-44(%rbp), %xmm1
	movss	.LC92(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, -116(%rbp)
	movss	.LC93(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf@PLT
	movss	-116(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC94(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %ecx
	movl	2656+fm_(%rip), %ebx
	movl	$2616, %eax
	cltd
	idivl	%ebx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	$1, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -76(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movl	-76(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	.LC95(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-52(%rbp), %xmm2
	movss	.LC96(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -116(%rbp)
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movaps	%xmm0, %xmm2
	divss	-32(%rbp), %xmm2
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-32(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	call	logf@PLT
	addss	-116(%rbp), %xmm0
	divss	-48(%rbp), %xmm0
	movss	.LC25(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	.LC97(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L965
	movl	$0, -24(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	cvtsi2ssl	-56(%rbp), %xmm1
	mulss	-48(%rbp), %xmm1
	addss	-52(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	.LC98(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC99(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -76(%rbp)
.L965:
	movl	-76(%rbp), %eax
	cmpl	$1, %eax
	jg	.L966
	movl	$1, -76(%rbp)
.L966:
	movss	-40(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	cvtsi2ssl	-56(%rbp), %xmm1
	mulss	-48(%rbp), %xmm1
	addss	-52(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -60(%rbp)
	cvtsi2ssl	-60(%rbp), %xmm4
	movss	%xmm4, -116(%rbp)
	movl	-24(%rbp), %edi
	movss	.LC100(%rip), %xmm0
	call	__powisf2@PLT
	addss	-116(%rbp), %xmm0
	call	logf@PLT
	divss	-44(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L967
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-92(%rbp), %edx
	movl	$2, -20(%rbp)
.L969:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L991
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L969
.L991:
	nop
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	jmp	.L962
.L967:
	movl	fmuser_(%rip), %eax
	movl	%eax, -88(%rbp)
	leaq	-92(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	$1, -80(%rbp)
	movl	2652+fm_(%rip), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L970
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L973:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L992
	movl	-80(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	jge	.L972
	leaq	-80(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	$1, -80(%rbp)
.L972:
	addl	$1, -20(%rbp)
	jmp	.L973
.L992:
	nop
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jle	.L970
	leaq	-80(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
.L970:
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmequ_
	movl	$1, -96(%rbp)
	movl	-76(%rbp), %ebx
	movl	$1, -20(%rbp)
.L976:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L993
	movl	-96(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-96(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	$1, %eax
	jle	.L975
	leaq	-84(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
.L975:
	movl	-96(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -96(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	addq	%rdx, %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmequ_
	movl	2620+fm1_(%rip), %eax
	negl	%eax
	movl	%eax, 2620+fm1_(%rip)
	addl	$1, -20(%rbp)
	jmp	.L976
.L993:
	nop
	leaq	1308+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movq	-112(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmipwr_
.L983:
	movq	-112(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-76(%rbp), %ebx
	movl	$1, -20(%rbp)
.L982:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L994
	movl	-96(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-96(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %edx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %ecx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L978
	leaq	-96(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	leaq	-84(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
	jmp	.L979
.L978:
	leaq	-84(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
.L979:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-88(%rbp), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fmsums_(%rip), %rax
	addq	%rcx, %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	je	.L995
	movl	-88(%rbp), %eax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fmsums_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	2616+fm1_(%rip), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L981
	movl	$2, fmuser_(%rip)
.L981:
	movl	2620+fm1_(%rip), %eax
	negl	%eax
	movl	%eax, 2620+fm1_(%rip)
	movl	-96(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -96(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L982
.L994:
	nop
	jmp	.L983
.L995:
	nop
	movl	$0, 32+fmuser_(%rip)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-112(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	call	fmequ_
	movl	-76(%rbp), %eax
	cmpl	$1, %eax
	jle	.L984
	movl	-76(%rbp), %ebx
	movl	$2, -20(%rbp)
.L986:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L996
	movq	-112(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-76(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	fmuser_(%rip), %edx
	addl	$1, %edx
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd_
	addl	$1, -20(%rbp)
	jmp	.L986
.L996:
	nop
.L984:
	movl	-88(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	cmpl	$0, -24(%rbp)
	jle	.L987
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC101(%rip), %rdi
	call	fmi2m_
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L989:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L997
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC102(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpyi_
	leaq	2616+fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmadd_
	movq	-112(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	addl	$1, -20(%rbp)
	jmp	.L989
.L997:
	nop
.L987:
	leaq	-92(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	fmequ_
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	nop
.L962:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	fmsin2_, .-fmsin2_
	.section	.rodata
	.align 4
.LC103:
	.long	1103
	.align 4
.LC104:
	.long	26390
	.align 4
.LC105:
	.long	1296
	.align 4
.LC106:
	.long	8
	.align 4
.LC108:
	.long	9801
	.text
	.globl	fmpi2_
	.type	fmpi2_, @function
fmpi2_:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	fmuser_(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	$-1, -20(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC103(%rip), %rdi
	call	fmi2m_
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC104(%rip), %rdi
	call	fmi2m_
	leaq	3924+fm1_(%rip), %rsi
	leaq	.LC103(%rip), %rdi
	call	fmi2m_
	movl	2652+fm_(%rip), %eax
	imull	%eax, %eax
	movl	4+fmuser_(%rip), %ebx
	cltd
	idivl	%ebx
	movl	%eax, -28(%rbp)
	jmp	.L1007
.L1011:
	nop
.L1007:
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$2, %eax
	leal	3(%rax), %ecx
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	sall	$2, %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L999
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	jmp	.L1000
.L999:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jge	.L1001
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	jmp	.L1000
.L1001:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	movl	-36(%rbp), %edx
	addl	$2, %edx
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
.L1000:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	2652+fm_(%rip), %eax
	movl	-36(%rbp), %ebx
	cltd
	idivl	%ebx
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L1002
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	jmp	.L1003
.L1002:
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jge	.L1004
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	jmp	.L1003
.L1004:
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %eax
	imull	%eax, %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
.L1003:
	movl	$2178, -36(%rbp)
	movl	2652+fm_(%rip), %eax
	movl	-36(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L1005
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	-36(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC105(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	jmp	.L1006
.L1005:
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -40(%rbp)
	leaq	-40(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC105(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
.L1006:
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	leaq	fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-24(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-152(%rbp), %rdx
	movq	-152(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	$2, %edx
	movq	-152(%rbp), %rax
	movl	(%rax), %ecx
	movl	fm1_(%rip), %eax
	subl	%eax, %ecx
	movl	-24(%rbp), %eax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L1011
	movl	-24(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC106(%rip), %rdi
	call	fmi2m_
	movsd	.LC107(%rip), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)
	leaq	-136(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	leaq	-44(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	movl	-44(%rbp), %ebx
	movl	$1, -36(%rbp)
.L1009:
	movl	-36(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1012
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-128(%rbp,%rax,4), %eax
	movl	%eax, fmuser_(%rip)
	leaq	fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdiv_
	leaq	3924+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmadd_
	leaq	3924+fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L1009
.L1012:
	nop
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC108(%rip), %rdi
	call	fmi2m_
	movq	-152(%rbp), %rdx
	movq	-152(%rbp), %rax
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movq	-152(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdiv_
	nop
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	fmpi2_, .-fmpi2_
	.section	.rodata
	.align 4
.LC111:
	.long	360
	.align 4
.LC112:
	.long	45
	.text
	.globl	fmrdc_
	.type	fmrdc_, @function
fmrdc_:
.LFB59:
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
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movl	fmuser_(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	fmuser_(%rip), %eax
	addl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1014
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-12(%rbp), %edx
	movl	$2, -4(%rbp)
.L1016:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1043
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L1016
.L1043:
	nop
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1013
.L1014:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L1018
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1044
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L1044
.L1018:
	movl	$1, -4(%rbp)
	movl	16+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L1020
.L1033:
	movl	4+fmsave_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	fmsave_(%rip), %ecx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1021
	movl	fmuser_(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	fmuser_(%rip), %eax
	leal	2(%rax), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, fmuser_(%rip)
	leaq	32+fmsave_(%rip), %rdi
	call	fmpi2_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, 4+fmsave_(%rip)
	movl	fmuser_(%rip), %eax
	movl	%eax, fmsave_(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, fmuser_(%rip)
.L1021:
	leaq	-12(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1022
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
.L1022:
	movl	3928+fm1_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, 3928+fm1_(%rip)
	movl	3924+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L1023
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmm2dp_
	movsd	-24(%rbp), %xmm1
	movsd	.LC109(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L1023
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-48(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmequ_
	jmp	.L1013
.L1023:
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC11(%rip), %rsi
	leaq	32+fmsave_(%rip), %rdi
	call	fmmpyi_
	movl	$2, %ecx
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1025
	leaq	fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmdiv_
	leaq	fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmint_
	leaq	fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmmpy_
	leaq	3924+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsub_
.L1025:
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	32+fmsave_(%rip), %rdi
	call	fmequ_
	movl	$2, %ecx
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1026
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
.L1026:
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC71(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	$2, %ecx
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1027
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmsub_
.L1027:
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC71(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
	movl	$2, %ecx
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1028
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
.L1028:
	cmpl	$1, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	3924+fm1_(%rip), %edx
	shrl	$31, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1029
	movl	$2, -4(%rbp)
	movl	fmuser_(%rip), %edx
	movl	3924+fm1_(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1030
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-12(%rbp), %edx
	movl	$2, -4(%rbp)
.L1032:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1045
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L1032
.L1045:
	nop
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1013
.L1030:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1033
.L1020:
	leaq	-12(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	3924+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1034
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
.L1034:
	movl	3928+fm1_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, 3928+fm1_(%rip)
	movl	3924+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L1035
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmm2dp_
	movsd	-24(%rbp), %xmm1
	movsd	.LC110(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L1035
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-48(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmequ_
	jmp	.L1013
.L1035:
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC111(%rip), %rdi
	call	fmi2m_
	movl	$2, %ecx
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1037
	leaq	fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmdiv_
	leaq	fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmint_
	leaq	fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	fm1_(%rip), %rdi
	call	fmmpy_
	leaq	3924+fm1_(%rip), %rdx
	leaq	fm1_(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmsub_
.L1037:
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	fmi2m_
	movl	$2, %ecx
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1038
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
.L1038:
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC65(%rip), %rdi
	call	fmi2m_
	movl	$2, %ecx
	leaq	1308+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1039
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmsub_
.L1039:
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC112(%rip), %rdi
	call	fmi2m_
	movl	$2, %ecx
	leaq	2616+fm1_(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmcomp_
	testl	%eax, %eax
	je	.L1029
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	leaq	3924+fm1_(%rip), %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
.L1029:
	leaq	-12(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	3924+fm1_(%rip), %rdi
	call	fmequ_
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1013
.L1044:
	nop
.L1013:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	fmrdc_, .-fmrdc_
	.globl	fmdm_
	.type	fmdm_, @function
fmdm_:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$2, -12(%rbp)
	movl	fmuser_(%rip), %eax
	movl	$2, -4(%rbp)
.L1048:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1094
	movsd	-24(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -12(%rbp)
	movsd	-40(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-56(%rbp), %xmm0
	jnb	.L1094
	addl	$1, -4(%rbp)
	jmp	.L1048
.L1094:
	nop
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L1049
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC70(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.L1049:
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L1051
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L1051
	movl	-28(%rbp), %edx
	movl	$1, -4(%rbp)
.L1054:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1095
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L1054
.L1095:
	nop
	jmp	.L1055
.L1051:
	movsd	-24(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L1091
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-48(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L1092
.L1060:
	addl	$1, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	ja	.L1060
	movsd	-40(%rbp), %xmm0
	comisd	-24(%rbp), %xmm0
	ja	.L1087
	jmp	.L1064
.L1087:
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L1063
.L1092:
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L1046
.L1091:
	movsd	-40(%rbp), %xmm0
	comisd	-24(%rbp), %xmm0
	jbe	.L1064
	movsd	-24(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	comisd	-24(%rbp), %xmm0
	jbe	.L1093
.L1069:
	subl	$1, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-24(%rbp), %xmm0
	ja	.L1069
	movsd	-24(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L1064
	addl	$1, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L1063
.L1093:
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L1046
.L1064:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-28(%rbp), %edx
	movl	$3, -4(%rbp)
.L1072:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1096
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L1072
.L1096:
	nop
	jmp	.L1055
.L1063:
	movl	-12(%rbp), %eax
	movl	$2, -4(%rbp)
.L1075:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1097
	movsd	-24(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	%edx, -8(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-80(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rdx,%rsi,4)
	movl	-4(%rbp), %edx
	cmpl	-28(%rbp), %edx
	jge	.L1098
	addl	$1, -4(%rbp)
	jmp	.L1075
.L1097:
	nop
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1076:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1098
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -4(%rbp)
	jmp	.L1076
.L1098:
	nop
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %eax
	jl	.L1077
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %ecx
	movl	$3, -4(%rbp)
.L1079:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1099
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L1079
.L1099:
	nop
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, -60(%rbp)
	movq	-80(%rbp), %rax
	movl	4(%rax), %edx
	movl	4+fmuser_(%rip), %eax
	imull	-60(%rbp), %eax
	subl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1055
.L1077:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1055
	movl	fmuser_(%rip), %ecx
	movl	$2, -4(%rbp)
.L1081:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1100
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax,%rsi,4)
	addl	$1, -4(%rbp)
	jmp	.L1081
.L1100:
	nop
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	$0, (%rax,%rdx,4)
.L1055:
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L1090
	jmp	.L1101
.L1090:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 4(%rax)
.L1101:
	nop
.L1046:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	fmdm_, .-fmdm_
	.section	.rodata
.LC114:
	.ascii	"(1X,D30.20)"
	.text
	.globl	fmntrr_
	.type	fmntrr_, @function
fmntrr_:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L1102
	movl	2616+fm_(%rip), %edx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jg	.L1102
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1102
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1107
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6641, -528(%rbp)
	leaq	.LC72(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$19, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1107:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1108
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L1109
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6647, -528(%rbp)
	leaq	.LC73(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$86, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1108
.L1109:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6651, -528(%rbp)
	leaq	.LC74(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$102, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	32+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1108:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6657, -528(%rbp)
	leaq	.LC114(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$11, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-560(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
.L1102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	fmntrr_, .-fmntrr_
	.globl	fmmi_
	.type	fmmi_, @function
fmmi_:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	2736+fm_(%rip), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L1112
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L1129
	movl	$2, 32+fmuser_(%rip)
	jmp	.L1129
.L1112:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	cmpl	$2, -16(%rbp)
	jle	.L1115
	movl	-16(%rbp), %eax
	movl	$3, -4(%rbp)
.L1123:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1130
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%edx, -12(%rbp)
	jge	.L1117
	movl	$-4, 32+fmuser_(%rip)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L1118
	call	fmwarn_
.L1118:
	movl	2644+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1111
.L1117:
	movl	-4(%rbp), %edx
	cmpl	-8(%rbp), %edx
	jg	.L1119
	movq	-48(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	imull	%edx, %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-48(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	2736+fm_(%rip), %esi
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rdi,4), %edx
	subl	%edx, %esi
	movl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.L1120
	movl	$-4, 32+fmuser_(%rip)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L1121
	call	fmwarn_
.L1121:
	movl	2644+fm_(%rip), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1111
.L1120:
	movq	-48(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rsi,4), %edx
	addl	%edx, %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L1122
.L1119:
	movq	-48(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	imull	%edx, %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rdx)
.L1122:
	addl	$1, -4(%rbp)
	jmp	.L1123
.L1130:
	nop
.L1115:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1124
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L1124:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L1131
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, -4(%rbp)
.L1128:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1132
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	je	.L1127
	movl	$2, 32+fmuser_(%rip)
	jmp	.L1111
.L1127:
	addl	$1, -4(%rbp)
	jmp	.L1128
.L1132:
	nop
	jmp	.L1131
.L1129:
	nop
	jmp	.L1111
.L1131:
	nop
.L1111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	fmmi_, .-fmmi_
	.globl	__powidf2
	.globl	fmmd_
	.type	fmmd_, @function
fmmd_:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movsd	2744+fm_(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	2616+fm_(%rip), %eax
	testl	%eax, %eax
	jle	.L1134
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$25, %eax
	jne	.L1134
	movss	2740+fm_(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
.L1134:
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtss2sd	-28(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtss2sd	-32(%rbp), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L1161
	movl	$-4, 32+fmuser_(%rip)
	movss	2648+fm_(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	call	fmwarn_
	jmp	.L1133
.L1161:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtss2sd	-28(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtss2sd	-32(%rbp), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L1162
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	-2(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L1140
.L1162:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtss2sd	-28(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	movss	.LC25(%rip), %xmm2
	xorps	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L1163
	movl	$-10, 32+fmuser_(%rip)
	movq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	call	fmwarn_
	jmp	.L1133
.L1163:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	cvtss2sd	-28(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	movss	.LC25(%rip), %xmm2
	xorps	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L1140
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$2, -4(%rbp)
.L1140:
	movl	36+fmuser_(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	$0, 36+fmuser_(%rip)
	leaq	-92(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmmi_
	movl	-40(%rbp), %eax
	movl	%eax, 36+fmuser_(%rip)
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L1144
	movl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L1133
.L1144:
	movl	$0, 32+fmuser_(%rip)
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-44(%rbp), %eax
	subl	%edx, %eax
	movq	-104(%rbp), %rdx
	movl	%eax, 4(%rdx)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	4+fmuser_(%rip), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-112(%rbp), %rax
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-68(%rbp), %edx
	movl	$2, -92(%rbp)
.L1146:
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1166
	movsd	-24(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-64(%rbp), %xmm0
	comisd	-88(%rbp), %xmm0
	jnb	.L1166
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.L1146
.L1166:
	nop
	movq	-80(%rbp), %rax
	movq	-112(%rbp), %rdx
	movsd	(%rdx), %xmm3
	movsd	%xmm3, -120(%rbp)
	movq	-104(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	mulsd	-120(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	cmpl	$0, -44(%rbp)
	jns	.L1147
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC70(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
.L1147:
	movq	-104(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 4(%rax)
	cmpl	$1, -4(%rbp)
	jne	.L1148
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-80(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-16(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L1164
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-80(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L1151
.L1164:
	movl	$-4, 32+fmuser_(%rip)
	movss	2648+fm_(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	call	fmwarn_
	jmp	.L1151
.L1148:
	cmpl	$2, -4(%rbp)
	jne	.L1151
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC12(%rip), %xmm1
	divsd	-16(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L1165
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-80(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L1151
.L1165:
	movl	$-10, 32+fmuser_(%rip)
	movq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	call	fmwarn_
.L1151:
	movq	-104(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	nop
.L1133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	fmmd_, .-fmmd_
	.section	.rodata
	.align 8
.LC115:
	.ascii	"(' NDIG WAS',I10,'.  IT HAS BEEN CHANGED TO',I10,'.')"
	.align 8
.LC116:
	.ascii	"(' JBASE WAS',I10,'.  IT HAS BEEN CHANGED TO',I10,'.')"
	.text
	.globl	fmargs_
	.type	fmargs_, @function
fmargs_:
.LFB64:
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
	movq	-584(%rbp), %rax
	movl	$12, (%rax)
	movl	$-4, 32+fmuser_(%rip)
	movq	-568(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L1167
	movq	-560(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1170
	movq	-576(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L1167
.L1170:
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1171
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %edx
	movl	fmuser_(%rip), %eax
	cmpl	$256, %eax
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1172
	movl	$-1, 32+fmuser_(%rip)
	call	fmwarn_
	movl	fmuser_(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1173
	movl	$2, fmuser_(%rip)
.L1173:
	movl	fmuser_(%rip), %eax
	cmpl	$256, %eax
	jle	.L1174
	movl	$256, fmuser_(%rip)
.L1174:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$1289, -528(%rbp)
	leaq	.LC115(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$53, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-16(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1167
.L1172:
	movl	4+fmuser_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %edx
	movl	4+fmuser_(%rip), %ecx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %ecx
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1175
	movl	$-2, 32+fmuser_(%rip)
	call	fmwarn_
	movl	4+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	4+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1176
	movl	$2, 4+fmuser_(%rip)
.L1176:
	movl	4+fmuser_(%rip), %edx
	movl	2652+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1177
	movl	2652+fm_(%rip), %eax
	movl	%eax, 4+fmuser_(%rip)
.L1177:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$1302, -528(%rbp)
	leaq	.LC116(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$54, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1167
.L1175:
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %ecx
	negl	%ecx
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1178
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2636+fm_(%rip), %edx
	cmpl	%edx, %eax
	setne	%al
	movzbl	%al, %ecx
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1178
	movq	-568(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	$-3, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-568(%rbp), %rax
	movl	%edx, (%rax)
	movq	-568(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L1167
.L1178:
	movq	-560(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1171
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %ecx
	negl	%ecx
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1171
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	2636+fm_(%rip), %edx
	cmpl	%edx, %eax
	setne	%al
	movzbl	%al, %ecx
	movq	-576(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1171
	movq	-576(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	$-3, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-576(%rbp), %rax
	movl	%edx, (%rax)
	movq	-576(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L1167
.L1171:
	leaq	-8(%rbp), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmcat_
	movl	$0, -12(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1179
	leaq	-12(%rbp), %rdx
	movq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmcat_
.L1179:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L1180
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kadd.11358(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1180:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$29, %eax
	jne	.L1182
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kmpy.11376(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1182:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L1183
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kdiv.11368(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1183:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$34, %eax
	jne	.L1184
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$16, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kpwr.11378(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1184:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$39, %eax
	jne	.L1185
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ksqrt.11384(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1185:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	jne	.L1186
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kexp.11370(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1186:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$21, %eax
	jne	.L1187
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kln.11374(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1187:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$36, %eax
	jne	.L1188
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ksin.11380(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1188:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jne	.L1189
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kcos.11364(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1189:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$41, %eax
	jne	.L1190
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ktan.11386(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1190:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L1191
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kasin.11360(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1206
	movq	-584(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L1206
.L1191:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1193
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kacos.11356(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1193:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L1194
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	katan.11362(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	16+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1207
	movq	-584(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L1207
.L1194:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$37, %eax
	jne	.L1196
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ksinh.11382(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1196:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jne	.L1197
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kcosh.11366(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1197:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$42, %eax
	jne	.L1198
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ktanh.11388(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1198:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$20, %eax
	jne	.L1199
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	klg10.11372(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1181
.L1199:
	movq	-584(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1167
.L1206:
	nop
	jmp	.L1181
.L1207:
	nop
.L1181:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L1200
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
.L1200:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1201
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	$15, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$15, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1202
	movl	$-5, 32+fmuser_(%rip)
	jmp	.L1201
.L1202:
	movl	$-5, 32+fmuser_(%rip)
	call	fmwarn_
.L1201:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1208
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	$15, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	$15, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1204
	movl	$-6, 32+fmuser_(%rip)
	jmp	.L1208
.L1204:
	movl	$-6, 32+fmuser_(%rip)
	call	fmwarn_
.L1208:
	nop
.L1167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	fmargs_, .-fmargs_
	.globl	fmlni2_
	.type	fmlni2_, @function
fmlni2_:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movq	-32(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movq	-40(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmequ_
	movl	fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L1212
.L1214:
	nop
.L1212:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1210
	movq	-24(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
.L1210:
	movq	-32(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	leaq	-8(%rbp), %rax
	leaq	fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	fm1_(%rip), %eax
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1211
	movl	$2, fmuser_(%rip)
.L1211:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	jne	.L1214
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	fmlni2_, .-fmlni2_
	.section	.rodata
.LC117:
	.ascii	"(1X,I18)"
	.text
	.globl	fmntri_
	.type	fmntri_, @function
fmntri_:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movl	24+fmuser_(%rip), %eax
	testl	%eax, %eax
	je	.L1215
	movl	2616+fm_(%rip), %edx
	movl	28+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jg	.L1215
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	24+fmuser_(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1215
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1220
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6496, -528(%rbp)
	leaq	.LC72(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$19, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1220:
	movq	-552(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1221
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fmname_
	movl	32+fmuser_(%rip), %eax
	testl	%eax, %eax
	jne	.L1222
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6502, -528(%rbp)
	leaq	.LC73(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$86, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1221
.L1222:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6506, -528(%rbp)
	leaq	.LC74(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$102, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	2616+fm_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	4+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	leaq	32+fmuser_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1221:
	leaq	.LC1(%rip), %rax
	movq	%rax, -536(%rbp)
	movl	$6512, -528(%rbp)
	leaq	.LC117(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$8, -456(%rbp)
	movl	$4096, -544(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -540(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-560(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
.L1215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	fmntri_, .-fmntri_
	.globl	fminpt_
	.type	fminpt_, @function
fminpt_:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$1, %edx
	leaq	lchars.11649(%rip), %rsi
	movl	$21, %edi
	call	_gfortran_string_index@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L1225
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ltypes.11651(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	lvals.11653(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L1224
.L1225:
	movq	-32(%rbp), %rax
	movl	$5, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	nop
.L1224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	fminpt_, .-fminpt_
	.globl	fminp2_
	.type	fminp2_, @function
fminp2_:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movl	$1, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -60(%rbp)
	movl	$1, -64(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$2, -52(%rbp)
	movl	$0, -32(%rbp)
	movl	2652+fm_(%rip), %edx
	movl	2652+fm_(%rip), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -76(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movq	-128(%rbp), %rdx
	movl	(%rdx), %ebx
	movl	%eax, -20(%rbp)
.L1259:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1271
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L1272
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-88(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	call	fminpt_
	movl	-84(%rbp), %eax
	cmpl	$4, %eax
	jg	.L1273
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-9(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -24(%rbp)
	cmpl	$9, -24(%rbp)
	ja	.L1232
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L1234(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L1234(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L1234:
	.long	.L1232-.L1234
	.long	.L1274-.L1234
	.long	.L1232-.L1234
	.long	.L1240-.L1234
	.long	.L1275-.L1234
	.long	.L1238-.L1234
	.long	.L1237-.L1234
	.long	.L1236-.L1234
	.long	.L1235-.L1234
	.long	.L1274-.L1234
	.text
.L1242:
.L1241:
.L1240:
	movl	$1, -28(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	cmpl	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1243
	jmp	.L1244
.L1239:
.L1238:
	movl	$1, -28(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	cmpl	%eax, -52(%rbp)
	jg	.L1272
	jmp	.L1269
.L1237:
	cmpl	$0, -28(%rbp)
	je	.L1246
	jmp	.L1230
.L1236:
	movl	-88(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L1230
.L1235:
	movl	-32(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.L1248
	jmp	.L1270
.L1233:
.L1232:
	movl	-88(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L1230
.L1243:
	movl	$1, -56(%rbp)
	addl	$1, -40(%rbp)
.L1244:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jne	.L1276
	movl	2616+fm1_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm1_(%rip)
	movl	2616+fm1_(%rip), %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jge	.L1251
	movl	2616+fm1_(%rip), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	addq	$654, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
.L1251:
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L1276
.L1269:
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	addl	$1, -48(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jne	.L1277
	movl	-52(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	$981, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	cmpl	$0, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$2, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1253
	movl	3924+fm1_(%rip), %eax
	subl	$1, %eax
	movl	%eax, 3924+fm1_(%rip)
	jmp	.L1254
.L1253:
	addl	$1, -52(%rbp)
.L1254:
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L1277
.L1246:
	leaq	2616+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	jmp	.L1230
.L1248:
	movl	2620+fm1_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1255
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmi2m_
	jmp	.L1228
.L1255:
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	cmpl	$1, -64(%rbp)
	jne	.L1257
	movl	2636+fm_(%rip), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-4, 32+fmuser_(%rip)
	jmp	.L1258
.L1257:
	movl	2632+fm_(%rip), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-4, 32+fmuser_(%rip)
.L1258:
	movq	-104(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 4(%rax)
	call	fmwarn_
	jmp	.L1228
.L1270:
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	jmp	.L1230
.L1272:
	nop
	jmp	.L1230
.L1275:
	nop
	jmp	.L1230
.L1276:
	nop
	jmp	.L1230
.L1277:
	nop
.L1230:
	addl	$1, -20(%rbp)
	jmp	.L1259
.L1271:
	nop
	cmpl	$0, -40(%rbp)
	je	.L1260
	movl	2616+fm1_(%rip), %eax
	addl	$1, %eax
	movl	%eax, 2616+fm1_(%rip)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	subl	-40(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, -80(%rbp)
	movl	2616+fm1_(%rip), %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jge	.L1261
	movl	-80(%rbp), %eax
	movl	2616+fm1_(%rip), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	imull	-36(%rbp), %eax
	addq	$654, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L1261:
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jle	.L1260
	leaq	-80(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmdivi_
.L1260:
	cmpl	$0, -48(%rbp)
	je	.L1262
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	imull	-44(%rbp), %eax
	addq	$981, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm1_(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
.L1262:
	movl	3928+fm1_(%rip), %eax
	testl	%eax, %eax
	jne	.L1263
	movl	$0, 3924+fm1_(%rip)
.L1263:
	cmpl	$0, -32(%rbp)
	je	.L1264
	cmpl	$1, -64(%rbp)
	jne	.L1265
	movq	16(%rbp), %rax
	movl	(%rax), %ebx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	addl	$1, %eax
	movl	%eax, 5232+fm1_(%rip)
	movq	16(%rbp), %rax
	movl	(%rax), %ecx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, 5236+fm1_(%rip)
	jmp	.L1264
.L1265:
	movl	-32(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	16(%rbp), %rax
	movl	(%rax), %ebx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	negl	%eax
	movl	%eax, 5232+fm1_(%rip)
	movq	16(%rbp), %rax
	movl	(%rax), %ecx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	_gfortran_pow_i4_i4@PLT
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jle	.L1266
	movl	4+fmuser_(%rip), %eax
	movl	-80(%rbp), %ebx
	cltd
	idivl	%ebx
	movl	%eax, 5236+fm1_(%rip)
	jmp	.L1264
.L1266:
	movl	$1, 5236+fm1_(%rip)
.L1264:
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	leaq	3924+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	cmpl	$0, -32(%rbp)
	jle	.L1267
	movq	-104(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	5232+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
.L1267:
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	imull	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L1228
.L1273:
	nop
	jmp	.L1231
.L1274:
	nop
.L1231:
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-104(%rbp), %rax
	movl	$1, 4(%rax)
	nop
.L1228:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	fminp2_, .-fminp2_
	.globl	fmexp2_
	.type	fmexp2_, @function
fmexp2_:
.LFB69:
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
	movl	fmuser_(%rip), %eax
	movl	%eax, -96(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1279
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	mulss	-36(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	-132(%rbp), %xmm3
	divss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-72(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	%xmm0, -132(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	-132(%rbp), %xmm4
	divss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1280
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-128(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-96(%rbp), %edx
	movl	$2, -20(%rbp)
.L1282:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1314
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-128(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L1282
.L1314:
	nop
	movl	-96(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1278
.L1280:
	movl	fmuser_(%rip), %eax
	movl	%eax, -92(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmi2m_
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movl	$2, -20(%rbp)
	movl	2652+fm_(%rip), %eax
	movl	%eax, -76(%rbp)
.L1290:
	movl	$1, -104(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)
.L1285:
	movl	-20(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-76(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L1315
	addl	$1, -20(%rbp)
	movl	-104(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-88(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.L1285
.L1315:
	nop
	leaq	-88(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	-104(%rbp), %eax
	cmpl	$1, %eax
	jle	.L1286
	leaq	-104(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpyi_
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	-92(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	(%rax), %ecx
	movl	2616+fm1_(%rip), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1287
.L1286:
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	-92(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	(%rax), %ecx
	movl	1308+fm1_(%rip), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, fmuser_(%rip)
.L1287:
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1288
	movl	$2, fmuser_(%rip)
.L1288:
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	je	.L1289
	addl	$1, -20(%rbp)
	jmp	.L1290
.L1289:
	movl	-96(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	fmi2m_
	movq	-128(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmadd_
	movl	$0, 32+fmuser_(%rip)
	jmp	.L1278
.L1279:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	fmuser_(%rip), %eax
	subl	-32(%rbp), %eax
	movl	$2, %edx
	cmpl	$2, %eax
	cmovl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-28(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-36(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	movss	-40(%rbp), %xmm1
	movss	.LC92(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, -132(%rbp)
	movss	.LC93(%rip), %xmm1
	movd	%eax, %xmm0
	call	powf@PLT
	movss	-132(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC94(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %ecx
	movl	2656+fm_(%rip), %ebx
	movl	$2616, %eax
	cltd
	idivl	%ebx
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
	movl	$1, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -80(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movl	-80(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	.LC118(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	-48(%rbp), %xmm2
	movss	.LC119(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-40(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movq	-120(%rbp), %rax
	movl	4(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movaps	%xmm0, %xmm2
	divss	-28(%rbp), %xmm2
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-28(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	call	logf@PLT
	addss	-132(%rbp), %xmm0
	divss	-44(%rbp), %xmm0
	movss	.LC25(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	.LC97(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L1291
	movl	$0, -24(%rbp)
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	cvtsi2ssl	-52(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	addss	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	sqrtss	%xmm1, %xmm1
	movss	.LC98(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC99(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -80(%rbp)
.L1291:
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jg	.L1292
	movl	$1, -80(%rbp)
.L1292:
	movss	-36(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	cvtsi2ssl	-52(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	addss	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -56(%rbp)
	cvtsi2ssl	-56(%rbp), %xmm6
	movss	%xmm6, -132(%rbp)
	movl	-24(%rbp), %edi
	movss	.LC29(%rip), %xmm0
	call	__powisf2@PLT
	addss	-132(%rbp), %xmm0
	call	logf@PLT
	divss	-40(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %edx
	movl	2656+fm_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1293
	movl	$-9, 32+fmuser_(%rip)
	call	fmwarn_
	movl	2640+fm_(%rip), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-128(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-96(%rbp), %edx
	movl	$2, -20(%rbp)
.L1295:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1316
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-128(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L1295
.L1316:
	nop
	movl	-96(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	jmp	.L1278
.L1293:
	movl	fmuser_(%rip), %eax
	movl	%eax, -92(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	1308+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	$1, -84(%rbp)
	movl	2652+fm_(%rip), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L1296
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1299:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1317
	movl	-84(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jge	.L1298
	leaq	-84(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
	movl	$1, -84(%rbp)
.L1298:
	addl	$1, -20(%rbp)
	jmp	.L1299
.L1317:
	nop
	movl	-84(%rbp), %eax
	cmpl	$1, %eax
	jle	.L1296
	leaq	-84(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmdivi_
.L1296:
	movq	-128(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmequ_
	movl	$1, -100(%rbp)
	movl	-80(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1301:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1318
	movq	-128(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmdivi_
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-128(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	addl	$1, -20(%rbp)
	jmp	.L1301
.L1318:
	nop
	leaq	-80(%rbp), %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmipwr_
.L1306:
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movl	-80(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1305:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1319
	movq	-128(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmdivi_
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-92(%rbp), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fmsums_(%rip), %rax
	addq	%rax, %rcx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fmadd_
	movl	32+fmuser_(%rip), %eax
	cmpl	$1, %eax
	je	.L1320
	movl	-92(%rbp), %edx
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fmsums_(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	cmpl	$1, %eax
	jg	.L1304
	movl	$2, fmuser_(%rip)
.L1304:
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	addl	$1, -20(%rbp)
	jmp	.L1305
.L1319:
	nop
	jmp	.L1306
.L1320:
	nop
	movl	$0, 32+fmuser_(%rip)
	movl	-80(%rbp), %eax
	leal	-1(%rax), %edx
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	addq	%rdx, %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	movq	%rax, %rdi
	call	fmequ_
	movl	-80(%rbp), %eax
	cmpl	$1, %eax
	jle	.L1307
	movl	-80(%rbp), %ebx
	movl	$2, -20(%rbp)
.L1309:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1321
	leaq	2616+fm1_(%rip), %rdx
	leaq	2616+fm1_(%rip), %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmmpy_
	movl	-80(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	fmuser_(%rip), %edx
	addl	$1, %edx
	imull	%edx, %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fmsums_(%rip), %rax
	addq	%rdx, %rax
	leaq	2616+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	addl	$1, -20(%rbp)
	jmp	.L1309
.L1321:
	nop
.L1307:
	movl	-92(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	cmpl	$0, -24(%rbp)
	jle	.L1310
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	call	fmi2m_
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1312:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1322
	movq	-128(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	leaq	2616+fm1_(%rip), %rdx
	leaq	1308+fm1_(%rip), %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmmpy_
	addl	$1, -20(%rbp)
	jmp	.L1312
.L1322:
	nop
.L1310:
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-128(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	2616+fm1_(%rip), %rdi
	call	fmadd_
	leaq	-96(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	fmequ_
	movl	-96(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	nop
.L1278:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	fmexp2_, .-fmexp2_
	.globl	fmcos2_
	.type	fmcos2_, @function
fmcos2_:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmsin2_
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	leaq	1308+fm1_(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fmi2m_
	movq	-16(%rbp), %rax
	leaq	1308+fm1_(%rip), %rdx
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsub_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fm1_(%rip), %rdi
	call	fmsqrt_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	fmcos2_, .-fmcos2_
	.globl	fmrslt_
	.type	fmrslt_, @function
fmrslt_:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	32+fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1326
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %edx
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	$40, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1327
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1325
.L1327:
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1326:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1330
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %edx
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	$40, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1331
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1325
.L1331:
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1330:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1333
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2636+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L1334
	movq	-40(%rbp), %rax
	movl	$-1, 4(%rax)
.L1334:
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1333:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1335
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2632+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L1336
	movq	-40(%rbp), %rax
	movl	$-1, 4(%rax)
.L1336:
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1335:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	jne	.L1337
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	call	fmim_
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1337:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jne	.L1338
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fmim_
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1338:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$11, %eax
	jne	.L1339
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1339:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	shrl	$31, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1341
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-4(%rbp), %eax
	movl	%eax, 32+fmuser_(%rip)
	jmp	.L1325
.L1341:
	nop
.L1325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	fmrslt_, .-fmrslt_
	.section	.rodata
.LC120:
	.ascii	"(1X,I19,I4,24I2)"
.LC121:
	.ascii	"(1X,I19,I4,24I2/(22X,25I2))"
.LC122:
	.ascii	"(1X,I19,I5,14I3)"
.LC123:
	.ascii	"(1X,I19,I5,14I3/(22X,15I3))"
.LC124:
	.ascii	"(1X,I19,I6,9I4)"
.LC125:
	.ascii	"(1X,I19,I6,9I4/(22X,10I4))"
.LC126:
	.ascii	"(1X,I19,I7,9I5)"
.LC127:
	.ascii	"(1X,I19,I7,9I5/(22X,10I5))"
.LC128:
	.ascii	"(1X,I19,I8,8I6)"
.LC129:
	.ascii	"(1X,I19,I8,8I6/(22X,9I6))"
.LC130:
	.ascii	"(1X,I19,I13,3I11)"
.LC131:
	.ascii	"(1X,I19,I13,3I11/(22X,4I11))"
	.text
	.globl	fmntrj_
	.type	fmntrj_, @function
fmntrj_:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	4+fmuser_(%rip), %eax
	cmpl	$10, %eax
	jg	.L1343
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$25, %eax
	jg	.L1344
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6544, -544(%rbp)
	leaq	.LC120(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$16, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1346:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1385
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1385
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1346
.L1385:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1344:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6547, -544(%rbp)
	leaq	.LC121(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$27, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1349:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1386
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1386
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1349
.L1386:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1343:
	movl	4+fmuser_(%rip), %eax
	cmpl	$100, %eax
	jg	.L1351
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	jg	.L1352
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6555, -544(%rbp)
	leaq	.LC122(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$16, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1354:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1387
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1387
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1354
.L1387:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1352:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6558, -544(%rbp)
	leaq	.LC123(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$27, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1357:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1388
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1388
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1357
.L1388:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1351:
	movl	4+fmuser_(%rip), %eax
	cmpl	$1000, %eax
	jg	.L1358
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jg	.L1359
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6566, -544(%rbp)
	leaq	.LC124(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1361:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1389
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1389
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1361
.L1389:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1359:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6569, -544(%rbp)
	leaq	.LC125(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$26, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1364:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1390
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1390
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1364
.L1390:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1358:
	movl	4+fmuser_(%rip), %eax
	cmpl	$10000, %eax
	jg	.L1365
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jg	.L1366
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6577, -544(%rbp)
	leaq	.LC126(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1368:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1391
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1391
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1368
.L1391:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1366:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6580, -544(%rbp)
	leaq	.LC127(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$26, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1371:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1392
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1392
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1371
.L1392:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1365:
	movl	4+fmuser_(%rip), %eax
	cmpl	$100000, %eax
	jg	.L1372
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L1373
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6588, -544(%rbp)
	leaq	.LC128(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1375:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1393
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1393
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1375
.L1393:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1373:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6591, -544(%rbp)
	leaq	.LC129(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$25, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1378:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1394
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1394
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1378
.L1394:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1342
.L1372:
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jg	.L1379
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6598, -544(%rbp)
	leaq	.LC130(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$17, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1381:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1395
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1395
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1381
.L1395:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1397
.L1379:
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$6601, -544(%rbp)
	leaq	.LC131(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$28, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-24(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1384:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1396
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1396
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-568(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -20(%rbp)
	jmp	.L1384
.L1396:
	nop
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1397:
	nop
.L1342:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	fmntrj_, .-fmntrj_
	.globl	fmadd2_
	.type	fmadd2_, @function
fmadd2_:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	2628+fm_(%rip), %eax
	cmpl	$1, %eax
	je	.L1399
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	leaq	.LC101(%rip), %rdi
	call	fmargs_
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L1400
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fmrslt_
	jmp	.L1398
.L1399:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1402
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1398
.L1402:
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1400
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	fmuser_(%rip), %rcx
	leaq	fmuser_(%rip), %rdx
	movq	%rax, %rdi
	call	fmequ_
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1398
.L1400:
	movl	$0, 32+fmuser_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jle	.L1403
	movl	$1, -52(%rbp)
	jmp	.L1404
.L1403:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-24(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1404
	movl	fmuser_(%rip), %eax
	movl	%eax, -52(%rbp)
.L1404:
	movl	-52(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
	movl	$1, -12(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-72(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-80(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L1405
	movl	$1, -8(%rbp)
	jmp	.L1406
.L1405:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L1407
	movl	$3, -8(%rbp)
	jmp	.L1406
.L1407:
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	movl	$2, -4(%rbp)
.L1411:
	cmpl	%esi, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1428
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L1409
	movl	$1, -8(%rbp)
	jmp	.L1406
.L1409:
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L1410
	movl	$3, -8(%rbp)
	jmp	.L1406
.L1410:
	addl	$1, -4(%rbp)
	jmp	.L1411
.L1428:
	nop
	movl	$2, -8(%rbp)
.L1406:
	cmpl	$2, -8(%rbp)
	jg	.L1412
	movl	$1, -16(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L1413
	movl	$-1, -12(%rbp)
.L1413:
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	testl	%eax, %eax
	jle	.L1414
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmaddp_
	jmp	.L1415
.L1414:
	leaq	-56(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fmaddn_
	jmp	.L1415
.L1412:
	movl	$0, -16(%rbp)
	cmpl	$0, -32(%rbp)
	jns	.L1416
	movl	$-1, -12(%rbp)
.L1416:
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	testl	%eax, %eax
	jle	.L1417
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmaddp_
	jmp	.L1415
.L1417:
	leaq	-56(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	fmaddn_
.L1415:
	movq	-72(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-80(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
	leaq	-52(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -40(%rbp)
	subl	%eax, -40(%rbp)
	movl	fmuser_(%rip), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L1429
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jle	.L1419
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1418
.L1419:
	movl	fmuser_(%rip), %eax
	addl	$4, %eax
	movl	%eax, -44(%rbp)
	cmpl	$1, -16(%rbp)
	jne	.L1420
	movl	-20(%rbp), %eax
	movl	$3, -4(%rbp)
.L1422:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1430
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rsi,4), %edx
	cmpl	%edx, %ecx
	jne	.L1429
	addl	$1, -4(%rbp)
	jmp	.L1422
.L1430:
	nop
	movl	fm_(%rip), %edx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1429
	movl	4+fm_(%rip), %ecx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L1429
	jmp	.L1423
.L1420:
	movl	-20(%rbp), %eax
	movl	$3, -4(%rbp)
.L1425:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1431
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-80(%rbp), %rdx
	movl	(%rdx,%rsi,4), %edx
	cmpl	%edx, %ecx
	jne	.L1429
	addl	$1, -4(%rbp)
	jmp	.L1425
.L1431:
	nop
	movl	fm_(%rip), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1429
	movl	4+fm_(%rip), %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L1429
.L1423:
	movl	$1, 32+fmuser_(%rip)
	jmp	.L1418
.L1429:
	nop
.L1418:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	cmpl	$0, -12(%rbp)
	jns	.L1432
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
.L1432:
	nop
.L1398:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	fmadd2_, .-fmadd2_
	.section	.rodata
	.align 4
.LC132:
	.long	12
	.text
	.globl	fmdiv2_
	.type	fmdiv2_, @function
fmdiv2_:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movl	2628+fm_(%rip), %eax
	cmpl	$1, %eax
	je	.L1434
	leaq	-144(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	leaq	.LC132(%rip), %rdi
	call	fmargs_
	movl	-144(%rbp), %eax
	testl	%eax, %eax
	je	.L1435
	leaq	-144(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	fmrslt_
	jmp	.L1433
.L1434:
	movq	-176(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1437
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	movl	2640+fm_(%rip), %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	movq	-184(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$-4, 32+fmuser_(%rip)
	call	fmwarn_
	jmp	.L1433
.L1437:
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1435
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	jmp	.L1433
.L1435:
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jle	.L1438
	movl	$1, -148(%rbp)
	jmp	.L1439
.L1438:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-64(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -148(%rbp)
.L1439:
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-148(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %edx
	movl	$3, -4(%rbp)
.L1441:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1503
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-168(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1441
.L1503:
	nop
	movq	-168(%rbp), %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, fm_(%rip)
	movl	$0, 4+fm_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$3, %eax
	movl	%eax, -76(%rbp)
	movl	-148(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%edx, -4(%rbp)
.L1443:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1504
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L1443
.L1504:
	nop
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-176(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)
	movq	-176(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-168(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 8+fm_(%rip)
	movq	-176(%rbp), %rax
	movl	$0, (%rax)
	movq	-176(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-176(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	$2, -40(%rbp)
	movl	4+fmuser_(%rip), %eax
	cmpl	$99, %eax
	jg	.L1444
	movl	$4, -40(%rbp)
.L1444:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -96(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	$2, -4(%rbp)
.L1448:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1505
	movl	-4(%rbp), %edx
	cmpl	-68(%rbp), %edx
	jg	.L1446
	movss	-56(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-96(%rbp), %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-176(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	cvtsi2ssl	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	jmp	.L1447
.L1446:
	movss	-56(%rbp), %xmm0
	mulss	-96(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
.L1447:
	addl	$1, -4(%rbp)
	jmp	.L1448
.L1505:
	nop
	movl	-100(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L1449
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-176(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cvtsi2ssl	%eax, %xmm0
	divss	-96(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
.L1449:
	movl	-96(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movl	2652+fm_(%rip), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	4+fmuser_(%rip), %eax
	subl	$1, %eax
	imull	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	%eax, -80(%rbp)
	jg	.L1450
	movl	4+fmuser_(%rip), %eax
	leal	-1(%rax), %edx
	movl	-80(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -24(%rbp)
	jmp	.L1451
.L1450:
	movl	2652+fm_(%rip), %eax
	imull	%eax, %eax
	movl	4+fmuser_(%rip), %edx
	leal	-1(%rdx), %edi
	cltd
	idivl	%edi
	movl	%eax, -24(%rbp)
.L1451:
	cvtsi2ssl	-24(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movl	-108(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movaps	%xmm0, %xmm1
	divss	-104(%rbp), %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -112(%rbp)
	movl	fmuser_(%rip), %eax
	movl	$1, -4(%rbp)
.L1454:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1506
	movl	fmuser_(%rip), %edx
	addl	$2, %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-176(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	je	.L1453
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.L1452
.L1453:
	addl	$1, -4(%rbp)
	jmp	.L1454
.L1506:
	nop
.L1452:
	movl	$0, -36(%rbp)
	movl	$2, -20(%rbp)
	jmp	.L1498
.L1517:
	nop
.L1498:
	movl	-20(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -116(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-20(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	%edx, -4(%rbp)
.L1458:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1507
	movl	-4(%rbp), %edx
	cmpl	-80(%rbp), %edx
	jg	.L1456
	movss	-60(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-96(%rbp), %xmm1
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cvtsi2ssl	%edx, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	jmp	.L1457
.L1456:
	movss	-60(%rbp), %xmm0
	mulss	-96(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
.L1457:
	addl	$1, -4(%rbp)
	jmp	.L1458
.L1507:
	nop
	movss	-60(%rbp), %xmm0
	divss	-56(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L1459
	movl	4+fmuser_(%rip), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.L1459:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movl	fmuser_(%rip), %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	subl	-52(%rbp), %eax
	cmpl	%eax, -80(%rbp)
	cmovle	-80(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-120(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L1460
	movl	-120(%rbp), %eax
	movl	-124(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1462:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1508
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-4(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-176(%rbp), %rax
	movl	(%rax,%rsi,4), %eax
	imull	-32(%rbp), %eax
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movl	%ecx, %esi
	subl	%eax, %esi
	leaq	0(,%rdi,4), %rcx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rcx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L1462
.L1508:
	nop
.L1460:
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-120(%rbp), %edx
	movl	-112(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, -124(%rbp)
	cmovle	-124(%rbp), %eax
	movl	%eax, -48(%rbp)
.L1480:
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L1464
.L1509:
	nop
.L1464:
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jns	.L1463
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	subl	-132(%rbp), %eax
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	imull	-132(%rbp), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	leal	(%rdx,%rax), %ecx
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L1463:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.L1509
	movl	-48(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jne	.L1465
	movl	$0, -36(%rbp)
.L1465:
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L1466
	movl	-120(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.L1467
.L1466:
	movl	-120(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L1468
	movl	-120(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L1467
.L1468:
	movl	$0, -44(%rbp)
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.L1467
	movl	-136(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%edx, -4(%rbp)
.L1471:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1510
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	je	.L1470
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L1467
.L1470:
	addl	$1, -4(%rbp)
	jmp	.L1471
.L1510:
	nop
.L1467:
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L1472
	movl	-120(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L1473
.L1472:
	movl	-120(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-176(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	je	.L1474
	movl	-120(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L1473
.L1474:
	movl	$0, -16(%rbp)
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.L1473
	movl	-136(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%edx, -4(%rbp)
.L1477:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1511
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-4(%rbp), %edx
	subl	-128(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-176(%rbp), %rdx
	movl	(%rdx,%rsi,4), %edx
	cmpl	%edx, %ecx
	je	.L1476
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L1473
.L1476:
	addl	$1, -4(%rbp)
	jmp	.L1477
.L1511:
	nop
.L1473:
	cmpl	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %edx
	movl	-16(%rbp), %eax
	cmpl	-80(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	andl	%eax, %edx
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	-128(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	setge	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1478
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-48(%rbp), %eax
	cmpl	-124(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	%edx, %ecx
	andl	%eax, %ecx
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-176(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	4+fmuser_(%rip), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.L1478
	movl	$0, -16(%rbp)
.L1478:
	cmpl	$0, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1479
	movl	-48(%rbp), %eax
	cmpl	-124(%rbp), %eax
	je	.L1479
	movl	-124(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L1480
.L1479:
	cmpl	$0, -44(%rbp)
	jle	.L1481
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jns	.L1481
	movl	-120(%rbp), %eax
	cmpl	-124(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-124(%rbp), %eax
	cmpl	-80(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L1512
	subl	$1, -28(%rbp)
	subl	$1, -36(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L1485
.L1513:
	nop
.L1485:
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-12(%rbp), %eax
	addl	%eax, %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1483
	movl	$1, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movl	%edx, %ecx
	subl	%eax, %ecx
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L1484
.L1483:
	movl	$0, -12(%rbp)
.L1484:
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.L1513
	cmpl	$1, -12(%rbp)
	jne	.L1480
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-120(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rax), %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L1480
.L1481:
	cmpl	$0, -16(%rbp)
	jne	.L1487
	movl	-48(%rbp), %eax
	cmpl	-124(%rbp), %eax
	je	.L1488
	movl	-124(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L1480
.L1487:
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-16(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-176(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	cmpl	%eax, %edx
	jl	.L1512
	movl	-48(%rbp), %eax
	subl	-16(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	setg	%al
	movzbl	%al, %edx
	movl	-48(%rbp), %eax
	cmpl	-124(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1488
	movl	-124(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L1480
.L1488:
	movl	-120(%rbp), %eax
	cmpl	-124(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-124(%rbp), %eax
	cmpl	-80(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L1512
	addl	$1, -28(%rbp)
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L1489
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	-20(%rbp), %edx
	movl	-140(%rbp), %eax
	movl	%edx, -8(%rbp)
.L1491:
	cmpl	%eax, -8(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1514
	movl	4+fmuser_(%rip), %edx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leal	-1(%rdx), %esi
	salq	$2, %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	addl	$1, -8(%rbp)
	jmp	.L1491
.L1514:
	nop
	jmp	.L1492
.L1489:
	addl	$1, -36(%rbp)
	movl	-120(%rbp), %eax
	movl	-124(%rbp), %edx
	movl	%eax, -8(%rbp)
.L1494:
	cmpl	%edx, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1515
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-8(%rbp), %eax
	subl	-128(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-176(%rbp), %rax
	movl	(%rax,%rsi,4), %eax
	movl	-8(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movl	%ecx, %esi
	subl	%eax, %esi
	leaq	0(,%rdi,4), %rcx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rcx,%rax)
	addl	$1, -8(%rbp)
	jmp	.L1494
.L1515:
	nop
	jmp	.L1480
.L1512:
	nop
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	4+fmuser_(%rip), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -24(%rbp)
	jge	.L1495
	movl	-124(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L1497
.L1516:
	nop
.L1497:
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jns	.L1496
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	notl	%eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	subl	-132(%rbp), %eax
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	imull	-132(%rbp), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	leal	(%rdx,%rax), %ecx
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L1496:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.L1516
	movl	$0, -36(%rbp)
.L1495:
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.L1517
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L1517
.L1492:
	movq	-168(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-176(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%edx, (%rax)
	movq	-176(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	jne	.L1499
	leaq	-148(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
	jmp	.L1500
.L1499:
	leaq	-148(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
.L1500:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	movl	-84(%rbp), %eax
	imull	-92(%rbp), %eax
	testl	%eax, %eax
	jns	.L1518
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 4(%rax)
.L1518:
	nop
.L1433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	fmdiv2_, .-fmdiv2_
	.globl	fmname_
	.type	fmname_, @function
fmname_:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	2616+fm_(%rip), %eax
	cltq
	subq	$1, %rax
	addq	$665, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	nrout.12708(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	fmname_, .-fmname_
	.section	.rodata
	.align 4
.LC133:
	.long	29
	.text
	.globl	fmmpy2_
	.type	fmmpy2_, @function
fmmpy2_:
.LFB76:
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
	movl	2628+fm_(%rip), %eax
	cmpl	$1, %eax
	je	.L1522
	leaq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	leaq	.LC133(%rip), %rdi
	call	fmargs_
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L1523
	leaq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmrslt_
	jmp	.L1521
.L1522:
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L1523
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	fmim_
	jmp	.L1521
.L1523:
	movl	$0, 32+fmuser_(%rip)
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	jle	.L1525
	movl	$1, -40(%rbp)
	jmp	.L1526
.L1525:
	movl	4+fmuser_(%rip), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	-16(%rbp), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movss	.LC28(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	.LC29(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1526
	movl	fmuser_(%rip), %eax
	movl	%eax, -40(%rbp)
.L1526:
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-56(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	fmuser_(%rip), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	cmpl	$5, %eax
	jle	.L1527
	movl	-28(%rbp), %eax
	movl	$2, -4(%rbp)
.L1531:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1536
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	jne	.L1529
	addl	$1, -8(%rbp)
.L1529:
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	jne	.L1530
	addl	$1, -12(%rbp)
.L1530:
	addl	$1, -4(%rbp)
	jmp	.L1531
.L1536:
	nop
.L1527:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L1532
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	fmmpy3_
	jmp	.L1533
.L1532:
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fmmpy3_
.L1533:
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-64(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmuser_(%rip), %rdi
	call	fmrnd_
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fmmove_
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	testl	%eax, %eax
	jns	.L1537
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 4(%rax)
.L1537:
	nop
.L1521:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	fmmpy2_, .-fmmpy2_
	.globl	fmrnd_
	.type	fmrnd_, @function
fmrnd_:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	40+fmuser_(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	2616+fm_(%rip), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L1538
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1538
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jle	.L1542
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rax), %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jge	.L1564
	jmp	.L1538
.L1542:
	movl	4+fmuser_(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1545
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1538
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L1547
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L1548
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	$2, -4(%rbp)
.L1550:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1565
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	%ecx, %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	jg	.L1547
	addl	$1, -4(%rbp)
	jmp	.L1550
.L1565:
	nop
.L1548:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1547
	jmp	.L1538
.L1545:
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %eax
	leal	1(%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L1547
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L1547
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	$2, -4(%rbp)
.L1553:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1566
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	%ecx, %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	addl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jl	.L1538
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	addl	%ecx, %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	(%rdx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jg	.L1547
	addl	$1, -4(%rbp)
	jmp	.L1553
.L1566:
	nop
	jmp	.L1538
.L1547:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rax), %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	jmp	.L1544
.L1564:
	nop
.L1544:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$2, -16(%rbp)
	jle	.L1554
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %ecx
	movl	$3, -4(%rbp)
.L1557:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1567
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1538
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	addl	%edx, %esi
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %esi
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	cltd
	idivl	%esi
	movl	%edx, %esi
	leaq	0(,%rdi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L1557
.L1567:
	nop
.L1554:
	movl	4+fm_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1558
	cmpl	$3, -16(%rbp)
	jle	.L1559
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %edx
	movl	$4, -4(%rbp)
.L1561:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1568
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	salq	$2, %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1561
.L1568:
	nop
.L1559:
	cmpl	$2, -16(%rbp)
	jle	.L1562
	movl	4+fm_(%rip), %eax
	movl	4+fmuser_(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, 8+fm_(%rip)
.L1562:
	movl	4+fm_(%rip), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, 4+fm_(%rip)
	movl	fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, fm_(%rip)
.L1558:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1569
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L1569:
	nop
.L1538:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	fmrnd_, .-fmrnd_
	.globl	fmmpy3_
	.type	fmmpy3_, @function
fmmpy3_:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, fm_(%rip)
	movl	fmuser_(%rip), %eax
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	2652+fm_(%rip), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	4+fmuser_(%rip), %eax
	subl	$1, %eax
	imull	%eax, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	4+fmuser_(%rip), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	2652+fm_(%rip), %edx
	movl	2652+fm_(%rip), %eax
	imull	%edx, %eax
	cltd
	idivl	-52(%rbp)
	subl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$1, -48(%rbp)
	jle	.L1571
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$3, %eax
	movl	%eax, -80(%rbp)
	movl	-40(%rbp), %eax
	movl	$2, -4(%rbp)
.L1574:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1599
	movl	-80(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-104(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	je	.L1573
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L1572
.L1573:
	addl	$1, -4(%rbp)
	jmp	.L1574
.L1599:
	nop
.L1572:
	movl	$0, 4+fm_(%rip)
	movl	fmuser_(%rip), %eax
	addl	$2, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, -12(%rbp)
.L1576:
	cmpl	%eax, -12(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1600
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -12(%rbp)
	jmp	.L1576
.L1600:
	nop
	movl	-40(%rbp), %edx
	movl	$2, -12(%rbp)
.L1578:
	cmpl	%edx, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1601
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	imull	-76(%rbp), %eax
	leaq	0(,%rcx,4), %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -12(%rbp)
	jmp	.L1578
.L1601:
	nop
	movl	-76(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %ecx
	movl	$3, -4(%rbp)
.L1586:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1602
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L1580
	movl	-76(%rbp), %eax
	addl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %eax
	movl	-44(%rbp), %edx
	subl	-8(%rbp), %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	$2, -12(%rbp)
.L1582:
	cmpl	%edx, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1603
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %eax
	addl	%esi, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rsi
	leaq	fm_(%rip), %rax
	movl	(%rsi,%rax), %esi
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdi
	movq	-104(%rbp), %rax
	movl	(%rax,%rdi,4), %eax
	imull	-76(%rbp), %eax
	movl	-8(%rbp), %r8d
	movl	-12(%rbp), %edi
	addl	%r8d, %edi
	movslq	%edi, %rdi
	leaq	-1(%rdi), %r8
	leal	(%rsi,%rax), %edi
	leaq	0(,%r8,4), %rsi
	leaq	fm_(%rip), %rax
	movl	%edi, (%rsi,%rax)
	addl	$1, -12(%rbp)
	jmp	.L1582
.L1603:
	nop
.L1580:
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L1583
	movl	$0, -36(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -88(%rbp)
	movl	-8(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-88(%rbp), %eax
	movl	-92(%rbp), %esi
	movl	%eax, -12(%rbp)
.L1585:
	cmpl	%esi, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1604
	subl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %r9d
	cltd
	idivl	%r9d
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	addl	%edx, %edi
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%edi, (%rdx,%rax)
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %edi
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %r8
	cltd
	idivl	%edi
	movl	%edx, %edi
	leaq	0(,%r8,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%edi, (%rdx,%rax)
	addl	$1, -12(%rbp)
	jmp	.L1585
.L1604:
	nop
.L1583:
	addl	$1, -4(%rbp)
	jmp	.L1586
.L1602:
	nop
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-44(%rbp), %ecx
	movl	$3, -12(%rbp)
.L1588:
	cmpl	%ecx, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1605
	subl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	addl	%edx, %esi
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	4+fmuser_(%rip), %esi
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	cltd
	idivl	%esi
	movl	%edx, %esi
	leaq	0(,%rdi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rdx,%rax)
	addl	$1, -12(%rbp)
	jmp	.L1588
.L1571:
	movl	-44(%rbp), %eax
	movl	$2, -4(%rbp)
.L1591:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1606
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L1591
.L1606:
	nop
	movl	fmuser_(%rip), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	movl	-40(%rbp), %ecx
	movl	$2, -4(%rbp)
.L1596:
	cmpl	%ecx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1607
	subl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L1608
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.L1593
	movl	-40(%rbp), %eax
	movl	%eax, -28(%rbp)
.L1593:
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	$0, -24(%rbp)
	movl	-28(%rbp), %esi
	movl	$2, -12(%rbp)
.L1595:
	cmpl	%esi, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1609
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	imull	-60(%rbp), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdi
	leaq	fm_(%rip), %rax
	movl	(%rdi,%rax), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	4+fmuser_(%rip), %edi
	movl	-72(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, -24(%rbp)
	movl	4+fmuser_(%rip), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %r8
	movl	-72(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edi
	leaq	0(,%r8,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%edi, (%rdx,%rax)
	addl	$1, -12(%rbp)
	jmp	.L1595
.L1609:
	nop
	movl	-68(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rsi
	leaq	fm_(%rip), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rsi,%rdx)
	jmp	.L1592
.L1608:
	nop
.L1592:
	addl	$1, -4(%rbp)
	jmp	.L1596
.L1605:
	nop
	jmp	.L1589
.L1607:
	nop
.L1589:
	movq	-128(%rbp), %rax
	movl	$0, (%rax)
	movl	4+fm_(%rip), %eax
	testl	%eax, %eax
	jne	.L1610
	movq	-128(%rbp), %rax
	movl	$1, (%rax)
	nop
.L1610:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	fmmpy3_, .-fmmpy3_
	.globl	fmtrap_
	.type	fmtrap_, @function
fmtrap_:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	2616+fm_(%rip), %eax
	testl	%eax, %eax
	jle	.L1611
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.L1614
	movl	2636+fm_(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jle	.L1615
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L1616
.L1615:
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
.L1616:
	movl	$-5, 32+fmuser_(%rip)
	call	fmwarn_
.L1614:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %edx
	negl	%edx
	cmpl	%edx, %eax
	jge	.L1620
	movl	2632+fm_(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jle	.L1618
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L1619
.L1618:
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
.L1619:
	movl	$-6, 32+fmuser_(%rip)
	call	fmwarn_
.L1620:
	nop
.L1611:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	fmtrap_, .-fmtrap_
	.globl	fmaddn_
	.type	fmaddn_, @function
fmaddn_:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L1622
	movl	-16(%rbp), %edx
	movl	$1, -4(%rbp)
.L1624:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1657
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1624
.L1657:
	nop
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	jmp	.L1621
.L1622:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L1626
	movl	-16(%rbp), %eax
	leal	2(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
.L1626:
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-24(%rbp), %edx
	movl	$1, -4(%rbp)
.L1628:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1658
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1628
.L1658:
	nop
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.L1629
	movl	-28(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1631:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1659
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax,%rsi,4), %eax
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movl	%ecx, %esi
	subl	%eax, %esi
	leaq	0(,%rdi,4), %rcx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rcx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L1631
.L1659:
	nop
.L1629:
	movl	fmuser_(%rip), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$1, %eax
	jg	.L1632
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
.L1632:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L1633
	movl	-12(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1635:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1660
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	negl	%eax
	movl	%eax, %esi
	salq	$2, %rcx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rcx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L1635
.L1660:
	nop
.L1633:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L1636
	movl	-36(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -4(%rbp)
.L1638:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1661
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L1638
.L1661:
	nop
.L1636:
	cmpl	$0, -20(%rbp)
	jle	.L1639
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movl	$1, -4(%rbp)
.L1642:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1662
	movl	-52(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	jns	.L1641
	movl	-52(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %esi
	movl	4+fmuser_(%rip), %ecx
	movl	-52(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addl	%ecx, %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	movq	-96(%rbp), %rdx
	movl	(%rdx), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movq	-96(%rbp), %rdx
	movl	(%rdx), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	-1(%rcx), %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
.L1641:
	addl	$1, -4(%rbp)
	jmp	.L1642
.L1662:
	nop
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
.L1644:
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1663
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	leal	(%rdx,%rax), %ecx
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-8(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	-1(%rax), %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L1644
.L1639:
	cmpl	$0, -20(%rbp)
	jne	.L1645
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	movl	$3, -4(%rbp)
.L1648:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1664
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	jns	.L1647
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %esi
	movl	4+fmuser_(%rip), %ecx
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addl	%ecx, %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	-1(%rcx), %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
.L1647:
	addl	$1, -4(%rbp)
	jmp	.L1648
.L1663:
	nop
	jmp	.L1645
.L1664:
	nop
.L1645:
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	$2, -4(%rbp)
.L1651:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1665
	movl	-4(%rbp), %edx
	subl	$2, %edx
	movl	%edx, -56(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	jg	.L1666
	addl	$1, -4(%rbp)
	jmp	.L1651
.L1665:
	nop
	movl	$0, fm_(%rip)
	jmp	.L1621
.L1666:
	nop
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -56(%rbp)
	jle	.L1667
	movl	-60(%rbp), %edx
	movl	$2, -4(%rbp)
.L1654:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1668
	movl	-4(%rbp), %ecx
	movl	-56(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	salq	$2, %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1654
.L1668:
	nop
	addl	$1, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -4(%rbp)
.L1656:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1669
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L1656
.L1669:
	nop
	movl	fm_(%rip), %eax
	subl	-56(%rbp), %eax
	movl	%eax, fm_(%rip)
.L1667:
	nop
.L1621:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	fmaddn_, .-fmaddn_
	.globl	fmaddp_
	.type	fmaddp_, @function
fmaddp_:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	fmuser_(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L1671
	movl	-12(%rbp), %edx
	movl	$1, -4(%rbp)
.L1673:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1701
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1673
.L1701:
	nop
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	$0, (%rdx,%rax)
	jmp	.L1670
.L1671:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	$1, -4(%rbp)
.L1676:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1702
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1676
.L1702:
	nop
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.L1677
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1679:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1703
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movl	-4(%rbp), %eax
	subl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax,%rsi,4), %eax
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	leal	(%rcx,%rax), %esi
	leaq	0(,%rdi,4), %rcx
	leaq	fm_(%rip), %rax
	movl	%esi, (%rcx,%rax)
	addl	$1, -4(%rbp)
	jmp	.L1679
.L1703:
	nop
.L1677:
	movl	fmuser_(%rip), %eax
	addl	$2, %eax
	movl	%eax, -28(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.L1680
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%eax, -4(%rbp)
.L1682:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1704
	movl	-4(%rbp), %eax
	subl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax,%rcx,4), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1682
.L1704:
	nop
.L1680:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L1683
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, -4(%rbp)
.L1685:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1705
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	$0, (%rcx,%rdx)
	addl	$1, -4(%rbp)
	jmp	.L1685
.L1705:
	nop
.L1683:
	movl	fmuser_(%rip), %eax
	cmpl	%eax, -16(%rbp)
	je	.L1670
	cmpl	$0, -16(%rbp)
	jle	.L1687
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-48(%rbp), %eax
	movl	$1, -4(%rbp)
.L1690:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1706
	movl	-28(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jl	.L1689
	movl	-28(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %esi
	movl	4+fmuser_(%rip), %ecx
	movl	-28(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	subl	%ecx, %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	movl	-12(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-12(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rcx), %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
.L1689:
	addl	$1, -4(%rbp)
	jmp	.L1690
.L1706:
	nop
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
.L1692:
	subl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %edx
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1707
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	4+fmuser_(%rip), %eax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movl	%edx, %ecx
	subl	%eax, %ecx
	leaq	0(,%rsi,4), %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fm_(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-8(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rax), %ecx
	salq	$2, %rdx
	leaq	fm_(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L1692
.L1687:
	cmpl	$0, -16(%rbp)
	jne	.L1693
	movl	-12(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	movl	$3, -4(%rbp)
.L1696:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1708
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	4+fmuser_(%rip), %edx
	cmpl	%edx, %ecx
	jl	.L1695
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %esi
	movl	4+fmuser_(%rip), %ecx
	movl	-40(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	subl	%ecx, %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-44(%rbp), %edx
	subl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leal	1(%rcx), %esi
	leaq	0(,%rdx,4), %rcx
	leaq	fm_(%rip), %rdx
	movl	%esi, (%rcx,%rdx)
.L1695:
	addl	$1, -4(%rbp)
	jmp	.L1696
.L1707:
	nop
	jmp	.L1693
.L1708:
	nop
.L1693:
	movl	4+fm_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jl	.L1709
.L1700:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	addl	$4, %eax
	movl	%eax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movl	$4, -4(%rbp)
.L1699:
	cmpl	%edx, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1710
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	salq	$2, %rcx
	leaq	fm_(%rip), %rax
	movl	(%rcx,%rax), %eax
	salq	$2, %rsi
	leaq	fm_(%rip), %rcx
	movl	%eax, (%rsi,%rcx)
	addl	$1, -4(%rbp)
	jmp	.L1699
.L1710:
	nop
	movl	4+fm_(%rip), %eax
	movl	4+fmuser_(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, -52(%rbp)
	movl	4+fm_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	imull	-52(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 8+fm_(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, 4+fm_(%rip)
	movl	fm_(%rip), %eax
	addl	$1, %eax
	movl	%eax, fm_(%rip)
	movl	4+fm_(%rip), %edx
	movl	4+fmuser_(%rip), %eax
	cmpl	%eax, %edx
	jge	.L1700
.L1709:
	nop
.L1670:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	fmaddp_, .-fmaddp_
	.globl	fmcat_
	.type	fmcat_, @function
fmcat_:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$16, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2640+fm_(%rip), %eax
	cmpl	%eax, %edx
	je	.L1711
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2636+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L1714
	movq	-32(%rbp), %rax
	movl	$15, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1732
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L1732
.L1714:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	2632+fm_(%rip), %eax
	cmpl	%eax, %edx
	jne	.L1716
	movq	-32(%rbp), %rax
	movl	$9, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1733
	movq	-32(%rbp), %rax
	movl	$7, (%rax)
	jmp	.L1733
.L1716:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L1718
	movq	-32(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L1711
.L1718:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -8(%rbp)
	subl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$1, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L1719
	movl	fmuser_(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jle	.L1720
	movl	-12(%rbp), %eax
	movl	$3, -4(%rbp)
.L1722:
	cmpl	%eax, -4(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L1734
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	testl	%edx, %edx
	jne	.L1719
	addl	$1, -4(%rbp)
	jmp	.L1722
.L1734:
	nop
.L1720:
	movq	-32(%rbp), %rax
	movl	$12, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1735
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L1735
.L1719:
	movl	2620+fm_(%rip), %edx
	movl	fmuser_(%rip), %eax
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L1724
	movq	-32(%rbp), %rax
	movl	$14, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1736
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L1736
.L1724:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L1726
	movq	-32(%rbp), %rax
	movl	$13, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1737
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L1737
.L1726:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	fmuser_(%rip), %ecx
	movl	2620+fm_(%rip), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.L1728
	movq	-32(%rbp), %rax
	movl	$11, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1738
	movq	-32(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L1738
.L1728:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	2620+fm_(%rip), %edx
	negl	%edx
	cmpl	%edx, %eax
	jl	.L1739
	movq	-32(%rbp), %rax
	movl	$10, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L1740
	movq	-32(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L1740
.L1732:
	nop
	jmp	.L1711
.L1733:
	nop
	jmp	.L1711
.L1735:
	nop
	jmp	.L1711
.L1736:
	nop
	jmp	.L1711
.L1737:
	nop
	jmp	.L1711
.L1738:
	nop
	jmp	.L1711
.L1739:
	nop
	jmp	.L1711
.L1740:
	nop
.L1711:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	fmcat_, .-fmcat_
	.globl	fpabs_
	.type	fpabs_, @function
fpabs_:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmabs_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	fpabs_, .-fpabs_
	.globl	fpacos_
	.type	fpacos_, @function
fpacos_:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmacos_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	fpacos_, .-fpacos_
	.globl	fpadd_
	.type	fpadd_, @function
fpadd_:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmadd_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	fpadd_, .-fpadd_
	.globl	fpasin_
	.type	fpasin_, @function
fpasin_:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmasin_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	fpasin_, .-fpasin_
	.globl	fpatan_
	.type	fpatan_, @function
fpatan_:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmatan_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	fpatan_, .-fpatan_
	.globl	fpatn2_
	.type	fpatn2_, @function
fpatn2_:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmatn2_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	fpatn2_, .-fpatn2_
	.globl	fpbig_
	.type	fpbig_, @function
fpbig_:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	fmpck_(%rip), %rdi
	call	fmbig_
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	fpbig_, .-fpbig_
	.globl	fpcomp_
	.type	fpcomp_, @function
fpcomp_:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-40(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-32(%rbp), %rax
	movl	$2, %ecx
	leaq	1308+fmpck_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmcomp_
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	fpcomp_, .-fpcomp_
	.globl	fpcos_
	.type	fpcos_, @function
fpcos_:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmcos_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	fpcos_, .-fpcos_
	.globl	fpcosh_
	.type	fpcosh_, @function
fpcosh_:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmcosh_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	fpcosh_, .-fpcosh_
	.globl	fpdig_
	.type	fpdig_, @function
fpdig_:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	fpdig_, .-fpdig_
	.globl	fpdim_
	.type	fpdim_, @function
fpdim_:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmdim_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	fpdim_, .-fpdim_
	.globl	fpdiv_
	.type	fpdiv_, @function
fpdiv_:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmdiv_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	fpdiv_, .-fpdiv_
	.globl	fpdivi_
	.type	fpdivi_, @function
fpdivi_:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	fmpck_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmdivi_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	fpdivi_, .-fpdivi_
	.globl	fpdp2m_
	.type	fpdp2m_, @function
fpdp2m_:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	fpdp2m_, .-fpdp2m_
	.globl	fpequ_
	.type	fpequ_, @function
fpequ_:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	fmuser_(%rip), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-24(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmequ_
	movl	-12(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	1308+fmpck_(%rip), %rdi
	call	fmpack_
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	fpequ_, .-fpequ_
	.globl	fpexp_
	.type	fpexp_, @function
fpexp_:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmexp_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	fpexp_, .-fpexp_
	.globl	fpi2m_
	.type	fpi2m_, @function
fpi2m_:
.LFB100:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	fpi2m_, .-fpi2m_
	.globl	fpinp_
	.type	fpinp_, @function
fpinp_:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fminp_
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	fpinp_, .-fpinp_
	.globl	fpint_
	.type	fpint_, @function
fpint_:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmint_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	fpint_, .-fpint_
	.globl	fpipwr_
	.type	fpipwr_, @function
fpipwr_:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	fmpck_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmipwr_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	fpipwr_, .-fpipwr_
	.globl	fplg10_
	.type	fplg10_, @function
fplg10_:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmlg10_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	fplg10_, .-fplg10_
	.globl	fpln_
	.type	fpln_, @function
fpln_:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmln_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	fpln_, .-fpln_
	.globl	fplni_
	.type	fplni_, @function
fplni_:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmlni_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	fplni_, .-fplni_
	.globl	fpm2dp_
	.type	fpm2dp_, @function
fpm2dp_:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmm2dp_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	fpm2dp_, .-fpm2dp_
	.globl	fpm2i_
	.type	fpm2i_, @function
fpm2i_:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmm2i_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	fpm2i_, .-fpm2i_
	.globl	fpm2sp_
	.type	fpm2sp_, @function
fpm2sp_:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmm2sp_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	fpm2sp_, .-fpm2sp_
	.globl	fpmax_
	.type	fpmax_, @function
fpmax_:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmmax_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	fpmax_, .-fpmax_
	.globl	fpmin_
	.type	fpmin_, @function
fpmin_:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmmin_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	fpmin_, .-fpmin_
	.globl	fpmod_
	.type	fpmod_, @function
fpmod_:
.LFB112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmmod_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	fpmod_, .-fpmod_
	.globl	fpmpy_
	.type	fpmpy_, @function
fpmpy_:
.LFB113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmmpy_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	fpmpy_, .-fpmpy_
	.globl	fpmpyi_
	.type	fpmpyi_, @function
fpmpyi_:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	fmpck_(%rip), %rdx
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmmpyi_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	fpmpyi_, .-fpmpyi_
	.globl	fpnint_
	.type	fpnint_, @function
fpnint_:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmnint_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	fpnint_, .-fpnint_
	.globl	fpout_
	.type	fpout_, @function
fpout_:
.LFB116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-24(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmout_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	fpout_, .-fpout_
	.globl	fppi_
	.type	fppi_, @function
fppi_:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	fmpck_(%rip), %rdi
	call	fmpi_
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	fppi_, .-fppi_
	.globl	fpprnt_
	.type	fpprnt_, @function
fpprnt_:
.LFB118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdi
	call	fmprnt_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	fpprnt_, .-fpprnt_
	.globl	fppwr_
	.type	fppwr_, @function
fppwr_:
.LFB119:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpwr_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	fppwr_, .-fppwr_
	.globl	fpsign_
	.type	fpsign_, @function
fpsign_:
.LFB120:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmsign_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	fpsign_, .-fpsign_
	.globl	fpsin_
	.type	fpsin_, @function
fpsin_:
.LFB121:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmsin_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	fpsin_, .-fpsin_
	.globl	fpsinh_
	.type	fpsinh_, @function
fpsinh_:
.LFB122:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmsinh_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	fpsinh_, .-fpsinh_
	.globl	fpsp2m_
	.type	fpsp2m_, @function
fpsp2m_:
.LFB123:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmsp2m_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	fpsp2m_, .-fpsp2m_
	.globl	fpsqrt_
	.type	fpsqrt_, @function
fpsqrt_:
.LFB124:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmsqrt_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	fpsqrt_, .-fpsqrt_
	.globl	fpsub_
	.type	fpsub_, @function
fpsub_:
.LFB125:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	movq	-16(%rbp), %rax
	leaq	1308+fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rdx
	leaq	1308+fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmsub_
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	fpsub_, .-fpsub_
	.globl	fptan_
	.type	fptan_, @function
fptan_:
.LFB126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmtan_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	fptan_, .-fptan_
	.globl	fptanh_
	.type	fptanh_, @function
fptanh_:
.LFB127:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmtanh_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	fptanh_, .-fptanh_
	.globl	fpulp_
	.type	fpulp_, @function
fpulp_:
.LFB128:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	fmpck_(%rip), %rsi
	movq	%rax, %rdi
	call	fmunpk_
	leaq	fmpck_(%rip), %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmulp_
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	fmpck_(%rip), %rdi
	call	fmpack_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	fpulp_, .-fpulp_
	.section	.rodata
	.align 8
.LC134:
	.ascii	" .14887433898163121088482600112971998461756485942069"
	.align 8
.LC135:
	.ascii	" .43339539412924719079926594316578416220007183765625"
	.align 8
.LC136:
	.ascii	" .67940956829902440623432736511487357576929471183481"
	.align 8
.LC137:
	.ascii	" .86506336668898451073209668842349304852754301496533"
	.align 8
.LC138:
	.ascii	" .97390652851717172007796401208445205342826994669238"
	.align 4
.LC139:
	.long	50
.LC140:
	.ascii	"ROOTS.OUT"
.LC144:
	.ascii	"(/' ROOT NUMBER',I2,':')"
	.align 8
.LC145:
	.ascii	"(//' ROOTS COMPLETED.  NO ERRORS.'//)"
	.align 8
.LC146:
	.ascii	"(//' ROOTS COMPLETED.  1 ERROR.'//)"
	.align 8
.LC147:
	.ascii	"(//' ROOTS COMPLETED.',I4,' ERRORS.'//)"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$7632, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	-7104(%rbp), %rax
	movq	.LC134(%rip), %rcx
	movq	8+.LC134(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+.LC134(%rip), %rcx
	movq	24+.LC134(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+.LC134(%rip), %rcx
	movq	40+.LC134(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+.LC134(%rip), %edx
	movl	%edx, 48(%rax)
	leaq	-7104(%rbp), %rax
	addq	$52, %rax
	movabsq	$2314885530818453536, %rsi
	movabsq	$2314885530818453536, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movabsq	$2314885530818453536, %r9
	movq	%r9, 16(%rax)
	movl	$538976288, 24(%rax)
	leaq	-7104(%rbp), %rax
	addq	$80, %rax
	movq	.LC135(%rip), %rcx
	movq	8+.LC135(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+.LC135(%rip), %rcx
	movq	24+.LC135(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+.LC135(%rip), %rcx
	movq	40+.LC135(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+.LC135(%rip), %edx
	movl	%edx, 48(%rax)
	leaq	-7104(%rbp), %rax
	addq	$80, %rax
	addq	$52, %rax
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r9, 16(%rax)
	movl	$538976288, 24(%rax)
	leaq	-7104(%rbp), %rax
	addq	$160, %rax
	movq	.LC136(%rip), %rcx
	movq	8+.LC136(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+.LC136(%rip), %rcx
	movq	24+.LC136(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+.LC136(%rip), %rcx
	movq	40+.LC136(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+.LC136(%rip), %edx
	movl	%edx, 48(%rax)
	leaq	-7104(%rbp), %rax
	addq	$160, %rax
	addq	$52, %rax
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r9, 16(%rax)
	movl	$538976288, 24(%rax)
	leaq	-7104(%rbp), %rax
	addq	$240, %rax
	movq	.LC137(%rip), %rcx
	movq	8+.LC137(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+.LC137(%rip), %rcx
	movq	24+.LC137(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+.LC137(%rip), %rcx
	movq	40+.LC137(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+.LC137(%rip), %edx
	movl	%edx, 48(%rax)
	leaq	-7104(%rbp), %rax
	addq	$240, %rax
	addq	$52, %rax
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r9, 16(%rax)
	movl	$538976288, 24(%rax)
	leaq	-7104(%rbp), %rax
	addq	$320, %rax
	movq	.LC138(%rip), %rcx
	movq	8+.LC138(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+.LC138(%rip), %rcx
	movq	24+.LC138(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+.LC138(%rip), %rcx
	movq	40+.LC138(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+.LC138(%rip), %edx
	movl	%edx, 48(%rax)
	leaq	-7104(%rbp), %rax
	addq	$320, %rax
	addq	$52, %rax
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r9, 16(%rax)
	movl	$538976288, 24(%rax)
	movl	$0, -6628(%rbp)
	leaq	.LC139(%rip), %rdi
	call	fpset_
	movl	$2, 8+fmuser_(%rip)
	movl	$50, 12+fmuser_(%rip)
	movl	$11, 20+fmuser_(%rip)
	leaq	.LC1(%rip), %rax
	movq	%rax, -7640(%rbp)
	movl	$9433, -7632(%rbp)
	leaq	.LC140(%rip), %rax
	movq	%rax, -7584(%rbp)
	movq	$9, -7592(%rbp)
	movl	$0, -7344(%rbp)
	movl	$16777472, -7648(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -7644(%rbp)
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
	movl	$1, -56(%rbp)
.L1845:
	movl	-56(%rbp), %eax
	cmpl	$5, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1850
	movl	-56(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	guess.14553(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	%xmm0, -7112(%rbp)
	movl	$1, -20(%rbp)
.L1838:
	cmpl	$4, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1851
	movsd	-7112(%rbp), %xmm1
	movsd	-7112(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	c.14549(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	8+c.14549(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	16+c.14549(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	24+c.14549(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	32+c.14549(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	40+c.14549(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	c.14549(%rip), %xmm1
	movsd	.LC141(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	8+c.14549(%rip), %xmm2
	movsd	.LC107(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	16+c.14549(%rip), %xmm2
	movsd	.LC142(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	24+c.14549(%rip), %xmm2
	movsd	.LC143(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	32+c.14549(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-7112(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jp	.L1849
	pxor	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	je	.L1836
.L1849:
	movsd	-7112(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	divsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -7112(%rbp)
.L1836:
	addl	$1, -20(%rbp)
	jmp	.L1838
.L1851:
	nop
	movl	fmuser_(%rip), %eax
	movl	%eax, -52(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-6704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdig_
	leaq	-5312(%rbp), %rdx
	leaq	-7112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmdp2m_
	movl	-64(%rbp), %ebx
	movl	$1, -20(%rbp)
.L1844:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1852
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-6704(%rbp,%rax,4), %eax
	movl	%eax, fmuser_(%rip)
	leaq	-6624(%rbp), %rdx
	leaq	-5312(%rbp), %rcx
	leaq	-5312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movq	c.14549(%rip), %rax
	movq	%rax, %xmm0
	call	lround@PLT
	movl	%eax, -60(%rbp)
	leaq	-4000(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	$2, -24(%rbp)
.L1841:
	cmpl	$6, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1853
	leaq	-4000(%rbp), %rdx
	leaq	-4000(%rbp), %rcx
	leaq	-6624(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	c.14549(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %xmm0
	call	lround@PLT
	movl	%eax, -60(%rbp)
	leaq	-1376(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	leaq	-4000(%rbp), %rdx
	leaq	-1376(%rbp), %rcx
	leaq	-4000(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd_
	addl	$1, -24(%rbp)
	jmp	.L1841
.L1853:
	nop
	movq	c.14549(%rip), %rax
	movq	%rax, %xmm0
	call	lround@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	leaq	-2688(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	movl	$2, -24(%rbp)
.L1843:
	cmpl	$5, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L1854
	leaq	-2688(%rbp), %rdx
	leaq	-2688(%rbp), %rcx
	leaq	-6624(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	movl	$6, %eax
	subl	-24(%rbp), %eax
	movl	%eax, %r12d
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	c.14549(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %xmm0
	call	lround@PLT
	imull	%r12d, %eax
	addl	%eax, %eax
	movl	%eax, -60(%rbp)
	leaq	-1376(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fmi2m_
	leaq	-2688(%rbp), %rdx
	leaq	-1376(%rbp), %rcx
	leaq	-2688(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmadd_
	addl	$1, -24(%rbp)
	jmp	.L1843
.L1854:
	nop
	leaq	-2688(%rbp), %rdx
	leaq	-5312(%rbp), %rcx
	leaq	-2688(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmmpy_
	leaq	-1376(%rbp), %rdx
	leaq	-2688(%rbp), %rcx
	leaq	-4000(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmdiv_
	leaq	-5312(%rbp), %rdx
	leaq	-1376(%rbp), %rcx
	leaq	-5312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fmsub_
	movl	-52(%rbp), %eax
	movl	%eax, fmuser_(%rip)
	addl	$1, -20(%rbp)
	jmp	.L1844
.L1852:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -7640(%rbp)
	movl	$9487, -7632(%rbp)
	leaq	.LC144(%rip), %rax
	movq	%rax, -7568(%rbp)
	movq	$24, -7560(%rbp)
	movl	$4096, -7648(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -7644(%rbp)
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-56(%rbp), %rcx
	leaq	-7648(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-5312(%rbp), %rax
	movq	%rax, %rdi
	call	fmprnt_
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-7104(%rbp), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdi
	leaq	-6628(%rbp), %rdx
	leaq	-5312(%rbp), %rax
	movl	$80, %r8d
	leaq	20+fmuser_(%rip), %rcx
	movq	%rax, %rsi
	call	check_
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.L1845
.L1850:
	nop
	movl	-6628(%rbp), %eax
	testl	%eax, %eax
	jne	.L1846
	leaq	.LC1(%rip), %rax
	movq	%rax, -7640(%rbp)
	movl	$9494, -7632(%rbp)
	leaq	.LC145(%rip), %rax
	movq	%rax, -7568(%rbp)
	movq	$37, -7560(%rbp)
	movl	$4096, -7648(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -7644(%rbp)
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1847
.L1846:
	movl	-6628(%rbp), %eax
	cmpl	$1, %eax
	jne	.L1848
	leaq	.LC1(%rip), %rax
	movq	%rax, -7640(%rbp)
	movl	$9497, -7632(%rbp)
	leaq	.LC146(%rip), %rax
	movq	%rax, -7568(%rbp)
	movq	$35, -7560(%rbp)
	movl	$4096, -7648(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -7644(%rbp)
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1847
.L1848:
	leaq	.LC1(%rip), %rax
	movq	%rax, -7640(%rbp)
	movl	$9500, -7632(%rbp)
	leaq	.LC147(%rip), %rax
	movq	%rax, -7568(%rbp)
	movq	$39, -7560(%rbp)
	movl	$4096, -7648(%rbp)
	movl	20+fmuser_(%rip), %eax
	movl	%eax, -7644(%rbp)
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-6628(%rbp), %rcx
	leaq	-7648(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-7648(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L1847:
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE129:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB130:
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
	leaq	options.166.14617(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	main, .-main
	.comm	fm_,2752,32
	.comm	fmuser_,44,32
	.comm	fmbuff_,1545,32
	.comm	fm1_,7848,32
	.comm	fmsave_,9188,32
	.comm	fmpck_,2616,32
	.comm	fmsums_,10464,32
	.data
	.type	nbl.4001, @object
	.size	nbl.4001, 1
nbl.4001:
	.ascii	" "
	.align 8
	.type	nunkno.4021, @object
	.size	nunkno.4021, 12
nunkno.4021:
	.ascii	" "
	.ascii	" "
	.ascii	" "
	.ascii	"U"
	.ascii	"N"
	.ascii	"K"
	.ascii	"N"
	.ascii	"O"
	.ascii	"W"
	.ascii	"N"
	.ascii	" "
	.ascii	" "
	.align 8
	.type	nexpov.4010, @object
	.size	nexpov.4010, 12
nexpov.4010:
	.ascii	" "
	.ascii	" "
	.ascii	" "
	.ascii	"O"
	.ascii	"V"
	.ascii	"E"
	.ascii	"R"
	.ascii	"F"
	.ascii	"L"
	.ascii	"O"
	.ascii	"W"
	.ascii	" "
	.type	nplus.4013, @object
	.size	nplus.4013, 1
nplus.4013:
	.ascii	"+"
	.type	minus.3993, @object
	.size	minus.3993, 1
minus.3993:
	.ascii	"-"
	.align 8
	.type	nexpun.4012, @object
	.size	nexpun.4012, 12
nexpun.4012:
	.ascii	" "
	.ascii	" "
	.ascii	" "
	.ascii	"U"
	.ascii	"N"
	.ascii	"D"
	.ascii	"E"
	.ascii	"R"
	.ascii	"F"
	.ascii	"L"
	.ascii	"O"
	.ascii	"W"
	.type	ndpt.4006, @object
	.size	ndpt.4006, 1
ndpt.4006:
	.ascii	"."
	.align 8
	.type	numb.4019, @object
	.size	numb.4019, 10
numb.4019:
	.ascii	"0"
	.ascii	"1"
	.ascii	"2"
	.ascii	"3"
	.ascii	"4"
	.ascii	"5"
	.ascii	"6"
	.ascii	"7"
	.ascii	"8"
	.ascii	"9"
	.type	m.3990, @object
	.size	m.3990, 1
m.3990:
	.ascii	"M"
	.type	kstar.3985, @object
	.size	kstar.3985, 1
kstar.3985:
	.ascii	"*"
	.type	kminus.8093, @object
	.size	kminus.8093, 1
kminus.8093:
	.ascii	"-"
	.type	kovfl.8097, @object
	.size	kovfl.8097, 4
kovfl.8097:
	.ascii	"O"
	.ascii	"V"
	.ascii	"F"
	.ascii	"L"
	.type	kunfl.8111, @object
	.size	kunfl.8111, 4
kunfl.8111:
	.ascii	"U"
	.ascii	"N"
	.ascii	"F"
	.ascii	"L"
	.type	kunkn.8113, @object
	.size	kunkn.8113, 4
kunkn.8113:
	.ascii	"U"
	.ascii	"N"
	.ascii	"K"
	.ascii	"N"
	.align 32
	.type	jtrans.8084, @object
	.size	jtrans.8084, 128
jtrans.8084:
	.long	2
	.long	9
	.long	9
	.long	9
	.long	9
	.long	7
	.long	9
	.long	9
	.long	3
	.long	3
	.long	3
	.long	5
	.long	5
	.long	8
	.long	8
	.long	8
	.long	4
	.long	4
	.long	4
	.long	9
	.long	9
	.long	9
	.long	9
	.long	9
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	9
	.long	9
	.long	9
	.type	kblank.8088, @object
	.size	kblank.8088, 1
kblank.8088:
	.ascii	" "
	.align 32
	.type	kadd.11358, @object
	.size	kadd.11358, 900
kadd.11358:
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	12
	.long	12
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	1
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	2
	.long	2
	.long	2
	.long	2
	.long	12
	.long	12
	.long	5
	.long	12
	.long	12
	.long	2
	.long	2
	.long	2
	.long	2
	.long	4
	.long	3
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	5
	.long	2
	.long	6
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	4
	.long	3
	.long	2
	.long	2
	.long	2
	.long	2
	.long	12
	.long	12
	.long	6
	.long	12
	.long	12
	.long	2
	.long	2
	.long	2
	.long	2
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	1
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	12
	.long	12
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.align 32
	.type	kmpy.11376, @object
	.size	kmpy.11376, 900
kmpy.11376:
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	12
	.long	12
	.long	11
	.long	12
	.long	12
	.long	12
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	11
	.long	5
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	3
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	11
	.long	5
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	11
	.long	5
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	6
	.long	6
	.long	6
	.long	6
	.long	11
	.long	5
	.long	5
	.long	5
	.long	5
	.long	12
	.long	12
	.long	12
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	12
	.long	12
	.long	12
	.long	5
	.long	5
	.long	5
	.long	5
	.long	11
	.long	6
	.long	6
	.long	6
	.long	6
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	3
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	5
	.long	11
	.long	6
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	4
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	4
	.long	3
	.long	3
	.long	3
	.long	3
	.long	12
	.long	12
	.long	12
	.long	11
	.long	12
	.long	12
	.long	12
	.long	4
	.long	4
	.long	4
	.long	4
	.align 32
	.type	kdiv.11368, @object
	.size	kdiv.11368, 900
kdiv.11368:
	.long	12
	.long	12
	.long	12
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	3
	.long	3
	.long	3
	.long	3
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	12
	.long	3
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	12
	.long	3
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	12
	.long	3
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	5
	.long	6
	.long	6
	.long	6
	.long	6
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	5
	.long	5
	.long	5
	.long	5
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	12
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	5
	.long	5
	.long	5
	.long	5
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	6
	.long	6
	.long	6
	.long	6
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	6
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	6
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	12
	.long	4
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	6
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	12
	.long	4
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	12
	.long	4
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	3
	.long	3
	.long	3
	.long	3
	.long	12
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	12
	.long	12
	.align 32
	.type	kpwr.11378, @object
	.size	kpwr.11378, 900
kpwr.11378:
	.long	12
	.long	12
	.long	0
	.long	5
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	3
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	1
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	1
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	1
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	1
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	1
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	3
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	5
	.long	0
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	11
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	6
	.long	6
	.long	6
	.long	6
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	1
	.long	0
	.long	6
	.long	6
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	1
	.long	0
	.long	6
	.long	6
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	1
	.long	0
	.long	4
	.long	4
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	1
	.long	0
	.long	4
	.long	4
	.long	6
	.long	6
	.long	6
	.long	6
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	12
	.long	12
	.long	4
	.long	4
	.long	4
	.long	4
	.align 32
	.type	ksqrt.11384, @object
	.size	ksqrt.11384, 60
ksqrt.11384:
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	11
	.long	12
	.long	0
	.long	0
	.long	8
	.long	0
	.long	0
	.long	12
	.align 32
	.type	kexp.11370, @object
	.size	kexp.11370, 60
kexp.11370:
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.align 32
	.type	kln.11374, @object
	.size	kln.11374, 60
kln.11374:
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	12
	.align 32
	.type	ksin.11380, @object
	.size	ksin.11380, 60
ksin.11380:
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.align 32
	.type	kcos.11364, @object
	.size	kcos.11364, 60
kcos.11364:
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.align 32
	.type	ktan.11386, @object
	.size	ktan.11386, 60
ktan.11386:
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	12
	.align 32
	.type	kasin.11360, @object
	.size	kasin.11360, 60
kasin.11360:
	.long	12
	.long	12
	.long	12
	.long	9
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	10
	.long	12
	.long	12
	.long	12
	.align 32
	.type	kacos.11356, @object
	.size	kacos.11356, 60
kacos.11356:
	.long	12
	.long	12
	.long	12
	.long	13
	.long	0
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	0
	.long	11
	.long	12
	.long	12
	.long	12
	.align 32
	.type	katan.11362, @object
	.size	katan.11362, 60
katan.11362:
	.long	9
	.long	9
	.long	0
	.long	14
	.long	0
	.long	0
	.long	5
	.long	11
	.long	6
	.long	0
	.long	0
	.long	15
	.long	0
	.long	10
	.long	10
	.align 32
	.type	ksinh.11382, @object
	.size	ksinh.11382, 60
ksinh.11382:
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	1
	.long	5
	.long	11
	.long	6
	.long	1
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.align 32
	.type	kcosh.11366, @object
	.size	kcosh.11366, 60
kcosh.11366:
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.align 32
	.type	ktanh.11388, @object
	.size	ktanh.11388, 60
ktanh.11388:
	.long	7
	.long	7
	.long	0
	.long	0
	.long	0
	.long	1
	.long	5
	.long	11
	.long	6
	.long	1
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.align 32
	.type	klg10.11372, @object
	.size	klg10.11372, 60
klg10.11372:
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	12
	.long	0
	.long	0
	.long	11
	.long	0
	.long	0
	.long	12
	.align 16
	.type	lchars.11649, @object
	.size	lchars.11649, 21
lchars.11649:
	.ascii	"+-0123456789.EDQMedqm"
	.align 32
	.type	ltypes.11651, @object
	.size	ltypes.11651, 84
ltypes.11651:
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.align 32
	.type	lvals.11653, @object
	.size	lvals.11653, 84
lvals.11653:
	.long	1
	.long	-1
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	nrout.12708, @object
	.size	nrout.12708, 172
nrout.12708:
	.ascii	"ABS "
	.ascii	"ACOS"
	.ascii	"ADD "
	.ascii	"ASIN"
	.ascii	"ATAN"
	.ascii	"ATN2"
	.ascii	"BIG "
	.ascii	"COMP"
	.ascii	"COS "
	.ascii	"COSH"
	.ascii	"DIM "
	.ascii	"DIV "
	.ascii	"DIVI"
	.ascii	"DP2M"
	.ascii	"EXP "
	.ascii	"I2M "
	.ascii	"INP "
	.ascii	"INT "
	.ascii	"IPWR"
	.ascii	"LG10"
	.ascii	"LN  "
	.ascii	"LNI "
	.ascii	"M2DP"
	.ascii	"M2I "
	.ascii	"M2SP"
	.ascii	"MAX "
	.ascii	"MIN "
	.ascii	"MOD "
	.ascii	"MPY "
	.ascii	"MPYI"
	.ascii	"NINT"
	.ascii	"OUT "
	.ascii	"PI  "
	.ascii	"PWR "
	.ascii	"SIGN"
	.ascii	"SIN "
	.ascii	"SINH"
	.ascii	"SP2M"
	.ascii	"SQRT"
	.ascii	"SUB "
	.ascii	"TAN "
	.ascii	"TANH"
	.ascii	"ULP "
	.align 32
	.type	guess.14553, @object
	.size	guess.14553, 40
guess.14553:
	.long	313360814
	.long	1069747756
	.long	1518700436
	.long	1071365331
	.long	173173081
	.long	1072020922
	.long	1327660291
	.long	1072410258
	.long	1307044448
	.long	1072638533
	.align 32
	.type	c.14549, @object
	.size	c.14549, 48
c.14549:
	.long	0
	.long	1088851360
	.long	0
	.long	-1057311440
	.long	0
	.long	1089863328
	.long	0
	.long	-1059236992
	.long	0
	.long	1084953088
	.long	0
	.long	-1068531712
	.section	.rodata
	.align 16
	.type	options.166.14617, @object
	.size	options.166.14617, 28
options.166.14617:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1066192077
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1086324736
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	1610612736
	.long	1073636966
	.align 8
.LC21:
	.long	323598773
	.long	1330400395
	.align 4
.LC22:
	.long	2096152002
	.align 4
.LC24:
	.long	1065437102
	.align 16
.LC25:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC28:
	.long	1094202610
	.align 4
.LC29:
	.long	1073741824
	.align 4
.LC37:
	.long	1060205080
	.align 8
.LC43:
	.long	2684354560
	.long	1074118409
	.align 8
.LC44:
	.long	2684354560
	.long	1072049730
	.align 8
.LC45:
	.long	2684354560
	.long	1073069834
	.align 8
.LC69:
	.long	0
	.long	1075052544
	.align 16
.LC70:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 4
.LC91:
	.long	1066180436
	.align 4
.LC92:
	.long	1034281812
	.align 4
.LC93:
	.long	1051371084
	.align 4
.LC94:
	.long	1072483533
	.align 4
.LC95:
	.long	1036831949
	.align 4
.LC96:
	.long	1035489772
	.align 4
.LC97:
	.long	1050253722
	.align 4
.LC98:
	.long	1054615798
	.align 4
.LC99:
	.long	1051260355
	.align 4
.LC100:
	.long	1077936128
	.align 8
.LC107:
	.long	0
	.long	1075838976
	.align 8
.LC109:
	.long	0
	.long	1072168960
	.align 8
.LC110:
	.long	0
	.long	1078329344
	.align 4
.LC118:
	.long	1060320051
	.align 4
.LC119:
	.long	1058139013
	.align 8
.LC141:
	.long	0
	.long	1076101120
	.align 8
.LC142:
	.long	0
	.long	1075314688
	.align 8
.LC143:
	.long	0
	.long	1074790400
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
