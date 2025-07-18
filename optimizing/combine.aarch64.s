	.arch armv8-a
	.file	"combine.c"
	.text
	.align	2
	.global	combine3
	.type	combine3, %function
combine3:
.LFB0:
	.cfi_startproc
	mov	w3, 0
	b	.L2
.L3:
	ldr	w4, [x2]
	ldr	w5, [x0, w3, sxtw 2]
	add	w4, w4, w5
	str	w4, [x2]
	add	w3, w3, 1
.L2:
	cmp	w3, w1
	blt	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	combine3, .-combine3
	.align	2
	.global	combine4
	.type	combine4, %function
combine4:
.LFB1:
	.cfi_startproc
	ldr	w4, [x2]
	mov	w3, 0
	b	.L5
.L6:
	ldr	w5, [x0, w3, sxtw 2]
	add	w4, w4, w5
	add	w3, w3, 1
.L5:
	cmp	w3, w1
	blt	.L6
	str	w4, [x2]
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
