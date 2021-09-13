	.file	"atest4.c"
	.text
	.section	.rodata
.LC2:
	.string	"\n%d"
.LC4:
	.string	"/n%c"
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
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$800, -64(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$1000, -60(%rbp)
	movl	$43, -56(%rbp)
	movl	-60(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.L2
.L10:
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$43, -56(%rbp)
	jne	.L3
	movsd	-40(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-72(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	$15, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-72(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%edx, -72(%rbp)
	cmpl	$9, -44(%rbp)
	jg	.L4
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	-44(%rbp), %edx
	cltq
	movb	%dl, -16(%rbp,%rax)
	jmp	.L3
.L4:
	cmpl	$10, -44(%rbp)
	jne	.L5
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$65, -16(%rbp,%rax)
	jmp	.L3
.L5:
	cmpl	$11, -44(%rbp)
	jne	.L6
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$66, -16(%rbp,%rax)
	jmp	.L3
.L6:
	cmpl	$12, -44(%rbp)
	jne	.L7
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$67, -16(%rbp,%rax)
	jmp	.L3
.L7:
	cmpl	$13, -44(%rbp)
	jne	.L8
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$68, -16(%rbp,%rax)
	jmp	.L3
.L8:
	cmpl	$14, -44(%rbp)
	jne	.L9
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$69, -16(%rbp,%rax)
	jmp	.L3
.L9:
	cmpl	$15, -44(%rbp)
	jne	.L3
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	cltq
	movb	$70, -16(%rbp,%rax)
.L3:
	subl	$1, -68(%rbp)
.L2:
	cmpl	$0, -68(%rbp)
	jg	.L10
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.L11
.L12:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movsd	-40(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.L11:
	cvtsi2sdl	-64(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	ja	.L12
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1082720256
	.align 8
.LC1:
	.long	0
	.long	1076887552
	.align 8
.LC3:
	.long	0
	.long	1072693248
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
