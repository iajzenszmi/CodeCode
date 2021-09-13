	.file	"UNB3MM.f"
	.text
	.globl	unb3mm_
	.type	unb3mm_, @function
unb3mm_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-248(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-264(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L2
	movsd	-24(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.L2:
	movsd	-24(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	comisd	.LC7(%rip), %xmm0
	jb	.L13
	movl	$5, -12(%rbp)
	movl	$5, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L6
.L13:
	movsd	.LC8(%rip), %xmm0
	comisd	-56(%rbp), %xmm0
	jb	.L14
	movl	$1, -12(%rbp)
	movl	$1, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L6
.L14:
	movsd	-56(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movl	-16(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, -8(%rbp)
.L6:
	movl	-16(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3882(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-16(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3880(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-112(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-120(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-128(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-136(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-96(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-152(%rbp), %rax
	movsd	-152(%rbp), %xmm3
	movsd	%xmm3, -296(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm2
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC14(%rip), %xmm1
	divsd	-296(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LC15(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	call	exp@PLT
	movsd	.LC16(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-152(%rbp), %xmm0
	movsd	.LC17(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-144(%rbp), %xmm1
	movsd	.LC18(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC19(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -296(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC20(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-296(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-160(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-184(%rbp), %xmm0
	movsd	-192(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	.LC22(%rip), %xmm0
	divsd	-168(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movq	-256(%rbp), %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-168(%rbp), %xmm1
	movsd	-152(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-272(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-272(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	-152(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	-200(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	mulsd	-144(%rbp), %xmm0
	movq	-280(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-272(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	-152(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	-176(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-200(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	mulsd	-160(%rbp), %xmm0
	movq	-288(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	tan@PLT
	movsd	.LC23(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	call	atan@PLT
	movq	%xmm0, %rax
	movq	%rax, -208(%rbp)
	movsd	-208(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	call	cos@PLT
	movsd	.LC24(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movq	-256(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	.LC25(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm1
	movsd	.LC26(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)
	movsd	-176(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-224(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movq	-272(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-168(%rbp), %xmm2
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	divsd	-232(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	unb3mm_, .-unb3mm_
	.data
	.align 32
	.type	avg.3882, @object
	.size	avg.3882, 240
avg.3882:
	.long	0
	.long	1076756480
	.long	0
	.long	1077805056
	.long	0
	.long	1078362112
	.long	0
	.long	1078853632
	.long	0
	.long	1079164928
	.long	0
	.long	1083156992
	.long	0
	.long	1083165184
	.long	0
	.long	1083162112
	.long	0
	.long	1083153920
	.long	0
	.long	1083156480
	.long	1717986918
	.long	1081260646
	.long	1717986918
	.long	1081238118
	.long	1717986918
	.long	1081193062
	.long	1717986918
	.long	1081148006
	.long	1717986918
	.long	1081113190
	.long	0
	.long	1079164928
	.long	0
	.long	1079246848
	.long	0
	.long	1079181312
	.long	0
	.long	1079205888
	.long	0
	.long	1079287808
	.long	858993459
	.long	1075393331
	.long	858993459
	.long	1075327795
	.long	2233382994
	.long	1075204587
	.long	687194767
	.long	1075154780
	.long	1374389535
	.long	1074929336
	.long	3264175145
	.long	1074145525
	.long	858993459
	.long	1074344755
	.long	687194767
	.long	1074040668
	.long	2405181686
	.long	1073542594
	.long	3435973837
	.long	1073269964
	.align 32
	.type	amp.3880, @object
	.size	amp.3880, 240
amp.3880:
	.long	0
	.long	1076756480
	.long	0
	.long	1077805056
	.long	0
	.long	1078362112
	.long	0
	.long	1078853632
	.long	0
	.long	1079164928
	.long	0
	.long	0
	.long	0
	.long	-1072824320
	.long	0
	.long	-1073610752
	.long	0
	.long	-1074003968
	.long	0
	.long	-1075838976
	.long	0
	.long	0
	.long	0
	.long	1075576832
	.long	0
	.long	1076232192
	.long	0
	.long	1076756480
	.long	0
	.long	1076690944
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1074790400
	.long	0
	.long	-1073479680
	.long	0
	.long	1074003968
	.long	0
	.long	0
	.long	0
	.long	1070596096
	.long	1202590843
	.long	1070889697
	.long	515396076
	.long	1072294789
	.long	1030792151
	.long	1071896330
	.long	0
	.long	0
	.long	1374389535
	.long	1070931640
	.long	3607772529
	.long	1071476899
	.long	2061584302
	.long	1072147988
	.long	858993459
	.long	1070805811
	.section	.rodata
	.align 8
.LC0:
	.long	1413754136
	.long	1074340347
	.align 8
.LC1:
	.long	0
	.long	1080459264
	.align 8
.LC3:
	.long	0
	.long	1080480768
	.align 8
.LC4:
	.long	0
	.long	1077673984
	.align 8
.LC5:
	.long	523466418
	.long	1066507651
	.align 16
.LC6:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC7:
	.long	0
	.long	1079164928
	.align 8
.LC8:
	.long	0
	.long	1076756480
	.align 8
.LC9:
	.long	0
	.long	1083129856
	.align 8
.LC10:
	.long	0
	.long	1073741824
	.align 8
.LC11:
	.long	3336631272
	.long	1055520215
	.align 8
.LC12:
	.long	3414262880
	.long	1066636425
	.align 8
.LC13:
	.long	1013101009
	.long	1077999603
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	481036337
	.long	1085851434
	.align 8
.LC16:
	.long	1202590843
	.long	1065646817
	.align 8
.LC17:
	.long	1717986918
	.long	1081152102
	.align 8
.LC18:
	.long	1097829375
	.long	1053447961
	.align 8
.LC19:
	.long	503026570
	.long	1072693898
	.align 8
.LC20:
	.long	99252915
	.long	1050856029
	.align 8
.LC21:
	.long	0
	.long	1079574528
	.align 8
.LC22:
	.long	3818133071
	.long	1067548114
	.align 8
.LC23:
	.long	3726377686
	.long	1072679208
	.align 8
.LC24:
	.long	2688305930
	.long	1063635564
	.align 8
.LC25:
	.long	99252915
	.long	1049807453
	.align 8
.LC26:
	.long	1924145349
	.long	1076072808
	.align 8
.LC27:
	.long	907974746
	.long	1081209052
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
