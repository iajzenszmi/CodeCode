	.file	"3802.f"
	.text
	.globl	trans_
	.type	trans_, @function
trans_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$8, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
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
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L29
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L30
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L31
	movq	-112(%rbp), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L32
	movl	$2, -44(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	movl	%eax, -68(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -20(%rbp)
.L7:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L33
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	$0, (%rax,%rcx,4)
	addl	$1, -20(%rbp)
	jmp	.L7
.L33:
	nop
	cmpl	$0, -68(%rbp)
	jle	.L34
	movl	-68(%rbp), %ecx
	movl	$1, -28(%rbp)
.L10:
	cmpl	%ecx, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L34
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	imull	-28(%rbp), %eax
	movq	-112(%rbp), %rdx
	movl	(%rdx), %edx
	leal	-1(%rdx), %esi
	cltd
	idivl	%esi
	movl	%eax, -72(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	imull	-72(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L35
	addl	$1, -44(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jg	.L35
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	$1, (%rax,%rdx,4)
	jmp	.L9
.L35:
	nop
.L9:
	addl	$1, -28(%rbp)
	jmp	.L10
.L34:
	nop
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L11
.L38:
	nop
.L14:
	movl	-76(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	addl	$1, -20(%rbp)
	movl	-76(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.L36
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jg	.L37
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jle	.L11
	jmp	.L14
.L37:
	nop
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	imull	-76(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	%eax, -20(%rbp)
	je	.L38
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L16:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	movl	-24(%rbp), %eax
	cltd
	idivl	%edi
	imull	-76(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setle	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %eax
	cmpl	-40(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L39
	movl	-84(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L16
.L39:
	nop
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L38
.L11:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L22:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -80(%rbp)
.L19:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rax
	movl	(%rax), %esi
	movl	-24(%rbp), %eax
	cltd
	idivl	%esi
	imull	-76(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jg	.L17
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	$2, (%rax,%rdx,4)
.L17:
	addl	$1, -44(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L40
.L21:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax,%rdx,4), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movl	-84(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L19
.L40:
	nop
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L41
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L21
.L41:
	nop
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movss	-80(%rbp), %xmm0
	cvttss2sil	%xmm0, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L29
	movl	-84(%rbp), %eax
	cmpl	-40(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L38
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L22
.L29:
	nop
.L2:
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1
.L32:
	nop
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	$1, -20(%rbp)
.L27:
	cmpl	%eax, -20(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L42
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edx
	movq	-120(%rbp), %rcx
	movl	(%rcx), %esi
	movl	%edx, -32(%rbp)
.L26:
	cmpl	%esi, -32(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L43
	movl	-32(%rbp), %edx
	leal	-1(%rdx), %ecx
	movq	-120(%rbp), %rdx
	movl	(%rdx), %edx
	imull	%edx, %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	leal	-1(%rdx), %ecx
	movq	-112(%rbp), %rdx
	movl	(%rdx), %edx
	imull	%edx, %ecx
	movl	-32(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, -84(%rbp)
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-104(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	movq	-104(%rbp), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movq	-104(%rbp), %rdx
	movl	%ecx, (%rdx,%rdi,4)
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rdi
	movss	-80(%rbp), %xmm0
	cvttss2sil	%xmm0, %ecx
	movq	-104(%rbp), %rdx
	movl	%ecx, (%rdx,%rdi,4)
	addl	$1, -32(%rbp)
	jmp	.L26
.L43:
	nop
	addl	$1, -20(%rbp)
	jmp	.L27
.L42:
	nop
	jmp	.L2
.L36:
	nop
	movq	16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L1
.L28:
	jmp	.L1
.L30:
	nop
	movq	16(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L28
.L31:
	nop
	movq	16(%rbp), %rax
	movl	$-2, (%rax)
	jmp	.L28
.L1:
	addq	$8, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	trans_, .-trans_
	.section	.rodata
.LC0:
	.string	"3802.f"
.LC1:
	.ascii	"A1 "
	.align 4
.LC2:
	.long	8
	.align 4
.LC3:
	.long	2
	.align 4
.LC4:
	.long	4
.LC5:
	.ascii	"MOVE1 "
.LC6:
	.ascii	" IOK1 "
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
	subq	$576, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$3, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$3, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	$1, -4(%rbp)
.L46:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L45
	cmpl	$8, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L45
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a1.3968(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L46
.L45:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	leaq	-8(%rbp), %rax
	pushq	%rax
	leaq	.LC2(%rip), %r9
	movq	%rdx, %r8
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	leaq	a1.3968(%rip), %rdi
	call	trans_
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$5, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$3, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	$1, -4(%rbp)
.L48:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L47
	cmpl	$8, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L47
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a1.3968(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L48
.L47:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$6, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$6, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	$1, -4(%rbp)
.L50:
	movl	-576(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L49
	cmpl	$8, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L49
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-48(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L50
.L49:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$7, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$6, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
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
	leaq	options.8.3994(%rip), %rsi
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
	.type	a1.3968, @object
	.size	a1.3968, 32
a1.3968:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.section	.rodata
	.align 16
	.type	options.8.3994, @object
	.size	options.8.3994, 28
options.8.3994:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
