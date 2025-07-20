	.arch armv8-a
	.file	"main.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"\ncombine3:"
	.align	3
.LC1:
	.string	"result of dest: %d\n"
	.align	3
.LC2:
	.string	"number of clock cycles took: %f\n"
	.align	3
.LC3:
	.string	"\ncombine4:"
	.align	3
.LC4:
	.string	"\ncombine5:"
	.align	3
.LC5:
	.string	"\ncombine6:"
	.align	3
.LC6:
	.string	"\ncombine7:"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB22:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	mov	x0, 2304
	movk	x0, 0x3d, lsl 16
	bl	malloc
	mov	x19, x0
	mov	w0, 1
	str	w0, [sp, 92]
	mov	w1, 0
	b	.L2
.L3:
	sxtw	x2, w1
	add	w0, w1, 1
	str	w0, [x19, x2, lsl 2]
	add	x2, x2, 1
	add	w1, w1, 2
	str	w1, [x19, x2, lsl 2]
.L2:
	mov	w0, 41246
	movk	w0, 0x7, lsl 16
	cmp	w1, w0
	ble	.L3
	mov	w24, 1
	str	w24, [sp, 92]
	bl	clock
	mov	x25, x0
	add	x22, sp, 92
	mov	w23, 16960
	movk	w23, 0xf, lsl 16
	mov	x2, x22
	mov	w1, w23
	mov	x0, x19
	bl	combine3
	bl	clock
	mov	x20, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x21, .LC1
	add	x21, x21, :lo12:.LC1
	ldr	w1, [sp, 92]
	mov	x0, x21
	bl	printf
	sub	x0, x20, x25
	fmov	d0, x0
	adrp	x20, .LC2
	add	x20, x20, :lo12:.LC2
	scvtf	d0, d0
	mov	x0, x20
	bl	printf
	str	w24, [sp, 92]
	bl	clock
	mov	x26, x0
	mov	x2, x22
	mov	w1, w23
	mov	x0, x19
	bl	combine4
	bl	clock
	mov	x25, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w1, [sp, 92]
	mov	x0, x21
	bl	printf
	sub	x0, x25, x26
	fmov	d0, x0
	scvtf	d0, d0
	mov	x0, x20
	bl	printf
	str	w24, [sp, 92]
	bl	clock
	mov	x26, x0
	mov	x2, x22
	mov	w1, w23
	mov	x0, x19
	bl	combine5
	bl	clock
	mov	x25, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w1, [sp, 92]
	mov	x0, x21
	bl	printf
	sub	x0, x25, x26
	fmov	d0, x0
	scvtf	d0, d0
	mov	x0, x20
	bl	printf
	str	w24, [sp, 92]
	bl	clock
	mov	x26, x0
	mov	x2, x22
	mov	w1, w23
	mov	x0, x19
	bl	combine6
	bl	clock
	mov	x25, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	w1, [sp, 92]
	mov	x0, x21
	bl	printf
	sub	x0, x25, x26
	fmov	d0, x0
	scvtf	d0, d0
	mov	x0, x20
	bl	printf
	str	w24, [sp, 92]
	bl	clock
	mov	x24, x0
	mov	x2, x22
	mov	w1, w23
	mov	x0, x19
	bl	combine7
	bl	clock
	mov	x19, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w1, [sp, 92]
	mov	x0, x21
	bl	printf
	sub	x0, x19, x24
	fmov	d0, x0
	scvtf	d0, d0
	mov	x0, x20
	bl	printf
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
