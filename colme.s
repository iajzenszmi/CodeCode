	.file	"colme.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\033[31mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC1:
	.string	"\033[32mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC2:
	.string	"\033[33mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC3:
	.string	"\033[34mIan Martin Ajzenszmidt!\033[0m"
	.align 8
.LC4:
	.string	"\033[35mIan Martin Ajzenszmidt\033[0m"
	.align 8
.LC5:
	.string	"\033[36mIan Martin Ajzenszmidt!\033[0m"
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
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
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
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
