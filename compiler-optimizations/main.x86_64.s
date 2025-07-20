	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\ncombine3:"
.LC1:
	.string	"result of dest: %d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"number of clock cycles took: %f\n"
	.section	.rodata.str1.1
.LC3:
	.string	"\ncombine4:"
.LC4:
	.string	"\ncombine5:"
.LC5:
	.string	"\ncombine6:"
.LC6:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movl	$4000000, %edi
	call	malloc@PLT
	movq	%rax, %rbx
	movl	$1, 12(%rsp)
	movl	$0, %eax
	jmp	.L2
.L3:
	movslq	%eax, %rdx
	leal	1(%rax), %ecx
	movl	%ecx, (%rbx,%rdx,4)
	addl	$2, %eax
	movl	%eax, 4(%rbx,%rdx,4)
.L2:
	cmpl	$499998, %eax
	jle	.L3
	movl	$1, 12(%rsp)
	call	clock@PLT
	movq	%rax, %r12
	leaq	12(%rsp), %r14
	movq	%r14, %rdx
	movl	$1000000, %esi
	movq	%rbx, %rdi
	call	combine3@PLT
	call	clock@PLT
	movq	%rax, %rbp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12(%rsp), %esi
	leaq	.LC1(%rip), %r13
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r12, %rbp
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbp, %xmm0
	leaq	.LC2(%rip), %rbp
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, 12(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$1000000, %esi
	movq	%rbx, %rdi
	call	combine4@PLT
	call	clock@PLT
	movq	%rax, %r12
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12(%rsp), %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r15, %r12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, 12(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$1000000, %esi
	movq	%rbx, %rdi
	call	combine5@PLT
	call	clock@PLT
	movq	%rax, %r12
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12(%rsp), %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r15, %r12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, 12(%rsp)
	call	clock@PLT
	movq	%rax, %r15
	movq	%r14, %rdx
	movl	$1000000, %esi
	movq	%rbx, %rdi
	call	combine6@PLT
	call	clock@PLT
	movq	%rax, %r12
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12(%rsp), %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r15, %r12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, 12(%rsp)
	call	clock@PLT
	movq	%rax, %r12
	movq	%r14, %rdx
	movl	$1000000, %esi
	movq	%rbx, %rdi
	call	combine7@PLT
	call	clock@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	12(%rsp), %esi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	%r12, %rbx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	movq	%rbp, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	addq	$24, %rsp
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
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
