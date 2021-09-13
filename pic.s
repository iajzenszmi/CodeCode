	.file	"pic.c"
	.text
	.section	.rodata
.LC0:
	.string	"%.4d"
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
	leaq	-110592(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1456, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -112024(%rbp)
	movl	$0, -112036(%rbp)
	jmp	.L2
.L3:
	movl	-112036(%rbp), %eax
	cltq
	movl	$2000, -112016(%rbp,%rax,4)
	addl	$1, -112036(%rbp)
.L2:
	cmpl	$27999, -112036(%rbp)
	jle	.L3
	movl	$28000, -112032(%rbp)
	jmp	.L4
.L8:
	movl	$0, -112028(%rbp)
	movl	-112032(%rbp), %eax
	movl	%eax, -112036(%rbp)
.L7:
	movl	-112036(%rbp), %eax
	cltq
	movl	-112016(%rbp,%rax,4), %eax
	imull	$1000, %eax, %eax
	addl	%eax, -112028(%rbp)
	movl	-112036(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, -112020(%rbp)
	movl	-112028(%rbp), %eax
	cltd
	idivl	-112020(%rbp)
	movl	-112036(%rbp), %eax
	cltq
	movl	%edx, -112016(%rbp,%rax,4)
	movl	-112028(%rbp), %eax
	cltd
	idivl	-112020(%rbp)
	movl	%eax, -112028(%rbp)
	subl	$1, -112036(%rbp)
	cmpl	$0, -112036(%rbp)
	je	.L12
	movl	-112028(%rbp), %eax
	imull	-112036(%rbp), %eax
	movl	%eax, -112028(%rbp)
	jmp	.L7
.L12:
	nop
	movl	-112028(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$6, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-112024(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-112028(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$274877907, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$6, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$1000, %edx, %edx
	subl	%edx, %eax
	movl	%eax, -112024(%rbp)
	subl	$14, -112032(%rbp)
.L4:
	cmpl	$0, -112032(%rbp)
	jg	.L8
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
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
