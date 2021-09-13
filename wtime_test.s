	.file	"wtime_test.f90"
	.text
	.section	.rodata
.LC0:
	.ascii	"AM"
.LC1:
	.ascii	"Noon"
.LC2:
	.ascii	"PM"
.LC3:
	.string	"wtime_test.f90"
	.align 8
.LC4:
	.ascii	"(a,1x,i2,1x,i4,2x,i2,a1,i2.2,a1,i2.2,a1,i3.3,1x,a)"
.LC5:
	.ascii	":"
.LC6:
	.ascii	"."
	.text
	.globl	timestamp_
	.type	timestamp_, @function
timestamp_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$672, %rsp
	movq	$4, -640(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$4, -656(%rbp)
	movb	$1, -644(%rbp)
	movb	$1, -643(%rbp)
	movq	$1, -624(%rbp)
	movq	$8, -616(%rbp)
	movq	$1, -632(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$-1, -664(%rbp)
	leaq	-672(%rbp), %rcx
	leaq	-105(%rbp), %rdx
	leaq	-50(%rbp), %rsi
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$5
	movl	$10, %r9d
	movl	$8, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_date_and_time@PLT
	addq	$16, %rsp
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$11, %eax
	jg	.L2
	leaq	-12(%rbp), %rax
	movzwl	.LC0(%rip), %edx
	movw	%dx, (%rax)
	leaq	-12(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L3
.L2:
	movl	-28(%rbp), %eax
	cmpl	$12, %eax
	jne	.L4
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L5
	leaq	-12(%rbp), %rax
	movl	.LC1(%rip), %edx
	movl	%edx, (%rax)
	leaq	-12(%rbp), %rax
	addq	$4, %rax
	movl	$538976288, (%rax)
	jmp	.L3
.L5:
	leaq	-12(%rbp), %rax
	movzwl	.LC2(%rip), %edx
	movw	%dx, (%rax)
	leaq	-12(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L3
.L4:
	movl	-28(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	$11, %eax
	jg	.L6
	leaq	-12(%rbp), %rax
	movzwl	.LC2(%rip), %edx
	movw	%dx, (%rax)
	leaq	-12(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	jmp	.L3
.L6:
	movl	-28(%rbp), %eax
	cmpl	$12, %eax
	jne	.L3
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L7
	movabsq	$8388068008498850125, %rax
	movq	%rax, -12(%rbp)
	jmp	.L3
.L7:
	leaq	-12(%rbp), %rax
	movzwl	.LC0(%rip), %edx
	movw	%dx, (%rax)
	leaq	-12(%rbp), %rax
	addq	$2, %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
.L3:
	leaq	.LC3(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$643, -656(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$50, -584(%rbp)
	movl	$4096, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	leaq	month.3910(%rip), %rdx
	addq	%rax, %rdx
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movq	%rax, %rdi
	call	_gfortran_string_trim@PLT
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jle	.L8
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	leaq	-16(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-100(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-28(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movl	$1, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-36(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movl	$1, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-40(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-672(%rbp), %rax
	movl	$1, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-32(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-12(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_string_trim@PLT
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jle	.L9
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L9:
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	timestamp_, .-timestamp_
	.section	.rodata
.LC7:
	.ascii	"(a)"
.LC8:
	.ascii	" "
.LC9:
	.ascii	"TEST05"
	.align 8
.LC10:
	.ascii	"  Time the matrix multiplication problem."
.LC11:
	.ascii	"  Compute C = A * B"
.LC12:
	.ascii	"  where"
.LC13:
	.ascii	"    A is an L by M matrix,"
.LC14:
	.ascii	"    B is an M by N matrix,"
.LC15:
	.ascii	"  and so"
.LC16:
	.ascii	"    C is an L by N matrix."
.LC17:
	.ascii	"(a,i12)"
	.align 8
.LC18:
	.ascii	"  Minimum value of L = M = N = "
	.align 4
.LC19:
	.long	4
	.align 8
.LC20:
	.ascii	"  Maximum value of L = M = N = "
	.align 4
.LC21:
	.long	1024
	.align 8
.LC22:
	.ascii	"  Number of repetitions of the operation: "
	.align 4
.LC23:
	.long	5
	.align 8
.LC24:
	.ascii	"  Use nested DO loops for matrix multiplication."
	.align 8
.LC25:
	.string	"Integer overflow when calculating the amount of memory to allocate"
.LC26:
	.string	"a"
	.align 8
.LC27:
	.string	"Attempting to allocate already allocated variable '%s'"
	.align 8
.LC28:
	.string	"At line 482 of file wtime_test.f90"
	.align 8
.LC29:
	.string	"Allocation would exceed memory limit"
.LC30:
	.string	"b"
	.align 8
.LC31:
	.string	"At line 483 of file wtime_test.f90"
.LC32:
	.string	"c"
	.align 8
.LC33:
	.string	"At line 484 of file wtime_test.f90"
	.align 8
.LC35:
	.string	"Attempt to DEALLOCATE unallocated '%s'"
	.align 8
.LC36:
	.string	"At line 502 of file wtime_test.f90"
	.align 8
.LC37:
	.string	"At line 503 of file wtime_test.f90"
	.align 8
.LC38:
	.string	"At line 504 of file wtime_test.f90"
	.align 8
.LC39:
	.ascii	"  Timing results using nested DO loops:"
	.align 8
.LC40:
	.ascii	"    Vector Size  Rep #1        Rep #2        Rep #3        R"
	.ascii	"ep #4        Rep #5"
.LC41:
	.ascii	"(i10,5f14.6)"
	.align 8
.LC42:
	.ascii	"  Use the MATMUL routine for matrix multiplication."
	.align 8
.LC43:
	.string	"At line 532 of file wtime_test.f90"
	.align 8
.LC44:
	.string	"At line 533 of file wtime_test.f90"
	.align 8
.LC45:
	.string	"At line 534 of file wtime_test.f90"
	.align 8
.LC46:
	.string	"At line 545 of file wtime_test.f90"
	.align 8
.LC47:
	.string	"At line 546 of file wtime_test.f90"
	.align 8
.LC48:
	.string	"At line 547 of file wtime_test.f90"
.LC49:
	.ascii	"  Timing results using MATMUL:"
	.text
	.globl	test05_
	.type	test05_, @function
test05_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1136, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	$0, -160(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -352(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$455, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$456, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$6, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$457, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$41, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$458, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$459, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$19, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$460, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$461, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$7, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$462, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$26, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$463, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$26, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$464, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$8, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$465, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$26, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$466, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$467, -1088(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$7, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$31, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$4, %edx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$468, -1088(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$7, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$31, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$4, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$469, -1088(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$7, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$42, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$471, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$472, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$48, %edx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -52(%rbp)
.L73:
	cmpl	$5, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L150
	movl	$1, -48(%rbp)
.L72:
	cmpl	$4, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L151
	cmpl	$31, -48(%rbp)
	jg	.L14
	cmpl	$0, -48(%rbp)
	js	.L15
	movl	-48(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L17
.L15:
	movl	$0, %eax
	jmp	.L17
.L14:
	movl	$0, %eax
.L17:
	movl	%eax, -564(%rbp)
	movl	-564(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-564(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$8, -144(%rbp)
	movb	$2, -132(%rbp)
	movb	$3, -131(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L18
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L19
	movl	$1, %esi
	jmp	.L21
.L19:
	movl	$0, %esi
	jmp	.L21
.L18:
	movl	$0, %esi
.L21:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L22
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L23
	movl	$1, %eax
	jmp	.L25
.L23:
	movl	$0, %eax
	jmp	.L25
.L22:
	movl	$0, %eax
.L25:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L26
	movl	$1, %ecx
	jmp	.L27
.L26:
	movl	$0, %ecx
.L27:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	salq	$3, %rax
.L29:
	movq	-160(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L30
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L30:
	movq	-160(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L31
	leaq	.LC26(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L31:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L32
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L32:
	movq	$1, -112(%rbp)
	movq	%r13, -104(%rbp)
	movq	$1, -120(%rbp)
	movq	$1, -88(%rbp)
	movq	%r12, -80(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r14, -152(%rbp)
	movq	$8, -128(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$8, -240(%rbp)
	movb	$2, -228(%rbp)
	movb	$3, -227(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L33
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L34
	movl	$1, %esi
	jmp	.L36
.L34:
	movl	$0, %esi
	jmp	.L36
.L33:
	movl	$0, %esi
.L36:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L37
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L38
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
	jmp	.L40
.L37:
	movl	$0, %eax
.L40:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L41
	movl	$1, %ecx
	jmp	.L42
.L41:
	movl	$0, %ecx
.L42:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	salq	$3, %rax
.L44:
	movq	-256(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L45
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L45:
	movq	-256(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L46
	leaq	.LC30(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L46:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	jne	.L47
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L47:
	movq	$1, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	$1, -216(%rbp)
	movq	$1, -184(%rbp)
	movq	%r12, -176(%rbp)
	movq	%rbx, -192(%rbp)
	movq	%r14, -248(%rbp)
	movq	$8, -224(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$8, -336(%rbp)
	movb	$2, -324(%rbp)
	movb	$3, -323(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L48
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L49
	movl	$1, %esi
	jmp	.L51
.L49:
	movl	$0, %esi
	jmp	.L51
.L48:
	movl	$0, %esi
.L51:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L52
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L53
	movl	$1, %eax
	jmp	.L55
.L53:
	movl	$0, %eax
	jmp	.L55
.L52:
	movl	$0, %eax
.L55:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L56
	movl	$1, %ecx
	jmp	.L57
.L56:
	movl	$0, %ecx
.L57:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	salq	$3, %rax
.L59:
	movq	-352(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L60
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L60:
	movq	-352(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L61
	leaq	.LC32(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L61:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	jne	.L62
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L62:
	movq	$1, -304(%rbp)
	movq	%r13, -296(%rbp)
	movq	$1, -312(%rbp)
	movq	$1, -280(%rbp)
	movq	%r12, -272(%rbp)
	movq	%rbx, -288(%rbp)
	movq	%r14, -344(%rbp)
	movq	$8, -320(%rbp)
	movl	-564(%rbp), %eax
	cltq
	movl	-564(%rbp), %edx
	movslq	%edx, %rdx
	movq	$8, -1072(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$8, -1088(%rbp)
	movb	$2, -1076(%rbp)
	movb	$3, -1075(%rbp)
	movq	$1, -1056(%rbp)
	movq	%rax, -1048(%rbp)
	movq	$1, -1064(%rbp)
	movq	-96(%rbp), %rax
	movq	$1, -1032(%rbp)
	movq	%rdx, -1024(%rbp)
	movq	%rax, -1040(%rbp)
	movq	-160(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movl	$1, %esi
	subq	%rcx, %rsi
	movq	-88(%rbp), %rcx
	movl	$1, %edi
	subq	%rcx, %rdi
	movq	%rdi, %rcx
	imulq	%rcx, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -1104(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1096(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	-564(%rbp), %eax
	cltq
	movl	-564(%rbp), %edx
	movslq	%edx, %rdx
	movq	$8, -1072(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$8, -1088(%rbp)
	movb	$2, -1076(%rbp)
	movb	$3, -1075(%rbp)
	movq	$1, -1056(%rbp)
	movq	%rax, -1048(%rbp)
	movq	$1, -1064(%rbp)
	movq	-192(%rbp), %rax
	movq	$1, -1032(%rbp)
	movq	%rdx, -1024(%rbp)
	movq	%rax, -1040(%rbp)
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movl	$1, %esi
	subq	%rcx, %rsi
	movq	-184(%rbp), %rcx
	movl	$1, %edi
	subq	%rcx, %rdi
	movq	%rdi, %rcx
	imulq	%rcx, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -1104(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1096(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movl	-564(%rbp), %eax
	movl	$1, -36(%rbp)
.L68:
	cmpl	%eax, -36(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L152
	movl	-564(%rbp), %edx
	movl	$1, -40(%rbp)
.L67:
	cmpl	%edx, -40(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L153
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %rdi
	movl	-40(%rbp), %esi
	movslq	%esi, %r8
	movq	-288(%rbp), %rsi
	imulq	%r8, %rsi
	addq	%rsi, %rdi
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	movl	-564(%rbp), %esi
	movl	$1, -44(%rbp)
.L66:
	cmpl	%esi, -44(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L154
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %r8
	movl	-40(%rbp), %edi
	movslq	%edi, %r9
	movq	-288(%rbp), %rdi
	imulq	%r9, %rdi
	addq	%rdi, %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%r8, %rdi
	movsd	(%rcx,%rdi,8), %xmm1
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %r8
	movl	-44(%rbp), %edi
	movslq	%edi, %r9
	movq	-96(%rbp), %rdi
	imulq	%r9, %rdi
	addq	%rdi, %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%r8, %rdi
	movsd	(%rcx,%rdi,8), %xmm2
	movq	-256(%rbp), %rcx
	movq	-248(%rbp), %r8
	movl	-40(%rbp), %edi
	movslq	%edi, %r9
	movq	-192(%rbp), %rdi
	imulq	%r9, %rdi
	addq	%rdi, %r8
	movl	-44(%rbp), %edi
	movslq	%edi, %rdi
	addq	%r8, %rdi
	movsd	(%rcx,%rdi,8), %xmm0
	mulsd	%xmm2, %xmm0
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %r8
	movl	-40(%rbp), %edi
	movslq	%edi, %r9
	movq	-288(%rbp), %rdi
	imulq	%r9, %rdi
	addq	%rdi, %r8
	movl	-36(%rbp), %edi
	movslq	%edi, %rdi
	addq	%r8, %rdi
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rcx,%rdi,8)
	addl	$1, -44(%rbp)
	jmp	.L66
.L154:
	nop
	addl	$1, -40(%rbp)
	jmp	.L67
.L153:
	nop
	addl	$1, -36(%rbp)
	jmp	.L68
.L152:
	nop
	movl	$0, %eax
	call	wtime_@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$6, %rax
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -560(%rbp,%rax,8)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L69
	leaq	.LC26(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L69:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -160(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	jne	.L70
	leaq	.LC30(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L70:
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -256(%rbp)
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	jne	.L71
	leaq	.LC32(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L71:
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -352(%rbp)
	addl	$1, -48(%rbp)
	jmp	.L72
.L151:
	nop
	addl	$1, -52(%rbp)
	jmp	.L73
.L150:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$510, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$511, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$39, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$512, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$514, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$515, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -48(%rbp)
.L79:
	cmpl	$4, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L155
	cmpl	$31, -48(%rbp)
	jg	.L75
	cmpl	$0, -48(%rbp)
	js	.L76
	movl	-48(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L78
.L76:
	movl	$0, %eax
	jmp	.L78
.L75:
	movl	$0, %eax
.L78:
	movl	%eax, -564(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$518, -1088(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$12, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-564(%rbp), %rcx
	leaq	-1104(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-48(%rbp), %eax
	cltq
	movq	$8, -1136(%rbp)
	movq	$0, -1152(%rbp)
	movq	$0, -1144(%rbp)
	movq	$8, -1152(%rbp)
	movb	$1, -1140(%rbp)
	movb	$3, -1139(%rbp)
	movq	$1, -1120(%rbp)
	movq	$5, -1112(%rbp)
	movq	$5, -1128(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-560(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1168(%rbp)
	subq	$7, %rax
	movq	%rax, -1160(%rbp)
	leaq	-1168(%rbp), %rsi
	leaq	-1104(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -48(%rbp)
	jmp	.L79
.L155:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$521, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$522, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$51, %edx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -52(%rbp)
.L139:
	cmpl	$5, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L156
	movl	$1, -48(%rbp)
.L138:
	cmpl	$5, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L157
	cmpl	$31, -48(%rbp)
	jg	.L82
	cmpl	$0, -48(%rbp)
	js	.L83
	movl	-48(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L85
.L83:
	movl	$0, %eax
	jmp	.L85
.L82:
	movl	$0, %eax
.L85:
	movl	%eax, -564(%rbp)
	movl	-564(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-564(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$8, -144(%rbp)
	movb	$2, -132(%rbp)
	movb	$3, -131(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L86
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L87
	movl	$1, %esi
	jmp	.L89
.L87:
	movl	$0, %esi
	jmp	.L89
.L86:
	movl	$0, %esi
.L89:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L90
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L91
	movl	$1, %eax
	jmp	.L93
.L91:
	movl	$0, %eax
	jmp	.L93
.L90:
	movl	$0, %eax
.L93:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L94
	movl	$1, %ecx
	jmp	.L95
.L94:
	movl	$0, %ecx
.L95:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	salq	$3, %rax
.L97:
	movq	-160(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L98
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L98:
	movq	-160(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L99
	leaq	.LC26(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L99:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L100
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L100:
	movq	$1, -112(%rbp)
	movq	%r13, -104(%rbp)
	movq	$1, -120(%rbp)
	movq	$1, -88(%rbp)
	movq	%r12, -80(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r14, -152(%rbp)
	movq	$8, -128(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$8, -240(%rbp)
	movb	$2, -228(%rbp)
	movb	$3, -227(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L101
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L102
	movl	$1, %esi
	jmp	.L104
.L102:
	movl	$0, %esi
	jmp	.L104
.L101:
	movl	$0, %esi
.L104:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L105
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L106
	movl	$1, %eax
	jmp	.L108
.L106:
	movl	$0, %eax
	jmp	.L108
.L105:
	movl	$0, %eax
.L108:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L109
	movl	$1, %ecx
	jmp	.L110
.L109:
	movl	$0, %ecx
.L110:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	salq	$3, %rax
.L112:
	movq	-256(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L113
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L113:
	movq	-256(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L114
	leaq	.LC30(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L114:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	jne	.L115
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L115:
	movq	$1, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	$1, -216(%rbp)
	movq	$1, -184(%rbp)
	movq	%r12, -176(%rbp)
	movq	%rbx, -192(%rbp)
	movq	%r14, -248(%rbp)
	movq	$8, -224(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$8, -336(%rbp)
	movb	$2, -324(%rbp)
	movb	$3, -323(%rbp)
	movl	-564(%rbp), %eax
	movslq	%eax, %r13
	movl	$0, %eax
	testq	%r13, %r13
	cmovns	%r13, %rax
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L116
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	.L117
	movl	$1, %esi
	jmp	.L119
.L117:
	movl	$0, %esi
	jmp	.L119
.L116:
	movl	$0, %esi
.L119:
	movl	-564(%rbp), %eax
	movslq	%eax, %r12
	movl	$0, %eax
	testq	%r12, %r12
	cmovns	%r12, %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L120
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rax, %rbx
	jle	.L121
	movl	$1, %eax
	jmp	.L123
.L121:
	movl	$0, %eax
	jmp	.L123
.L120:
	movl	$0, %eax
.L123:
	leal	(%rax,%rsi), %edx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	movq	%rax, %rsi
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rsi
	jbe	.L124
	movl	$1, %ecx
	jmp	.L125
.L124:
	movl	$0, %ecx
.L125:
	addl	%edx, %ecx
	movq	%rbx, %r14
	notq	%r14
	testq	%r13, %r13
	setle	%dl
	movzbl	%dl, %esi
	testq	%r12, %r12
	setle	%dl
	movzbl	%dl, %edx
	orl	%esi, %edx
	testl	%edx, %edx
	je	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	salq	$3, %rax
.L127:
	movq	-352(%rbp), %rdx
	testq	%rdx, %rdx
	testl	%ecx, %ecx
	je	.L128
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error@PLT
.L128:
	movq	-352(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L129
	leaq	.LC32(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L129:
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	jne	.L130
	leaq	.LC29(%rip), %rdi
	call	_gfortran_os_error@PLT
.L130:
	movq	$1, -304(%rbp)
	movq	%r13, -296(%rbp)
	movq	$1, -312(%rbp)
	movq	$1, -280(%rbp)
	movq	%r12, -272(%rbp)
	movq	%rbx, -288(%rbp)
	movq	%r14, -344(%rbp)
	movq	$8, -320(%rbp)
	movl	-564(%rbp), %eax
	cltq
	movl	-564(%rbp), %edx
	movslq	%edx, %rdx
	movq	$8, -1072(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$8, -1088(%rbp)
	movb	$2, -1076(%rbp)
	movb	$3, -1075(%rbp)
	movq	$1, -1056(%rbp)
	movq	%rax, -1048(%rbp)
	movq	$1, -1064(%rbp)
	movq	-96(%rbp), %rax
	movq	$1, -1032(%rbp)
	movq	%rdx, -1024(%rbp)
	movq	%rax, -1040(%rbp)
	movq	-160(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movl	$1, %esi
	subq	%rcx, %rsi
	movq	-88(%rbp), %rcx
	movl	$1, %edi
	subq	%rcx, %rdi
	movq	%rdi, %rcx
	imulq	%rcx, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -1104(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1096(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	-564(%rbp), %eax
	cltq
	movl	-564(%rbp), %edx
	movslq	%edx, %rdx
	movq	$8, -1072(%rbp)
	movq	$0, -1088(%rbp)
	movq	$0, -1080(%rbp)
	movq	$8, -1088(%rbp)
	movb	$2, -1076(%rbp)
	movb	$3, -1075(%rbp)
	movq	$1, -1056(%rbp)
	movq	%rax, -1048(%rbp)
	movq	$1, -1064(%rbp)
	movq	-192(%rbp), %rax
	movq	$1, -1032(%rbp)
	movq	%rdx, -1024(%rbp)
	movq	%rax, -1040(%rbp)
	movq	-256(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movl	$1, %esi
	subq	%rcx, %rsi
	movq	-184(%rbp), %rcx
	movl	$1, %edi
	subq	%rcx, %rdi
	movq	%rdi, %rcx
	imulq	%rcx, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -1104(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1096(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$8, -336(%rbp)
	movb	$2, -324(%rbp)
	movb	$3, -323(%rbp)
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -1104(%rbp)
	movq	%rdx, -1096(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -1088(%rbp)
	movq	%rdx, -1080(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -1072(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -1056(%rbp)
	movq	%rdx, -1048(%rbp)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -1040(%rbp)
	movq	%rdx, -1032(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -1024(%rbp)
	movq	$0, -1104(%rbp)
	leaq	-160(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_gfortran_matmul_r8@PLT
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %ebx
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1104(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-304(%rbp), %rdx
	movq	-1056(%rbp), %rax
	subq	%rax, %rdx
	movq	-296(%rbp), %rax
	subq	%rax, %rdx
	movq	-1048(%rbp), %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-280(%rbp), %rcx
	movq	-1032(%rbp), %rax
	subq	%rax, %rcx
	movq	-272(%rbp), %rax
	subq	%rax, %rcx
	movq	-1024(%rbp), %rax
	addq	%rcx, %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	orl	%ebx, %edx
	orl	%eax, %edx
	testl	%edx, %edx
	je	.L131
	movl	$1, %eax
	jmp	.L132
.L131:
	movq	-304(%rbp), %rax
.L132:
	movq	%rax, -304(%rbp)
	movq	-1048(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -296(%rbp)
	movq	$1, -312(%rbp)
	negq	%rax
	movq	%rax, %rcx
	testl	%edx, %edx
	je	.L133
	movl	$1, %eax
	jmp	.L134
.L133:
	movq	-280(%rbp), %rax
.L134:
	movq	%rax, -280(%rbp)
	movq	-1024(%rbp), %rdx
	addq	%rax, %rdx
	movq	%rdx, -272(%rbp)
	movq	-1040(%rbp), %rdx
	movq	%rdx, -288(%rbp)
	movq	-1040(%rbp), %rdx
	imulq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movl	$0, %eax
	call	wtime_@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$6, %rax
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -560(%rbp,%rax,8)
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	jne	.L135
	leaq	.LC26(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L135:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -160(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	jne	.L136
	leaq	.LC30(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L136:
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -256(%rbp)
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	jne	.L137
	leaq	.LC32(%rip), %rdx
	leaq	.LC35(%rip), %rsi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	_gfortran_runtime_error_at@PLT
.L137:
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -352(%rbp)
	addl	$1, -48(%rbp)
	jmp	.L138
.L157:
	nop
	addl	$1, -52(%rbp)
	jmp	.L139
.L156:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$553, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$554, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$30, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$555, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$557, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$558, -1088(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$3, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1104(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -48(%rbp)
.L145:
	cmpl	$5, -48(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L158
	cmpl	$31, -48(%rbp)
	jg	.L141
	cmpl	$0, -48(%rbp)
	js	.L142
	movl	-48(%rbp), %eax
	addl	%eax, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L144
.L142:
	movl	$0, %eax
	jmp	.L144
.L141:
	movl	$0, %eax
.L144:
	movl	%eax, -564(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1096(%rbp)
	movl	$561, -1088(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1024(%rbp)
	movq	$12, -1016(%rbp)
	movl	$4096, -1104(%rbp)
	movl	$6, -1100(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-564(%rbp), %rcx
	leaq	-1104(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-48(%rbp), %eax
	cltq
	movq	$8, -1136(%rbp)
	movq	$0, -1152(%rbp)
	movq	$0, -1144(%rbp)
	movq	$8, -1152(%rbp)
	movb	$1, -1140(%rbp)
	movb	$3, -1139(%rbp)
	movq	$1, -1120(%rbp)
	movq	$5, -1112(%rbp)
	movq	$5, -1128(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-560(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1168(%rbp)
	subq	$7, %rax
	movq	%rax, -1160(%rbp)
	leaq	-1168(%rbp), %rsi
	leaq	-1104(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -48(%rbp)
	jmp	.L145
.L158:
	nop
	nop
	movq	-352(%rbp), %rax
	testq	%rax, %rax
	je	.L146
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -352(%rbp)
.L146:
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	je	.L147
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -256(%rbp)
.L147:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L149
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -160(%rbp)
.L149:
	nop
	addq	$1136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	test05_, .-test05_
	.section	.rodata
.LC50:
	.ascii	"TEST04"
	.align 8
.LC51:
	.ascii	"  Time the 2D nearest neighbor problem."
.LC52:
	.ascii	"  Given X(2,N) and Y(2),"
	.align 8
.LC53:
	.ascii	"    find X(2,*) closest to Y(2)."
.LC54:
	.ascii	"    do i = 1, n"
	.align 8
.LC55:
	.ascii	"      if distance ( x(2,i), y ) < minimum so far"
.LC56:
	.ascii	"        x_min = x(2,i)"
.LC57:
	.ascii	"    end do"
	.align 8
.LC58:
	.ascii	"  Data vectors will be of minimum size "
	.align 8
.LC59:
	.ascii	"  Data vectors will be of maximum size "
	.align 4
.LC60:
	.long	1048576
.LC62:
	.ascii	"  Timing results:"
	.text
	.globl	test04_
	.type	test04_, @function
test04_:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1472, %rsp
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$358, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$359, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$6, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$360, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$39, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$361, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$362, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$24, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$363, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$32, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$364, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$365, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$15, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$366, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$48, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$367, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$22, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$368, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$10, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$369, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$370, -1392(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$7, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$39, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$4, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$371, -1392(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$7, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$39, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$4, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$372, -1392(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$7, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$42, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	$8, -1376(%rbp)
	movq	$0, -1392(%rbp)
	movq	$0, -1384(%rbp)
	movq	$8, -1392(%rbp)
	movb	$2, -1380(%rbp)
	movb	$3, -1379(%rbp)
	movq	$1, -1360(%rbp)
	movq	$2, -1352(%rbp)
	movq	$1, -1368(%rbp)
	movq	$1, -1336(%rbp)
	movq	$1048576, -1328(%rbp)
	movq	$2, -1344(%rbp)
	leaq	x.4197(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$-3, -1400(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movq	$8, -1376(%rbp)
	movq	$0, -1392(%rbp)
	movq	$0, -1384(%rbp)
	movq	$8, -1392(%rbp)
	movb	$1, -1380(%rbp)
	movb	$3, -1379(%rbp)
	movq	$1, -1360(%rbp)
	movq	$2, -1352(%rbp)
	movq	$1, -1368(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	$-1, -1400(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$1, -16(%rbp)
.L173:
	cmpl	$5, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L182
	movl	$10, -20(%rbp)
.L172:
	cmpl	$20, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L183
	cmpl	$31, -20(%rbp)
	jg	.L162
	cmpl	$0, -20(%rbp)
	js	.L163
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L165
.L163:
	movl	$0, %eax
	jmp	.L165
.L162:
	movl	$0, %eax
.L165:
	movl	%eax, -852(%rbp)
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movsd	.LC61(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	-852(%rbp), %edx
	movl	$1, -12(%rbp)
.L171:
	cmpl	%edx, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L184
	pxor	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-3(%rax), %rdi
	movl	$1, %eax
.L168:
	cmpq	$2, %rax
	jg	.L167
	leaq	(%rax,%rdi), %rcx
	leaq	0(,%rcx,8), %rsi
	leaq	x.4197(%rip), %rcx
	movsd	(%rsi,%rcx), %xmm1
	leaq	-1(%rax), %rcx
	movsd	-880(%rbp,%rcx,8), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rax
	jmp	.L168
.L167:
	movsd	%xmm0, -48(%rbp)
	movsd	-8(%rbp), %xmm0
	comisd	-48(%rbp), %xmm0
	jbe	.L169
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
.L169:
	addl	$1, -12(%rbp)
	jmp	.L171
.L184:
	nop
	movl	$0, %eax
	call	wtime_@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$21, %rax
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -848(%rbp,%rax,8)
	addl	$1, -20(%rbp)
	jmp	.L172
.L183:
	nop
	addl	$1, -16(%rbp)
	jmp	.L173
.L182:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$401, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$402, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$17, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$403, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$405, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$406, -1392(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$3, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1408(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$10, -20(%rbp)
.L179:
	cmpl	$20, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L185
	cmpl	$31, -20(%rbp)
	jg	.L175
	cmpl	$0, -20(%rbp)
	js	.L176
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L178
.L176:
	movl	$0, %eax
	jmp	.L178
.L175:
	movl	$0, %eax
.L178:
	movl	%eax, -852(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1400(%rbp)
	movl	$409, -1392(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$12, -1320(%rbp)
	movl	$4096, -1408(%rbp)
	movl	$6, -1404(%rbp)
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-852(%rbp), %rcx
	leaq	-1408(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-20(%rbp), %eax
	cltq
	movq	$8, -1440(%rbp)
	movq	$0, -1456(%rbp)
	movq	$0, -1448(%rbp)
	movq	$8, -1456(%rbp)
	movb	$1, -1444(%rbp)
	movb	$3, -1443(%rbp)
	movq	$1, -1424(%rbp)
	movq	$5, -1416(%rbp)
	movq	$20, -1432(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-848(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1472(%rbp)
	subq	$22, %rax
	movq	%rax, -1464(%rbp)
	leaq	-1472(%rbp), %rsi
	leaq	-1408(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1408(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -20(%rbp)
	jmp	.L179
.L185:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	test04_, .-test04_
	.section	.rodata
.LC63:
	.ascii	"TEST03"
.LC64:
	.ascii	"  Time the unvectorized loops:"
.LC65:
	.ascii	"      y(i) =        x(i)  "
.LC66:
	.ascii	"      y(i) = PI *   x(i) )"
.LC67:
	.ascii	"      y(i) = sqrt ( x(i) )"
.LC68:
	.ascii	"      y(i) = exp  ( x(i) )"
	.align 4
.LC69:
	.long	4096
	.align 4
.LC70:
	.long	4194304
	.text
	.globl	test03_
	.type	test03_, @function
test03_:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$1520, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$252, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$253, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$6, %edx
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$254, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$30, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$255, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$256, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$15, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$257, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$26, %edx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$258, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$26, %edx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$259, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$26, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$260, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$26, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$261, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$10, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$262, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$263, -1456(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$7, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$39, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$4, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$264, -1456(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$7, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$39, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$4, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$265, -1456(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$7, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$42, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -20(%rbp)
.L214:
	cmpl	$4, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L216
	movl	$1, -28(%rbp)
.L207:
	cmpl	$5, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L217
	movl	$12, -32(%rbp)
.L206:
	cmpl	$22, -32(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L218
	cmpl	$31, -32(%rbp)
	jg	.L190
	cmpl	$0, -32(%rbp)
	js	.L191
	movl	-32(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L193
.L191:
	movl	$0, %eax
	jmp	.L193
.L190:
	movl	$0, %eax
.L193:
	movl	%eax, -932(%rbp)
	movl	-932(%rbp), %eax
	cltq
	movq	$8, -1440(%rbp)
	movq	$0, -1456(%rbp)
	movq	$0, -1448(%rbp)
	movq	$8, -1456(%rbp)
	movb	$1, -1444(%rbp)
	movb	$3, -1443(%rbp)
	movq	$1, -1424(%rbp)
	movq	%rax, -1416(%rbp)
	movq	$1, -1432(%rbp)
	leaq	x.4282(%rip), %rax
	movq	%rax, -1472(%rbp)
	movq	$-1, -1464(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L194
	movl	-932(%rbp), %eax
	movl	$1, -24(%rbp)
.L196:
	cmpl	%eax, -24(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L219
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	salq	$3, %rcx
	leaq	x.4282(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	leaq	0(,%rsi,8), %rcx
	leaq	y.4284(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addl	$1, -24(%rbp)
	jmp	.L196
.L194:
	cmpl	$2, -20(%rbp)
	jne	.L198
	movl	-932(%rbp), %eax
	movl	$1, -24(%rbp)
.L200:
	cmpl	%eax, -24(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L220
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	x.4282(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm1
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	movsd	.LC71(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	leaq	0(,%rdx,8), %rcx
	leaq	y.4284(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addl	$1, -24(%rbp)
	jmp	.L200
.L198:
	cmpl	$3, -20(%rbp)
	jne	.L201
	movl	-932(%rbp), %eax
	movl	$1, -24(%rbp)
.L203:
	cmpl	%eax, -24(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L221
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	x.4282(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	sqrtsd	%xmm0, %xmm0
	leaq	0(,%rdx,8), %rcx
	leaq	y.4284(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addl	$1, -24(%rbp)
	jmp	.L203
.L201:
	cmpl	$4, -20(%rbp)
	jne	.L197
	movl	-932(%rbp), %ebx
	movl	$1, -24(%rbp)
.L205:
	cmpl	%ebx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L222
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	x.4282(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %r12
	movq	%rax, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	leaq	0(,%r12,8), %rcx
	leaq	y.4284(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	addl	$1, -24(%rbp)
	jmp	.L205
.L219:
	nop
	jmp	.L197
.L220:
	nop
	jmp	.L197
.L221:
	nop
	jmp	.L197
.L222:
	nop
.L197:
	movl	$0, %eax
	call	wtime_@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$23, %rax
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -928(%rbp,%rax,8)
	addl	$1, -32(%rbp)
	jmp	.L206
.L218:
	nop
	addl	$1, -28(%rbp)
	jmp	.L207
.L217:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$303, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$304, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$17, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$305, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$307, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$308, -1456(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$3, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1472(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$12, -32(%rbp)
.L213:
	cmpl	$22, -32(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L223
	cmpl	$31, -32(%rbp)
	jg	.L209
	cmpl	$0, -32(%rbp)
	js	.L210
	movl	-32(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L212
.L210:
	movl	$0, %eax
	jmp	.L212
.L209:
	movl	$0, %eax
.L212:
	movl	%eax, -932(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1464(%rbp)
	movl	$311, -1456(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$12, -1384(%rbp)
	movl	$4096, -1472(%rbp)
	movl	$6, -1468(%rbp)
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-932(%rbp), %rcx
	leaq	-1472(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-32(%rbp), %eax
	cltq
	movq	$8, -1504(%rbp)
	movq	$0, -1520(%rbp)
	movq	$0, -1512(%rbp)
	movq	$8, -1520(%rbp)
	movb	$1, -1508(%rbp)
	movb	$3, -1507(%rbp)
	movq	$1, -1488(%rbp)
	movq	$5, -1480(%rbp)
	movq	$22, -1496(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-928(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1536(%rbp)
	subq	$24, %rax
	movq	%rax, -1528(%rbp)
	leaq	-1536(%rbp), %rsi
	leaq	-1472(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1472(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -32(%rbp)
	jmp	.L213
.L223:
	nop
	addl	$1, -20(%rbp)
	jmp	.L214
.L216:
	nop
	nop
	addq	$1520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	test03_, .-test03_
	.section	.rodata
.LC72:
	.ascii	"TEST02"
.LC73:
	.ascii	"  Time vectorized operations:"
.LC74:
	.ascii	"    y(1:n) =        x(1:n)  "
.LC75:
	.ascii	"    y(1:n) = PI *   x(1:n) )"
.LC76:
	.ascii	"    y(1:n) = sqrt ( x(1:n) )"
.LC77:
	.ascii	"    y(1:n) = exp  ( x(1:n) )"
	.text
	.globl	test02_
	.type	test02_, @function
test02_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1528, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$158, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$159, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$6, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$160, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$29, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$161, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$162, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$28, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$163, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$28, %edx
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$164, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$28, %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$165, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$28, %edx
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$166, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$167, -1472(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$7, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$39, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$4, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$168, -1472(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$7, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$39, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$4, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$169, -1472(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$7, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$42, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -36(%rbp)
.L252:
	cmpl	$4, -36(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L254
	movl	$1, -40(%rbp)
.L245:
	cmpl	$5, -40(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L255
	movl	$12, -44(%rbp)
.L244:
	cmpl	$22, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L256
	cmpl	$31, -44(%rbp)
	jg	.L228
	cmpl	$0, -44(%rbp)
	js	.L229
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L231
.L229:
	movl	$0, %eax
	jmp	.L231
.L228:
	movl	$0, %eax
.L231:
	movl	%eax, -948(%rbp)
	movl	-948(%rbp), %eax
	cltq
	movq	$8, -1456(%rbp)
	movq	$0, -1472(%rbp)
	movq	$0, -1464(%rbp)
	movq	$8, -1472(%rbp)
	movb	$1, -1460(%rbp)
	movb	$3, -1459(%rbp)
	movq	$1, -1440(%rbp)
	movq	%rax, -1432(%rbp)
	movq	$1, -1448(%rbp)
	leaq	x.4368(%rip), %rax
	movq	%rax, -1488(%rbp)
	movq	$-1, -1480(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.L232
	movl	-948(%rbp), %eax
	movslq	%eax, %rdi
	movl	$1, %eax
.L234:
	cmpq	%rdi, %rax
	jg	.L235
	leaq	-1(%rax), %rcx
	leaq	-1(%rax), %rdx
	leaq	0(,%rcx,8), %rsi
	leaq	x.4368(%rip), %rcx
	movsd	(%rsi,%rcx), %xmm0
	leaq	0(,%rdx,8), %rcx
	leaq	y.4370(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addq	$1, %rax
	jmp	.L234
.L232:
	cmpl	$2, -36(%rbp)
	jne	.L236
	movl	-948(%rbp), %eax
	movslq	%eax, %rsi
	movl	$1, %eax
.L238:
	cmpq	%rsi, %rax
	jg	.L235
	leaq	-1(%rax), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	x.4368(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm1
	leaq	-1(%rax), %rdx
	movsd	.LC71(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	leaq	0(,%rdx,8), %rcx
	leaq	y.4370(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addq	$1, %rax
	jmp	.L238
.L236:
	cmpl	$3, -36(%rbp)
	jne	.L239
	movl	-948(%rbp), %eax
	movslq	%eax, %rsi
	movl	$1, %eax
.L241:
	cmpq	%rsi, %rax
	jg	.L235
	leaq	-1(%rax), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	x.4368(%rip), %rdx
	movsd	(%rcx,%rdx), %xmm0
	leaq	-1(%rax), %rdx
	sqrtsd	%xmm0, %xmm0
	leaq	0(,%rdx,8), %rcx
	leaq	y.4370(%rip), %rdx
	movsd	%xmm0, (%rcx,%rdx)
	addq	$1, %rax
	jmp	.L241
.L239:
	cmpl	$4, -36(%rbp)
	jne	.L235
	movl	-948(%rbp), %eax
	movslq	%eax, %r13
	movl	$1, %ebx
.L243:
	cmpq	%r13, %rbx
	jg	.L235
	leaq	-1(%rbx), %rax
	leaq	0(,%rax,8), %rdx
	leaq	x.4368(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	-1(%rbx), %r12
	movq	%rax, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	leaq	0(,%r12,8), %rcx
	leaq	y.4370(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	addq	$1, %rbx
	jmp	.L243
.L235:
	movl	$0, %eax
	call	wtime_@PLT
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$23, %rax
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -944(%rbp,%rax,8)
	addl	$1, -44(%rbp)
	jmp	.L244
.L256:
	nop
	addl	$1, -40(%rbp)
	jmp	.L245
.L255:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$199, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$200, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$17, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$201, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$203, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$204, -1472(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$3, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1488(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$12, -44(%rbp)
.L251:
	cmpl	$22, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L257
	cmpl	$31, -44(%rbp)
	jg	.L247
	cmpl	$0, -44(%rbp)
	js	.L248
	movl	-44(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L250
.L248:
	movl	$0, %eax
	jmp	.L250
.L247:
	movl	$0, %eax
.L250:
	movl	%eax, -948(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1480(%rbp)
	movl	$207, -1472(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1408(%rbp)
	movq	$12, -1400(%rbp)
	movl	$4096, -1488(%rbp)
	movl	$6, -1484(%rbp)
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-948(%rbp), %rcx
	leaq	-1488(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-44(%rbp), %eax
	cltq
	movq	$8, -1520(%rbp)
	movq	$0, -1536(%rbp)
	movq	$0, -1528(%rbp)
	movq	$8, -1536(%rbp)
	movb	$1, -1524(%rbp)
	movb	$3, -1523(%rbp)
	movq	$1, -1504(%rbp)
	movq	$5, -1496(%rbp)
	movq	$22, -1512(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-944(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1552(%rbp)
	subq	$24, %rax
	movq	%rax, -1544(%rbp)
	leaq	-1552(%rbp), %rsi
	leaq	-1488(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1488(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -44(%rbp)
	jmp	.L251
.L257:
	nop
	addl	$1, -36(%rbp)
	jmp	.L252
.L254:
	nop
	nop
	addq	$1528, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	test02_, .-test02_
	.section	.rodata
.LC78:
	.ascii	"TEST01"
	.align 8
.LC79:
	.ascii	"  Time the FORTRAN90 RANDOM_NUMBER routine:"
	.align 8
.LC80:
	.ascii	"    call random_number ( x(1:n) )"
	.text
	.globl	test01_
	.type	test01_, @function
test01_:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1424, %rsp
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$82, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$83, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$6, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$84, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$43, %edx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$85, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$86, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$33, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$87, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$88, -1344(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$7, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$39, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$4, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$89, -1344(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$7, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$39, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$4, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$90, -1344(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$7, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$42, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L266:
	cmpl	$5, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L274
	movl	$10, -8(%rbp)
.L265:
	cmpl	$20, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L275
	cmpl	$31, -8(%rbp)
	jg	.L261
	cmpl	$0, -8(%rbp)
	js	.L262
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L264
.L262:
	movl	$0, %eax
	jmp	.L264
.L261:
	movl	$0, %eax
.L264:
	movl	%eax, -820(%rbp)
	movl	$0, %eax
	call	wtime_@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-820(%rbp), %eax
	cltq
	movq	$8, -1328(%rbp)
	movq	$0, -1344(%rbp)
	movq	$0, -1336(%rbp)
	movq	$8, -1344(%rbp)
	movb	$1, -1332(%rbp)
	movb	$3, -1331(%rbp)
	movq	$1, -1312(%rbp)
	movq	%rax, -1304(%rbp)
	movq	$1, -1320(%rbp)
	leaq	x.4451(%rip), %rax
	movq	%rax, -1360(%rbp)
	movq	$-1, -1352(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	_gfortran_arandom_r8@PLT
	movl	$0, %eax
	call	wtime_@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$21, %rax
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -816(%rbp,%rax,8)
	addl	$1, -8(%rbp)
	jmp	.L265
.L275:
	nop
	addl	$1, -4(%rbp)
	jmp	.L266
.L274:
	nop
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$108, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$109, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$17, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$110, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$112, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$79, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$113, -1344(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$3, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1360(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$10, -8(%rbp)
.L272:
	cmpl	$20, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L276
	cmpl	$31, -8(%rbp)
	jg	.L268
	cmpl	$0, -8(%rbp)
	js	.L269
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L271
.L269:
	movl	$0, %eax
	jmp	.L271
.L268:
	movl	$0, %eax
.L271:
	movl	%eax, -820(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1352(%rbp)
	movl	$116, -1344(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$12, -1272(%rbp)
	movl	$4096, -1360(%rbp)
	movl	$6, -1356(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-820(%rbp), %rcx
	leaq	-1360(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	movl	-8(%rbp), %eax
	cltq
	movq	$8, -1392(%rbp)
	movq	$0, -1408(%rbp)
	movq	$0, -1400(%rbp)
	movq	$8, -1408(%rbp)
	movb	$1, -1396(%rbp)
	movb	$3, -1395(%rbp)
	movq	$1, -1376(%rbp)
	movq	$5, -1368(%rbp)
	movq	$20, -1384(%rbp)
	leaq	-1(%rax), %rcx
	leaq	-816(%rbp), %rdx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -1424(%rbp)
	subq	$22, %rax
	movq	%rax, -1416(%rbp)
	leaq	-1424(%rbp), %rsi
	leaq	-1360(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-1360(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -8(%rbp)
	jmp	.L272
.L276:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test01_, .-test01_
	.section	.rodata
.LC81:
	.ascii	"WTIME_TEST"
.LC82:
	.ascii	"  FORTRAN90 version."
.LC83:
	.ascii	"  Test the WTIME library."
.LC84:
	.ascii	"  Normal end of execution."
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
	subq	$528, %rsp
	call	timestamp_
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$26, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$27, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$10, %edx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$28, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$20, %edx
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$29, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$25, %edx
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	call	test01_
	call	test02_
	call	test03_
	call	test04_
	call	test05_
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$39, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$40, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$10, %edx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$41, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$26, %edx
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$42, -512(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -448(%rbp)
	movq	$3, -440(%rbp)
	movl	$4096, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	call	timestamp_
	movl	$0, %esi
	movl	$0, %edi
	call	_gfortran_stop_numeric@PLT
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
	leaq	options.158.4514(%rip), %rsi
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
	.align 32
	.type	month.3910, @object
	.size	month.3910, 108
month.3910:
	.ascii	"January  "
	.ascii	"February "
	.ascii	"March    "
	.ascii	"April    "
	.ascii	"May      "
	.ascii	"June     "
	.ascii	"July     "
	.ascii	"August   "
	.ascii	"September"
	.ascii	"October  "
	.ascii	"November "
	.ascii	"December "
	.local	x.4197
	.comm	x.4197,16777216,32
	.local	x.4282
	.comm	x.4282,33554432,32
	.local	y.4284
	.comm	y.4284,33554432,32
	.local	x.4368
	.comm	x.4368,33554432,32
	.local	y.4370
	.comm	y.4370,33554432,32
	.local	x.4451
	.comm	x.4451,8388608,32
	.align 16
	.type	options.158.4514, @object
	.size	options.158.4514, 28
options.158.4514:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC61:
	.long	4294967295
	.long	2146435071
	.align 8
.LC71:
	.long	1413754136
	.long	1074340347
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
