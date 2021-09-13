	.file	"718-sampleprogram5.f"
	.text
	.section	.rodata
.LC1:
	.string	"718-sampleprogram5.f"
	.align 8
.LC2:
	.ascii	"(1X,'COMPLEX EIGENVALUES ARE NOT COMPLEX CONJUGATES.')"
	.align 8
.LC3:
	.ascii	"(1X,I4,' EIGENVALUES ALLOCATED.')"
	.align 4
.LC4:
	.long	1
	.align 4
.LC5:
	.long	3
	.align 8
.LC7:
	.ascii	"(1X,'SYSTEM IS CLOSE TO UNCONTROLLABLE')"
.LC8:
	.ascii	"(1X,'USING TOLERANCE ',E20.12)"
	.text
	.globl	dsevas_
	.type	dsevas_, @function
dsevas_:
.LFB0:
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
	subq	$720, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	%rcx, -720(%rbp)
	movq	%r8, -728(%rbp)
	movq	%r9, -736(%rbp)
	movq	-712(%rbp), %rax
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
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-704(%rbp), %rax
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
	je	.L2
	movq	24(%rbp), %rdi
	movq	-720(%rbp), %rcx
	movq	-712(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	contmk_
.L2:
	movq	40(%rbp), %rdi
	movq	-720(%rbp), %rcx
	movq	-712(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	-696(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	geteps_
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	leal	-2(%rax), %ecx
	movl	$1, -48(%rbp)
.L6:
	cmpl	%ecx, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-48(%rbp), %eax
	leal	2(%rax), %esi
	movq	-704(%rbp), %rax
	movl	(%rax), %edx
	movl	%esi, -36(%rbp)
.L5:
	cmpl	%edx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L30
	movl	-48(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rsi
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movq	-696(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rsi,8)
	addl	$1, -36(%rbp)
	jmp	.L5
.L30:
	nop
	addl	$1, -48(%rbp)
	jmp	.L6
.L29:
	nop
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movq	48(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -124(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
.L12:
	cmpl	$2, -44(%rbp)
	jle	.L31
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -84(%rbp)
	leaq	-120(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	movq	-728(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	eigchk_
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L8
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$365, -672(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$54, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$366, -672(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$33, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -136(%rbp)
	leaq	-136(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L9
.L8:
	movq	-736(%rbp), %r9
	movq	-728(%rbp), %r8
	movq	-712(%rbp), %rcx
	movq	-704(%rbp), %rdx
	leaq	-132(%rbp), %rsi
	movq	-696(%rbp), %rax
	leaq	-124(%rbp), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	appsh_
	addq	$16, %rsp
	movq	-736(%rbp), %r8
	movq	-712(%rbp), %rcx
	movq	-704(%rbp), %rdx
	leaq	-132(%rbp), %rsi
	movq	-696(%rbp), %rax
	subq	$8, %rsp
	leaq	-124(%rbp), %rdi
	pushq	%rdi
	movq	16(%rbp), %r9
	movq	%rax, %rdi
	call	crh_
	addq	$16, %rsp
	movl	-132(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-124(%rbp), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-736(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-132(%rbp), %rdx
	movq	-712(%rbp), %rsi
	movq	-720(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	leaq	.LC4(%rip), %r8
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdi
	call	prem_
	addq	$16, %rsp
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L27
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$399, -672(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$40, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$400, -672(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$30, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-120(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$401, -672(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$33, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
	leaq	-140(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-84(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-132(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L9
.L27:
	movl	-132(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-132(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-132(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-132(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	subl	$2, -44(%rbp)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L12
.L31:
	nop
	cmpl	$1, -44(%rbp)
	jne	.L13
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L28
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$435, -672(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$40, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$436, -672(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$30, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-120(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$437, -672(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$33, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)
	leaq	-144(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L9
.L28:
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L9
.L13:
	leaq	-120(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	movq	-728(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	eigchk_
	xorl	$1, %eax
	movl	%eax, %ecx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%eax, %ecx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L16
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L17
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$456, -672(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$40, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$457, -672(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$30, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-120(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L18
.L17:
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$459, -672(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$54, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L18:
	leaq	.LC1(%rip), %rax
	movq	%rax, -680(%rbp)
	movl	$461, -672(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -608(%rbp)
	movq	$33, -600(%rbp)
	movl	$4096, -688(%rbp)
	movl	$6, -684(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -148(%rbp)
	leaq	-148(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L9
.L16:
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-728(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	addsd	%xmm1, %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	-104(%rbp), %xmm0
	subsd	-96(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	subsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	addq	%rax, %rdx
	movq	-696(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	subsd	-112(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-720(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	56(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	48(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
.L9:
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
.L20:
	movl	-128(%rbp), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L32
	movl	-128(%rbp), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-736(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-128(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movq	-712(%rbp), %rsi
	movq	56(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rcx
	pushq	%rcx
	movq	%rdi, %r9
	leaq	.LC4(%rip), %r8
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdi
	call	prem_
	addq	$16, %rsp
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L20
.L32:
	nop
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	xorl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movq	-704(%rbp), %rax
	movl	(%rax), %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movq	-704(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	subl	$4, %eax
	movl	%eax, -40(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %ebx
	movl	$2, -128(%rbp)
.L23:
	movl	-128(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L34
	movq	-704(%rbp), %rax
	movl	(%rax), %edx
	movl	-128(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-704(%rbp), %rax
	movl	(%rax), %edx
	movl	-128(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	movl	-40(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-156(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	56(%rbp), %rax
	subq	$8, %rsp
	leaq	-128(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	leaq	.LC4(%rip), %r8
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	post_
	addq	$16, %rsp
	movl	-128(%rbp), %eax
	movl	-40(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L23
.L34:
	nop
	nop
.L33:
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
.LFE0:
	.size	dsevas_, .-dsevas_
	.globl	post_
	.type	post_, @function
post_:
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
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movq	-96(%rbp), %rdx
	movl	(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L37:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L39
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-80(%rbp), %rax
	leaq	.LC4(%rip), %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	16(%rbp), %rdi
	call	ddot_@PLT
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r9
	movq	%rsi, %r8
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	daxpy_@PLT
	addl	$1, -36(%rbp)
	jmp	.L37
.L39:
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
	.size	post_, .-post_
	.globl	prem_
	.type	prem_, @function
prem_:
.LFB2:
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
.L42:
	cmpl	%r13d, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L44
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	leaq	.LC4(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	ddot_@PLT
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-36(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC4(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	daxpy_@PLT
	addl	$1, -36(%rbp)
	jmp	.L42
.L44:
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
.LFE2:
	.size	prem_, .-prem_
	.globl	eigchk_
	.type	eigchk_, @function
eigchk_:
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
	movl	$1, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rcx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L46
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-8(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L46
	movl	$0, -20(%rbp)
.L46:
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	eigchk_, .-eigchk_
	.globl	crh_
	.type	crh_, @function
crh_:
.LFB4:
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-112(%rbp), %rax
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
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	movq	-96(%rbp), %rdx
	movl	(%rdx), %edx
	leal	3(%rdx), %r13d
	movl	%eax, -36(%rbp)
.L50:
	cmpl	%r13d, -36(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L52
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
	movq	-128(%rbp), %rax
	movl	%ecx, (%rax,%rdx,4)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$3, %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,8), %rcx
	movq	-88(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movq	-112(%rbp), %rax
	leaq	.LC4(%rip), %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rdi
	call	dcopy_@PLT
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	house_
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm4
	movsd	%xmm4, -136(%rbp)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC5(%rip), %rdi
	call	dnrm2_@PLT
	movq	.LC6(%rip), %xmm1
	movq	.LC9(%rip), %xmm2
	movsd	-136(%rbp), %xmm3
	andpd	%xmm2, %xmm3
	andpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -64(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	leaq	-64(%rbp), %r8
	leaq	-60(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	post_
	addq	$16, %rsp
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-36(%rbp), %eax
	subl	$2, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-36(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -68(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	prem_
	addq	$16, %rsp
	subl	$1, -36(%rbp)
	jmp	.L50
.L52:
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
.LFE4:
	.size	crh_, .-crh_
	.globl	house_
	.type	house_, @function
house_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	idamax_@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	dscal_@PLT
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm4
	movsd	%xmm4, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	call	dnrm2_@PLT
	movq	.LC6(%rip), %xmm1
	movq	.LC9(%rip), %xmm2
	movsd	-48(%rbp), %xmm3
	andpd	%xmm2, %xmm3
	andpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0
	addsd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	house_, .-house_
	.globl	appsh_
	.type	appsh_, @function
appsh_:
.LFB6:
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
	movsd	(%rcx,%rsi,8), %xmm1
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm1
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	(%rcx,%rcx), %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm2
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	leaq	-1(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
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
	movsd	(%rcx,%rsi,8), %xmm1
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
	movsd	(%rcx,%rsi,8), %xmm0
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	-3(%rcx), %rsi
	mulsd	%xmm1, %xmm0
	movq	-80(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rsi,8)
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
	movsd	(%rcx,%rsi,8), %xmm1
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
	movsd	(%rcx,%rsi,8), %xmm0
	mulsd	%xmm0, %xmm1
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
	movsd	(%rcx,%rsi,8), %xmm2
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
	movsd	(%rcx,%rsi,8), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
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
	movsd	(%rcx,%rsi,8), %xmm1
	mulsd	-16(%rbp), %xmm1
	movq	24(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	-2(%rcx), %rsi
	subsd	%xmm1, %xmm0
	movq	-80(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rsi,8)
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
	movsd	(%rcx,%rsi,8), %xmm1
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
	movsd	(%rcx,%rsi,8), %xmm0
	mulsd	%xmm0, %xmm1
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
	movsd	(%rcx,%rsi,8), %xmm2
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
	movsd	(%rcx,%rsi,8), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
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
	movsd	(%rax,%rdx,8), %xmm1
	mulsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	-1(%rax), %rdx
	addsd	-24(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	house_
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	leaq	-28(%rbp), %r8
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	post_
	addq	$16, %rsp
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC5(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	prem_
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	appsh_, .-appsh_
	.globl	geteps_
	.type	geteps_, @function
geteps_:
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
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	%rbx, %r13
	notq	%r13
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L69
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.L60
.L69:
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.L61
.L70:
	nop
.L61:
	movsd	-40(%rbp), %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, maceps_(%rip)
	leaq	maceps_(%rip), %rdi
	call	dstore_
	movsd	maceps_(%rip), %xmm0
	movsd	.LC10(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L61
	movsd	.LC10(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L70
	movsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-136(%rbp), %rax
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, (%rax)
.L60:
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dasum_@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %r12d
	movl	$1, -44(%rbp)
.L65:
	cmpl	%r12d, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L71
	movl	-44(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%r13, %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-112(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dasum_@PLT
	movq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	movsd	-80(%rbp), %xmm0
	comisd	-56(%rbp), %xmm0
	jbe	.L63
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.L63:
	addl	$1, -44(%rbp)
	jmp	.L65
.L71:
	nop
	movsd	-40(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	geteps_, .-geteps_
	.globl	dstore_
	.type	dstore_, @function
dstore_:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, maceps_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dstore_, .-dstore_
	.globl	contmk_
	.type	contmk_, @function
contmk_:
.LFB9:
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
.L81:
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L83
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L76
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rsi
	leaq	-44(%rbp), %rax
	leaq	.LC4(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rdi
	call	dcopy_@PLT
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm5
	movsd	%xmm5, -112(%rbp)
	movq	-96(%rbp), %rcx
	leaq	-44(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dnrm2_@PLT
	movq	.LC6(%rip), %xmm1
	movq	.LC9(%rip), %xmm2
	movsd	-112(%rbp), %xmm3
	andpd	%xmm2, %xmm3
	andpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -24(%rbp)
.L78:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L84
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-96(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -24(%rbp)
	jmp	.L78
.L76:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
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
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-44(%rbp), %rax
	leaq	.LC4(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rdi
	call	dcopy_@PLT
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
	movsd	(%rax,%rdx,8), %xmm6
	movsd	%xmm6, -112(%rbp)
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
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-44(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dnrm2_@PLT
	movq	.LC6(%rip), %xmm1
	movq	.LC9(%rip), %xmm2
	movsd	-112(%rbp), %xmm4
	andpd	%xmm2, %xmm4
	andpd	%xmm1, %xmm0
	orpd	%xmm4, %xmm0
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
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	2(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movl	%ecx, -24(%rbp)
.L80:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L85
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
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -24(%rbp)
	jmp	.L80
.L84:
	nop
	jmp	.L79
.L85:
	nop
.L79:
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	vhouse_
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
	leaq	0(,%rax,8), %rdx
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
	call	prem_
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
	leaq	0(,%rax,8), %rdx
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
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rdi
	call	post_
	addq	$16, %rsp
	movl	-44(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.L81
.L83:
	nop
	nop
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	contmk_, .-contmk_
	.globl	vhouse_
	.type	vhouse_, @function
vhouse_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	idamax_@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdi
	call	dscal_@PLT
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm4
	movsd	%xmm4, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dnrm2_@PLT
	movq	.LC6(%rip), %xmm1
	movq	.LC9(%rip), %xmm2
	movsd	-56(%rbp), %xmm3
	andpd	%xmm2, %xmm3
	andpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0
	addsd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	vhouse_, .-vhouse_
	.section	.rodata
.LC12:
	.ascii	"*****************************"
.LC13:
	.ascii	"     DSEVAS TEST PROGRAM"
.LC14:
	.ascii	"(1X,'DATA FILE: ',/)"
.LC15:
	.ascii	"(A)"
.LC16:
	.ascii	"OLD"
.LC17:
	.ascii	"INPUT SYSTEM TOO LARGE."
.LC18:
	.ascii	"SYSTEM MATRIX (b,A):"
.LC19:
	.ascii	"(1X,10E15.6)"
.LC20:
	.ascii	"EIGENVALUES TO BE ALLOCATED:"
	.align 4
.LC21:
	.long	25
.LC22:
	.ascii	"RESULT VECTOR F:"
.LC23:
	.ascii	"EIGENVALUES OF (A - B*F): "
	.text
	.type	MAIN__, @function
MAIN__:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$41744, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$17, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$18, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$29, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$19, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$24, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$20, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$29, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$21, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$22, -41744(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -41680(%rbp)
	movq	$20, -41672(%rbp)
	movl	$4096, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$24, -41744(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -41680(%rbp)
	movq	$3, -41672(%rbp)
	movl	$4096, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-16496(%rbp), %rcx
	leaq	-41760(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$26, -41744(%rbp)
	leaq	-16496(%rbp), %rax
	movq	%rax, -41696(%rbp)
	movq	$20, -41704(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -41688(%rbp)
	movq	$3, -41680(%rbp)
	movl	$0, -41456(%rbp)
	movl	$16777984, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$27, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-19620(%rbp), %rcx
	leaq	-41760(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-19620(%rbp), %eax
	cmpl	$25, %eax
	jle	.L89
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$30, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$23, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L89:
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$33, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-16500(%rbp), %rcx
	leaq	-41760(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_logical@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$34, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-19632(%rbp), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L93:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L108
	movl	-19620(%rbp), %r12d
	movl	$1, -24(%rbp)
.L92:
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L109
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$37, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rcx,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L92
.L109:
	nop
	addl	$1, -20(%rbp)
	jmp	.L93
.L108:
	nop
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L95:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L110
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$42, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10240(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10240(%rbp,%rdx,8), %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	addl	$1, -20(%rbp)
	jmp	.L95
.L110:
	nop
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L97:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L111
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$47, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	leaq	-19616(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	leaq	-19616(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L97
.L111:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$50, -41744(%rbp)
	movl	$0, -41760(%rbp)
	movl	$5, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_close@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$55, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$56, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$57, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$20, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$58, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L101:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L112
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$60, -41744(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -41680(%rbp)
	movq	$12, -41672(%rbp)
	movl	$4096, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-10240(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-19620(%rbp), %r12d
	movl	$1, -24(%rbp)
.L100:
	movl	-41760(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L113
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L113
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L100
.L113:
	nop
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L101
.L112:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$63, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$64, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$28, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$65, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L103:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L114
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$67, -41744(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -41680(%rbp)
	movq	$12, -41672(%rbp)
	movl	$4096, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	(%rax,%rax), %rdx
	leaq	-19616(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-1(%rax), %rdx
	leaq	-19616(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L103
.L114:
	nop
	leaq	-41232(%rbp), %r8
	leaq	-19616(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19620(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16504(%rbp), %rcx
	pushq	%rcx
	leaq	-19632(%rbp), %rcx
	pushq	%rcx
	leaq	-16500(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19216(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_
	addq	$48, %rsp
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$79, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$80, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$16, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$81, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L105:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L115
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$83, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movsd	-10448(%rbp), %xmm2
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -20(%rbp)
	jmp	.L105
.L115:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19620(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$95, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$96, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movl	$26, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$97, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19620(%rbp), %ebx
	movl	$1, -20(%rbp)
.L107:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L116
	leaq	.LC1(%rip), %rax
	movq	%rax, -41752(%rbp)
	movl	$99, -41744(%rbp)
	movl	$128, -41760(%rbp)
	movl	$6, -41756(%rbp)
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41760(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41760(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L107
.L116:
	nop
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE11:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB12:
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
	leaq	options.76.4349(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.comm	maceps_,8,16
	.section	.rodata
	.align 16
	.type	options.76.4349, @object
	.size	options.76.4349, 28
options.76.4349:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 16
.LC6:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 16
.LC9:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
