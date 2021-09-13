	.file	"470src.f"
	.text
	.globl	gausd_
	.type	gausd_, @function
gausd_:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	subq	$152, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	-280(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	-280(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, %rdx
	imulq	-56(%rbp), %rdx
	movl	$0, %ecx
	testq	%rdx, %rdx
	cmovs	%rcx, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movq	%rax, %rdx
	notq	%rdx
	movq	-280(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movl	$0, %esi
	testq	%rcx, %rcx
	cmovs	%rsi, %rcx
	movq	%rcx, %r10
	movl	$0, %r11d
	movq	-272(%rbp), %rcx
	movl	$1, (%rcx)
	movl	$1, -28(%rbp)
	movq	-248(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -24(%rbp)
.L3:
	cmpl	%ecx, -24(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L23
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	subq	$1, %rsi
	movl	$0, -160(%rbp,%rsi,4)
	addl	$1, -24(%rbp)
	jmp	.L3
.L23:
	nop
	movl	$1, -32(%rbp)
	movl	$1, -36(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-248(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -24(%rbp)
.L8:
	cmpl	%ecx, -24(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L24
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	subq	$1, %rsi
	movl	-160(%rbp,%rsi,4), %esi
	testl	%esi, %esi
	jne	.L25
	nop
	movq	-248(%rbp), %rsi
	movl	(%rsi), %esi
	movl	$1, -40(%rbp)
.L7:
	cmpl	%esi, -40(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L25
	movl	-40(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-256(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-68(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	subss	-20(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L26
	nop
	movl	-24(%rbp), %edi
	movl	%edi, -32(%rbp)
	movl	-40(%rbp), %edi
	movl	%edi, -36(%rbp)
	movss	-68(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L6
.L26:
	nop
.L6:
	addl	$1, -40(%rbp)
	jmp	.L7
.L25:
	nop
	addl	$1, -24(%rbp)
	jmp	.L8
.L24:
	nop
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L9
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L27
	movq	-272(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L10
.L27:
	nop
.L9:
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rsi
	movl	-36(%rbp), %ecx
	movl	%ecx, -160(%rbp,%rsi,4)
	movq	-248(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, -24(%rbp)
.L17:
	cmpl	%ecx, -24(%rbp)
	setg	%sil
	movzbl	%sil, %esi
	testl	%esi, %esi
	jne	.L28
	movl	-24(%rbp), %esi
	cmpl	-32(%rbp), %esi
	sete	%sil
	movzbl	%sil, %edi
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %r8
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %r8
	movq	-256(%rbp), %rsi
	movss	(%rsi,%r8,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%sil
	movzbl	%sil, %esi
	movl	$0, %r8d
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	cmovne	%r8d, %esi
	orl	%edi, %esi
	testl	%esi, %esi
	jne	.L29
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-256(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-256(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movq	-248(%rbp), %rsi
	movl	(%rsi), %esi
	movl	$1, -40(%rbp)
.L16:
	cmpl	%esi, -40(%rbp)
	setg	%dil
	movzbl	%dil, %edi
	testl	%edi, %edi
	jne	.L30
	movl	-40(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-32(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-256(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L22
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L14
.L22:
	movl	-40(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-256(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm0
	movl	-40(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-32(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	movq	-256(%rbp), %rdi
	movss	(%rdi,%r8,4), %xmm1
	mulss	-68(%rbp), %xmm1
	movl	-40(%rbp), %edi
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	leaq	(%rdx,%rdi), %r8
	movl	-24(%rbp), %edi
	movslq	%edi, %rdi
	addq	%rdi, %r8
	subss	%xmm1, %xmm0
	movq	-256(%rbp), %rdi
	movss	%xmm0, (%rdi,%r8,4)
.L14:
	addl	$1, -40(%rbp)
	jmp	.L16
.L30:
	nop
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	(%rdx,%rsi), %rdi
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdi
	movq	-256(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rdi,4)
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movq	-264(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm0
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	movq	-264(%rbp), %rsi
	movss	(%rsi,%rdi,4), %xmm1
	mulss	-68(%rbp), %xmm1
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	leaq	-1(%rsi), %rdi
	subss	%xmm1, %xmm0
	movq	-264(%rbp), %rsi
	movss	%xmm0, (%rsi,%rdi,4)
	jmp	.L12
.L29:
	nop
.L12:
	addl	$1, -24(%rbp)
	jmp	.L17
.L28:
	nop
	addl	$1, -28(%rbp)
	movq	-248(%rbp), %rcx
	movl	(%rcx), %ecx
	cmpl	%ecx, -28(%rbp)
	jle	.L23
	movq	-248(%rbp), %rcx
	movl	(%rcx), %esi
	movl	$1, -24(%rbp)
.L19:
	cmpl	%esi, -24(%rbp)
	setg	%cl
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.L31
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	movl	-160(%rbp,%rcx,4), %ecx
	movl	%ecx, -32(%rbp)
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	-1(%rcx), %rdi
	movq	-264(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm0
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movq	-256(%rbp), %rcx
	movss	(%rcx,%rdi,4), %xmm1
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	divss	%xmm1, %xmm0
	movss	%xmm0, -240(%rbp,%rcx,4)
	addl	$1, -24(%rbp)
	jmp	.L19
.L31:
	nop
	movq	-248(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -24(%rbp)
.L20:
	cmpl	%edx, -24(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L32
	movl	-24(%rbp), %eax
	cltq
	subq	$1, %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	subq	$1, %rcx
	movss	-240(%rbp,%rax,4), %xmm0
	movq	-264(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -24(%rbp)
	jmp	.L20
.L32:
	nop
.L10:
	nop
	addq	$152, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	gausd_, .-gausd_
	.section	.rodata
.LC2:
	.string	"470src.f"
	.align 8
.LC3:
	.ascii	"( //\" FAKUB INFORMATION ON ZERO ON LINE\",I5// )"
	.align 4
.LC6:
	.long	20
	.align 8
.LC7:
	.ascii	"( //\" FAKUB SINGULAR MATRIX OF SYSTEM,END OF FAKUB\"// )"
	.align 8
.LC8:
	.ascii	"( //\" FAKUB MANY REARRANGEMENTS,END OF FAKUB\"// )"
	.align 8
.LC9:
	.ascii	"( //\" FAKUB LOW DIMENSION,END OF FAKUB\"// )"
	.text
	.globl	fakub_
	.type	fakub_, @function
fakub_:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2392, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -2360(%rbp)
	movq	%rsi, -2368(%rbp)
	movq	%rdx, -2376(%rbp)
	movq	%rcx, -2384(%rbp)
	movq	%r8, -2392(%rbp)
	movq	%r9, -2400(%rbp)
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -2416(%rbp)
	movq	$0, -2408(%rbp)
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -2432(%rbp)
	movq	$0, -2424(%rbp)
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rbx
	cmovns	%rax, %rbx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -104(%rbp)
	movq	%rbx, %rax
	imulq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %r12
	notq	%r12
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -1736(%rbp)
	movl	$1, -60(%rbp)
	movl	$1, -1732(%rbp)
	jmp	.L39
.L74:
	nop
.L39:
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm0, %xmm1
	movq	48(%rbp), %rax
	movss	(%rax), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L72
.L50:
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2384(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	divss	-64(%rbp), %xmm0
	movq	-2384(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2368(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -120(%rbp)
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, -56(%rbp)
.L38:
	cmpl	%eax, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L73
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L71
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L36
.L71:
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	divss	-64(%rbp), %xmm0
	movq	-2392(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm1
	mulss	-120(%rbp), %xmm1
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rcx
	movl	-1732(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	subss	%xmm1, %xmm0
	movq	-2392(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.L36:
	addl	$1, -56(%rbp)
	jmp	.L38
.L73:
	nop
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2384(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	mulss	-120(%rbp), %xmm1
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	-1(%rax), %rdx
	subss	%xmm1, %xmm0
	movq	-2376(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1732(%rbp)
	movl	-1732(%rbp), %eax
	cmpl	%eax, -116(%rbp)
	jge	.L74
	jmp	.L40
.L72:
	nop
.L34:
	leaq	.LC2(%rip), %rax
	movq	%rax, -2344(%rbp)
	movl	$90, -2336(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -2272(%rbp)
	movq	$47, -2264(%rbp)
	movl	$4096, -2352(%rbp)
	movl	kpr.3993(%rip), %eax
	movl	%eax, -2348(%rbp)
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-1732(%rbp), %rcx
	leaq	-2352(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	-1736(%rbp), %eax
	testl	%eax, %eax
	je	.L75
	movl	-1736(%rbp), %eax
	movl	$1, -56(%rbp)
.L43:
	cmpl	%eax, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L75
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movl	-1732(%rbp), %edx
	cmpl	%edx, %ecx
	je	.L76
	addl	$1, -56(%rbp)
	jmp	.L43
.L75:
	nop
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-2400(%rbp), %rax
	movl	%edx, (%rax)
	movl	-1736(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1736(%rbp)
	movq	-2400(%rbp), %rax
	movl	(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L77
	movq	-2360(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L46:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L78
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movl	-56(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-2392(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L46
.L78:
	nop
	movq	40(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-2400(%rbp), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movss	.LC4(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movq	-2392(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-1736(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movl	-1732(%rbp), %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax,%rcx,4)
	jmp	.L47
.L76:
	nop
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-2392(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movq	40(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rdx
	subss	%xmm1, %xmm0
	movq	-2392(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
.L47:
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1
	movq	40(%rbp), %rax
	movss	(%rax), %xmm0
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	addss	%xmm1, %xmm0
	movq	-2376(%rbp), %rax
	movss	%xmm0, (%rax,%rdx,4)
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	%xmm0, -64(%rbp)
	cmpl	$1, -60(%rbp)
	je	.L50
	cmpl	$2, -60(%rbp)
	je	.L51
.L40:
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movq	48(%rbp), %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L79
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -1732(%rbp)
	movl	$2, -60(%rbp)
	jmp	.L34
.L79:
	nop
.L51:
	movq	-2400(%rbp), %rax
	movl	(%rax), %edx
	movl	$1, -56(%rbp)
.L53:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L80
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rcx
	movq	-2392(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-2376(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rcx
	movq	-2360(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rcx
	divss	%xmm1, %xmm0
	movq	-2392(%rbp), %rax
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, -56(%rbp)
	jmp	.L53
.L80:
	nop
	movl	-116(%rbp), %eax
	movl	$1, -52(%rbp)
.L57:
	cmpl	%eax, -52(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L81
	movq	-2360(%rbp), %rdx
	movl	(%rdx), %edx
	subl	-52(%rbp), %edx
	movl	%edx, -1732(%rbp)
	movq	-2400(%rbp), %rdx
	movl	(%rdx), %ecx
	movl	$1, -56(%rbp)
.L56:
	cmpl	%ecx, -56(%rbp)
	setg	%dl
	movzbl	%dl, %edx
	testl	%edx, %edx
	jne	.L82
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rsi
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm0
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rsi
	movq	-2384(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm2
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rsi
	movl	-1732(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movq	-2392(%rbp), %rdx
	movss	(%rdx,%rsi,4), %xmm1
	mulss	%xmm2, %xmm1
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rbx, %rdx
	leaq	(%r12,%rdx), %rsi
	movl	-1732(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	subss	%xmm1, %xmm0
	movq	-2392(%rbp), %rdx
	movss	%xmm0, (%rdx,%rsi,4)
	addl	$1, -56(%rbp)
	jmp	.L56
.L82:
	nop
	addl	$1, -52(%rbp)
	jmp	.L57
.L81:
	nop
	movl	-1736(%rbp), %eax
	testl	%eax, %eax
	je	.L33
	movl	-1736(%rbp), %eax
	cmpl	$20, %eax
	jg	.L83
	movl	-1736(%rbp), %esi
	movl	$1, -1732(%rbp)
.L64:
	movl	-1732(%rbp), %eax
	cmpl	%eax, %esi
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L84
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	32(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -52(%rbp)
	movl	-1736(%rbp), %ecx
	movl	$1, -56(%rbp)
.L63:
	cmpl	%ecx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L85
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rdi
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	-1732(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	-21(%rax), %rdx
	movq	-2392(%rbp), %rax
	movss	(%rax,%rdi,4), %xmm0
	movss	%xmm0, -1728(%rbp,%rdx,4)
	addl	$1, -56(%rbp)
	jmp	.L63
.L85:
	nop
	leaq	(%r12,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-2392(%rbp), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -1824(%rbp,%rdx,4)
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movss	-1728(%rbp,%rax,4), %xmm1
	movl	-1732(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC5(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -1728(%rbp,%rax,4)
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1732(%rbp)
	jmp	.L64
.L84:
	nop
	leaq	-1740(%rbp), %rcx
	leaq	-1824(%rbp), %rdx
	leaq	-1728(%rbp), %rsi
	leaq	-1736(%rbp), %rax
	leaq	.LC6(%rip), %r8
	movq	%rax, %rdi
	call	gausd_
	movl	-1740(%rbp), %eax
	testl	%eax, %eax
	je	.L86
	movq	-2360(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, -1732(%rbp)
.L69:
	movl	-1732(%rbp), %eax
	cmpl	%eax, %ecx
	setl	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L87
	movq	-2400(%rbp), %rax
	movl	(%rax), %edx
	movl	$2, -56(%rbp)
.L68:
	cmpl	%edx, -56(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L88
	leaq	(%r12,%rbx), %rsi
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movq	-2392(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm0
	movl	-56(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	(%r12,%rax), %rsi
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movq	-2392(%rbp), %rax
	movss	(%rax,%rsi,4), %xmm2
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cltq
	subq	$1, %rax
	movss	-1824(%rbp,%rax,4), %xmm1
	mulss	%xmm2, %xmm1
	leaq	(%r12,%rbx), %rsi
	movl	-1732(%rbp), %eax
	cltq
	addq	%rax, %rsi
	subss	%xmm1, %xmm0
	movq	-2392(%rbp), %rax
	movss	%xmm0, (%rax,%rsi,4)
	addl	$1, -56(%rbp)
	jmp	.L68
.L88:
	nop
	movl	-1732(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1732(%rbp)
	jmp	.L69
.L87:
	nop
	jmp	.L33
.L86:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -2344(%rbp)
	movl	$165, -2336(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -2272(%rbp)
	movq	$55, -2264(%rbp)
	movl	$4096, -2352(%rbp)
	movl	kpr.3993(%rip), %eax
	movl	%eax, -2348(%rbp)
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-2400(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L33
.L77:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -2344(%rbp)
	movl	$168, -2336(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -2272(%rbp)
	movq	$49, -2264(%rbp)
	movl	$4096, -2352(%rbp)
	movl	kpr.3993(%rip), %eax
	movl	%eax, -2348(%rbp)
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-2400(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L33
.L83:
	nop
	leaq	.LC2(%rip), %rax
	movq	%rax, -2344(%rbp)
	movl	$171, -2336(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -2272(%rbp)
	movq	$43, -2264(%rbp)
	movl	$4096, -2352(%rbp)
	movl	kpr.3993(%rip), %eax
	movl	%eax, -2348(%rbp)
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-2352(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movq	-2400(%rbp), %rax
	movl	$-2, (%rax)
	nop
.L33:
	addq	$2392, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fakub_, .-fakub_
	.data
	.align 4
	.type	kpr.3993, @object
	.size	kpr.3993, 4
kpr.3993:
	.long	6
	.section	.rodata
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC4:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC5:
	.long	1065353216
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
