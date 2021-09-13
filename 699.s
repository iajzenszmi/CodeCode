	.file	"699.f"
	.text
	.globl	quad_
	.type	quad_, @function
quad_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	-176(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-168(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	$1, -28(%rbp)
	movl	$0, -40(%rbp)
	movq	-168(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -148(%rbp)
	leaq	-148(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movd	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movq	-208(%rbp), %rax
	movl	$1, (%rax)
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	cvtsd2ss	-24(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-192(%rbp), %rax
	movl	$2, (%rax)
.L11:
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L13
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	kx.3901(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %edx
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rcx
	leaq	kx.3901(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%edx, -44(%rbp)
.L6:
	cmpl	%eax, -44(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L14
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	kl.3899(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	kh.3896(%rip), %rdx
	movl	(%rsi,%rdx), %edx
	movl	%ecx, -32(%rbp)
.L5:
	cmpl	%edx, -32(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L15
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	leaq	0(,%rcx,4), %rsi
	leaq	p.3903(%rip), %rcx
	movss	(%rsi,%rcx), %xmm1
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	movss	-144(%rbp,%rcx,4), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -28(%rbp)
	addl	$1, -32(%rbp)
	jmp	.L5
.L15:
	nop
	addl	$1, -44(%rbp)
	jmp	.L6
.L14:
	nop
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$2, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fl.3887(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$2, %rax
	leaq	0(,%rax,4), %rdx
	leaq	fh.3885(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	-40(%rbp), %ebx
	movl	%eax, -32(%rbp)
.L9:
	cmpl	%ebx, -32(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	p.3903(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	-52(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-168(%rbp), %rax
	movss	(%rax), %xmm0
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -152(%rbp)
	movq	-176(%rbp), %rax
	movss	(%rax), %xmm0
	subss	-76(%rbp), %xmm0
	movss	%xmm0, -156(%rbp)
	leaq	-152(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movss	%xmm0, -212(%rbp)
	leaq	-156(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	addss	-212(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-208(%rbp), %rax
	movl	(%rax), %eax
	leal	2(%rax), %edx
	movq	-208(%rbp), %rax
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	p.3903(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	mulss	-56(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.L8
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-56(%rbp), %xmm0
	movss	%xmm0, -144(%rbp,%rax,4)
	addl	$1, -36(%rbp)
.L8:
	addl	$2, -28(%rbp)
	addl	$1, -32(%rbp)
	jmp	.L9
.L16:
	nop
	cvtss2sd	-52(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	cvtsd2ss	-24(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-184(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-184(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC3(%rip), %xmm1
	andps	%xmm0, %xmm1
	movq	-200(%rbp), %rax
	movss	(%rax), %xmm2
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-184(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm2, %xmm0
	movss	.LC3(%rip), %xmm2
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L17
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-192(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L11
.L13:
	nop
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	movq	-192(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L10
.L17:
	nop
.L10:
	nop
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	quad_, .-quad_
	.section	.rodata
.LC4:
	.string	"699.f"
	.align 8
.LC5:
	.ascii	"(' eps=',5(:'------- ',1pg9.1,' ------ '))"
	.align 8
.LC6:
	.ascii	"(' KASE',5(:' NPTS     RESULT    CHK ',a1))"
.LC7:
	.ascii	" "
.LC8:
	.ascii	"(i5,5(i4,1pe16.8,i2,3x))"
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
	subq	$688, %rsp
	leaq	.LC4(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$61, -608(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$42, -536(%rbp)
	movl	$4096, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	$4, -656(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$4, -672(%rbp)
	movb	$1, -660(%rbp)
	movb	$3, -659(%rbp)
	movq	$1, -640(%rbp)
	movq	$3, -632(%rbp)
	movq	$1, -648(%rbp)
	leaq	epsils.3951(%rip), %rax
	movq	%rax, -688(%rbp)
	movq	$-1, -680(%rbp)
	leaq	-688(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$63, -608(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$43, -536(%rbp)
	movl	$4096, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -4(%rbp)
.L20:
	movl	-624(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L19
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L19
	leaq	-624(%rbp), %rax
	movl	$1, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L20
.L19:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, com_(%rip)
.L26:
	movl	com_(%rip), %eax
	cmpl	$13, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L27
	movl	com_(%rip), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	as.3945(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	com_(%rip), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bs.3948(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$1, -4(%rbp)
.L23:
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L28
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,4), %rdx
	leaq	epsils.3951(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movss	%xmm0, -28(%rbp)
	leaq	-52(%rbp), %r9
	leaq	-28(%rbp), %r8
	leaq	-48(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rax
	leaq	f_(%rip), %rdi
	pushq	%rdi
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	quad_
	addq	$16, %rsp
	movl	-48(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-96(%rbp,%rdx,4), %xmm0
	movss	%xmm0, -20(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, -64(%rbp,%rdx,4)
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp,%rdx,4)
	addl	$1, -4(%rbp)
	jmp	.L23
.L28:
	nop
	leaq	.LC4(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$75, -608(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -544(%rbp)
	movq	$24, -536(%rbp)
	movl	$4096, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	leaq	com_(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	$1, -4(%rbp)
.L25:
	movl	-624(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L24
	cmpl	$3, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L24
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-64(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-20(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-44(%rbp), %rax
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-624(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addl	$1, -4(%rbp)
	jmp	.L25
.L24:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	com_(%rip), %eax
	addl	$1, %eax
	movl	%eax, com_(%rip)
	jmp	.L26
.L27:
	nop
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
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
	leaq	options.4.4005(%rip), %rsi
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
	.globl	__powisf2
	.globl	f_
	.type	f_, @function
f_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	com_(%rip), %eax
	cmpl	$13, %eax
	ja	.L32
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L34(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L34(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L34:
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L45-.L34
	.long	.L44-.L34
	.long	.L43-.L34
	.long	.L42-.L34
	.long	.L41-.L34
	.long	.L40-.L34
	.long	.L39-.L34
	.long	.L38-.L34
	.long	.L37-.L34
	.long	.L36-.L34
	.long	.L35-.L34
	.long	.L33-.L34
	.text
.L46:
.L45:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	coshf@PLT
	movss	.LC9(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movss	-28(%rbp), %xmm3
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L44:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	-4(%rbp), %xmm1
	movss	.LC11(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L43:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	sqrtss	%xmm0, %xmm0
	movl	$3, %edi
	call	__powisf2@PLT
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L42:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$4, %edi
	movd	%eax, %xmm0
	call	__powisf2@PLT
	movss	.LC10(%rip), %xmm1
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L41:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC12(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	movss	.LC0(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L40:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm4
	movss	%xmm4, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movss	.LC10(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	-28(%rbp), %xmm4
	divss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L39:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC13(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm2
	movss	.LC14(%rip), %xmm1
	mulss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L38:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC15(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC14(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC16(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L37:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movss	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC17(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	cosf@PLT
	movaps	%xmm0, %xmm5
	addss	-32(%rbp), %xmm5
	movss	%xmm5, -32(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	addss	-32(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC17(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm0, %xmm6
	addss	-28(%rbp), %xmm6
	movss	%xmm6, -28(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	addss	%xmm0, %xmm0
	addss	-28(%rbp), %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L36:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movd	%eax, %xmm0
	call	logf@PLT
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L35:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC18(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC19(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	sinf@PLT
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC20(%rip), %xmm0
	mulss	%xmm1, %xmm0
	call	cosf@PLT
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L33:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC21(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC22(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC10(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	jmp	.L48
.L32:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	f_, .-f_
	.comm	com_,4,16
	.data
	.align 32
	.type	kx.3901, @object
	.size	kx.3901, 32
kx.3901:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	8
	.long	11
	.align 32
	.type	kl.3899, @object
	.size	kl.3899, 44
kl.3899:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	5
	.long	9
	.long	5
	.long	9
	.long	12
	.align 32
	.type	kh.3896, @object
	.size	kh.3896, 44
kh.3896:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	3
	.long	6
	.long	17
	.long	5
	.long	9
	.long	17
	.align 32
	.type	p.3903, @object
	.size	p.3903, 1220
p.3903:
	.long	3185806905
	.long	1046925345
	.long	1057896676
	.long	1003754460
	.long	3155702726
	.long	1025627112
	.long	1037456897
	.long	1058067815
	.long	1053656054
	.long	945492490
	.long	959678187
	.long	3124626053
	.long	3096652936
	.long	1003101502
	.long	1015760689
	.long	1038380924
	.long	1035882653
	.long	1052901067
	.long	1043308753
	.long	1061605409
	.long	1046506152
	.long	837444609
	.long	872940521
	.long	919068361
	.long	846148435
	.long	3096119132
	.long	3040679350
	.long	3004449067
	.long	2987126147
	.long	980184015
	.long	992396886
	.long	1016548349
	.long	1015462366
	.long	1032851741
	.long	1024673729
	.long	1042755921
	.long	1030316889
	.long	1050169963
	.long	1033728784
	.long	1055913692
	.long	1035976594
	.long	1059797686
	.long	1037592949
	.long	1063465965
	.long	1038436773
	.long	634795001
	.long	711925251
	.long	814784310
	.long	654043875
	.long	884644331
	.long	756998465
	.long	677526983
	.long	639457548
	.long	3069360693
	.long	2995897685
	.long	2931548266
	.long	2880231437
	.long	2840606612
	.long	2811769667
	.long	2793346614
	.long	2783693734
	.long	956647766
	.long	968781507
	.long	993466161
	.long	992544071
	.long	1010394001
	.long	1002988695
	.long	1021567165
	.long	1009516759
	.long	1029425047
	.long	1014787224
	.long	1035439956
	.long	1017689405
	.long	1040931768
	.long	1020521638
	.long	1044754786
	.long	1023315446
	.long	1048919730
	.long	1024702540
	.long	1051498267
	.long	1025951055
	.long	1054374350
	.long	1027078221
	.long	1057239452
	.long	1028057956
	.long	1058921514
	.long	1028868342
	.long	1060693347
	.long	1029491715
	.long	1062530697
	.long	1029914744
	.long	1064407915
	.long	1030128498
	.long	619712404
	.long	769355805
	.long	500156604
	.long	855209569
	.long	690317503
	.long	556029598
	.long	3043613387
	.long	2959078323
	.long	2876805501
	.long	2801915337
	.long	2734823912
	.long	2674848677
	.long	932405895
	.long	945026744
	.long	970086450
	.long	969280588
	.long	987538521
	.long	980810991
	.long	999038159
	.long	987519435
	.long	1007375752
	.long	992499897
	.long	1013951585
	.long	996812594
	.long	1018905016
	.long	999886748
	.long	1023977152
	.long	1002404457
	.long	1027442075
	.long	1005043801
	.long	1031578560
	.long	1007202407
	.long	1034101957
	.long	1008596488
	.long	1036866188
	.long	1010007981
	.long	1039984265
	.long	1011425425
	.long	1041821862
	.long	1012838190
	.long	1043733676
	.long	1014236278
	.long	1045818837
	.long	1015315891
	.long	1048073760
	.long	1015986288
	.long	1049534882
	.long	1016635857
	.long	1050824569
	.long	1017260585
	.long	1052190596
	.long	1017856704
	.long	1053629166
	.long	1018420694
	.long	1055136055
	.long	1018949296
	.long	1056706650
	.long	1019439507
	.long	1057650293
	.long	1019888585
	.long	1058491673
	.long	1020294054
	.long	1059356975
	.long	1020653705
	.long	1060243271
	.long	1020965600
	.long	1061147525
	.long	1021228071
	.long	1062066601
	.long	1021439725
	.long	1062997288
	.long	1021599445
	.long	1063936312
	.long	1021706392
	.long	1064880356
	.long	1021760006
	.long	549737751
	.long	731943673
	.long	826991566
	.long	638894138
	.long	3018627729
	.long	2927688947
	.long	2832349993
	.long	2741396479
	.long	908152290
	.long	921226348
	.long	946529693
	.long	945779689
	.long	964371642
	.long	957241710
	.long	975335632
	.long	964864185
	.long	983853618
	.long	969692858
	.long	990893067
	.long	974212641
	.long	996438765
	.long	977407882
	.long	1000955007
	.long	980931107
	.long	1005486538
	.long	983107140
	.long	1008819238
	.long	985146596
	.long	1012103645
	.long	987304428
	.long	1015481313
	.long	989568737
	.long	1017689128
	.long	990892042
	.long	1020197294
	.long	992114181
	.long	1023015759
	.long	993373626
	.long	1024781714
	.long	994665650
	.long	1026513769
	.long	995985835
	.long	1028412391
	.long	997330073
	.long	1030480346
	.long	998469448
	.long	1032259361
	.long	999160020
	.long	1033465911
	.long	999857257
	.long	1034759951
	.long	1000559585
	.long	1036142022
	.long	1001265511
	.long	1037612483
	.long	1001973604
	.long	1039171519
	.long	1002682491
	.long	1040503270
	.long	1003390847
	.long	1041371306
	.long	1004097386
	.long	1042283411
	.long	1004800859
	.long	1043239356
	.long	1005500051
	.long	1044238835
	.long	1006193777
	.long	1045281472
	.long	1006756923
	.long	1046366817
	.long	1007096606
	.long	1047494351
	.long	1007431871
	.long	1048619745
	.long	1007762186
	.long	1049224791
	.long	1008087033
	.long	1049849956
	.long	1008405912
	.long	1050494851
	.long	1008718335
	.long	1051159059
	.long	1009023831
	.long	1051842133
	.long	1009321945
	.long	1052543596
	.long	1009612237
	.long	1053262946
	.long	1009894283
	.long	1053999657
	.long	1010167676
	.long	1054753173
	.long	1010432024
	.long	1055522919
	.long	1010686952
	.long	1056308295
	.long	1010932100
	.long	1057036643
	.long	1011167126
	.long	1057444016
	.long	1011391703
	.long	1057858240
	.long	1011605523
	.long	1058278974
	.long	1011808292
	.long	1058705868
	.long	1011999734
	.long	1059138565
	.long	1012179591
	.long	1059576697
	.long	1012347618
	.long	1060019893
	.long	1012503592
	.long	1060467772
	.long	1012647303
	.long	1060919948
	.long	1012778560
	.long	1061376029
	.long	1012897189
	.long	1061835617
	.long	1013003034
	.long	1062298312
	.long	1013095954
	.long	1062763706
	.long	1013175827
	.long	1063231392
	.long	1013242548
	.long	1063700956
	.long	1013296031
	.long	1064171983
	.long	1013336204
	.long	1064644057
	.long	1013363015
	.long	1065116760
	.long	1013376429
	.align 16
	.type	fl.3887, @object
	.size	fl.3887, 28
fl.3887:
	.long	2
	.long	3
	.long	5
	.long	9
	.long	12
	.long	14
	.long	1
	.align 16
	.type	fh.3885, @object
	.size	fh.3885, 28
fh.3885:
	.long	2
	.long	4
	.long	8
	.long	16
	.long	17
	.long	17
	.long	0
	.align 8
	.type	epsils.3951, @object
	.size	epsils.3951, 12
epsils.3951:
	.long	981668463
	.long	897988541
	.long	841731191
	.align 32
	.type	as.3945, @object
	.size	as.3945, 52
as.3945:
	.long	0
	.long	3212836864
	.long	3212836864
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1036831949
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	bs.3948, @object
	.size	bs.3948, 52
bs.3948:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1092616192
	.long	1078530011
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.section	.rodata
	.align 16
	.type	options.4.4005, @object
	.size	options.4.4005, 28
options.4.4005:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1056964608
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 16
.LC3:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC9:
	.long	1064011039
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC11:
	.long	1063675494
	.align 4
.LC12:
	.long	1106990034
	.align 4
.LC13:
	.long	1134367843
	.align 4
.LC14:
	.long	1078530011
	.align 4
.LC15:
	.long	1159479296
	.align 4
.LC16:
	.long	1112014848
	.align 4
.LC17:
	.long	1077936128
	.align 4
.LC18:
	.long	1109256679
	.align 4
.LC19:
	.long	1115378642
	.align 4
.LC20:
	.long	1086918619
	.align 4
.LC21:
	.long	1130758144
	.align 4
.LC22:
	.long	1106247680
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
