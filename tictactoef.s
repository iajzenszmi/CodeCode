	.file	"tictactoef.f08"
	.text
	.globl	__tic_MOD_b
	.bss
	.align 32
	.type	__tic_MOD_b, @object
	.size	__tic_MOD_b, 36
__tic_MOD_b:
	.zero	36
	.text
	.globl	__tic_MOD_minmax
	.type	__tic_MOD_minmax, @function
__tic_MOD_minmax:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, %esi
	movl	$1, %eax
.L4:
	cmpq	$9, %rax
	jg	.L2
	leaq	-1(%rax), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	testl	%edx, %edx
	jne	.L3
	movl	$0, %esi
	jmp	.L2
.L3:
	addq	$1, %rax
	jmp	.L4
.L2:
	testl	%esi, %esi
	je	.L5
	movl	$0, -4(%rbp)
	jmp	.L6
.L5:
	movl	inf.3886(%rip), %eax
	negl	%eax
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
.L11:
	cmpl	$9, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L13
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	__tic_MOD_b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L7
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	__tic_MOD_iswin
	testl	%eax, %eax
	je	.L8
	movl	win.3889(%rip), %eax
	movl	%eax, -12(%rbp)
	jmp	.L9
.L8:
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_random_r4@PLT
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__tic_MOD_minmax
	negl	%eax
	movl	%eax, %edx
	movss	-20(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
.L9:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L10
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L10:
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	__tic_MOD_b(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	win.3889(%rip), %eax
	cmpl	%eax, -12(%rbp)
	je	.L13
.L7:
	addl	$1, -8(%rbp)
	jmp	.L11
.L13:
	nop
.L6:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__tic_MOD_minmax, .-__tic_MOD_minmax
	.section	.rodata
.LC1:
	.string	"tictactoef.f08"
.LC2:
	.ascii	"(3a3,'   ',3i3)"
.LC3:
	.ascii	" "
.LC4:
	.ascii	"(/,a)"
	.text
	.globl	__tic_MOD_printb
	.type	__tic_MOD_printb, @function
__tic_MOD_printb:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	-704(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$31, -544(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$15, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$0, -20(%rbp)
.L20:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L15
	cmpl	$2, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	cltq
	movl	-20(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, %edx
	addl	%edx, %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	movq	$4, -656(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$4, -672(%rbp)
	movb	$1, -660(%rbp)
	movb	$1, -659(%rbp)
	movq	$1, -640(%rbp)
	movl	$1, %ecx
	subq	%rax, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -632(%rbp)
	movq	$1, -648(%rbp)
	leaq	-1(%rax), %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -688(%rbp)
	negq	%rax
	movq	%rax, -680(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	$1, -608(%rbp)
	movb	$1, -596(%rbp)
	movb	$6, -595(%rbp)
	movq	$1, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	$2, -568(%rbp)
	movq	$1, -592(%rbp)
	leaq	-27(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$0, -616(%rbp)
	movl	$0, %eax
.L17:
	cmpq	$2, %rax
	jg	.L16
	movq	-688(%rbp), %rdx
	movq	-648(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rcx
	movq	-624(%rbp), %rdx
	leaq	s.3908(%rip), %rsi
	movzbl	(%rcx,%rsi), %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, %rax
	jmp	.L17
.L16:
	leaq	-624(%rbp), %rsi
	leaq	-560(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	1(%rax), %ecx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ebx
	movl	%ecx, -24(%rbp)
.L19:
	movl	-560(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L22
	movl	-24(%rbp), %eax
	cmpl	%eax, %ebx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L22
	leaq	-24(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L19
.L22:
	nop
	addl	$1, -20(%rbp)
	jmp	.L20
.L15:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-696(%rbp), %rsi
	movq	-704(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_gfortran_compare_string@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$32, -544(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$5, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L23:
	nop
	addq	$696, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__tic_MOD_printb, .-__tic_MOD_printb
	.globl	__tic_MOD_iswin
	.type	__tic_MOD_iswin, @function
__tic_MOD_iswin:
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
	subq	$416, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -560(%rbp)
	movl	$1, %r13d
	movq	$4, -520(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$4, -536(%rbp)
	movb	$1, -524(%rbp)
	movb	$1, -523(%rbp)
	movq	$1, -504(%rbp)
	movq	$3, -496(%rbp)
	movq	$1, -512(%rbp)
	leaq	A.9.3960(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	$-1, -544(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L27:
	cmpq	$2, %rax
	jg	.L25
	movq	-552(%rbp), %rdx
	movq	-512(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L26
	movl	$0, %r13d
	jmp	.L25
.L26:
	addq	$1, %rax
	jmp	.L27
.L25:
	movl	$1, %r12d
	movq	$4, -456(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$4, -472(%rbp)
	movb	$1, -460(%rbp)
	movb	$1, -459(%rbp)
	movq	$1, -440(%rbp)
	movq	$3, -432(%rbp)
	movq	$1, -448(%rbp)
	leaq	A.13.3974(%rip), %rax
	movq	%rax, -488(%rbp)
	movq	$-1, -480(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L30:
	cmpq	$2, %rax
	jg	.L28
	movq	-488(%rbp), %rdx
	movq	-448(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L29
	movl	$0, %r12d
	jmp	.L28
.L29:
	addq	$1, %rax
	jmp	.L30
.L28:
	movl	$1, %ebx
	movq	$4, -392(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$4, -408(%rbp)
	movb	$1, -396(%rbp)
	movb	$1, -395(%rbp)
	movq	$1, -376(%rbp)
	movq	$3, -368(%rbp)
	movq	$1, -384(%rbp)
	leaq	A.17.3988(%rip), %rax
	movq	%rax, -424(%rbp)
	movq	$-1, -416(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L33:
	cmpq	$2, %rax
	jg	.L31
	movq	-424(%rbp), %rdx
	movq	-384(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L32
	movl	$0, %ebx
	jmp	.L31
.L32:
	addq	$1, %rax
	jmp	.L33
.L31:
	movl	$1, %r11d
	movq	$4, -328(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$4, -344(%rbp)
	movb	$1, -332(%rbp)
	movb	$1, -331(%rbp)
	movq	$1, -312(%rbp)
	movq	$3, -304(%rbp)
	movq	$1, -320(%rbp)
	leaq	A.21.4002(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	$-1, -352(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L36:
	cmpq	$2, %rax
	jg	.L34
	movq	-360(%rbp), %rdx
	movq	-320(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L35
	movl	$0, %r11d
	jmp	.L34
.L35:
	addq	$1, %rax
	jmp	.L36
.L34:
	movl	$1, %r10d
	movq	$4, -264(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$4, -280(%rbp)
	movb	$1, -268(%rbp)
	movb	$1, -267(%rbp)
	movq	$1, -248(%rbp)
	movq	$3, -240(%rbp)
	movq	$1, -256(%rbp)
	leaq	A.25.4016(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	$-1, -288(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L39:
	cmpq	$2, %rax
	jg	.L37
	movq	-296(%rbp), %rdx
	movq	-256(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L38
	movl	$0, %r10d
	jmp	.L37
.L38:
	addq	$1, %rax
	jmp	.L39
.L37:
	movl	$1, %r9d
	movq	$4, -200(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$4, -216(%rbp)
	movb	$1, -204(%rbp)
	movb	$1, -203(%rbp)
	movq	$1, -184(%rbp)
	movq	$3, -176(%rbp)
	movq	$1, -192(%rbp)
	leaq	A.29.4030(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	$-1, -224(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L42:
	cmpq	$2, %rax
	jg	.L40
	movq	-232(%rbp), %rdx
	movq	-192(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L41
	movl	$0, %r9d
	jmp	.L40
.L41:
	addq	$1, %rax
	jmp	.L42
.L40:
	movl	$1, %r8d
	movq	$4, -136(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$4, -152(%rbp)
	movb	$1, -140(%rbp)
	movb	$1, -139(%rbp)
	movq	$1, -120(%rbp)
	movq	$3, -112(%rbp)
	movq	$1, -128(%rbp)
	leaq	A.33.4044(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	$-1, -160(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L45:
	cmpq	$2, %rax
	jg	.L43
	movq	-168(%rbp), %rdx
	movq	-128(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L44
	movl	$0, %r8d
	jmp	.L43
.L44:
	addq	$1, %rax
	jmp	.L45
.L43:
	movl	$1, %edi
	movq	$4, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$4, -88(%rbp)
	movb	$1, -76(%rbp)
	movb	$1, -75(%rbp)
	movq	$1, -56(%rbp)
	movq	$3, -48(%rbp)
	movq	$1, -64(%rbp)
	leaq	A.37.4058(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	-560(%rbp), %rax
	movl	(%rax), %esi
	movl	$0, %eax
.L48:
	cmpq	$2, %rax
	jg	.L46
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rcx
	imulq	%rax, %rcx
	movl	(%rdx,%rcx,4), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	__tic_MOD_b(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %esi
	je	.L47
	movl	$0, %edi
	jmp	.L46
.L47:
	addq	$1, %rax
	jmp	.L48
.L46:
	movl	%r13d, %eax
	orl	%r12d, %eax
	orl	%ebx, %eax
	orl	%r11d, %eax
	orl	%r10d, %eax
	orl	%r9d, %eax
	orl	%r8d, %eax
	orl	%edi, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addq	$416, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	__tic_MOD_iswin, .-__tic_MOD_iswin
	.section	.rodata
	.align 8
.LC5:
	.string	"Integer overflow when calculating the amount of memory to allocate"
.LC6:
	.string	"seed"
	.align 8
.LC7:
	.string	"Attempting to allocate already allocated variable '%s'"
	.align 8
.LC8:
	.string	"At line 69 of file tictactoef.f08"
	.align 8
.LC9:
	.string	"Allocation would exceed memory limit"
	.align 8
.LC10:
	.ascii	"You have O, I have X. You enter 0: game ends."
.LC11:
	.ascii	"no"
.LC12:
	.ascii	"Your move? (0..9) "
.LC13:
	.ascii	"(a)"
.LC14:
	.ascii	"huh? Try again (0..9): "
	.align 8
.LC15:
	.ascii	"Already occupied, again (0..9): "
	.align 4
.LC16:
	.long	2
.LC17:
	.ascii	"***** You win *****"
	.align 4
.LC18:
	.long	1
.LC19:
	.ascii	"***** I win *****"
.LC20:
	.ascii	"(/,a,i3)"
.LC21:
	.ascii	"My move: "
.LC22:
	.ascii	"('***** Draw *****',/)"
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
	subq	$656, %rsp
	movq	$0, -96(%rbp)
	movq	$4, -624(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$4, -640(%rbp)
	movb	$1, -628(%rbp)
	movb	$1, -627(%rbp)
	movq	$1, -608(%rbp)
	movq	$8, -600(%rbp)
	movq	$1, -616(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	$-1, -648(%rbp)
	leaq	-656(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	_gfortran_date_and_time@PLT
	addq	$16, %rsp
	leaq	-20(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_random_seed_i4@PLT
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$4, -80(%rbp)
	movb	$1, -68(%rbp)
	movb	$1, -67(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movslq	%eax, %rcx
	testq	%rcx, %rcx
	je	.L51
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	testq	%rax, %rax
	jg	.L52
	movl	$1, %eax
	jmp	.L54
.L52:
	movl	$0, %eax
	jmp	.L54
.L51:
	movl	$0, %eax
.L54:
	movq	%rcx, %rsi
	movabsq	$4611686018427387903, %rdx
	cmpq	%rdx, %rsi
	jbe	.L55
	movl	$1, %edx
	jmp	.L56
.L55:
	movl	$0, %edx
.L56:
	leal	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	%rcx, %rax
	salq	$2, %rax
.L58:
	movq	-96(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%esi, %esi
	je	.L59
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L59:
	movq	-96(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L60
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L60:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L61
	leaq	.LC9(%rip), %rdi
	call	_gfortran_os_error@PLT
.L61:
	movq	$1, -48(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	$1, -56(%rbp)
	movq	$-1, -88(%rbp)
	movq	$4, -64(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %r8
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %ecx
	imull	$1000, %ecx, %ecx
	addl	%ecx, %edi
	movl	-108(%rbp), %ecx
	imull	$60000, %ecx, %ecx
	addl	%ecx, %edi
	movl	-112(%rbp), %ecx
	imull	$3600000, %ecx, %ecx
	addl	%ecx, %edi
.L63:
	cmpq	%r8, %rax
	jg	.L62
	leaq	(%rax,%rsi), %rcx
	movl	%edi, (%rdx,%rcx,4)
	addq	$1, %rax
	jmp	.L63
.L62:
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	_gfortran_random_seed_i4@PLT
.L73:
	movq	$0, __tic_MOD_b(%rip)
	movq	$0, 8+__tic_MOD_b(%rip)
	movq	$0, 16+__tic_MOD_b(%rip)
	movq	$0, 24+__tic_MOD_b(%rip)
	movl	$0, 32+__tic_MOD_b(%rip)
	movl	$45, %esi
	leaq	.LC10(%rip), %rdi
	call	__tic_MOD_printb
	movl	$0, -4(%rbp)
.L71:
	cmpl	$4, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L74
	movl	player.4076(%rip), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L65
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$77, -640(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	$2, -560(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$5, -568(%rbp)
	movl	$12288, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$18, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L67:
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$80, -640(%rbp)
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -616(%rbp)
	movl	$160, -656(%rbp)
	movl	$5, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-24(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-24(%rbp), %edx
	notl	%edx
	shrl	$31, %edx
	andl	%eax, %edx
	movl	-24(%rbp), %eax
	cmpl	$9, %eax
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L75
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$82, -640(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	$2, -560(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$12288, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$23, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L67
.L75:
	nop
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L76
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	__tic_MOD_b(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L77
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$86, -640(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -552(%rbp)
	movq	$2, -560(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$12288, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$32, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L67
.L77:
	nop
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	__tic_MOD_b(%rip), %rax
	movl	$2, (%rdx,%rax)
	leaq	.LC16(%rip), %rdi
	call	__tic_MOD_iswin
	testl	%eax, %eax
	je	.L65
	movl	$19, %esi
	leaq	.LC17(%rip), %rdi
	call	__tic_MOD_printb
	jmp	.L64
.L65:
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	call	__tic_MOD_minmax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	__tic_MOD_b(%rip), %rax
	movl	$1, (%rdx,%rax)
	leaq	.LC18(%rip), %rdi
	call	__tic_MOD_iswin
	testl	%eax, %eax
	je	.L70
	movl	$17, %esi
	leaq	.LC19(%rip), %rdi
	call	__tic_MOD_printb
	jmp	.L64
.L70:
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$100, -640(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$8, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$9, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	__tic_MOD_printb
	addl	$1, -4(%rbp)
	jmp	.L71
.L74:
	nop
.L64:
	cmpl	$5, -4(%rbp)
	jne	.L72
	leaq	.LC1(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$103, -640(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$22, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L72:
	movl	player.4076(%rip), %eax
	movl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, player.4076(%rip)
	jmp	.L73
.L76:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
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
	leaq	options.51.4140(%rip), %rsi
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
	.align 4
	.type	inf.3886, @object
	.size	inf.3886, 4
inf.3886:
	.long	100000
	.align 4
	.type	win.3889, @object
	.size	win.3889, 4
win.3889:
	.long	1000
	.type	s.3908, @object
	.size	s.3908, 3
s.3908:
	.ascii	"."
	.ascii	"X"
	.ascii	"O"
	.section	.rodata
	.align 8
	.type	A.9.3960, @object
	.size	A.9.3960, 12
A.9.3960:
	.long	1
	.long	2
	.long	3
	.align 8
	.type	A.13.3974, @object
	.size	A.13.3974, 12
A.13.3974:
	.long	4
	.long	5
	.long	6
	.align 8
	.type	A.17.3988, @object
	.size	A.17.3988, 12
A.17.3988:
	.long	7
	.long	8
	.long	9
	.align 8
	.type	A.21.4002, @object
	.size	A.21.4002, 12
A.21.4002:
	.long	1
	.long	4
	.long	7
	.align 8
	.type	A.25.4016, @object
	.size	A.25.4016, 12
A.25.4016:
	.long	2
	.long	5
	.long	8
	.align 8
	.type	A.29.4030, @object
	.size	A.29.4030, 12
A.29.4030:
	.long	3
	.long	6
	.long	9
	.align 8
	.type	A.33.4044, @object
	.size	A.33.4044, 12
A.33.4044:
	.long	1
	.long	5
	.long	9
	.align 8
	.type	A.37.4058, @object
	.size	A.37.4058, 12
A.37.4058:
	.long	3
	.long	5
	.long	7
	.data
	.align 4
	.type	player.4076, @object
	.size	player.4076, 4
player.4076:
	.long	2
	.section	.rodata
	.align 16
	.type	options.51.4140, @object
	.size	options.51.4140, 28
options.51.4140:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1092616192
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
