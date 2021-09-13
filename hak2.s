	.file	"hak2.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"pointer = "
.LC2:
	.string	"\n%s%p"
.LC3:
	.string	"%p\t"
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
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-116(%rbp), %ebx
	movl	-120(%rbp), %esi
	movslq	%ebx, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %rdi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
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
	movslq	%ebx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%esi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r15, %rdx
	imulq	%r12, %rdx
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r12
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%ebx, %rdx
	movslq	%esi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
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
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -80(%rbp)
	movl	-116(%rbp), %eax
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
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rdx
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
	movq	$0, -104(%rbp)
	shrq	$3, %rdi
	movl	-120(%rbp), %ecx
	movl	-116(%rbp), %esi
	movl	-116(%rbp), %edx
	movq	-80(%rbp), %rax
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	movl	-116(%rbp), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -108(%rbp)
	jmp	.L8
.L11:
	movl	$0, -112(%rbp)
	jmp	.L9
.L10:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$4, -104(%rbp)
	addl	$1, -112(%rbp)
.L9:
	movl	-116(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	jl	.L10
	addl	$1, -108(%rbp)
.L8:
	movl	-120(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L11
	movl	$0, -108(%rbp)
	jmp	.L12
.L15:
	movl	$0, -112(%rbp)
	jmp	.L13
.L14:
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movl	-112(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -112(%rbp)
.L13:
	movl	-116(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	jl	.L14
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -108(%rbp)
.L12:
	movl	-120(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jl	.L15
	movl	$0, %eax
	movq	-168(%rbp), %rsp
	movq	-56(%rbp), %rdi
	xorq	%fs:40, %rdi
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
