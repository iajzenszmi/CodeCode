	.file	"rec2.f"
	.text
	.section	.rodata
.LC0:
	.string	"rec2.f"
.LC1:
	.ascii	"(29x,a3)"
	.text
	.globl	rainget_
	.type	rainget_, @function
rainget_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$71, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$8, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	rainget_, .-rainget_
	.section	.rodata
.LC2:
	.ascii	"(26x, a2)"
	.text
	.globl	dayget_
	.type	dayget_, @function
dayget_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$64, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$9, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	dayget_, .-dayget_
	.section	.rodata
.LC3:
	.ascii	"(23x, a2)"
	.text
	.globl	monthget_
	.type	monthget_, @function
monthget_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$57, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$9, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	monthget_, .-monthget_
	.section	.rodata
.LC4:
	.ascii	"(18x, a4)"
	.text
	.globl	yearget_
	.type	yearget_, @function
yearget_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$50, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$9, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	yearget_, .-yearget_
	.section	.rodata
.LC5:
	.ascii	"(11x, a6)"
	.text
	.globl	stannoget_
	.type	stannoget_, @function
stannoget_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$43, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$9, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	stannoget_, .-stannoget_
	.section	.rodata
.LC6:
	.ascii	"(a10)"
	.text
	.globl	reccodeget_
	.type	reccodeget_, @function
reccodeget_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movq	%rdx, -552(%rbp)
	movq	%rcx, -560(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$36, -512(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$80, -408(%rbp)
	movq	$0, -456(%rbp)
	movl	$-1, -524(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$5, -440(%rbp)
	movl	$20480, -528(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	movq	-544(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	reccodeget_, .-reccodeget_
	.section	.rodata
.LC7:
	.ascii	"(a80)"
.LC8:
	.ascii	"(\" \",a80)"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	movl	$0, -104(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$11, -640(%rbp)
	movl	$0, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -616(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$5, -568(%rbp)
	movl	$4128, -656(%rbp)
	movl	$5, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-96(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
.L9:
	movl	-104(%rbp), %eax
	testl	%eax, %eax
	jne	.L10
	leaq	-114(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$10, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	reccodeget_
	leaq	-120(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$6, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	stannoget_
	leaq	-100(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$4, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	yearget_
	leaq	-4(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$2, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	monthget_
	leaq	-2(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$2, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	dayget_
	leaq	-7(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$3, %ecx
	movl	$80, %edx
	movq	%rax, %rdi
	call	rainget_
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$20, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-96(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$21, -640(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$9, -568(%rbp)
	movl	$4096, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-96(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$24, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-114(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$25, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-120(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$26, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$27, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-4(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$28, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-2(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$29, -640(%rbp)
	movl	$128, -656(%rbp)
	movl	$6, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-7(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, -648(%rbp)
	movl	$30, -640(%rbp)
	movl	$0, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -616(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -576(%rbp)
	movq	$5, -568(%rbp)
	movl	$4128, -656(%rbp)
	movl	$5, -652(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read@PLT
	leaq	-96(%rbp), %rcx
	leaq	-656(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character@PLT
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_read_done@PLT
	jmp	.L9
.L10:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	leaq	options.16.3938(%rip), %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	options.16.3938, @object
	.size	options.16.3938, 28
options.16.3938:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
