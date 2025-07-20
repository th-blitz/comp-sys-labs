	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\ncombine3:"
.LC1:
	.string	"result of dest: %ld\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"number of clock cycles took: %f\n"
	.section	.rodata.str1.1
.LC4:
	.string	"CPE (cycles/element): %f\n"
.LC5:
	.string	"\ncombine4:"
.LC6:
	.string	"\ncombine5:"
.LC7:
	.string	"\ncombine6:"
.LC8:
	.string	"\ncombine7:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	$400000000, %edi
	call	malloc@PLT
	movq	%rax, %rbx
	movq	$1, 24(%rsp)
	movl	$0, %eax
	jmp	.L2
.L3:
	movslq	%eax, %rdx
	leal	1(%rax), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	leal	2(%rax), %ecx
	movl	%ecx, 4(%rbx,%rdx,4)
	addl	$3, %eax
	movl	%eax, 8(%rbx,%rdx,4)
.L2:
	cmpl	$99999997, %eax
	jle	.L3
	jmp	.L4
.L5:
	movslq	%eax, %rdx
	addl	$1, %eax
	movl	%eax, (%rbx,%rdx,4)
.L4:
	cmpl	$99999999, %eax
	jle	.L5
	movq	$1, 24(%rsp)
	call	clock@PLT
	movq	%rax, %r12
	leaq	24(%rsp), %r14
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine3@PLT
	call	clock@PLT
	movq	%rax, %rbp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	24(%rsp), %rsi
	leaq	.LC1(%rip), %r13
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r12, %rbp
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbp, %xmm1
	movq	%xmm1, %rbp
	movapd	%xmm1, %xmm0
	leaq	.LC2(%rip), %r12
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%rbp, %xmm0
	divsd	.LC3(%rip), %xmm0
	leaq	.LC4(%rip), %rbp
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	$1, 24(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine4@PLT
	call	clock@PLT
	movq	%rax, 8(%rsp)
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8(%rsp), %rax
	subq	%r15, %rax
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movq	%xmm2, %r15
	movapd	%xmm2, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%r15, %xmm0
	divsd	.LC3(%rip), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	$1, 24(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine5@PLT
	call	clock@PLT
	movq	%rax, 8(%rsp)
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8(%rsp), %rax
	subq	%r15, %rax
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	movq	%xmm3, %r15
	movapd	%xmm3, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%r15, %xmm0
	divsd	.LC3(%rip), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	$1, 24(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine6@PLT
	call	clock@PLT
	movq	%rax, 8(%rsp)
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8(%rsp), %rax
	subq	%r15, %rax
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rax, %xmm4
	movq	%xmm4, %r15
	movapd	%xmm4, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%r15, %xmm0
	divsd	.LC3(%rip), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	$1, 24(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine7@PLT
	call	clock@PLT
	movq	%rax, %rbx
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r15, %rbx
	pxor	%xmm5, %xmm5
	cvtsi2sdq	%rbx, %xmm5
	movq	%xmm5, %rbx
	movapd	%xmm5, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	%rbx, %xmm0
	divsd	.LC3(%rip), %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1100470148
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
