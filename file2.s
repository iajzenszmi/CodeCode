	.file	"file2.c"
	.text
	.section	.rodata
.LC0:
	.string	"select"
.LC1:
	.string	"%d seconds elapsed.\n"
.LC2:
	.string	"read"
.LC3:
	.string	"read: %s\n"
.LC4:
	.string	"This should not happen!\n"
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
	subq	$1200, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-1168(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 14 "file2.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -1200(%rbp)
	movl	%eax, -1196(%rbp)
	movq	-1168(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -1168(%rbp)
	movq	$5, -1184(%rbp)
	movq	$0, -1176(%rbp)
	leaq	-1184(%rbp), %rdx
	leaq	-1168(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	select@PLT
	movl	%eax, -1192(%rbp)
	cmpl	$-1, -1192(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L9
.L2:
	cmpl	$0, -1192(%rbp)
	jne	.L4
	movl	$5, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L9
.L4:
	movq	-1168(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L5
	leaq	-1040(%rbp), %rax
	movl	$1024, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	read@PLT
	movl	%eax, -1188(%rbp)
	cmpl	$-1, -1188(%rbp)
	jne	.L6
	leaq	.LC2(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L9
.L6:
	cmpl	$0, -1188(%rbp)
	je	.L8
	movl	-1188(%rbp), %eax
	cltq
	movb	$0, -1040(%rbp,%rax)
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	movl	$0, %eax
	jmp	.L9
.L5:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
.L9:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
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
