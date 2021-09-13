	.file	"stat11.c"
	.text
	.section	.rodata
.LC0:
	.string	"fstat"
.LC1:
	.string	"\n%d%d%ld"
	.text
	.globl	is_on_physical_device
	.type	is_on_physical_device, @function
is_on_physical_device:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-176(%rbp), %rdx
	movl	-196(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.L2
	leaq	.LC0(%rip), %rdi
	call	perror@PLT
	movl	$-1, %eax
	jmp	.L4
.L2:
	movq	-176(%rbp), %rbx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gnu_dev_major@PLT
	movl	%eax, %esi
	movl	-180(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %edx
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gnu_dev_major@PLT
.L4:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	is_on_physical_device, .-is_on_physical_device
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
