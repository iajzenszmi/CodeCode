	.file	"vandermonde_prb.f"
	.text
	.section	.rodata
.LC0:
	.string	"vandermonde_prb.f"
.LC1:
	.ascii	"(a)"
.LC2:
.LC3:
	.ascii	"PVANDPRG_TEST:"
	.align 8
.LC4:
	.ascii	"  Solve a Vandermonde linear system A*x=b"
.LC5:
	.ascii	"  progressively."
	.align 8
.LC6:
	.ascii	"  First we use ALPHA = 0, 1, 2, 3, 4."
	.align 8
.LC7:
	.ascii	"  Then we choose ALPHA at random."
	.align 4
.LC8:
	.long	5
.LC9:
	.ascii	"  Vandermonde vector ALPHA:"
.LC10:
	.ascii	"  Right hand side B:"
.LC12:
	.ascii	"  Solution X:"
	.text
	.globl	pvandprg_test_
	.type	pvandprg_test_, @function
pvandprg_test_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$976, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$421, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$422, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$14, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$423, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$41, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$424, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$425, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$37, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$426, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$33, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -8(%rbp)
.L13:
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	cmpl	$1, -8(%rbp)
	jne	.L3
	movl	$1, -4(%rbp)
.L5:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rdx,8), %rcx
	leaq	alpha1.3877(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L5
.L3:
	cmpl	$2, -8(%rbp)
	jne	.L6
	movl	$123456789, -408(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-408(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_uniform_01_@PLT
	jmp	.L6
.L16:
	nop
.L6:
	leaq	-256(%rbp), %rax
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-208(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	vand1_@PLT
	movl	$1, -4(%rbp)
.L8:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L17
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rdx,8), %rcx
	leaq	x1.3891(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	movsd	%xmm0, -448(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L8
.L17:
	nop
	leaq	-304(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8mat_mv_@PLT
	leaq	-304(%rbp), %rax
	movl	$20, %ecx
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	movl	$1, -4(%rbp)
.L10:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -448(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L10
.L18:
	nop
	movl	$1, -404(%rbp)
.L12:
	movl	-404(%rbp), %eax
	cmpl	$5, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L19
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rdi
	leaq	-448(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-404(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pvandprg_@PLT
	leaq	-448(%rbp), %rsi
	leaq	-404(%rbp), %rax
	movl	$13, %ecx
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rdi
	call	r8vec_print_@PLT
	movl	-404(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -404(%rbp)
	jmp	.L12
.L19:
	nop
	addl	$1, -8(%rbp)
	jmp	.L13
.L15:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	pvandprg_test_, .-pvandprg_test_
	.section	.rodata
.LC13:
	.ascii	"PVAND_TEST:"
	.text
	.globl	pvand_test_
	.type	pvand_test_, @function
pvand_test_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$880, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$349, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$350, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$11, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$351, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$41, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L24:
	cmpl	$2, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L26
	cmpl	$1, -4(%rbp)
	jne	.L22
	leaq	-256(%rbp), %rax
	movq	%rax, %rdx
	leaq	alpha1.3933(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_copy_@PLT
	jmp	.L23
.L22:
	cmpl	$2, -4(%rbp)
	jne	.L23
	movl	$123456789, -308(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-308(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_uniform_01_@PLT
.L23:
	leaq	-256(%rbp), %rax
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-208(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	vand1_@PLT
	leaq	-352(%rbp), %rax
	movq	%rax, %rdx
	leaq	x1.3941(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_copy_@PLT
	leaq	-304(%rbp), %rcx
	leaq	-352(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8mat_mv_@PLT
	leaq	-304(%rbp), %rax
	movl	$20, %ecx
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	pvand_@PLT
	leaq	-352(%rbp), %rax
	movl	$13, %ecx
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	addl	$1, -4(%rbp)
	jmp	.L24
.L26:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	pvand_test_, .-pvand_test_
	.section	.rodata
.LC14:
	.ascii	"DVANDPRG_TEST:"
	.align 8
.LC15:
	.ascii	"  Solve a Vandermonde linear system A'*x=b"
	.text
	.globl	dvandprg_test_
	.type	dvandprg_test_, @function
dvandprg_test_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$976, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$268, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$269, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$14, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$270, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$42, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$271, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$272, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$37, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -968(%rbp)
	movl	$273, -960(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -896(%rbp)
	movq	$3, -888(%rbp)
	movl	$4096, -976(%rbp)
	movl	$6, -972(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-976(%rbp), %rax
	movl	$33, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -8(%rbp)
.L39:
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L41
	cmpl	$1, -8(%rbp)
	jne	.L29
	movl	$1, -4(%rbp)
.L31:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L42
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rdx,8), %rcx
	leaq	alpha1.3973(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L31
.L29:
	cmpl	$2, -8(%rbp)
	jne	.L32
	movl	$123456789, -408(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-408(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_uniform_01_@PLT
	jmp	.L32
.L42:
	nop
.L32:
	leaq	-256(%rbp), %rax
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-208(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	vand1_@PLT
	movl	$1, -4(%rbp)
.L34:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L43
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rdx,8), %rcx
	leaq	x1.3987(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	movsd	%xmm0, -448(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L34
.L43:
	nop
	leaq	-304(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8mat_mtv_@PLT
	leaq	-304(%rbp), %rax
	movl	$20, %ecx
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	movl	$1, -4(%rbp)
.L36:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L44
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -448(%rbp,%rax,8)
	addl	$1, -4(%rbp)
	jmp	.L36
.L44:
	nop
	movl	$1, -404(%rbp)
.L38:
	movl	-404(%rbp), %eax
	cmpl	$5, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L45
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rdi
	leaq	-448(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-404(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	dvandprg_@PLT
	leaq	-448(%rbp), %rsi
	leaq	-404(%rbp), %rax
	movl	$13, %ecx
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rdi
	call	r8vec_print_@PLT
	movl	-404(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -404(%rbp)
	jmp	.L38
.L45:
	nop
	addl	$1, -8(%rbp)
	jmp	.L39
.L41:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	dvandprg_test_, .-dvandprg_test_
	.section	.rodata
.LC16:
	.ascii	"DVAND_TEST:"
	.text
	.globl	dvand_test_
	.type	dvand_test_, @function
dvand_test_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$880, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$196, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$197, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$11, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -872(%rbp)
	movl	$198, -864(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -800(%rbp)
	movq	$3, -792(%rbp)
	movl	$4096, -880(%rbp)
	movl	$6, -876(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-880(%rbp), %rax
	movl	$42, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L50:
	cmpl	$2, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L52
	cmpl	$1, -4(%rbp)
	jne	.L48
	leaq	-256(%rbp), %rax
	movq	%rax, %rdx
	leaq	alpha1.4029(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_copy_@PLT
	jmp	.L49
.L48:
	cmpl	$2, -4(%rbp)
	jne	.L49
	movl	$123456789, -308(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-308(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_uniform_01_@PLT
.L49:
	leaq	-256(%rbp), %rax
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-208(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	vand1_@PLT
	leaq	-352(%rbp), %rax
	movq	%rax, %rdx
	leaq	x1.4037(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_copy_@PLT
	leaq	-304(%rbp), %rcx
	leaq	-352(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rsi
	leaq	.LC8(%rip), %rdi
	call	r8mat_mtv_@PLT
	leaq	-304(%rbp), %rax
	movl	$20, %ecx
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	dvand_@PLT
	leaq	-352(%rbp), %rax
	movl	$13, %ecx
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	r8vec_print_@PLT
	addl	$1, -4(%rbp)
	jmp	.L50
.L52:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dvand_test_, .-dvand_test_
	.section	.rodata
.LC17:
	.ascii	"BIVAND2_TEST:"
	.align 8
.LC18:
	.ascii	"  Compute a bidimensional Vandermonde matrix"
.LC19:
	.ascii	"  associated with polynomials"
.LC20:
	.ascii	"  of maximum degree < N."
	.align 4
.LC21:
	.long	3
.LC22:
	.ascii	"  Vandermonde vector BETA:"
	.align 8
.LC23:
	.ascii	"  Bidimensional Vandermonde matrix:"
	.align 4
.LC24:
	.long	9
	.text
	.globl	bivand2_test_
	.type	bivand2_test_, @function
bivand2_test_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1184, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -1176(%rbp)
	movl	$139, -1168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1104(%rbp)
	movq	$3, -1096(%rbp)
	movl	$4096, -1184(%rbp)
	movl	$6, -1180(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1184(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -1176(%rbp)
	movl	$140, -1168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1104(%rbp)
	movq	$3, -1096(%rbp)
	movl	$4096, -1184(%rbp)
	movl	$6, -1180(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1184(%rbp), %rax
	movl	$13, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -1176(%rbp)
	movl	$142, -1168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1104(%rbp)
	movq	$3, -1096(%rbp)
	movl	$4096, -1184(%rbp)
	movl	$6, -1180(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1184(%rbp), %rax
	movl	$44, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -1176(%rbp)
	movl	$143, -1168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1104(%rbp)
	movq	$3, -1096(%rbp)
	movl	$4096, -1184(%rbp)
	movl	$6, -1180(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1184(%rbp), %rax
	movl	$29, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -1176(%rbp)
	movl	$144, -1168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1104(%rbp)
	movq	$3, -1096(%rbp)
	movl	$4096, -1184(%rbp)
	movl	$6, -1180(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1184(%rbp), %rax
	movl	$24, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	alpha.4067(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	r8vec_print_@PLT
	movl	$26, %ecx
	leaq	.LC22(%rip), %rdx
	leaq	beta.4069(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rcx
	leaq	beta.4069(%rip), %rdx
	leaq	alpha.4067(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	bivand2_@PLT
	leaq	-656(%rbp), %rax
	movl	$35, %r8d
	leaq	.LC23(%rip), %rcx
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rsi
	leaq	.LC24(%rip), %rdi
	call	r8mat_print_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bivand2_test_, .-bivand2_test_
	.section	.rodata
.LC25:
	.ascii	"BIVAND1_TEST:"
.LC26:
	.ascii	"  of total degree < N."
	.align 4
.LC27:
	.long	6
	.text
	.globl	bivand1_test_
	.type	bivand1_test_, @function
bivand1_test_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$816, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$84, -800(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$3, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$85, -800(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$3, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$13, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$87, -800(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$3, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$44, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$88, -800(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$3, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$29, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -808(%rbp)
	movl	$89, -800(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -736(%rbp)
	movq	$3, -728(%rbp)
	movl	$4096, -816(%rbp)
	movl	$6, -812(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-816(%rbp), %rax
	movl	$22, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$27, %ecx
	leaq	.LC9(%rip), %rdx
	leaq	alpha.4090(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	r8vec_print_@PLT
	movl	$26, %ecx
	leaq	.LC22(%rip), %rdx
	leaq	beta.4092(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	r8vec_print_@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rcx
	leaq	beta.4092(%rip), %rdx
	leaq	alpha.4090(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	bivand1_@PLT
	leaq	-288(%rbp), %rax
	movl	$35, %r8d
	leaq	.LC23(%rip), %rcx
	movq	%rax, %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC27(%rip), %rdi
	call	r8mat_print_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bivand1_test_, .-bivand1_test_
	.section	.rodata
.LC28:
	.ascii	"VANDERMONDE_PRB"
.LC29:
	.ascii	"  FORTRAN77 version."
	.align 8
.LC30:
	.ascii	"  Test the VANDERMONDE library."
.LC31:
	.ascii	"  Normal end of execution."
	.text
	.type	MAIN__, @function
MAIN__:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$528, %rsp
	movl	$0, %eax
	call	timestamp_@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$24, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
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
	movl	$15, %edx
	leaq	.LC28(%rip), %rsi
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
	movl	$20, %edx
	leaq	.LC29(%rip), %rsi
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
	movl	$31, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	call	bivand1_test_
	call	bivand2_test_
	call	dvand_test_
	call	dvandprg_test_
	call	pvand_test_
	call	pvandprg_test_
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$38, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$39, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$15, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$40, -512(%rbp)
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
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$41, -512(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %eax
	call	timestamp_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	leaq	options.36.4123(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.data
	.align 32
	.type	alpha1.3877, @object
	.size	alpha1.3877, 40
alpha1.3877:
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.align 32
	.type	x1.3891, @object
	.size	x1.3891, 40
x1.3891:
	.long	0
	.long	1075052544
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 32
	.type	alpha1.3933, @object
	.size	alpha1.3933, 40
alpha1.3933:
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.align 32
	.type	x1.3941, @object
	.size	x1.3941, 40
x1.3941:
	.long	0
	.long	1075052544
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 32
	.type	alpha1.3973, @object
	.size	alpha1.3973, 40
alpha1.3973:
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.align 32
	.type	x1.3987, @object
	.size	x1.3987, 40
x1.3987:
	.long	0
	.long	1075052544
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 32
	.type	alpha1.4029, @object
	.size	alpha1.4029, 40
alpha1.4029:
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.align 32
	.type	x1.4037, @object
	.size	x1.4037, 40
x1.4037:
	.long	0
	.long	1075052544
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 16
	.type	alpha.4067, @object
	.size	alpha.4067, 24
alpha.4067:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.align 16
	.type	beta.4069, @object
	.size	beta.4069, 24
beta.4069:
	.long	0
	.long	1076101120
	.long	0
	.long	1077149696
	.long	0
	.long	1077805056
	.align 16
	.type	alpha.4090, @object
	.size	alpha.4090, 24
alpha.4090:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.align 16
	.type	beta.4092, @object
	.size	beta.4092, 24
beta.4092:
	.long	0
	.long	1076101120
	.long	0
	.long	1077149696
	.long	0
	.long	1077805056
	.section	.rodata
	.align 16
	.type	options.36.4123, @object
	.size	options.36.4123, 28
options.36.4123:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
