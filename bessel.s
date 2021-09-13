	.file	"bessel.c"
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L2
.L3:
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1, -12(%rbp)
.L2:
	cmpl	$0, -12(%rbp)
	jg	.L3
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	factorial, .-factorial
	.section	.rodata
.LC1:
	.string	"w"
.LC2:
	.string	"besselSeriesPlotn0.txt"
.LC3:
	.string	"Enter the value of n: "
.LC4:
	.string	"%d"
.LC5:
	.string	"Enter the desired accuracy: "
.LC6:
	.string	"%lf"
.LC12:
	.string	"%lf\t%lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.L6
.L8:
	movl	$1, -68(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, %edi
	call	factorial
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.L7:
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	.LC9(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	imull	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-48(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	addl	$1, -68(%rbp)
	movsd	-16(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L7
	movl	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	-40(%rbp), %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	call	pow@PLT
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movsd	-40(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.L6:
	movsd	.LC14(%rip), %xmm0
	comisd	-40(%rbp), %xmm0
	jnb	.L8
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	1074790400
	.align 16
.LC9:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 8
.LC13:
	.long	2576980378
	.long	1069128089
	.align 8
.LC14:
	.long	0
	.long	1076101120
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
