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
	.align	2
	.global	combine5
	.type	combine5, %function
combine5:
.LFB2:
	.cfi_startproc
	ldr	w4, [x2]
	sub	w7, w1, #1
	mov	w3, 0
	b	.L8
.L9:
	sxtw	x5, w3
	add	x6, x5, 1
	ldr	w6, [x0, x6, lsl 2]
	ldr	w5, [x0, x5, lsl 2]
	add	w4, w5, w4
	add	w4, w6, w4
	add	w3, w3, 2
.L8:
	cmp	w3, w7
	blt	.L9
.L10:
	cmp	w3, w1
	blt	.L11
	str	w4, [x2]
	ret
.L11:
	ldr	w5, [x0, w3, sxtw 2]
	add	w4, w4, w5
	add	w3, w3, 1
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
	ldr	w5, [x2]
	sub	w8, w1, #1
	mov	w6, w5
	mov	w4, 0
	b	.L13
.L14:
	sxtw	x3, w4
	ldr	w7, [x0, x3, lsl 2]
	add	w5, w5, w7
	add	x3, x3, 1
	ldr	w3, [x0, x3, lsl 2]
	add	w6, w6, w3
	add	w4, w4, 2
.L13:
	cmp	w4, w8
	blt	.L14
.L15:
	cmp	w4, w1
	blt	.L16
	add	w5, w5, w6
	sub	w5, w5, #1
	str	w5, [x2]
	ret
.L16:
	ldr	w3, [x0, w4, sxtw 2]
	add	w5, w5, w3
	add	w4, w4, 1
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
	ldr	w6, [x2]
	sub	w7, w1, #1
	mov	w3, 0
	b	.L18
.L19:
	sxtw	x5, w3
	add	x4, x5, 1
	ldr	w4, [x0, x4, lsl 2]
	ldr	w5, [x0, x5, lsl 2]
	add	w4, w4, w5
	add	w6, w6, w4
	add	w3, w3, 2
.L18:
	cmp	w3, w7
	blt	.L19
.L20:
	cmp	w3, w1
	blt	.L21
	str	w6, [x2]
	ret
.L21:
	ldr	w4, [x0, w3, sxtw 2]
	add	w6, w6, w4
	add	w3, w3, 1
	b	.L20
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
