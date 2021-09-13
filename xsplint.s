	.file	"xsplint.f08"
	.text
	.section	.rodata
.LC1:
	.string	"xsplint.f08"
.LC2:
	.ascii	"BAD XA  INPUT. "
	.globl	__powisf2
	.text
	.globl	splint_
	.type	splint_, @function
splint_:
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
	subq	$648, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -632(%rbp)
	movq	%rsi, -640(%rbp)
	movq	%rdx, -648(%rbp)
	movq	%rcx, -656(%rbp)
	movq	%r8, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	-656(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-656(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-656(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movl	$1, -56(%rbp)
	movq	-656(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
.L6:
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	cmpl	$1, %eax
	jle	.L2
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-632(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-664(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L12
	movl	-96(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L6
.L12:
	movl	-96(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.L6
.L2:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-632(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-632(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-84(%rbp), %xmm0
	jp	.L7
	pxor	%xmm0, %xmm0
	ucomiss	-84(%rbp), %xmm0
	jne	.L7
	leaq	.LC1(%rip), %rax
	movq	%rax, -616(%rbp)
	movl	$94, -608(%rbp)
	movl	$128, -624(%rbp)
	movl	$6, -620(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-624(%rbp), %rax
	movl	$15, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
.L7:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-632(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	-664(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movq	-664(%rbp), %rax
	movss	(%rax), %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-632(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movl	-88(%rbp), %eax
	movl	-92(%rbp), %ebx
	movss	-84(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, -688(%rbp)
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-640(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-88(%rbp), %xmm2
	movss	%xmm2, -676(%rbp)
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-640(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm3
	movss	%xmm3, -680(%rbp)
	movl	$3, %edi
	movd	%eax, %xmm0
	call	__powisf2@PLT
	subss	-88(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movl	-56(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-648(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, -684(%rbp)
	movl	$3, %edi
	movd	%ebx, %xmm0
	call	__powisf2@PLT
	subss	-92(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-648(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm1, %xmm0
	addss	-684(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movss	-688(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	.LC3(%rip), %xmm1
	divss	%xmm1, %xmm0
	addss	-680(%rbp), %xmm0
	mulss	-92(%rbp), %xmm0
	addss	-676(%rbp), %xmm0
	movq	-672(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	addq	$648, %rsp
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
	.size	splint_, .-splint_
	.globl	spline_
	.type	spline_, @function
spline_:
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
	subq	$376, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -488(%rbp)
	movq	%rsi, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	%r8, -520(%rbp)
	movq	%r9, -528(%rbp)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-512(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	.LC4(%rip), %xmm0
	jbe	.L27
	movq	-528(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -480(%rbp)
	jmp	.L16
.L27:
	movq	-528(%rbp), %rax
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-488(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-488(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	movq	-496(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-496(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movq	-488(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-488(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-512(%rbp), %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	movss	%xmm0, -480(%rbp)
.L16:
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movl	$2, -36(%rbp)
.L18:
	cmpl	%ecx, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L29
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-76(%rbp), %xmm1
	movss	.LC7(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-76(%rbp), %xmm0
	movss	.LC8(%rip), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-80(%rbp), %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm1
	mulss	-76(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	cltq
	subq	$1, %rax
	divss	-80(%rbp), %xmm0
	movss	%xmm0, -480(%rbp,%rax,4)
	addl	$1, -36(%rbp)
	jmp	.L18
.L29:
	nop
	movq	-520(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	.LC4(%rip), %xmm0
	jbe	.L28
	pxor	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.L21
.L28:
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	divss	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	movq	-520(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-496(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-488(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm2
	subss	%xmm2, %xmm1
	divss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, -48(%rbp)
.L21:
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	-48(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-44(%rbp), %xmm1
	movss	.LC8(%rip), %xmm0
	addss	%xmm1, %xmm0
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movq	-504(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.L23:
	cmpl	$0, -40(%rbp)
	setle	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L30
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-528(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	mulss	%xmm0, %xmm1
	movl	-40(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	-480(%rbp,%rax,4), %xmm0
	movl	-40(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-528(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	subl	$1, -40(%rbp)
	jmp	.L23
.L30:
	nop
	nop
	addq	$376, %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	spline_, .-spline_
	.section	.rodata
.LC10:
	.ascii	"SINE FUNCTION FROM 0 TO PI"
	.align 8
.LC13:
	.ascii	"EXPONENTIAL FUNCTION FROM 0 TO 1"
	.align 4
.LC14:
	.long	10
.LC15:
	.ascii	"(1X,T10,A1,T20,A4,T28,A13)"
.LC16:
	.ascii	"X"
.LC17:
	.ascii	"F(X)"
.LC18:
	.ascii	"INTERPOLATION"
.LC20:
	.ascii	"(1X,3F12.6)"
	.align 8
.LC21:
	.ascii	"**********************************"
.LC22:
	.ascii	"PRESS RETURN"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$712, %rsp
	.cfi_offset 3, -24
	movl	$1, -24(%rbp)
.L44:
	cmpl	$2, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L45
	cmpl	$1, -24(%rbp)
	jne	.L33
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$10, -704(%rbp)
	movl	$128, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$26, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L35:
	cmpl	$10, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L46
	cvtsi2ssl	-20(%rbp), %xmm1
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC12(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-80(%rbp,%rax,4), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rbx
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -176(%rbp,%rbx,4)
	addl	$1, -20(%rbp)
	jmp	.L35
.L46:
	nop
	movl	-80(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -180(%rbp)
	movl	-44(%rbp), %eax
	movd	%eax, %xmm0
	call	cosf@PLT
	movd	%xmm0, %eax
	movl	%eax, -184(%rbp)
	jmp	.L36
.L33:
	cmpl	$2, -24(%rbp)
	jne	.L37
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$18, -704(%rbp)
	movl	$128, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$32, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L39:
	cmpl	$10, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L47
	cvtsi2ssl	-20(%rbp), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movss	.LC12(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-80(%rbp,%rax,4), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rbx
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -176(%rbp,%rbx,4)
	addl	$1, -20(%rbp)
	jmp	.L39
.L47:
	nop
	movl	-80(%rbp), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -180(%rbp)
	movl	-44(%rbp), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -184(%rbp)
	jmp	.L36
.L37:
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
.L36:
	leaq	-128(%rbp), %rdi
	leaq	-184(%rbp), %rcx
	leaq	-180(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rdi
	call	spline_
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$32, -704(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$26, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$1, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movl	$13, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L43:
	cmpl	$10, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L48
	cmpl	$1, -24(%rbp)
	jne	.L41
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC19(%rip), %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC11(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	sinf@PLT
	movd	%xmm0, %eax
	movl	%eax, -28(%rbp)
	jmp	.L42
.L41:
	cmpl	$2, -24(%rbp)
	jne	.L42
	cvtsi2ssl	-20(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC19(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	-32(%rbp), %eax
	movd	%eax, %xmm0
	call	expf@PLT
	movd	%xmm0, %eax
	movl	%eax, -28(%rbp)
.L42:
	leaq	-84(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rdi
	call	splint_
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$42, -704(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -640(%rbp)
	movq	$11, -632(%rbp)
	movl	$4096, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-84(%rbp), %rcx
	leaq	-720(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L43
.L48:
	nop
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$44, -704(%rbp)
	movl	$128, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$34, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$45, -704(%rbp)
	movl	$128, -720(%rbp)
	movl	$6, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-720(%rbp), %rax
	movl	$12, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -712(%rbp)
	movl	$46, -704(%rbp)
	movl	$128, -720(%rbp)
	movl	$5, -716(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	addl	$1, -24(%rbp)
	jmp	.L44
.L45:
	nop
	nop
	addq	$712, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB3:
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
	leaq	options.20.4018(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.20.4018, @object
	.size	options.20.4018, 28
options.20.4018:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC3:
	.long	1086324736
	.align 4
.LC4:
	.long	1900539341
	.align 4
.LC5:
	.long	3204448256
	.align 4
.LC6:
	.long	1077936128
	.align 4
.LC7:
	.long	1073741824
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC11:
	.long	1078530012
	.align 4
.LC12:
	.long	1092616192
	.align 4
.LC19:
	.long	1028443341
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
