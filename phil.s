	.file	"phil.c"
	.text
	.comm	chopstick,40,32
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
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	call	make_semaphore
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	chopstick(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	signal
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L7:
	call	fork@PLT
	testl	%eax, %eax
	je	.L9
	addl	$1, -4(%rbp)
.L4:
	cmpl	$3, -4(%rbp)
	jle	.L7
	jmp	.L6
.L9:
	nop
.L6:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	philosopher
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.string	"Philosopher %d picks up right chopstick\n"
	.align 8
.LC1:
	.string	"Philosopher %d picks up left chopstick\n"
	.align 8
.LC2:
	.string	"Philosopher %d  picks up right chopstick\n"
	.text
	.globl	pick_up
	.type	pick_up, @function
pick_up:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L11
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	wait
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	sleep@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	wait
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	wait
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	sleep@PLT
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	wait
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pick_up, .-pick_up
	.globl	put_down
	.type	put_down, @function
put_down:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	signal
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	chopstick(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	signal
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	put_down, .-put_down
	.section	.rodata
.LC3:
	.string	"rd"
.LC4:
	.string	"th"
.LC5:
	.string	"nd"
.LC6:
	.string	"st"
	.align 8
.LC7:
	.string	"Philosopher %d eating for the %d%s time\n"
.LC8:
	.string	"Philosopher %d thinking\n"
	.text
	.globl	philosopher
	.type	philosopher, @function
philosopher:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$1, -12(%rbp)
.L22:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	pick_up
	cmpl	$1, -12(%rbp)
	je	.L16
	cmpl	$2, -12(%rbp)
	je	.L17
	cmpl	$3, -12(%rbp)
	jne	.L18
	leaq	.LC3(%rip), %rax
	jmp	.L21
.L18:
	leaq	.LC4(%rip), %rax
	jmp	.L21
.L17:
	leaq	.LC5(%rip), %rax
	jmp	.L21
.L16:
	leaq	.LC6(%rip), %rax
.L21:
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %esi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rcx
	movl	%eax, %edx
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	sleep@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	put_down
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	sleep@PLT
	addl	$1, -12(%rbp)
	jmp	.L22
	.cfi_endproc
.LFE9:
	.size	philosopher, .-philosopher
	.globl	make_semaphore
	.type	make_semaphore, @function
make_semaphore:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$4, %esi
	movl	$2, %edi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pipe@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	make_semaphore, .-make_semaphore
	.section	.rodata
	.align 8
.LC9:
	.string	"ERROR: wait() failed. check semaphore creation. "
	.text
	.globl	wait
	.type	wait, @function
wait:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testl	%eax, %eax
	jg	.L28
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	wait, .-wait
	.section	.rodata
.LC10:
	.string	"x"
	.align 8
.LC11:
	.string	"ERROR: write() failed check semaphore creation. "
	.text
	.globl	signal
	.type	signal, @function
signal:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	$1, %edx
	leaq	.LC10(%rip), %rsi
	movl	%eax, %edi
	call	write@PLT
	testl	%eax, %eax
	jg	.L31
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	signal, .-signal
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
