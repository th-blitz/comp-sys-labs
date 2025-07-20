	.file	"combine.c"
	.text
	.globl	combine3
	.type	combine3, @function
combine3:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	jmp	.L2
.L3:
	movslq	(%rdi,%rax,4), %rcx
	addq	%rcx, (%rdx)
	addq	$1, %rax
.L2:
	cmpq	%rsi, %rax
	jl	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	combine3, .-combine3
	.globl	combine4
	.type	combine4, @function
combine4:
.LFB1:
	.cfi_startproc
	movq	(%rdx), %rcx
	movl	$0, %eax
	jmp	.L5
.L6:
	movslq	(%rdi,%rax,4), %r8
	addq	%r8, %rcx
	addq	$1, %rax
.L5:
	cmpq	%rsi, %rax
	jl	.L6
	movq	%rcx, (%rdx)
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.globl	combine5
	.type	combine5, @function
combine5:
.LFB2:
	.cfi_startproc
	movq	(%rdx), %rcx
	leaq	-1(%rsi), %r10
	movl	$0, %eax
	jmp	.L8
.L9:
	movslq	(%rdi,%rax,4), %r8
	movslq	4(%rdi,%rax,4), %r9
	addq	%r9, %rcx
	addq	%r8, %rcx
	addq	$2, %rax
.L8:
	cmpq	%r10, %rax
	jl	.L9
.L10:
	cmpq	%rsi, %rax
	jl	.L11
	movq	%rcx, (%rdx)
	ret
.L11:
	movslq	(%rdi,%rax,4), %r8
	addq	%r8, %rcx
	addq	$1, %rax
	jmp	.L10
	.cfi_endproc
.LFE2:
	.size	combine5, .-combine5
	.globl	combine6
	.type	combine6, @function
combine6:
.LFB3:
	.cfi_startproc
	movq	(%rdx), %rcx
	leaq	-1(%rsi), %r10
	movq	%rcx, %r8
	movl	$0, %eax
	jmp	.L13
.L14:
	movslq	(%rdi,%rax,4), %r9
	addq	%r9, %rcx
	movslq	4(%rdi,%rax,4), %r9
	addq	%r9, %r8
	addq	$2, %rax
.L13:
	cmpq	%r10, %rax
	jl	.L14
.L15:
	cmpq	%rsi, %rax
	jl	.L16
	leaq	-1(%rcx,%r8), %rax
	movq	%rax, (%rdx)
	ret
.L16:
	movslq	(%rdi,%rax,4), %r9
	addq	%r9, %rcx
	addq	$1, %rax
	jmp	.L15
	.cfi_endproc
.LFE3:
	.size	combine6, .-combine6
	.globl	combine7
	.type	combine7, @function
combine7:
.LFB4:
	.cfi_startproc
	movq	(%rdx), %r8
	leaq	-1(%rsi), %r9
	movl	$0, %ecx
	jmp	.L18
.L19:
	movl	(%rdi,%rcx,4), %eax
	addl	4(%rdi,%rcx,4), %eax
	cltq
	addq	%rax, %r8
	addq	$2, %rcx
.L18:
	cmpq	%r9, %rcx
	jl	.L19
.L20:
	cmpq	%rsi, %rcx
	jl	.L21
	movq	%r8, (%rdx)
	ret
.L21:
	movslq	(%rdi,%rcx,4), %rax
	addq	%rax, %r8
	addq	$1, %rcx
	jmp	.L20
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
