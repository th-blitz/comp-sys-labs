	.arch armv8-a
	.file	"a_y86_program.c"
	.text
	.align	2
	.global	sum
	.type	sum, %function
sum:
.LFB0:
	.cfi_startproc
	mov	x4, x0
	cbz	x1, .L4
	mov	x2, 0
	mov	x0, 0
.L3:
	ldr	x3, [x4, x2, lsl 3]
	add	x0, x0, x3
	add	x2, x2, 1
	cmp	x2, x1
	bne	.L3
.L1:
	ret
.L4:
	mov	x0, x1
	b	.L1
	.cfi_endproc
.LFE0:
	.size	sum, .-sum
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
