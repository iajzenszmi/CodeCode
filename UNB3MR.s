	.file	"UNB3MR.f"
	.text
	.globl	unb3mr_
	.type	unb3mr_, @function
unb3mr_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$488, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movq	%rcx, -464(%rbp)
	movq	%r8, -472(%rbp)
	movq	%r9, -480(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-440(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-456(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-56(%rbp), %xmm0
	jbe	.L2
	movsd	-40(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.L2:
	movsd	-40(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movsd	-56(%rbp), %xmm0
	movq	.LC6(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	comisd	.LC7(%rip), %xmm0
	jb	.L13
	movl	$5, -28(%rbp)
	movl	$5, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L6
.L13:
	movsd	.LC8(%rip), %xmm0
	comisd	-72(%rbp), %xmm0
	jb	.L14
	movl	$1, -28(%rbp)
	movl	$1, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L6
.L14:
	movsd	-72(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC8(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movl	-32(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	subq	$1, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, -24(%rbp)
.L6:
	movl	-32(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	avg.3894(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	0(,%rax,8), %rdx
	leaq	amp.3892(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-120(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-128(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-136(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-96(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-144(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-184(%rbp), %xmm0
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-152(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-168(%rbp), %rax
	movsd	-168(%rbp), %xmm5
	movsd	%xmm5, -488(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm2
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC14(%rip), %xmm1
	divsd	-488(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LC15(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	call	exp@PLT
	movsd	.LC16(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-168(%rbp), %xmm0
	movsd	.LC17(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	-160(%rbp), %xmm1
	movsd	.LC18(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC19(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -488(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC20(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-488(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-200(%rbp), %xmm0
	movsd	-208(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	.LC22(%rip), %xmm0
	divsd	-184(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movq	-448(%rbp), %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-184(%rbp), %xmm1
	movsd	-168(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)
	movsd	-224(%rbp), %xmm0
	divsd	-168(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	-216(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movsd	-160(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movsd	-224(%rbp), %xmm0
	divsd	-168(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	-192(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-216(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movsd	-176(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	tan@PLT
	movsd	.LC23(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	call	atan@PLT
	movq	%xmm0, %rax
	movq	%rax, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	call	cos@PLT
	movsd	.LC24(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movq	-448(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	.LC25(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-256(%rbp), %xmm1
	movsd	.LC26(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-192(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-264(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-272(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-224(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	.LC28(%rip), %xmm0
	divsd	-256(%rbp), %xmm0
	mulsd	-232(%rbp), %xmm0
	movq	-472(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	.LC29(%rip), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-280(%rbp), %xmm1
	movsd	.LC30(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC31(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-240(%rbp), %xmm0
	divsd	-272(%rbp), %xmm0
	movq	16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_avg.3887(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -304(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_amp.3885(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -328(%rbp)
	movsd	-312(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-288(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -336(%rbp)
	movsd	-320(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-296(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -344(%rbp)
	movsd	-328(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-304(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -352(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -360(%rbp)
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -368(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-352(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-352(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -384(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -392(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	addsd	-384(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -400(%rbp)
	movsd	-352(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -408(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-392(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-408(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	addsd	-400(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-480(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-360(%rbp), %xmm1
	movsd	.LC33(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC34(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rbp)
	movsd	-360(%rbp), %xmm1
	movsd	.LC33(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC34(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -384(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC35(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -392(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC35(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	addsd	-384(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -400(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-392(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movq	-360(%rbp), %rbx
	movsd	-360(%rbp), %xmm0
	addsd	-392(%rbp), %xmm0
	movsd	%xmm0, -496(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC36(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -488(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rbx, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	-488(%rbp), %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movapd	%xmm0, %xmm4
	mulsd	-368(%rbp), %xmm4
	movsd	%xmm4, -488(%rbp)
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-496(%rbp), %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC36(%rip), %xmm0
	divsd	%xmm1, %xmm0
	mulsd	-400(%rbp), %xmm0
	addsd	-488(%rbp), %xmm0
	movsd	%xmm0, -416(%rbp)
	movq	-448(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-416(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -424(%rbp)
	movq	-480(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	-424(%rbp), %xmm0
	movq	-480(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -336(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -344(%rbp)
	movl	-32(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movl	-28(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	0(,%rax,8), %rdx
	leaq	abc_w2p0.3889(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -352(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-352(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -376(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-352(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -384(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -392(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-376(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	addsd	-384(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -400(%rbp)
	movsd	-352(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-344(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -408(%rbp)
	movsd	-360(%rbp), %xmm0
	addsd	-392(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm1
	movsd	-408(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movq	.LC32(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0
	addsd	-400(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-472(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-480(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm2
	movq	24(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	addq	$488, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	unb3mr_, .-unb3mr_
	.data
	.align 32
	.type	avg.3894, @object
	.size	avg.3894, 240
avg.3894:
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
	.type	amp.3892, @object
	.size	amp.3892, 240
amp.3892:
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
	.align 32
	.type	abc_avg.3887, @object
	.size	abc_avg.3887, 160
abc_avg.3887:
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
	.long	955853397
	.long	1062530073
	.long	1938924984
	.long	1062520763
	.long	3483933215
	.long	1062497373
	.long	3392531693
	.long	1062468452
	.long	4173392536
	.long	1062452340
	.long	353398430
	.long	1063772665
	.long	580261544
	.long	1063772590
	.long	1794528321
	.long	1063779899
	.long	403782451
	.long	1063765625
	.long	419257418
	.long	1063765751
	.long	4150029673
	.long	1068500797
	.long	2212929879
	.long	1068504604
	.long	4150231983
	.long	1068519441
	.long	2061353405
	.long	1068521161
	.long	4206324669
	.long	1068528445
	.align 32
	.type	abc_amp.3885, @object
	.size	abc_amp.3885, 160
abc_amp.3885:
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
	.long	2991275163
	.long	1055565677
	.long	746304372
	.long	1056690148
	.long	2727792753
	.long	1057084278
	.long	2160146776
	.long	1057331728
	.long	0
	.long	0
	.long	649366536
	.long	1056339082
	.long	4083784344
	.long	1056940088
	.long	307498007
	.long	1058211226
	.long	2100023229
	.long	1058978668
	.long	0
	.long	0
	.long	522969072
	.long	1058513002
	.long	3483661785
	.long	1057410578
	.long	998857759
	.long	1061931302
	.long	277585344
	.long	1062988268
	.align 32
	.type	abc_w2p0.3889, @object
	.size	abc_w2p0.3889, 160
abc_w2p0.3889:
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
	.long	3222661720
	.long	1061356346
	.long	224333094
	.long	1061329996
	.long	4099832042
	.long	1061358410
	.long	849554548
	.long	1061392975
	.long	1191962348
	.long	1061434081
	.long	988018070
	.long	1062691707
	.long	2070325420
	.long	1062784409
	.long	1422999823
	.long	1062723649
	.long	1337568210
	.long	1062770322
	.long	174979359
	.long	1063048599
	.long	2206381187
	.long	1067860502
	.long	711625916
	.long	1067969774
	.long	1028353434
	.long	1067875131
	.long	141236667
	.long	1067899225
	.long	2856240938
	.long	1068238428
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
	.align 8
.LC28:
	.long	2974014026
	.long	1063429835
	.align 8
.LC29:
	.long	0
	.long	1092029440
	.align 8
.LC30:
	.long	2124592580
	.long	1076921766
	.align 8
.LC31:
	.long	2696277389
	.long	1051772663
	.align 16
.LC32:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC33:
	.long	2917828982
	.long	1062382977
	.align 8
.LC34:
	.long	2806503430
	.long	1064729774
	.align 8
.LC35:
	.long	3270277434
	.long	1056606058
	.align 8
.LC36:
	.long	1650504390
	.long	1072693274
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
