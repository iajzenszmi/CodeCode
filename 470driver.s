	.file	"470driver.f"
	.text
	.section	.rodata
.LC0:
	.string	"470driver.f"
.LC1:
	.ascii	"(a)"
.LC2:
	.ascii	" "
.LC3:
	.ascii	"TEST03"
	.align 8
.LC4:
	.ascii	"  Test GAUSD, a linear system solver."
	.align 4
.LC6:
	.long	5
	.align 8
.LC7:
	.ascii	"  Solution, which should be (1,2,3,...,n):"
	.text
	.globl	test03_
	.type	test03_, @function
test03_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$311, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$312, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$6, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$313, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$37, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L3:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -64(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L3
.L11:
	nop
	movl	$1, -4(%rbp)
.L7:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp,%rax,4)
	movl	$1, -8(%rbp)
.L6:
	cmpl	$5, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L13
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-32(%rbp,%rax,4), %xmm1
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$6, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a.3873(%rip), %rax
	movss	(%rdx,%rax), %xmm2
	movl	-8(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-64(%rbp,%rax,4), %xmm0
	mulss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp,%rax,4)
	addl	$1, -8(%rbp)
	jmp	.L6
.L13:
	nop
	addl	$1, -4(%rbp)
	jmp	.L7
.L12:
	nop
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rax
	leaq	.LC6(%rip), %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	a.3873(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	gausd_@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$328, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$329, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$42, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$330, -576(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -512(%rbp)
	movq	$3, -504(%rbp)
	movl	$4096, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-592(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L9:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L14
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$333, -576(%rbp)
	movl	$128, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-32(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-592(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L9
.L14:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	test03_, .-test03_
	.section	.rodata
.LC8:
	.ascii	"TEST02"
	.align 8
.LC9:
	.ascii	"  Test FAKUB, a linear system solver"
	.align 8
.LC10:
	.ascii	"  for \"almost tridiagonal\" systems."
.LC16:
	.ascii	"(a,i6)"
.LC17:
	.ascii	"  Number of equations, N = "
.LC18:
	.ascii	"  Tridiagonal elements:"
	.align 8
.LC19:
	.ascii	"  Indices of unknowns with nonzero"
	.align 8
.LC20:
	.ascii	"  non-tridiagonal coefficients."
	.align 8
.LC21:
	.ascii	"  Right hand side of linear system:"
	.align 4
.LC22:
	.long	3
	.text
	.globl	test02_
	.type	test02_, @function
test02_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$195, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$196, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$6, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$197, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$36, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$198, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$35, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -176(%rbp)
	movl	$2, -4(%rbp)
.L17:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L37
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -176(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L17
.L37:
	nop
	movl	$1, -4(%rbp)
.L19:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L38
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -112(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L19
.L38:
	nop
	movl	$1, -4(%rbp)
.L21:
	cmpl	$4, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L39
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -144(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L21
.L39:
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -128(%rbp)
	movl	$1, -4(%rbp)
.L23:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L40
	cvtsi2ssl	-4(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	addss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L23
.L40:
	nop
	movss	-80(%rbp), %xmm0
	movss	.LC13(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-64(%rbp), %xmm1
	movss	.LC13(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)
	movl	$1, -4(%rbp)
.L27:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L41
	movl	$2, -8(%rbp)
.L26:
	cmpl	$3, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L42
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$6, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp,%rax,4)
	addl	$1, -8(%rbp)
	jmp	.L26
.L42:
	nop
	addl	$1, -4(%rbp)
	jmp	.L27
.L41:
	nop
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$5, -152(%rbp)
	movl	$1, -148(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$235, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$236, -688(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$6, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$27, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$238, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$239, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$23, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$240, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L29:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L43
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$243, -688(%rbp)
	movl	$128, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-176(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-112(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-704(%rbp), %rax
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
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L29
.L43:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$246, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$247, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$34, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$248, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$31, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$249, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -8(%rbp)
.L31:
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L44
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$252, -688(%rbp)
	movl	$128, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-152(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -8(%rbp)
	jmp	.L31
.L44:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$255, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$256, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$35, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$257, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L33:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L45
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$260, -688(%rbp)
	movl	$128, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-80(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L33
.L45:
	nop
	leaq	-80(%rbp), %rdi
	leaq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rax
	subq	$8, %rsp
	leaq	-116(%rbp), %rsi
	pushq	%rsi
	leaq	-12(%rbp), %rsi
	pushq	%rsi
	leaq	-152(%rbp), %rsi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	leaq	.LC22(%rip), %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fakub_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$271, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$272, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$42, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$273, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$3, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L35:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L46
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$276, -688(%rbp)
	movl	$128, -704(%rbp)
	movl	$6, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-80(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-704(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L35
.L46:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	test02_, .-test02_
	.section	.rodata
.LC23:
	.ascii	"TEST01"
	.align 8
.LC24:
	.ascii	"  Actually, try a true tridiagonal system."
	.align 4
.LC26:
	.long	1
	.text
	.globl	test01_
	.type	test01_, @function
test01_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$81, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$82, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$6, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$83, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$36, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$84, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$35, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$85, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$86, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$42, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -128(%rbp)
	movl	$2, -4(%rbp)
.L49:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L63
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -128(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L49
.L63:
	nop
	movl	$1, -4(%rbp)
.L51:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L64
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -64(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L51
.L64:
	nop
	movl	$1, -4(%rbp)
.L53:
	cmpl	$4, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L65
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -96(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L53
.L65:
	nop
	pxor	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	$1, -4(%rbp)
.L55:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L66
	cvtsi2ssl	-4(%rbp), %xmm0
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	addss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L55
.L66:
	nop
	movss	-16(%rbp), %xmm1
	movss	.LC13(%rip), %xmm0
	addss	%xmm0, %xmm1
	movss	.LC25(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$110, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$111, -640(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$6, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$27, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$113, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$114, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$23, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$115, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L57:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L67
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$118, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-128(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-64(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L57
.L67:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$121, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$122, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$35, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$123, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L59:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L68
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$126, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-32(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L59
.L68:
	nop
	leaq	-32(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-128(%rbp), %rax
	subq	$8, %rsp
	leaq	-68(%rbp), %rsi
	pushq	%rsi
	leaq	-8(%rbp), %rsi
	pushq	%rsi
	leaq	-100(%rbp), %rsi
	pushq	%rsi
	leaq	.LC26(%rip), %rsi
	pushq	%rsi
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	leaq	.LC26(%rip), %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	fakub_@PLT
	addq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$137, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$138, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$42, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$139, -640(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$3, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-656(%rbp), %rax
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L61:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L69
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$142, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-32(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L61
.L69:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	test01_, .-test01_
	.section	.rodata
.LC27:
	.ascii	"TOMS470_PRB"
	.align 8
.LC28:
	.ascii	"  Test TOMS algorithm 470, for solving"
	.align 8
.LC29:
	.ascii	"  an \"almost tridiagonal\" linear system."
.LC30:
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
	movl	$17, -512(%rbp)
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
	movl	$11, %edx
	leaq	.LC27(%rip), %rsi
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
	movl	$38, %edx
	leaq	.LC28(%rip), %rsi
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
	movl	$40, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	call	test01_
	call	test02_
	call	test03_
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
	movl	$1, %edx
	leaq	.LC2(%rip), %rsi
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
	movl	$11, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$28, -512(%rbp)
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
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$30, -512(%rbp)
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
	leaq	options.64.4074(%rip), %rsi
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
	.type	a.3873, @object
	.size	a.3873, 100
a.3873:
	.long	1092616192
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1065353216
	.long	1092616192
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1065353216
	.long	1073741824
	.long	1092616192
	.long	1077936128
	.long	1082130432
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1092616192
	.long	1082130432
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1092616192
	.section	.rodata
	.align 16
	.type	options.64.4074, @object
	.size	options.64.4074, 28
options.64.4074:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC11:
	.long	3212836864
	.align 4
.LC12:
	.long	1082130432
	.align 4
.LC13:
	.long	1084227584
	.align 4
.LC14:
	.long	1048576000
	.align 4
.LC15:
	.long	897988541
	.align 4
.LC25:
	.long	1065353216
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
