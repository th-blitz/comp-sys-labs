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
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
