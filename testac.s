	.file	"testac.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter the size of array:\n"
.LC1:
	.string	"\n%s"
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	"Enter the elements of array :\n"
.LC4:
	.string	"Enter the element of array :\n"
	.align 8
.LC5:
	.string	"Enter The Location for insert element:\n"
.LC6:
	.string	" array[location] = "
.LC7:
	.string	"\n%s%d"
	.align 8
.LC8:
	.string	"Elements of array after insertion: \n"
.LC9:
	.string	"\n%d"
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
	subq	$448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-436(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-432(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC5(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-428(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-428(%rbp), %eax
	movl	-432(%rbp), %edx
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	movl	$1, -424(%rbp)
	jmp	.L2
.L3:
	movl	-428(%rbp), %eax
	movl	-432(%rbp), %edx
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	movl	-428(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %edx
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-432(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC5(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-428(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -424(%rbp)
.L2:
	movl	-436(%rbp), %eax
	cmpl	%eax, -424(%rbp)
	jle	.L3
	leaq	.LC8(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -420(%rbp)
	jmp	.L4
.L5:
	movl	-420(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -420(%rbp)
.L4:
	movl	-436(%rbp), %eax
	cmpl	%eax, -420(%rbp)
	jle	.L5
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
