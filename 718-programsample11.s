	.file	"718-programsample11.f"
	.text
	.section	.rodata
.LC2:
	.string	"718-programsample11.f"
.LC3:
	.ascii	"*********"
.LC4:
	.ascii	"EXAMPLE 1"
.LC5:
	.ascii	"SYSTEM MATRIX A:"
.LC6:
	.ascii	"(1X,8E15.6)"
	.align 4
.LC7:
	.long	25
.LC8:
	.ascii	"RESULT VECTOR F:"
.LC9:
	.ascii	"EIGENVALUES OF (A - B*F): "
	.align 8
.LC10:
	.ascii	"   (THE MATRIX (A - B*F) SHOULD HAVE EIGENVALUES"
	.align 8
.LC11:
	.ascii	"   1.0, 2.0, 3.0, 4.0 and 5.0, BUT NOT NECESSARILY"
	.align 8
.LC12:
	.ascii	"   IN THIS ORDER. THIS EXAMPLE USES A SYSTEM IN"
.LC13:
	.ascii	"   CONTROLLABILITY FORM.)"
.LC14:
	.ascii	"EXAMPLE 2"
.LC15:
	.ascii	"EIGENVALUES OF (A - B*F):"
	.align 8
.LC16:
	.ascii	"   (SINCE THE SYSTEM (b,A) IS UNCONTROLLABLE,"
	.align 8
.LC17:
	.ascii	"   NO EIGENVALUES ARE ALLOCATED.  THE VECTOR F"
	.align 8
.LC18:
	.ascii	"   SHOULD BE ZERO,  AND THE EIGENVALUES OF"
	.align 8
.LC19:
	.ascii	"   (A - B*F) SHOULD BE THOSE OF THE MATRIX A)"
.LC22:
	.ascii	"EXAMPLE 3 "
.LC23:
	.ascii	"MACHINE UNIT: "
	.align 8
.LC24:
	.ascii	"  (THE SUBROUTINE SHOULD ALLOCATE TWO"
	.align 8
.LC25:
	.ascii	"  EIGENVALUES AND THEN IF THE CORRECT MACHINE"
	.align 8
.LC26:
	.ascii	"  UNIT IS COMPUTED THE SUBROUTINE SHOULD"
	.align 8
.LC27:
	.ascii	"  DETECT AN UNCONTROLLABLE SYSTEM."
	.align 8
.LC28:
	.ascii	"  NOTE THAT SOME MACHINES/COMPILERS MAY NOT COMPUTE"
	.align 8
.LC29:
	.ascii	"  THE CORRECT MACHINE UNIT. INSTEAD THEY MAY"
	.align 8
.LC30:
	.ascii	"  COMPUTE A MACHINE UNIT AFFECTED BY THE LENGTH OF"
	.align 8
.LC31:
	.ascii	"  THE REGISTER. IN SUCH A CASE THE SUBROUTINE MAY"
	.align 8
.LC32:
	.ascii	"  NOT DETECT UNCONTROLLABILITY AND IT MAY CONTINUE"
	.align 8
.LC33:
	.ascii	"  THE ALLOCATIONS WITH AN ILL-CONDITIONED"
	.align 8
.LC34:
	.ascii	"  EIGENVALUE ALLOCATION PROBLEM. THIS WILL RESULT"
	.align 8
.LC35:
	.ascii	"  TO AN INACCURATE  F  AND THUS TO INACCURATE"
.LC36:
	.ascii	"  EIGENVALUES FOR  (A - B*F)."
	.align 8
.LC37:
	.ascii	"  FOR MORE DETAILS SEE REFERENCES IN THE PAPER."
	.align 8
.LC38:
	.ascii	"  IF UNCONTROLLABILITY IS DETECTED THE MATRIX"
	.align 8
.LC39:
	.ascii	"  (A - B*F)  SHOULD HAVE EIGENVALUES 1.0, 2.0,"
	.align 8
.LC40:
	.ascii	"  AND THREE OTHER UNSPECIFIED EIGENVALUES.)"
.LC49:
	.ascii	"EXAMPLE 4 "
	.align 8
.LC50:
	.ascii	"   (THE MATRIX (A - B*F) SHOULD HAVE"
	.align 8
.LC51:
	.ascii	"   EIGENVALUES 63.0, -24.0, 7.0 + 28.0i,"
	.align 8
.LC52:
	.ascii	"   7.0 - 28.0i, -15.0 + 20.0i, and -15.0 - 20.0i,"
	.align 8
.LC53:
	.ascii	"   IN ANY ORDER.)  THIS EXAMPLE ALLOCATES"
	.align 8
.LC54:
	.ascii	"   EIGENVALUES TO A GENERAL SYSTEM."
.LC56:
	.ascii	"EXAMPLE 5 "
	.align 8
.LC57:
	.ascii	"  (THIS EXAMPLE ALLOCATES THE EIGENVALUE 8.0"
	.align 8
.LC58:
	.ascii	"  SEVEN TIMES. HOWEVER, THE COMPUTED MULTIPLE"
	.align 8
.LC59:
	.ascii	"  EIGENVALUE IS NOT ACCURATE TO MACHINE PRECISION."
	.align 8
.LC60:
	.ascii	"  THIS IS DUE TO THE FACT THAT UPPER HESSENBERG"
	.align 8
.LC61:
	.ascii	"  MATRICES WITH NON-ZERO SUBDIAGONAL ELEMENTS ARE"
	.align 8
.LC62:
	.ascii	"  DEFECTIVE IF THEY HAVE MULTIPLE EIGENVALUES. THIS"
	.align 8
.LC63:
	.ascii	"  RESULTS IN A JORDAN CANONICAL FORM WITH"
	.align 8
.LC64:
	.ascii	"  JORDAN BLOCKS AS LARGE AS THE MULTIPLICITY"
	.align 8
.LC65:
	.ascii	"  OF THE EIGENVALUES, INDICATING A MATRIX THAT"
	.align 8
.LC66:
	.ascii	"  IS ILL-CONDITIONED WITH RESPECT TO THE"
	.align 8
.LC67:
	.ascii	"  EIGENVALUE PROBLEM. THE VECTOR  F  IS ACCURATE,"
	.align 8
.LC68:
	.ascii	"  BUT THE COMPUTED EIGENVALUES FROM  DEIGVL  ARE"
	.align 8
.LC69:
	.ascii	"  NOT. THIS IS A RESULT OF THE EIGENPROBLEM"
	.align 8
.LC70:
	.ascii	"  OF  (A - B*F), AND NOT THE POLE PLACEMENT"
	.align 8
.LC71:
	.ascii	"  ALGORITHM ITSELF.  A COMPARISON OF THE SINGLE "
	.align 8
.LC72:
	.ascii	"  AND DOUBLE PRECISION VERSIONS OF THIS PROGRAM "
	.align 8
.LC73:
	.ascii	"  WILL DEMONSTRATE THIS DISTINCTION.)"
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
	pushq	%r12
	pushq	%rbx
	subq	$41712, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	$5, -19588(%rbp)
	movl	-19588(%rbp), %ecx
	movl	$1, -20(%rbp)
.L6:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L76
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -10240(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-19588(%rbp), %esi
	movl	%eax, -24(%rbp)
.L5:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L77
	cmpl	$0, -24(%rbp)
	jle	.L4
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rdi,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
.L4:
	addl	$1, -24(%rbp)
	jmp	.L5
.L77:
	nop
	addl	$1, -20(%rbp)
	jmp	.L6
.L76:
	nop
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -10240(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -10448(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$41, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$42, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$43, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$44, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$45, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$46, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$47, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L10:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L78
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$49, -41712(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -41648(%rbp)
	movq	$11, -41640(%rbp)
	movl	$4096, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-19588(%rbp), %r12d
	movl	$1, -24(%rbp)
.L9:
	movl	-41728(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L79
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L79
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L9
.L79:
	nop
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L10
.L78:
	nop
	movl	$1, -16468(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19600(%rbp)
	leaq	-41200(%rbp), %r8
	leaq	-19584(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19588(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16472(%rbp), %rcx
	pushq	%rcx
	leaq	-19600(%rbp), %rcx
	pushq	%rcx
	leaq	-16468(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19184(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_@PLT
	addq	$48, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$64, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$65, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$66, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L12:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L80
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$68, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movsd	-10448(%rbp), %xmm2
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -20(%rbp)
	jmp	.L12
.L80:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19588(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$80, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$81, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$26, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$82, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L14:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L81
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$84, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L14
.L81:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$87, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$88, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$48, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$89, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$50, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$90, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$47, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$91, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$25, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$92, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -19588(%rbp)
	movl	-19588(%rbp), %ecx
	movl	$1, -20(%rbp)
.L20:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L82
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -10240(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16464(%rbp,%rax,8)
	movl	-19588(%rbp), %esi
	movl	$1, -24(%rbp)
.L19:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L83
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L17
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rdi,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	jmp	.L18
.L17:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
.L18:
	addl	$1, -24(%rbp)
	jmp	.L19
.L83:
	nop
	addl	$1, -20(%rbp)
	jmp	.L20
.L82:
	nop
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -10240(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -10448(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -4808(%rbp)
	movsd	-4600(%rbp), %xmm0
	movsd	%xmm0, -9816(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$139, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$140, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$141, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$142, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$143, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$144, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$145, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L24:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L84
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$147, -41712(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -41648(%rbp)
	movq	$11, -41640(%rbp)
	movl	$4096, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-19588(%rbp), %r12d
	movl	$1, -24(%rbp)
.L23:
	movl	-41728(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L85
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L85
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L23
.L85:
	nop
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L24
.L84:
	nop
	movl	$1, -16468(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19600(%rbp)
	leaq	-41200(%rbp), %r8
	leaq	-19584(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19588(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16472(%rbp), %rcx
	pushq	%rcx
	leaq	-19600(%rbp), %rcx
	pushq	%rcx
	leaq	-16468(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19184(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_@PLT
	addq	$48, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$162, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$163, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$164, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L26:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L86
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$166, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movsd	-10448(%rbp), %xmm2
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -20(%rbp)
	jmp	.L26
.L86:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19588(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$178, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$179, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$25, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$180, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L28:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L87
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$182, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L28
.L87:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$186, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$187, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$188, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$46, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$189, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$42, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$190, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$191, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$5, -19588(%rbp)
	movl	-19588(%rbp), %ecx
	movl	$1, -20(%rbp)
.L33:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L88
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	cvtsi2sdl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -10240(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10240(%rbp,%rdx,8), %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16464(%rbp,%rax,8)
	movl	-19588(%rbp), %esi
	movl	$1, -24(%rbp)
.L32:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L89
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	.LC20(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$2, -24(%rbp)
	setle	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L31
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rax,8), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	.LC21(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
.L31:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rdi,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L32
.L89:
	nop
	addl	$1, -20(%rbp)
	jmp	.L33
.L88:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$228, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$229, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$230, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$10, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$231, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$232, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$233, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$234, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L37:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L90
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$236, -41712(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -41648(%rbp)
	movq	$11, -41640(%rbp)
	movl	$4096, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-19588(%rbp), %r12d
	movl	$1, -24(%rbp)
.L36:
	movl	-41728(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L91
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L91
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L36
.L91:
	nop
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L37
.L90:
	nop
	movl	$0, -16468(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19600(%rbp)
	leaq	-41200(%rbp), %r8
	leaq	-19584(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19588(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16472(%rbp), %rcx
	pushq	%rcx
	leaq	-19600(%rbp), %rcx
	pushq	%rcx
	leaq	-16468(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19184(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_@PLT
	addq	$48, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$251, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$252, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$253, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L41:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L92
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$255, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ecx
	movl	$1, -24(%rbp)
.L40:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L93
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10448(%rbp,%rax,8), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L40
.L93:
	nop
	addl	$1, -20(%rbp)
	jmp	.L41
.L92:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19588(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$268, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$269, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$25, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$270, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L43:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L94
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$272, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L43
.L94:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$276, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$277, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$14, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-19600(%rbp), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$278, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$279, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$37, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$280, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$281, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$40, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$282, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$34, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$283, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$51, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$284, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$44, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$285, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$50, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$286, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$49, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$287, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$50, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$288, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$41, %edx
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$289, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$49, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$290, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$291, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$29, %edx
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$292, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$47, %edx
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$293, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$294, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$46, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$295, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$43, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$296, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$6, -19588(%rbp)
	movl	-19588(%rbp), %ecx
	movl	$1, -20(%rbp)
.L48:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L95
	cvtsi2sdl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -10240(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10240(%rbp,%rdx,8), %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	movl	-19588(%rbp), %esi
	movl	$1, -24(%rbp)
.L47:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L96
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm2, %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L46
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rax,8), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	.LC41(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
.L46:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rdi,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L47
.L96:
	nop
	addl	$1, -20(%rbp)
	jmp	.L48
.L95:
	nop
	movsd	.LC42(%rip), %xmm0
	movsd	%xmm0, -19584(%rbp)
	movsd	.LC43(%rip), %xmm0
	movsd	%xmm0, -19576(%rbp)
	movsd	.LC42(%rip), %xmm0
	movsd	%xmm0, -19568(%rbp)
	movsd	.LC44(%rip), %xmm0
	movsd	%xmm0, -19560(%rbp)
	movsd	.LC45(%rip), %xmm0
	movsd	%xmm0, -19552(%rbp)
	movsd	.LC21(%rip), %xmm0
	movsd	%xmm0, -19544(%rbp)
	movsd	.LC45(%rip), %xmm0
	movsd	%xmm0, -19536(%rbp)
	movsd	.LC46(%rip), %xmm0
	movsd	%xmm0, -19528(%rbp)
	movsd	.LC47(%rip), %xmm0
	movsd	%xmm0, -19520(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19512(%rbp)
	movsd	.LC48(%rip), %xmm0
	movsd	%xmm0, -19504(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19496(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$336, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$337, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$338, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$10, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$339, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$340, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$341, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$342, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L52:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L97
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$344, -41712(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -41648(%rbp)
	movq	$11, -41640(%rbp)
	movl	$4096, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-19588(%rbp), %r12d
	movl	$1, -24(%rbp)
.L51:
	movl	-41728(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L98
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L98
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L51
.L98:
	nop
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L52
.L97:
	nop
	movl	$0, -16468(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19600(%rbp)
	leaq	-41200(%rbp), %r8
	leaq	-19584(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19588(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16472(%rbp), %rcx
	pushq	%rcx
	leaq	-19600(%rbp), %rcx
	pushq	%rcx
	leaq	-16468(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19184(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_@PLT
	addq	$48, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$359, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$360, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$361, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L56:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L99
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$363, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ecx
	movl	$1, -24(%rbp)
.L55:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L100
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10448(%rbp,%rax,8), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L55
.L100:
	nop
	addl	$1, -20(%rbp)
	jmp	.L56
.L99:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19588(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$376, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$377, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$26, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$378, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L58:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L101
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$380, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L58
.L101:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$384, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$385, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$36, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$386, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$40, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$387, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$49, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$388, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$41, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$389, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$35, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$390, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$8, -19588(%rbp)
	movl	-19588(%rbp), %ecx
	movl	$1, -20(%rbp)
.L65:
	cmpl	%ecx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L102
	movl	-19588(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$6, %eax
	jg	.L60
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	movsd	.LC55(%rip), %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	jmp	.L61
.L60:
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, %rax
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
.L61:
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rax
	subq	$1, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19584(%rbp,%rax,8)
	cvtsi2sdl	-20(%rbp), %xmm1
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -10240(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10240(%rbp,%rdx,8), %xmm0
	movsd	%xmm0, -10448(%rbp,%rax,8)
	movl	-19588(%rbp), %esi
	movl	$1, -24(%rbp)
.L64:
	cmpl	%esi, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L103
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm2, %xmm0
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L63
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rax,8), %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	.LC41(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -5024(%rbp,%rax,8)
.L63:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-5024(%rbp,%rdi,8), %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L64
.L103:
	nop
	addl	$1, -20(%rbp)
	jmp	.L65
.L102:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$436, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$437, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$438, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$10, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$439, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$9, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$440, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$441, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$442, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L69:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L104
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$444, -41712(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -41648(%rbp)
	movq	$11, -41640(%rbp)
	movl	$4096, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-19588(%rbp), %r12d
	movl	$1, -24(%rbp)
.L68:
	movl	-41728(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L105
	cmpl	%r12d, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L105
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-26(%rax), %rdx
	leaq	-5024(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -24(%rbp)
	jmp	.L68
.L105:
	nop
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L69
.L104:
	nop
	movl	$0, -16468(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -19600(%rbp)
	leaq	-41200(%rbp), %r8
	leaq	-19584(%rbp), %rdi
	leaq	-10240(%rbp), %rdx
	leaq	-19588(%rbp), %rsi
	leaq	-5024(%rbp), %rax
	leaq	-16464(%rbp), %rcx
	pushq	%rcx
	leaq	-16472(%rbp), %rcx
	pushq	%rcx
	leaq	-19600(%rbp), %rcx
	pushq	%rcx
	leaq	-16468(%rbp), %rcx
	pushq	%rcx
	leaq	-15856(%rbp), %rcx
	pushq	%rcx
	leaq	-19184(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	dsevas_@PLT
	addq	$48, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$459, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$460, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$16, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$461, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L73:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L106
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$463, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16464(%rbp), %rax
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ecx
	movl	$1, -24(%rbp)
.L72:
	cmpl	%ecx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L107
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	movsd	-10032(%rbp,%rax,8), %xmm0
	movl	-20(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-10448(%rbp,%rax,8), %xmm2
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movsd	-16464(%rbp,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$26, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -10032(%rbp,%rax,8)
	addl	$1, -24(%rbp)
	jmp	.L72
.L107:
	nop
	addl	$1, -20(%rbp)
	jmp	.L73
.L106:
	nop
	leaq	-16256(%rbp), %rdx
	leaq	-10032(%rbp), %rsi
	leaq	-19588(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rdi
	call	deigvl_@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$476, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$477, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$26, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$478, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-19588(%rbp), %ebx
	movl	$1, -20(%rbp)
.L75:
	cmpl	%ebx, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L108
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$480, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	leaq	-16256(%rbp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-41728(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L75
.L108:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$484, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$485, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$44, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$486, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$45, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$487, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$50, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$488, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$47, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$489, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$49, %edx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$490, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$51, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$491, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$41, %edx
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$492, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$44, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$493, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$46, %edx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$494, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$40, %edx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$495, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$49, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$496, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$48, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$497, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$43, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$498, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$43, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$499, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$48, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$500, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$48, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$501, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movl	$37, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -41720(%rbp)
	movl	$502, -41712(%rbp)
	movl	$128, -41728(%rbp)
	movl	$6, -41724(%rbp)
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-41728(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_string@PLT
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
	leaq	options.139.4214(%rip), %rsi
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
	.section	.rodata
	.align 16
	.type	options.139.4214, @object
	.size	options.139.4214, 28
options.139.4214:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC20:
	.long	0
	.long	1074266112
	.align 8
.LC21:
	.long	0
	.long	1077149696
	.align 8
.LC41:
	.long	0
	.long	1076756480
	.align 8
.LC42:
	.long	0
	.long	1075576832
	.align 8
.LC43:
	.long	0
	.long	1077673984
	.align 8
.LC44:
	.long	0
	.long	-1069809664
	.align 8
.LC45:
	.long	0
	.long	-1070727168
	.align 8
.LC46:
	.long	0
	.long	-1070333952
	.align 8
.LC47:
	.long	0
	.long	1078951936
	.align 8
.LC48:
	.long	0
	.long	-1070071808
	.align 8
.LC55:
	.long	0
	.long	1075838976
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
