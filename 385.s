	.file	"385.f"
	.text
	.section	.rodata
.LC0:
	.string	"385.f"
.LC1:
	.ascii	"(a)"
.LC2:
	.ascii	" "
.LC3:
	.ascii	"TEST01"
.LC4:
	.ascii	"  Test DEI to evaluate"
	.align 8
.LC5:
	.ascii	"  the exponential integral function."
	.align 8
.LC6:
	.ascii	"          X         Exact Value      Computed"
.LC7:
	.ascii	"(2x,f12.4,2x,g16.8,2x,g16.8)"
	.text
	.globl	test01_
	.type	test01_, @function
test01_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$53, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$54, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$6, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$55, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$22, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$56, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$36, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$57, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$58, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$45, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$59, -544(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$3, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, -20(%rbp)
.L4:
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-20(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ei_values_
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jle	.L7
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	dei_
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$73, -544(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$28, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-16(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L4
.L7:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	test01_, .-test01_
	.section	.rodata
	.align 8
.LC23:
	.ascii	"(                                                           "
	.ascii	"' DEI CALLED WITH A ZERO ARGUMENT, RESULT SET TO -INFINITY')"
	.text
	.globl	dei_
	.type	dei_, @function
dei_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$832, %rsp
	movq	%rdi, -824(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-824(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-32(%rbp), %xmm0
	jnb	.L28
	movsd	-32(%rbp), %xmm0
	comisd	.LC10(%rip), %xmm0
	jnb	.L29
	movsd	-32(%rbp), %xmm0
	comisd	.LC11(%rip), %xmm0
	jnb	.L30
	movsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC13(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	64+p1.3916(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	64+q1.3928(%rip), %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	$2, -16(%rbp)
.L13:
	cmpl	$8, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L31
	movl	$10, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movsd	-192(%rbp,%rax,8), %xmm0
	mulsd	-40(%rbp), %xmm0
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	subq	$1, %rax
	movsd	-192(%rbp,%rax,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	p1.3916(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp,%rax,8)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	movsd	-272(%rbp,%rax,8), %xmm0
	mulsd	-40(%rbp), %xmm0
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	subq	$1, %rax
	movsd	-272(%rbp,%rax,8), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	q1.3928(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp,%rax,8)
	addl	$1, -16(%rbp)
	jmp	.L13
.L31:
	nop
	movsd	-40(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	p1.3916(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-264(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	q1.3928(%rip), %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	.LC15(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC16(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	movq	.LC17(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC18(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L32
	movsd	x0.3943(%rip), %xmm1
	movsd	-32(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	call	log@PLT
	movsd	-64(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L32:
	nop
	movsd	x0.3943(%rip), %xmm1
	movsd	-64(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	40+p0.3914(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	32+p0.3914(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	24+p0.3914(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	16+p0.3914(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	8+p0.3914(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	p0.3914(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	40+q0.3926(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	32+q0.3926(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	24+q0.3926(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	16+q0.3926(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	8+q0.3926(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	q0.3926(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	x0.3943(%rip), %xmm0
	mulsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	addsd	-56(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L30:
	nop
	movsd	64+p2.3918(%rip), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	56+q2.3930(%rip), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$2, -12(%rbp)
.L17:
	cmpl	$8, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L33
	movl	$9, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	p2.3918(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	q2.3930(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L17
.L33:
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movsd	p2.3918(%rip), %xmm1
	addsd	-8(%rbp), %xmm1
	divsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L29:
	nop
	movsd	-32(%rbp), %xmm0
	comisd	.LC19(%rip), %xmm0
	jnb	.L34
	movsd	72+p3.3920(%rip), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	64+q3.3932(%rip), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$2, -12(%rbp)
.L20:
	cmpl	$9, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L35
	movl	$10, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	p3.3920(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	q3.3932(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L20
.L35:
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movsd	p3.3920(%rip), %xmm1
	addsd	-8(%rbp), %xmm1
	divsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L34:
	nop
	movsd	-24(%rbp), %xmm0
	comisd	-32(%rbp), %xmm0
	jnb	.L36
	movsd	.LC20(%rip), %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L36:
	nop
	movsd	.LC21(%rip), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	72+p4.3922(%rip), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	64+q4.3934(%rip), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$2, -12(%rbp)
.L23:
	cmpl	$9, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L37
	movl	$10, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	p4.3922(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	q4.3934(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L23
.L37:
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	p4.3922(%rip), %xmm0
	addsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	-72(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L28:
	nop
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jp	.L24
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jne	.L38
	movsd	.LC22(%rip), %xmm0
	movsd	%xmm0, -280(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$544, -800(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$120, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L38:
	nop
.L24:
	movsd	-32(%rbp), %xmm0
	movq	.LC24(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC21(%rip), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-72(%rbp), %xmm0
	comisd	.LC25(%rip), %xmm0
	ja	.L39
	movsd	-72(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L40
	movq	-72(%rbp), %rax
	movq	%rax, %xmm0
	call	log@PLT
	movsd	40+a.3896(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	32+a.3896(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	24+a.3896(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	24+a.3896(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	8+a.3896(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	a.3896(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	movsd	40+b.3898(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	32+b.3898(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	24+b.3898(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	24+b.3898(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	8+b.3898(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	movsd	b.3898(%rip), %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L40:
	nop
	movsd	-72(%rbp), %xmm0
	movq	.LC24(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movsd	56+c.3900(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	48+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	40+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	32+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	24+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	16+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	8+c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	c.3900(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	movsd	56+d.3902(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	48+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	40+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	32+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	24+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	16+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	8+d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	d.3902(%rip), %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	movq	.LC24(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
	jmp	.L27
.L39:
	nop
	movsd	-72(%rbp), %xmm0
	movq	.LC24(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movsd	56+e.3905(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	48+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	40+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	32+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	24+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	16+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	8+e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	e.3905(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	-104(%rbp), %xmm1
	movsd	56+f.3907(%rip), %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	48+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	40+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	32+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	24+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	16+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	8+f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-104(%rbp), %xmm3
	movsd	f.3907(%rip), %xmm2
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LC21(%rip), %xmm1
	addsd	%xmm2, %xmm1
	mulsd	-104(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	.LC24(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	dei_, .-dei_
	.globl	ei_values_
	.type	ei_values_, @function
ei_values_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L42
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L42:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jle	.L43
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L41
.L43:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	x_vec.3987(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	fx_vec.3985(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ei_values_, .-ei_values_
	.section	.rodata
.LC26:
	.ascii	"TOMS385_PRB"
	.align 8
.LC27:
	.ascii	"  Test TOMS algorithm 385, to evaluate"
.LC28:
	.ascii	"  Normal end of execution."
	.text
	.type	MAIN__, @function
MAIN__:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$528, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$18, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$19, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$11, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$20, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$38, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$21, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$36, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	call	test01_
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$25, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$26, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$11, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$27, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$26, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
	.cfi_endproc
.LFE3:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB4:
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
	leaq	options.16.4004(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.data
	.align 32
	.type	p1.3916, @object
	.size	p1.3916, 72
p1.3916:
	.long	3503212410
	.long	1106662897
	.long	3586510809
	.long	-1045571253
	.long	617318139
	.long	1103432129
	.long	3526202336
	.long	-1052134383
	.long	492008681
	.long	1096885274
	.long	1994133782
	.long	1089601324
	.long	187292103
	.long	1088151596
	.long	3560749265
	.long	1081723398
	.long	2893114101
	.long	1076240574
	.align 32
	.type	q1.3928, @object
	.size	q1.3928, 72
q1.3928:
	.long	436367342
	.long	1105400169
	.long	2296863462
	.long	-1041967528
	.long	58275295
	.long	1103621399
	.long	3569957485
	.long	-1046394763
	.long	1825651008
	.long	1097917735
	.long	2456831211
	.long	-1053371702
	.long	2578222476
	.long	1089787921
	.long	1086883240
	.long	-1062755719
	.long	0
	.long	1078567168
	.align 8
	.type	x0.3943, @object
	.size	x0.3943, 8
x0.3943:
	.long	1387574780
	.long	1071109929
	.align 32
	.type	p0.3914, @object
	.size	p0.3914, 48
p0.3914:
	.long	0
	.long	1072693248
	.long	3929014759
	.long	1073862776
	.long	1634418437
	.long	1073430156
	.long	2513674251
	.long	1071666690
	.long	905466341
	.long	1068042903
	.long	1290946671
	.long	1060631408
	.align 32
	.type	q0.3926, @object
	.size	q0.3926, 48
q0.3926:
	.long	0
	.long	1072693248
	.long	3929014759
	.long	1074124920
	.long	4213372363
	.long	1074127063
	.long	2850866313
	.long	1072921480
	.long	4087161324
	.long	1070418407
	.long	1495524102
	.long	1066064424
	.align 32
	.type	p2.3918, @object
	.size	p2.3918, 72
p2.3918:
	.long	293133749
	.long	1072691062
	.long	245272195
	.long	1075244215
	.long	1780707077
	.long	1074837854
	.long	1110851549
	.long	1075284956
	.long	3504274868
	.long	-1070372403
	.long	121688715
	.long	1075811378
	.long	3695765787
	.long	1077364196
	.long	3033302318
	.long	-1069390945
	.long	4051450142
	.long	-1073495719
	.align 32
	.type	q2.3930, @object
	.size	q2.3930, 64
q2.3930:
	.long	3846179309
	.long	1072846604
	.long	2255262753
	.long	-1066867511
	.long	3910567045
	.long	1081431511
	.long	4018497681
	.long	1078601860
	.long	3384373656
	.long	1081332856
	.long	3404144031
	.long	-1071593860
	.long	3802313786
	.long	1083059005
	.long	985297816
	.long	1074077279
	.align 32
	.type	p3.3920, @object
	.size	p3.3920, 80
p3.3920:
	.long	4171895373
	.long	1072693233
	.long	606517747
	.long	-1073904263
	.long	379594479
	.long	1077577368
	.long	3603461643
	.long	1077474418
	.long	1589135449
	.long	-1069507015
	.long	3847398960
	.long	-1074971839
	.long	1247223300
	.long	-1070264654
	.long	1587007748
	.long	-1071381687
	.long	4178550653
	.long	-1070425643
	.long	3762979969
	.long	-1074111216
	.align 32
	.type	q3.3932, @object
	.size	q3.3932, 72
q3.3932:
	.long	1548087879
	.long	1072694856
	.long	4193704900
	.long	-1071259903
	.long	3704383070
	.long	1080615734
	.long	1727194673
	.long	1083351892
	.long	473639426
	.long	1078338982
	.long	3364525664
	.long	1081064504
	.long	1823104937
	.long	1078851971
	.long	2827862044
	.long	1078985326
	.long	1742450025
	.long	1079540515
	.align 32
	.type	p4.3922, @object
	.size	p4.3922, 80
p4.3922:
	.long	22
	.long	1072693248
	.long	7227856
	.long	-1073217536
	.long	1749961224
	.long	-1072431087
	.long	2447672423
	.long	-1071888962
	.long	1448838344
	.long	-1070689726
	.long	3912437742
	.long	-1071741279
	.long	2736719866
	.long	-1069810985
	.long	1391931851
	.long	-1070452247
	.long	3775320769
	.long	-1066671083
	.long	1975541922
	.long	1080421079
	.align 32
	.type	q4.3934, @object
	.size	q4.3934, 72
q4.3934:
	.long	4294924426
	.long	1073741823
	.long	1908967531
	.long	-1073217537
	.long	565698423
	.long	-1071646655
	.long	233497042
	.long	-1071117923
	.long	2140699351
	.long	1079090924
	.long	1497681658
	.long	1079855992
	.long	3765875633
	.long	1080113482
	.long	900913978
	.long	1074776124
	.long	545184797
	.long	1088646419
	.align 32
	.type	a.3896, @object
	.size	a.3896, 48
a.3896:
	.long	4235179545
	.long	-1075677044
	.long	853526063
	.long	1072177693
	.long	1349171319
	.long	1069588198
	.long	1016159914
	.long	1066968401
	.long	2022607730
	.long	1062577156
	.long	2939872372
	.long	1058094595
	.align 32
	.type	b.3898, @object
	.size	b.3898, 48
b.3898:
	.long	0
	.long	1072693248
	.long	2972979482
	.long	1071333870
	.long	1853032534
	.long	1068788845
	.long	4098615111
	.long	1065418926
	.long	2797247223
	.long	1061150948
	.long	1451514939
	.long	1055614591
	.align 32
	.type	c.3900, @object
	.size	c.3900, 64
c.3900:
	.long	3554861670
	.long	1048005402
	.long	2591127782
	.long	1072693238
	.long	3269027540
	.long	1076343381
	.long	2298191936
	.long	1078381545
	.long	1945599481
	.long	1079081827
	.long	118242758
	.long	1078280854
	.long	1345335689
	.long	1075948646
	.long	4061197766
	.long	1071231019
	.align 32
	.type	d.3902, @object
	.size	d.3902, 64
d.3902:
	.long	0
	.long	1072693248
	.long	1818496377
	.long	1076474438
	.long	3954548689
	.long	1078737087
	.long	2967333931
	.long	1079683402
	.long	2154055269
	.long	1079406282
	.long	2193540302
	.long	1077903175
	.long	1329912380
	.long	1074683230
	.long	240118137
	.long	1068975089
	.align 32
	.type	e.3905, @object
	.size	e.3905, 64
e.3905:
	.long	4294967057
	.long	-1074790401
	.long	1482785512
	.long	-1069468674
	.long	3527213309
	.long	-1065699195
	.long	4077758566
	.long	-1063077879
	.long	591597469
	.long	-1061676838
	.long	3559647138
	.long	-1061572584
	.long	2637841277
	.long	-1063226329
	.long	3731319094
	.long	-1070740396
	.align 32
	.type	f.3907, @object
	.size	f.3907, 64
f.3907:
	.long	0
	.long	1072693248
	.long	1482782344
	.long	1078080510
	.long	1750541763
	.long	1082058117
	.long	1958275142
	.long	1084812427
	.long	2746626279
	.long	1086599305
	.long	2600772902
	.long	1087365650
	.long	1016833665
	.long	1086703331
	.long	701810800
	.long	1084396615
	.align 32
	.type	x_vec.3987, @object
	.size	x_vec.3987, 128
x_vec.3987:
	.long	0
	.long	1071644672
	.long	858993459
	.long	1071854387
	.long	1717986918
	.long	1072064102
	.long	2576980378
	.long	1072273817
	.long	3435973837
	.long	1072483532
	.long	0
	.long	1072693248
	.long	2576980378
	.long	1072798105
	.long	858993459
	.long	1072902963
	.long	3435973837
	.long	1073007820
	.long	1717986918
	.long	1073112678
	.long	0
	.long	1073217536
	.long	2576980378
	.long	1073322393
	.long	858993459
	.long	1073427251
	.long	3435973837
	.long	1073532108
	.long	1717986918
	.long	1073636966
	.long	0
	.long	1073741824
	.align 32
	.type	fx_vec.3985, @object
	.size	fx_vec.3985, 128
fx_vec.3985:
	.long	1562711947
	.long	1071452656
	.long	373467649
	.long	1072210654
	.long	543357861
	.long	1072761308
	.long	2933197612
	.long	1073057519
	.long	1784564950
	.long	1073346313
	.long	255134986
	.long	1073631847
	.long	1818642644
	.long	1073829578
	.long	2920659731
	.long	1073973607
	.long	3333406098
	.long	1074120044
	.long	3379987280
	.long	1074269890
	.long	1484140395
	.long	1074424072
	.long	4232396148
	.long	1074583473
	.long	4101315638
	.long	1074748961
	.long	1206843363
	.long	1074855901
	.long	2064817384
	.long	1074946038
	.long	3483303343
	.long	1075040546
	.section	.rodata
	.align 16
	.type	options.16.4004, @object
	.size	options.16.4004, 28
options.16.4004:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC8:
	.long	1889785610
	.long	1082535485
	.align 8
.LC10:
	.long	0
	.long	1076363264
	.align 8
.LC11:
	.long	0
	.long	1075314688
	.align 8
.LC12:
	.long	0
	.long	1074266112
	.align 8
.LC13:
	.long	0
	.long	1073741824
	.align 8
.LC14:
	.long	0
	.long	1071644672
	.align 8
.LC15:
	.long	1387560960
	.long	1071109929
	.align 8
.LC16:
	.long	1285054463
	.long	1030422046
	.align 16
.LC17:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC18:
	.long	4226247819
	.long	1067643305
	.align 8
.LC19:
	.long	0
	.long	1077411840
	.align 8
.LC20:
	.long	4294967295
	.long	2146435071
	.align 8
.LC21:
	.long	0
	.long	1072693248
	.align 8
.LC22:
	.long	4294967295
	.long	-1048577
	.align 16
.LC24:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC25:
	.long	0
	.long	1074790400
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
