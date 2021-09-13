	.file	"MonteCarlo.c"
	.text
	.section	.rodata
.LC4:
	.string	" Pi equals "
.LC5:
	.string	"\n%s%Le10.4"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	fldt	.LC0(%rip)
	fstpt	-64(%rbp)
	fldz
	fstpt	-80(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$1, -84(%rbp)
	jmp	.L2
.L5:
	call	rand@PLT
	movl	%eax, %edx
	movslq	%edx, %rcx
	movq	%rcx, %rax
	salq	$30, %rax
	addq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$29, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -104(%rbp)
	fildl	-104(%rbp)
	fstpt	-32(%rbp)
	call	rand@PLT
	movl	%eax, %edx
	movslq	%edx, %rcx
	movq	%rcx, %rax
	salq	$30, %rax
	addq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$29, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -104(%rbp)
	fildl	-104(%rbp)
	fstpt	-16(%rbp)
	fldt	-32(%rbp)
	fld	%st(0)
	fmulp	%st, %st(1)
	fldt	-16(%rbp)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fld1
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L3
	fldt	-80(%rbp)
	fld1
	faddp	%st, %st(1)
	fstpt	-80(%rbp)
.L3:
	addl	$1, -84(%rbp)
.L2:
	fildl	-84(%rbp)
	fldt	-64(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	.L5
	fldt	-80(%rbp)
	fnstcw	-98(%rbp)
	movzwl	-98(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -100(%rbp)
	fldcw	-100(%rbp)
	fistpl	-104(%rbp)
	fldcw	-98(%rbp)
	fildl	-104(%rbp)
	fldt	-64(%rbp)
	fdivrp	%st, %st(1)
	fldt	.LC3(%rip)
	fmulp	%st, %st(1)
	fstpt	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	4095995904
	.long	16402
	.long	0
	.align 16
.LC3:
	.long	0
	.long	2147483648
	.long	16385
	.long	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
