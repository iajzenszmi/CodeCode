	.file	"asig.c"
	.text
	.globl	cont
	.data
	.type	cont, @object
	.size	cont, 1
cont:
	.byte	1
	.text
	.globl	sigHandler
	.type	sigHandler, @function
sigHandler:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.L2
	movzbl	cont(%rip), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, cont(%rip)
.L2:
	leaq	sigHandler(%rip), %rsi
	movl	$2, %edi
	call	signal@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sigHandler, .-sigHandler
	.section	.rodata
.LC0:
	.string	"Wrong number of arguments.\n"
.LC1:
	.string	"Initiating Countdown."
.LC2:
	.string	"%d\n"
.LC3:
	.string	"pausing"
.LC4:
	.string	"Done."
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -164(%rbp)
	je	.L4
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L14
.L4:
	leaq	sigHandler(%rip), %rsi
	movl	$2, %edi
	call	signal@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	tcgetattr@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-68(%rbp), %eax
	andl	$-9, %eax
	movl	%eax, -68(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	call	tcsetattr@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -148(%rbp)
	jmp	.L6
.L8:
	movl	-148(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -148(%rbp)
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	sleep@PLT
.L6:
	movzbl	cont(%rip), %eax
	testb	%al, %al
	je	.L7
	cmpl	$0, -148(%rbp)
	jg	.L8
.L7:
	cmpl	$0, -148(%rbp)
	jle	.L17
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L12:
	movl	$1, %edi
	call	sleep@PLT
.L11:
	movzbl	cont(%rip), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L12
	jmp	.L6
.L17:
	nop
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	call	tcsetattr@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
.L14:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
