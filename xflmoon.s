	.file	"xflmoon.f"
	.text
	.globl	caldat_
	.type	caldat_, @function
caldat_:
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
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2299160, %eax
	jle	.L2
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1867216, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC0(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	addl	$1524, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	$2439870, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	imull	$365, %eax, %edx
	cvtsi2ssl	-16(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	cvtsi2ssl	-24(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jle	.L3
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leal	-12(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L3:
	movl	-16(%rbp), %eax
	leal	-4715(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L4
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L7
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	nop
.L7:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	caldat_, .-caldat_
	.section	.rodata
.LC24:
	.string	"xflmoon.f"
.LC25:
	.ascii	"NPH IS UNKNOWN."
	.text
	.globl	flmoon_
	.type	flmoon_, @function
flmoon_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC6(%rip), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC8(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC9(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-8(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC11(%rip), %xmm0
	addss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm2
	movss	.LC12(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	imull	$28, %eax, %eax
	leal	2415027(%rax), %edx
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	movss	-8(%rbp), %xmm1
	movss	.LC13(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC14(%rip), %xmm0
	addss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm2
	movss	.LC15(%rip), %xmm0
	mulss	%xmm0, %xmm2
	movss	.LC16(%rip), %xmm0
	subss	%xmm2, %xmm0
	mulss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L9
	movss	-12(%rbp), %xmm1
	movss	.LC17(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC18(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -596(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	mulss	-596(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -596(%rbp)
	movss	-24(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	movss	.LC20(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	-596(%rbp), %xmm3
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L9:
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L11
	movss	-12(%rbp), %xmm1
	movss	.LC21(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC22(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -596(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	mulss	-596(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -596(%rbp)
	movss	-24(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	movss	.LC23(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	-596(%rbp), %xmm4
	subss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L10
.L11:
	leaq	.LC24(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$66, -544(%rbp)
	movl	$128, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$15, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L10:
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jb	.L17
	movss	-4(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
	jmp	.L14
.L17:
	movss	-4(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -28(%rbp)
.L14:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
	movss	-4(%rbp), %xmm0
	movss	.LC27(%rip), %xmm1
	subss	%xmm1, %xmm0
	movq	-592(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	flmoon_, .-flmoon_
	.section	.rodata
.LC28:
	.ascii	"THERE IS NO YEAR ZERO."
	.text
	.globl	julday_
	.type	julday_, @function
julday_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L19
	leaq	.LC24(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$79, -544(%rbp)
	movl	$128, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-560(%rbp), %rax
	movl	$22, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L19:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L20
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-584(%rbp), %rax
	movl	%edx, (%rax)
.L20:
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jle	.L21
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L22
.L21:
	movq	-584(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$13, %eax
	movl	%eax, -4(%rbp)
.L22:
	cvtsi2ssl	-8(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edx
	cvtsi2ssl	-4(%rbp), %xmm1
	movss	.LC5(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	addl	%eax, %edx
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	addl	$1720995, %eax
	movl	%eax, -20(%rbp)
	movq	-576(%rbp), %rax
	movl	(%rax), %ecx
	movq	-568(%rbp), %rax
	movl	(%rax), %esi
	movq	-584(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%rsi,%rax), %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	cmpl	$8832209, %eax
	jle	.L23
	cvtsi2ssl	-8(%rbp), %xmm1
	movss	.LC29(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edx
	cvtsi2ssl	-16(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
.L23:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	julday_, .-julday_
	.section	.rodata
	.align 8
.LC30:
	.ascii	"Date of the next few phases of the moon"
	.align 8
.LC31:
	.ascii	"Enter todays 'date(e.g 12,15,1992)"
.LC37:
	.ascii	"(/1x,t6,a,t19,a,t32,a)"
.LC38:
	.ascii	"Date"
.LC39:
	.ascii	"Time(EST)"
.LC40:
	.ascii	"Phase"
.LC42:
	.ascii	"(1x,2i3,i5,t20,i6,a,5x,a)"
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
	subq	$576, %rsp
	leaq	.LC24(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$11, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$39, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$12, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$34, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movss	.LC32(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$14, -560(%rbp)
	movl	$128, -576(%rbp)
	movl	$5, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	movl	-36(%rbp), %eax
	subl	$1900, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	-32(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC33(%rip), %xmm2
	subss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	movss	.LC34(%rip), %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC35(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movl	$2, -48(%rbp)
	leaq	-36(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	julday_
	movl	%eax, -16(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	flmoon_
	movl	-40(%rbp), %eax
	movl	-16(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LC36(%rip), %xmm1
	divss	%xmm1, %xmm0
	call	lroundf@PLT
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$21, -560(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$22, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movl	$9, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movl	$5, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L34:
	cmpl	$20, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L35
	leaq	-20(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	flmoon_
	movss	-20(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC41(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	lroundf@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jns	.L27
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	addl	$24, %eax
	movl	%eax, -28(%rbp)
.L27:
	movl	-28(%rbp), %eax
	cmpl	$11, %eax
	jle	.L28
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -28(%rbp)
	jmp	.L29
.L28:
	movl	-28(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -28(%rbp)
.L29:
	movl	-28(%rbp), %eax
	cmpl	$12, %eax
	jle	.L30
	movl	-28(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -28(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L31
.L30:
	movl	$1, -8(%rbp)
.L31:
	leaq	-36(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	caldat_
	leaq	.LC24(%rip), %rax
	movq	%rax, -568(%rbp)
	movl	$43, -560(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, -496(%rbp)
	movq	$25, -488(%rbp)
	movl	$4096, -576(%rbp)
	movl	$6, -572(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-24(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	timstr.3938(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-576(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	leaq	phase.3936(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-576(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-48(%rbp), %eax
	cmpl	$3, %eax
	jne	.L32
	movl	$0, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.L33
.L32:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.L33:
	addl	$1, -4(%rbp)
	jmp	.L34
.L35:
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
	leaq	options.7.3958(%rip), %rsi
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
	.type	timstr.3938, @object
	.size	timstr.3938, 6
timstr.3938:
	.ascii	" AM"
	.ascii	" PM"
	.align 32
	.type	phase.3936, @object
	.size	phase.3936, 60
phase.3936:
	.ascii	"new moon       "
	.ascii	"first quarter  "
	.ascii	"full moon      "
	.ascii	"last quarter   "
	.section	.rodata
	.align 16
	.type	options.7.3958, @object
	.size	options.7.3958, 28
options.7.3958:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	921021467
	.align 4
.LC1:
	.long	1123300147
	.align 4
.LC2:
	.long	1136041984
	.align 4
.LC3:
	.long	1171308544
	.align 4
.LC4:
	.long	1048576000
	.align 4
.LC5:
	.long	1106562305
	.align 4
.LC6:
	.long	1082130432
	.align 4
.LC7:
	.long	1150982963
	.align 4
.LC8:
	.long	1105778629
	.align 4
.LC9:
	.long	1135844531
	.align 4
.LC10:
	.long	1136715921
	.align 4
.LC11:
	.long	1134101309
	.align 4
.LC12:
	.long	1015798957
	.align 4
.LC13:
	.long	1069804116
	.align 4
.LC14:
	.long	1061315443
	.align 4
.LC15:
	.long	874933779
	.align 4
.LC16:
	.long	955714405
	.align 4
.LC17:
	.long	969804689
	.align 4
.LC18:
	.long	1043435461
	.align 4
.LC19:
	.long	1016003125
	.align 4
.LC20:
	.long	1053837335
	.align 4
.LC21:
	.long	970045207
	.align 4
.LC22:
	.long	1043348219
	.align 4
.LC23:
	.long	1059112092
	.align 4
.LC27:
	.long	1065353216
	.align 4
.LC29:
	.long	1008981770
	.align 4
.LC32:
	.long	3193263445
	.align 4
.LC33:
	.long	1056964608
	.align 4
.LC34:
	.long	1094713344
	.align 4
.LC35:
	.long	1095101317
	.align 4
.LC36:
	.long	1106001265
	.align 4
.LC41:
	.long	1103101952
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
