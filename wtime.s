	.file	"wtime.f90"
	.text
	.globl	wtime_
	.type	wtime_, @function
wtime_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-28(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_system_clock_4@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	wtime_, .-wtime_
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
