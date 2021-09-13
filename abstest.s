	.file	"abstest.f90"
	.text
	.section	.rodata
.LC0:
	.string	"abstest.f90"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$5, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	i.3872(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	x.3873(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	z.3874(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	i.3872(%rip), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, i.3872(%rip)
	movss	x.3873(%rip), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, x.3873(%rip)
	movss	z.3874(%rip), %xmm1
	movss	4+z.3874(%rip), %xmm0
	movss	%xmm1, -536(%rbp)
	movss	%xmm0, -532(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, %xmm0
	call	cabsf@PLT
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movss	%xmm1, z.3874(%rip)
	movss	%xmm0, 4+z.3874(%rip)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$9, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	i.3872(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	x.3873(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	leaq	z.3874(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_complex_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.2.3881(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 4
	.type	i.3872, @object
	.size	i.3872, 4
i.3872:
	.long	-1
	.align 4
	.type	x.3873, @object
	.size	x.3873, 4
x.3873:
	.long	3212836864
	.align 4
	.type	z.3874, @object
	.size	z.3874, 8
z.3874:
	.long	3212836864
	.long	0
	.section	.rodata
	.align 16
	.type	options.2.3881, @object
	.size	options.2.3881, 28
options.2.3881:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
