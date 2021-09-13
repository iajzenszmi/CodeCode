	.file	"hak3.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d\t"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, -168(%rbp)
	movl	$0, -108(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-112(%rbp), %ebx
	movl	-116(%rbp), %esi
	movslq	%ebx, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	%ebx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movslq	%esi, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	%r13, %rdx
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r12, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r12, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%ebx, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	movslq	%esi, %rax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-144(%rbp), %r8
	movq	-136(%rbp), %r9
	movq	%r9, %rdx
	movq	-160(%rbp), %r10
	movq	-152(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%ebx, %rdx
	movslq	%esi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -224(%rbp)
	movq	$0, -216(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rdx
.L5:
	cmpq	%rdx, %rsp
	je	.L6
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L5
.L6:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L7
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L7:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movl	-112(%rbp), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax,%rdx,8)
	movl	$0, -100(%rbp)
	jmp	.L8
.L11:
	movl	$0, -104(%rbp)
	jmp	.L9
.L10:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movl	-104(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-108(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -108(%rbp)
	addl	$1, -104(%rbp)
.L9:
	movl	-112(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L10
	addl	$1, -100(%rbp)
.L8:
	movl	-116(%rbp), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L11
	movl	$0, -100(%rbp)
	jmp	.L12
.L15:
	movl	$0, -104(%rbp)
	jmp	.L13
.L14:
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movl	-104(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -104(%rbp)
.L13:
	movl	-112(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L14
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -100(%rbp)
.L12:
	movl	-116(%rbp), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L15
	movl	$0, %eax
	movq	-168(%rbp), %rsp
	movq	-56(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
