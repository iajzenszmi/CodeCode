	.file	"filea.c"
	.text
	.section	.rodata
.LC0:
	.string	"ioctl"
	.text
	.globl	get_block
	.type	get_block, @function
get_block:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L2
	leaq	.LC0(%rip), %rdi
	call	perror@PLT
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	-24(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_block, .-get_block
	.section	.rodata
.LC1:
	.string	"fstat"
	.text
	.globl	get_nr_blocks
	.type	get_nr_blocks, @function
get_nr_blocks:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-160(%rbp), %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jns	.L5
	leaq	.LC1(%rip), %rdi
	call	perror@PLT
	movl	$-1, %eax
	jmp	.L7
.L5:
	movq	-96(%rbp), %rax
.L7:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	get_nr_blocks, .-get_nr_blocks
	.section	.rodata
.LC2:
	.string	"get_nr_blocks failed!\n"
.LC3:
	.string	"no allocated blocks"
.LC4:
	.string	"1 block\n"
.LC5:
	.string	"%d blocks\n\n"
.LC6:
	.string	"get_block failed!\n"
.LC7:
	.string	"(%u, %u) "
	.text
	.globl	print_blocks
	.type	print_blocks, @function
print_blocks:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_nr_blocks
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L10
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	jmp	.L9
.L10:
	cmpl	$0, -8(%rbp)
	jne	.L12
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L9
.L12:
	cmpl	$1, -8(%rbp)
	jne	.L13
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L14
.L13:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L14:
	movl	$0, -12(%rbp)
	jmp	.L15
.L19:
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	get_block
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L16
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
	jmp	.L9
.L16:
	cmpl	$0, -4(%rbp)
	je	.L20
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L18
.L20:
	nop
.L18:
	addl	$1, -12(%rbp)
.L15:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L19
	movl	$10, %edi
	call	putchar@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	print_blocks, .-print_blocks
	.section	.rodata
.LC8:
	.string	"usage: %s <file>\n"
.LC9:
	.string	"open"
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
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L22
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %eax
	jmp	.L23
.L22:
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L24
	leaq	.LC9(%rip), %rdi
	call	perror@PLT
	movl	$1, %eax
	jmp	.L23
.L24:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	print_blocks
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
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
