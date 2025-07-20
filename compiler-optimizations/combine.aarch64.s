	.arch armv8-a
	.file	"combine.c"
	.text
	.align	2
	.global	combine3
	.type	combine3, %function
combine3:
.LFB0:
	.cfi_startproc
	mov	x3, 0
	b	.L2
.L3:
	ldr	x4, [x2]
	ldrsw	x5, [x0, x3, lsl 2]
	add	x4, x4, x5
	str	x4, [x2]
	add	x3, x3, 1
.L2:
	cmp	x3, x1
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
	ldr	x4, [x2]
	mov	x3, 0
	b	.L5
.L6:
	ldrsw	x5, [x0, x3, lsl 2]
	add	x4, x4, x5
	add	x3, x3, 1
.L5:
	cmp	x3, x1
	blt	.L6
	str	x4, [x2]
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.align	2
	.global	combine5
	.type	combine5, %function
combine5:
.LFB2:
	.cfi_startproc
	ldr	x4, [x2]
	sub	x7, x1, #1
	mov	x3, 0
	b	.L8
.L9:
	ldrsw	x5, [x0, x3, lsl 2]
	add	x6, x3, 1
	ldrsw	x6, [x0, x6, lsl 2]
	add	x4, x6, x4
	add	x4, x5, x4
	add	x3, x3, 2
.L8:
	cmp	x3, x7
	blt	.L9
.L10:
	cmp	x3, x1
	blt	.L11
	str	x4, [x2]
	ret
.L11:
	ldrsw	x5, [x0, x3, lsl 2]
	add	x4, x4, x5
	add	x3, x3, 1
	b	.L10
	.cfi_endproc
.LFE2:
	.size	combine5, .-combine5
	.align	2
	.global	combine6
	.type	combine6, %function
combine6:
.LFB3:
	.cfi_startproc
	ldr	x4, [x2]
	sub	x7, x1, #1
	mov	x5, x4
	mov	x3, 0
	b	.L13
.L14:
	ldrsw	x6, [x0, x3, lsl 2]
	add	x4, x4, x6
	add	x6, x3, 1
	ldrsw	x6, [x0, x6, lsl 2]
	add	x5, x5, x6
	add	x3, x3, 2
.L13:
	cmp	x3, x7
	blt	.L14
.L15:
	cmp	x3, x1
	blt	.L16
	add	x4, x4, x5
	sub	x4, x4, #1
	str	x4, [x2]
	ret
.L16:
	ldrsw	x6, [x0, x3, lsl 2]
	add	x4, x4, x6
	add	x3, x3, 1
	b	.L15
	.cfi_endproc
.LFE3:
	.size	combine6, .-combine6
	.align	2
	.global	combine7
	.type	combine7, %function
combine7:
.LFB4:
	.cfi_startproc
	ldr	x5, [x2]
	sub	x7, x1, #1
	mov	x3, 0
	b	.L18
.L19:
	add	x4, x3, 1
	ldr	w4, [x0, x4, lsl 2]
	ldr	w6, [x0, x3, lsl 2]
	add	w4, w4, w6
	add	x5, x5, w4, sxtw
	add	x3, x3, 2
.L18:
	cmp	x3, x7
	blt	.L19
.L20:
	cmp	x3, x1
	blt	.L21
	str	x5, [x2]
	ret
.L21:
	ldrsw	x4, [x0, x3, lsl 2]
	add	x5, x5, x4
	add	x3, x3, 1
	b	.L20
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
