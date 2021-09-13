	.file	"simcraps.c"
	.text
	.section	.rodata
.LC0:
	.string	"Welcome to the Game of CRAPS\n"
	.align 8
.LC1:
	.string	"To throw the dice, press Enter\n"
	.align 8
.LC2:
	.string	"\nDo you want to play again? (Y/N) "
.LC3:
	.string	"%c"
.LC4:
	.string	"Bye, have a nice day"
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$89, -9(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$12345, %edi
	call	srand@PLT
	jmp	.L2
.L3:
	movl	$0, %eax
	call	play
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$10, %edi
	call	putchar@PLT
.L2:
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	cmpl	$78, %eax
	jne	.L3
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC5:
	.string	"\nPlease throw the dice . . ."
.LC6:
	.string	"\n%d"
	.align 8
.LC7:
	.string	" - Congratulations! You WIN on the first throw"
	.align 8
.LC8:
	.string	" - Sorry, you L0SE on the first throw"
.LC9:
	.string	" - Throw the dice again . . ."
.LC10:
	.string	" \n%d"
	.align 8
.LC11:
	.string	" - You WIN by matching your first score"
	.align 8
.LC12:
	.string	" - You L0SE by failing to match your first score"
	.text
	.globl	play
	.type	play, @function
play:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	call	throw
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$12, -16(%rbp)
	ja	.L18
	movl	-16(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L9(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L18-.L9
	.long	.L18-.L9
	.long	.L8-.L9
	.long	.L8-.L9
	.long	.L13-.L9
	.long	.L13-.L9
	.long	.L13-.L9
	.long	.L10-.L9
	.long	.L13-.L9
	.long	.L13-.L9
	.long	.L13-.L9
	.long	.L10-.L9
	.long	.L8-.L9
	.text
.L10:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L8:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L19:
	nop
.L13:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, %eax
	call	throw
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.L12
	cmpl	$7, -12(%rbp)
	jne	.L19
.L12:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L14
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L20
.L14:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.L20:
	nop
.L16:
.L18:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	play, .-play
	.globl	throw
	.type	throw, @function
throw:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC14(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC15(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movss	-16(%rbp), %xmm1
	movss	.LC14(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC15(%rip), %xmm0
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	throw, .-throw
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	1105750528
	.align 4
.LC14:
	.long	1086324736
	.align 4
.LC15:
	.long	1065353216
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
