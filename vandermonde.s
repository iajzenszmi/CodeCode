	.file	"vandermonde.f"
	.text
	.section	.rodata
.LC0:
	.string	"vandermonde.f"
.LC1:
	.ascii	"(a)"
.LC2:
	.ascii	" "
.LC3:
	.ascii	"  (None)"
.LC4:
	.ascii	"(i7,7x)"
.LC5:
	.ascii	"('  Col   ',5a14)"
.LC6:
	.ascii	"  Row"
.LC7:
	.ascii	"(g14.6)"
.LC8:
	.ascii	"(i5,a,5a14)"
.LC9:
	.ascii	":"
	.text
	.globl	r8mat_print_some_
	.type	r8mat_print_some_, @function
r8mat_print_some_:
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
	subq	$728, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -728(%rbp)
	movq	%rsi, -736(%rbp)
	movq	%rdx, -744(%rbp)
	movq	%rcx, -752(%rbp)
	movq	%r8, -760(%rbp)
	movq	%r9, -768(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-728(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-736(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	imulq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%rbx, %r15
	notq	%r15
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$703, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$704, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	24(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_string_trim@PLT
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movq	-184(%rbp), %rax
	testq	%rax, %rax
	jle	.L2
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L2:
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-728(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movq	-736(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L3
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$707, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$708, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$8, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L1
.L3:
	movq	-760(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	movq	-736(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%edx, %ecx
	cmovle	%ecx, %edx
	movl	%eax, -56(%rbp)
	movl	%edx, %esi
	movl	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %esi
	movl	$3435973837, %ecx
	imulq	%rsi, %rcx
	shrq	$32, %rcx
	movl	%ecx, %r12d
	shrl	$2, %r12d
	cmpl	%eax, %edx
	jl	.L18
.L16:
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-736(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	addl	$1, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$720, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-56(%rbp), %eax
	movl	-76(%rbp), %r13d
	movl	%eax, -168(%rbp)
.L7:
	movl	-168(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L19
	movl	-168(%rbp), %eax
	addl	$1, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$724, -704(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)
	movq	$14, -600(%rbp)
	movq	$0, -648(%rbp)
	movl	$-1, -716(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$7, -632(%rbp)
	movl	$20480, -720(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-168(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.L7
.L19:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$727, -704(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$17, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-80(%rbp), %r13d
	movl	$1, -168(%rbp)
.L9:
	movl	-720(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L20
	movl	-168(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L20
	movl	-168(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rcx
	leaq	-720(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.L9
.L20:
	nop
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$728, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$5, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$729, -704(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$3, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-752(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	movl	%eax, -84(%rbp)
	movq	-768(%rbp), %rax
	movl	(%rax), %eax
	movq	-728(%rbp), %rdx
	movl	(%rdx), %edx
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %r14d
	movl	%eax, -164(%rbp)
.L15:
	movl	-164(%rbp), %eax
	cmpl	%eax, %r14d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L21
	movl	-80(%rbp), %r13d
	movl	$1, -52(%rbp)
.L12:
	cmpl	%r13d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L22
	movl	-56(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -168(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$740, -704(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)
	movq	$14, -600(%rbp)
	movq	$0, -648(%rbp)
	movl	$-1, -716(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$7, -632(%rbp)
	movl	$20480, -720(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-168(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r15,%rax), %rdx
	movl	-164(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-744(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-720(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -52(%rbp)
	jmp	.L12
.L22:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$744, -704(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$11, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-164(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-80(%rbp), %r13d
	movl	$1, -168(%rbp)
.L14:
	movl	-720(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L23
	movl	-168(%rbp), %eax
	cmpl	%eax, %r13d
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L23
	movl	-168(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rcx
	leaq	-720(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.L14
.L23:
	nop
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.L15
.L21:
	nop
	addl	$5, -56(%rbp)
	movl	%r12d, %eax
	subl	$1, %r12d
	testl	%eax, %eax
	je	.L18
	jmp	.L16
.L18:
	nop
	nop
.L1:
	addq	$728, %rsp
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
	.size	r8mat_print_some_, .-r8mat_print_some_
	.globl	__powidf2
	.globl	bivand1_
	.type	bivand1_, @function
bivand1_:
.LFB1:
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
	subq	$136, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movq	%rax, -96(%rbp)
	movq	%rbx, %rax
	imulq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %r12
	notq	%r12
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -116(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -52(%rbp)
	movl	-116(%rbp), %r14d
	movl	$1, -64(%rbp)
.L34:
	cmpl	%r14d, -64(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L36
	movl	$1, -68(%rbp)
	movl	$1, -72(%rbp)
	movl	-116(%rbp), %r15d
	movl	$1, -76(%rbp)
.L31:
	cmpl	%r15d, -76(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L37
	cmpl	$1, -64(%rbp)
	jne	.L27
	movl	-76(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L28
.L27:
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx,%rcx,8), %r13
	movl	-56(%rbp), %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	movsd	%xmm0, -168(%rbp)
	movl	-60(%rbp), %edi
	movq	%r13, %xmm0
	call	__powidf2@PLT
	movl	-76(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	addq	%rax, %rdx
	mulsd	-168(%rbp), %xmm0
	movq	-160(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
.L28:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.L29
	addl	$1, -68(%rbp)
	jmp	.L30
.L29:
	movl	$1, -68(%rbp)
	addl	$1, -72(%rbp)
.L30:
	addl	$1, -76(%rbp)
	jmp	.L31
.L37:
	nop
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L32
	subl	$1, -56(%rbp)
	addl	$1, -60(%rbp)
	jmp	.L33
.L32:
	addl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
.L33:
	addl	$1, -64(%rbp)
	jmp	.L34
.L36:
	nop
	nop
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	bivand1_, .-bivand1_
	.globl	bivand2_
	.type	bivand2_, @function
bivand2_:
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
	subq	$136, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	%rbx, %rax
	imulq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %rax
	notq	%rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movl	$0, -52(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -60(%rbp)
.L46:
	cmpl	%r13d, -60(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L48
	movq	-120(%rbp), %rax
	movl	(%rax), %r14d
	movl	$1, -56(%rbp)
.L45:
	cmpl	%r14d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L49
	addl	$1, -52(%rbp)
	movl	$0, -64(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %r15d
	movl	$1, -72(%rbp)
.L44:
	cmpl	%r15d, -72(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L50
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -164(%rbp)
	movl	$1, -68(%rbp)
.L43:
	movl	-164(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L51
	addl	$1, -64(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-136(%rbp), %rdx
	movq	(%rdx,%rcx,8), %r12
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	movsd	%xmm0, -152(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	movq	%r12, %xmm0
	call	__powidf2@PLT
	movl	-64(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	movq	-160(%rbp), %rsi
	leaq	(%rsi,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	mulsd	-152(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -68(%rbp)
	jmp	.L43
.L51:
	nop
	addl	$1, -72(%rbp)
	jmp	.L44
.L50:
	nop
	addl	$1, -56(%rbp)
	jmp	.L45
.L49:
	nop
	addl	$1, -60(%rbp)
	jmp	.L46
.L48:
	nop
	nop
	addq	$136, %rsp
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
	.size	bivand2_, .-bivand2_
	.globl	dvand_
	.type	dvand_, @function
dvand_:
.LFB3:
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
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -20(%rbp)
.L54:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movsd	(%rax,%rsi,8), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -20(%rbp)
	jmp	.L54
.L64:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movl	$1, -24(%rbp)
.L58:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L65
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %ecx
	leal	1(%rcx), %esi
	movl	%eax, -20(%rbp)
.L57:
	cmpl	%esi, -20(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L66
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	subl	$1, -20(%rbp)
	jmp	.L57
.L66:
	nop
	addl	$1, -24(%rbp)
	jmp	.L58
.L65:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L62:
	cmpl	$0, -24(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L67
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	-1(%rdx), %ecx
	movl	%eax, -20(%rbp)
.L61:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L68
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	subsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -20(%rbp)
	jmp	.L61
.L68:
	nop
	subl	$1, -24(%rbp)
	jmp	.L62
.L67:
	nop
	nop
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dvand_, .-dvand_
	.globl	dvandprg_
	.type	dvandprg_, @function
dvandprg_:
.LFB4:
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.L71:
	cmpl	$0, -36(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L77
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	subl	$1, -36(%rbp)
	jmp	.L71
.L77:
	nop
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L72
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L73
.L72:
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
.L73:
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-128(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.L75:
	cmpl	$0, -36(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L78
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-128(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	-88(%rbp), %xmm0
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	subl	$1, -36(%rbp)
	jmp	.L75
.L78:
	nop
	nop
	addq	$24, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	dvandprg_, .-dvandprg_
	.globl	pvand_
	.type	pvand_, @function
pvand_:
.LFB5:
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
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -20(%rbp)
.L81:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L93
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	movsd	(%rax,%rsi,8), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -20(%rbp)
	jmp	.L81
.L93:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movl	$1, -24(%rbp)
.L85:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L94
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %ecx
	leal	1(%rcx), %esi
	movl	%eax, -20(%rbp)
.L84:
	cmpl	%esi, -20(%rbp)
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L95
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm2
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	subsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	subl	$1, -20(%rbp)
	jmp	.L84
.L95:
	nop
	addl	$1, -24(%rbp)
	jmp	.L85
.L94:
	nop
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L91:
	cmpl	$0, -24(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L96
	movl	-24(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	%ecx, -20(%rbp)
.L88:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L97
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm1
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm2
	subsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	divsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -20(%rbp)
	jmp	.L88
.L97:
	nop
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	leal	-1(%rdx), %ecx
	movl	%eax, -20(%rbp)
.L90:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L98
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	subsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -20(%rbp)
	jmp	.L90
.L98:
	nop
	subl	$1, -24(%rbp)
	jmp	.L91
.L96:
	nop
	nop
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	pvand_, .-pvand_
	.globl	pvandprg_
	.type	pvandprg_, @function
pvandprg_:
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.L101:
	cmpl	$0, -36(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L105
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	subl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	subsd	%xmm1, %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	subl	$1, -36(%rbp)
	jmp	.L101
.L105:
	nop
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movl	$1, -36(%rbp)
.L103:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L106
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	-96(%rbp), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	.LC12(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	mulsd	-96(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-128(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	movsd	-88(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -36(%rbp)
	jmp	.L103
.L106:
	nop
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-104(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movsd	-88(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	-128(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	nop
	addq	$24, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pvandprg_, .-pvandprg_
	.globl	r8mat_mtv_
	.type	r8mat_mtv_, @function
r8mat_mtv_:
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
	subq	$136, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	imulq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %r12
	notq	%r12
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -52(%rbp)
.L111:
	cmpl	%eax, -52(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L115
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-104(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
	movq	-120(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	$1, -56(%rbp)
.L110:
	cmpl	%ecx, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L116
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-104(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm1
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rsi
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movq	-136(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm2
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-144(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rsi,8)
	addl	$1, -56(%rbp)
	jmp	.L110
.L116:
	nop
	addl	$1, -52(%rbp)
	jmp	.L111
.L115:
	nop
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -52(%rbp)
.L113:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L117
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movsd	(%rax,%rsi,8), %xmm0
	movq	-152(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -52(%rbp)
	jmp	.L113
.L117:
	nop
	nop
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$136, %rsp
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
	.size	r8mat_mtv_, .-r8mat_mtv_
	.globl	r8mat_mv_
	.type	r8mat_mv_, @function
r8mat_mv_:
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
	subq	$136, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	imulq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %r12
	notq	%r12
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -52(%rbp)
.L122:
	cmpl	%eax, -52(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L126
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-104(%rbp), %rdx
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rdx,%rcx,8)
	movq	-128(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	$1, -56(%rbp)
.L121:
	cmpl	%ecx, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L127
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-104(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm1
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rsi
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movq	-136(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm2
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-144(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rsi,8)
	addl	$1, -56(%rbp)
	jmp	.L121
.L127:
	nop
	addl	$1, -52(%rbp)
	jmp	.L122
.L126:
	nop
	movq	-120(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -52(%rbp)
.L124:
	cmpl	%edx, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L128
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-104(%rbp), %rax
	movsd	(%rax,%rsi,8), %xmm0
	movq	-152(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -52(%rbp)
	jmp	.L124
.L128:
	nop
	nop
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	addq	$136, %rsp
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
	.size	r8mat_mv_, .-r8mat_mv_
	.section	.rodata
	.align 4
.LC13:
	.long	1
	.text
	.globl	r8mat_print_
	.type	r8mat_print_, @function
r8mat_print_:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$64, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -32(%rbp)
	imulq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	-48(%rbp)
	movq	%rcx, %r9
	leaq	.LC13(%rip), %r8
	leaq	.LC13(%rip), %rcx
	movq	%rax, %rdi
	call	r8mat_print_some_
	addq	$32, %rsp
	nop
	leaq	-16(%rbp), %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	r8mat_print_, .-r8mat_print_
	.globl	r8vec_copy_
	.type	r8vec_copy_, @function
r8vec_copy_:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -20(%rbp)
.L133:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L135
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rsi,8), %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -20(%rbp)
	jmp	.L133
.L135:
	nop
	nop
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	r8vec_copy_, .-r8vec_copy_
	.section	.rodata
.LC14:
	.ascii	"(2x,i8,a,1x,g16.8)"
	.text
	.globl	r8vec_print_
	.type	r8vec_print_, @function
r8vec_print_:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	%rcx, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$834, -560(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$3, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$835, -560(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$3, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-600(%rbp), %rcx
	movq	-608(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_string_trim@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jle	.L137
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L137:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$836, -560(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$3, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-584(%rbp), %rax
	movl	(%rax), %ebx
	movl	$1, -28(%rbp)
.L139:
	movl	-28(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L141
	leaq	.LC0(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$838, -560(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$18, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-576(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-592(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L139
.L141:
	nop
	nop
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	r8vec_print_, .-r8vec_print_
	.globl	r8vec_uniform_01_
	.type	r8vec_uniform_01_, @function
r8vec_uniform_01_:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -20(%rbp)
.L145:
	cmpl	%edx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L147
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	imulq	$-2092037281, %rcx, %rcx
	shrq	$32, %rcx
	addl	%eax, %ecx
	sarl	$16, %ecx
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movl	-36(%rbp), %eax
	imull	$-127773, %eax, %eax
	addl	%ecx, %eax
	imull	$16807, %eax, %ecx
	movl	-36(%rbp), %eax
	imull	$-2836, %eax, %eax
	addl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L144
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	2147483647(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
.L144:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, -20(%rbp)
	jmp	.L145
.L147:
	nop
	nop
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	r8vec_uniform_01_, .-r8vec_uniform_01_
	.section	.rodata
.LC16:
	.ascii	"(i4,i2,i2)"
.LC17:
	.ascii	"(i2,i2,i2,1x,i3)"
.LC18:
	.ascii	"AM"
.LC19:
	.ascii	"Noon"
.LC20:
	.ascii	"PM"
	.align 8
.LC21:
	.ascii	"(i2,1x,a,1x,i4,2x,i2,a1,i2.2,a1,i2.2,a1,i3.3,1x,a)"
.LC22:
	.ascii	"."
	.text
	.globl	timestamp_
	.type	timestamp_, @function
timestamp_:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	leaq	-50(%rbp), %rsi
	leaq	-20(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$10, %r9d
	movl	$8, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_date_and_time@PLT
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$962, -576(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$8, -472(%rbp)
	movq	$0, -520(%rbp)
	movl	$-1, -588(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$10, -504(%rbp)
	movl	$20480, -592(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-56(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-28(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-12(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$963, -576(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$10, -472(%rbp)
	movq	$0, -520(%rbp)
	movl	$-1, -588(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$16, -504(%rbp)
	movl	$20480, -592(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-24(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-36(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-40(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-32(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-24(%rbp), %eax
	cmpl	$11, %eax
	jg	.L149
	leaq	-8(%rbp), %rax
	movzwl	.LC18(%rip), %edx
	movw	%dx, (%rax)
	leaq	-8(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L150
.L149:
	movl	-24(%rbp), %eax
	cmpl	$12, %eax
	jne	.L151
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L152
	leaq	-8(%rbp), %rax
	movl	.LC19(%rip), %edx
	movl	%edx, (%rax)
	leaq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$538976288, (%rax)
	jmp	.L150
.L152:
	leaq	-8(%rbp), %rax
	movzwl	.LC20(%rip), %edx
	movw	%dx, (%rax)
	leaq	-8(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L150
.L151:
	movl	-24(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	$11, %eax
	jg	.L153
	leaq	-8(%rbp), %rax
	movzwl	.LC20(%rip), %edx
	movw	%dx, (%rax)
	leaq	-8(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L150
.L153:
	movl	-24(%rbp), %eax
	cmpl	$12, %eax
	jne	.L150
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L154
	movabsq	$8388068008498850125, %rax
	movq	%rax, -8(%rbp)
	jmp	.L150
.L154:
	leaq	-8(%rbp), %rax
	movzwl	.LC18(%rip), %edx
	movw	%dx, (%rax)
	leaq	-8(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
.L150:
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$988, -576(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$50, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	month.4509(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-592(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-56(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-592(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	timestamp_, .-timestamp_
	.globl	vand1_
	.type	vand1_, @function
vand1_:
.LFB14:
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
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	%rbx, %rax
	imulq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%rbx, %r12
	notq	%r12
	movq	-88(%rbp), %rax
	movl	(%rax), %r13d
	movl	$1, -52(%rbp)
.L162:
	cmpl	%r13d, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L164
	movq	-88(%rbp), %rax
	movl	(%rax), %r14d
	movl	$1, -56(%rbp)
.L161:
	cmpl	%r14d, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L165
	cmpl	$1, -52(%rbp)
	sete	%al
	movzbl	%al, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-96(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	cmovne	%ecx, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L159
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	jmp	.L160
.L159:
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movl	-52(%rbp), %edx
	subl	$1, %edx
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rbx, %rcx
	leaq	(%r12,%rcx), %rsi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx), %r15
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	__powidf2@PLT
	movq	%xmm0, %rax
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx,%r15,8)
.L160:
	addl	$1, -56(%rbp)
	jmp	.L161
.L165:
	nop
	addl	$1, -52(%rbp)
	jmp	.L162
.L164:
	nop
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	vand1_, .-vand1_
	.data
	.align 32
	.type	month.4509, @object
	.size	month.4509, 108
month.4509:
	.ascii	"January  "
	.ascii	"February "
	.ascii	"March    "
	.ascii	"April    "
	.ascii	"May      "
	.ascii	"June     "
	.ascii	"July     "
	.ascii	"August   "
	.ascii	"September"
	.ascii	"October  "
	.ascii	"November "
	.ascii	"December "
	.section	.rodata
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 16
.LC12:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC15:
	.long	1859432
	.long	1040187392
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
