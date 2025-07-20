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
	movslq	%eax, %rcx
	movl	(%rdi,%rcx,4), %ecx
	addl	%ecx, (%rdx)
	addl	$1, %eax
.L2:
	cmpl	%esi, %eax
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
	movl	(%rdx), %ecx
	movl	$0, %eax
	jmp	.L5
.L6:
	movslq	%eax, %r8
	addl	(%rdi,%r8,4), %ecx
	addl	$1, %eax
.L5:
	cmpl	%esi, %eax
	jl	.L6
	movl	%ecx, (%rdx)
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.globl	combine5
	.type	combine5, @function
combine5:
.LFB2:
	.cfi_startproc
	movl	(%rdx), %ecx
	leal	-1(%rsi), %r9d
	movl	$0, %eax
	jmp	.L8
.L9:
	movslq	%eax, %r8
	addl	(%rdi,%r8,4), %ecx
	addl	4(%rdi,%r8,4), %ecx
	addl	$2, %eax
.L8:
	cmpl	%r9d, %eax
	jl	.L9
.L10:
	cmpl	%esi, %eax
	jl	.L11
	movl	%ecx, (%rdx)
	ret
.L11:
	movslq	%eax, %r8
	addl	(%rdi,%r8,4), %ecx
	addl	$1, %eax
	jmp	.L10
	.cfi_endproc
.LFE2:
	.size	combine5, .-combine5
	.globl	combine6
	.type	combine6, @function
combine6:
.LFB3:
	.cfi_startproc
	movl	(%rdx), %r8d
	leal	-1(%rsi), %r10d
	movl	%r8d, %r9d
	movl	$0, %eax
	jmp	.L13
.L14:
	movslq	%eax, %rcx
	addl	(%rdi,%rcx,4), %r8d
	addl	4(%rdi,%rcx,4), %r9d
	addl	$2, %eax
.L13:
	cmpl	%r10d, %eax
	jl	.L14
.L15:
	cmpl	%esi, %eax
	jl	.L16
	leal	-1(%r8,%r9), %eax
	movl	%eax, (%rdx)
	ret
.L16:
	movslq	%eax, %rcx
	addl	(%rdi,%rcx,4), %r8d
	addl	$1, %eax
	jmp	.L15
	.cfi_endproc
.LFE3:
	.size	combine6, .-combine6
	.globl	combine7
	.type	combine7, @function
combine7:
.LFB4:
	.cfi_startproc
	movl	(%rdx), %r9d
	leal	-1(%rsi), %r10d
	movl	$0, %eax
	jmp	.L18
.L19:
	movslq	%eax, %r8
	movl	(%rdi,%r8,4), %ecx
	addl	4(%rdi,%r8,4), %ecx
	addl	%ecx, %r9d
	addl	$2, %eax
.L18:
	cmpl	%r10d, %eax
	jl	.L19
.L20:
	cmpl	%esi, %eax
	jl	.L21
	movl	%r9d, (%rdx)
	ret
.L21:
	movslq	%eax, %rcx
	addl	(%rdi,%rcx,4), %r9d
	addl	$1, %eax
	jmp	.L20
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
