	.file	"quadmathtest.c"
	.text
	.section	.rodata
.LC1:
	.string	"%+-#*.20Qe"
.LC2:
	.string	"%Qa"
.LC3:
	.string	"%+-#46.*Qe"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$20, -180(%rbp)
	movl	$46, -176(%rbp)
	movdqa	.LC0(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movdqa	-160(%rbp), %xmm0
	call	sqrtq@PLT
	movaps	%xmm0, -160(%rbp)
	movdqa	-160(%rbp), %xmm0
	movl	-176(%rbp), %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC1(%rip), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	quadmath_snprintf@PLT
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	cmpl	$127, %eax
	ja	.L2
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L2:
	movdqa	-160(%rbp), %xmm0
	leaq	-144(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	quadmath_snprintf@PLT
	movl	-172(%rbp), %eax
	cmpl	$127, %eax
	ja	.L3
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L3:
	movdqa	-160(%rbp), %xmm0
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC3(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$1, %eax
	call	quadmath_snprintf@PLT
	movl	%eax, -172(%rbp)
	cmpl	$0, -172(%rbp)
	js	.L4
	movl	-172(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L5
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movdqa	-160(%rbp), %xmm0
	movl	-180(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rdi
	movl	$1, %eax
	call	quadmath_snprintf@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L5:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L4:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	0
	.long	0
	.long	1073741824
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
