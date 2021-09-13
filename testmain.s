	.file	"testmain.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\033[1;31mHey this is the color red, and it's bold! \n\033[0m"
	.align 8
.LC1:
	.string	"\033[0;31mIf\033[0;34myou\033[0;33mare\033[0;32mbored\033[0;36mdo\033[0;35mthis! \n\033[0m"
	.align 8
.LC2:
	.string	"\033[1;31mIf\033[1;34myou\033[1;33mare\033[1;32mbored\033[1;36mdo\033[1;35mthis! \n\033[0m"
	.align 8
.LC3:
	.string	"\033[4;31mIf\033[4;34myou\033[4;33mare\033[4;32mbored\033[4;36mdo\033[4;35mthis! \n\033[0m"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
