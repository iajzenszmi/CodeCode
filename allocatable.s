	.file	"allocatable.c"
	.text
	.section	.rodata
.LC0:
	.string	"ALLOCATABLE:"
.LC1:
	.string	"  C version"
	.align 8
.LC2:
	.string	"  Show how a function can declare a pointer to an array,"
	.align 8
.LC3:
	.string	"  but then call a function to allocate and initialize"
	.align 8
.LC4:
	.string	"  the array, which is then returned in the argument list."
.LC5:
	.string	"  The array size is N = %d\n"
.LC6:
	.string	"  The array contents:"
.LC7:
	.string	"  %8d  %8d\n"
.LC8:
	.string	"  Normal end of execution."
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	timestamp
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test01
	movl	$10, %edi
	call	putchar@PLT
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	call	timestamp
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	test01
	.type	test01, @function
test01:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$123456789, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$15, %esi
	movl	$5, %edi
	call	i4_uniform_ab
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -28(%rbp)
	jmp	.L7
.L8:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$0, %edi
	call	i4_uniform_ab
	movl	%eax, (%rbx)
	addl	$1, -28(%rbp)
.L7:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L8
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	test01, .-test01
	.section	.rodata
.LC9:
	.string	"I4_UNIFORM_AB - Fatal error!\n"
.LC10:
	.string	"  Input value of SEED = 0.\n"
	.text
	.globl	i4_uniform_ab
	.type	i4_uniform_ab, @function
i4_uniform_ab:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$2147483647, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L13
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
.L13:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	imulq	$-2092037281, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$16, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	imull	$-127773, %eax, %eax
	addl	%edx, %eax
	imull	$16807, %eax, %edx
	movl	-8(%rbp), %eax
	imull	$-2836, %eax, %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L14
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L14:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	cvtsi2ssl	-36(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC13(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm2
	cvtsi2ssl	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L15
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
.L15:
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L16
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
.L16:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	i4_uniform_ab, .-i4_uniform_ab
	.section	.rodata
.LC14:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$40, %esi
	leaq	time_buffer.4039(%rip), %rdi
	call	strftime@PLT
	leaq	time_buffer.4039(%rip), %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	timestamp, .-timestamp
	.local	time_buffer.4039
	.comm	time_buffer.4039,40,32
	.section	.rodata
	.align 8
.LC11:
	.long	1859432
	.long	1040187392
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	0
	.long	1071644672
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
