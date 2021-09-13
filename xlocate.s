	.file	"xlocate.f"
	.text
	.globl	locate_
	.type	locate_, @function
locate_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L5:
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cmpl	$1, %eax
	jle	.L2
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	xorl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	comiss	%xmm1, %xmm0
	seta	%al
	xorl	%ecx, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L3:
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L5
.L2:
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	locate_, .-locate_
	.section	.rodata
.LC1:
	.string	"xlocate.f"
	.align 8
.LC2:
	.ascii	"Result of:  j=0 indicates x to small"
	.align 8
.LC3:
	.ascii	"            j = 100 indicates x too large"
.LC4:
	.ascii	"(t5,a7,t17,a1,t24,a5,t34,a7)"
.LC5:
	.ascii	"locate "
.LC6:
	.ascii	"j"
.LC7:
	.ascii	"xx(j)"
.LC8:
	.ascii	"xx(j+i)"
	.align 4
.LC12:
	.long	100
.LC13:
	.ascii	"(1x,f10.4,i6,a12,f12.6)"
.LC14:
	.ascii	"lower lfm"
.LC15:
	.ascii	"(1x,f10.4,i6,f12.6,a12)"
.LC16:
	.ascii	"upper lim"
.LC17:
	.ascii	"(1x,f10.4,i6,2f12.6)"
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
	subq	$944, %rsp
	movl	$1, -4(%rbp)
.L9:
	cmpl	$100, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	call	expf@PLT
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC0(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -416(%rbp,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L9
.L15:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$17, -928(%rbp)
	movl	$128, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-944(%rbp), %rax
	movl	$36, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$18, -928(%rbp)
	movl	$128, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-944(%rbp), %rax
	movl	$41, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$20, -928(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	$28, -856(%rbp)
	movl	$4096, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-944(%rbp), %rax
	movl	$7, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movl	$1, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movl	$7, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L14:
	cmpl	$19, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	cvtsi2ssl	-4(%rbp), %xmm1
	movss	.LC9(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC10(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC11(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	leaq	-8(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-416(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	locate_
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	.L11
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$26, -928(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	$23, -856(%rbp)
	movl	$4096, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-944(%rbp), %rax
	movl	$9, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-416(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L12
.L11:
	movl	-8(%rbp), %eax
	cmpl	$100, %eax
	jne	.L13
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$28, -928(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	$23, -856(%rbp)
	movl	$4096, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-416(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-944(%rbp), %rax
	movl	$9, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	jmp	.L12
.L13:
	leaq	.LC1(%rip), %rax
	movq	%rax, -936(%rbp)
	movl	$30, -928(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -864(%rbp)
	movq	$20, -856(%rbp)
	movl	$4096, -944(%rbp)
	movl	$6, -940(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-12(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-8(%rbp), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-416(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-416(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-944(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-944(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L12:
	addl	$1, -4(%rbp)
	jmp	.L14
.L16:
	nop
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
	leaq	options.8.3918(%rip), %rsi
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
	.section	.rodata
	.align 16
	.type	options.8.3918, @object
	.size	options.8.3918, 28
options.8.3918:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1116995584
	.align 4
.LC9:
	.long	1128792064
	.align 4
.LC10:
	.long	1101004800
	.align 4
.LC11:
	.long	1120403456
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
