section .file	
section .text
section	.rodata
.LC4: section .LC3 
 
.LC4: .string	" radius= "
                .LC5: .string	"Surface Area "
                .LC6: .string	"\nsfsdsd"
section .text
	global main

main:
.LFB5:
	.cfi_startproc
	pushq	rbp  16
	.cfi_offset 6, -16
	movq	rsp, rbp
	.cfi_def_cfa_register 6
	subq	$16, rsp
	movl	$1, -12(rbp)
	jmp	.L2
.L5:
	movl	$1, -8(rbp)
	jmp	.L3
.L4:
	cvtsi2sd	-12(rbp), xmm0
	movsd	.LC0(rip), xmm1
	mulsd	xmm0, xmm1
	cvtsi2sd	-8(rbp), xmm0
	mulsd	xmm0, xmm1
	cvtsi2sd	-12(rbp), xmm0
	movsd	.LC1(rip), xmm2
	mulsd	xmm2, xmm0
	movsd	.LC2(rip), xmm2
	mulsd	xmm2, xmm0
	addsd	xmm1, xmm0
	cvtsd2ss	xmm0, xmm3
	movss	xmm3, -4(rbp)
	cvtss2sd	-4(rbp), xmm0
	movl	-8(rbp), edx
	movl	-12(rbp), eax
	movl	edx, r9d
	leaq	.LC3(rip), r8
	movl	eax, ecx
	leaq	.LC4(rip), rdx
	leaq	.LC5(rip), rsi
	leaq	.LC6(rip), rdi
	movl	$1, eax
	call	printf@PLT
	addl	$1, -8(rbp)
.L3:
	cmpl	$50, -8(rbp)
	jle	.L4
	addl	$1, -12(rbp)
.L2:
	cmpl	$50, -12(rbp)
	jle	.L5
	movl	$0, eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1413754136
	.long	1074340347
	.align 8
.LC1:
	.long	1413754136
	.long	1073291771
	.align 8
.LC2:
	.long	3100958126
	.long	1075678820
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
