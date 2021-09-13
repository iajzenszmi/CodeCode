	.file	"TUNB3M.f"
	.text
	.section	.rodata
.LC0:
	.string	"TUNB3M.f"
.LC1:
	.ascii	"tunb3m.txt"
.LC2:
	.ascii	"UNKNOWN"
	.align 8
.LC4:
	.ascii	"('LATITUDE    HEIGHT       DOY  E. ANGLE      TEMP ',       "
	.ascii	"'    PRESS         WVP        TM     DELAY   D. RATE')"
	.align 8
.LC5:
	.ascii	"('   (DEG)       (M)               (DEG)       (K)',        "
	.ascii	"'    (MBAR)      (MBAR)       (K)       (M)   (M/RAD)')"
.LC6:
	.ascii	"((1x))"
.LC11:
	.ascii	"(6(F8.3,2x),2X,4(F8.3,2x))"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$41, -688(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$10, -648(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	$7, -624(%rbp)
	movl	$0, -400(%rbp)
	movl	$16777984, -704(%rbp)
	movl	outf.3884(%rip), %eax
	movl	%eax, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_open@PLT
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$58, -688(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$114, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	outf.3884(%rip), %eax
	movl	%eax, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$59, -688(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$115, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	outf.3884(%rip), %eax
	movl	%eax, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$60, -688(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$6, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	outf.3884(%rip), %eax
	movl	%eax, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$3, %ebx
.L3:
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-112(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	leaq	-96(%rbp), %r9
	leaq	-104(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rax
	subq	$8, %rsp
	leaq	-136(%rbp), %rdi
	pushq	%rdi
	leaq	-160(%rbp), %rdi
	pushq	%rdi
	leaq	-168(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	unb3m_@PLT
	addq	$32, %rsp
	leaq	-32(%rbp), %r9
	leaq	-104(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	leaq	-56(%rbp), %rdi
	pushq	%rdi
	leaq	-168(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	unb3mr_@PLT
	addq	$32, %rsp
	leaq	-64(%rbp), %r9
	leaq	-128(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rax
	subq	$8, %rsp
	leaq	-152(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	unb3mm_@PLT
	addq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -696(%rbp)
	movl	$79, -688(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -624(%rbp)
	movq	$26, -616(%rbp)
	movl	$4096, -704(%rbp)
	movl	outf.3884(%rip), %eax
	movl	%eax, -700(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-112(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-88(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-72(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-144(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-128(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-64(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-152(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-136(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-48(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movsd	-40(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	%rbx, %rax
	subq	$1, %rbx
	testq	%rax, %rax
	je	.L4
	jmp	.L3
.L4:
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	leaq	options.7.3908(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 4
	.type	outf.3884, @object
	.size	outf.3884, 4
outf.3884:
	.long	6
	.section	.rodata
	.align 16
	.type	options.7.3908, @object
	.size	options.7.3908, 28
options.7.3908:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC3:
	.long	1413754136
	.long	1074340347
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	3221225472
	.long	-1069356125
	.align 8
.LC9:
	.long	0
	.long	1077870592
	.align 8
.LC10:
	.long	0
	.long	1080459264
	.align 8
.LC12:
	.long	0
	.long	1079574528
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
