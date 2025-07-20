	.arch armv8-a
	.file	"main.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"\ncombine3:"
	.align	3
.LC1:
	.string	"result of dest: %ld\n"
	.align	3
.LC2:
	.string	"number of clock cycles took: %f\n"
	.align	3
.LC3:
	.string	"CPE (cycles/element): %f\n"
	.align	3
.LC4:
	.string	"\ncombine4:"
	.align	3
.LC5:
	.string	"\ncombine5:"
	.align	3
.LC6:
	.string	"\ncombine6:"
	.align	3
.LC7:
	.string	"\ncombine7:"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB22:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	stp	d8, d9, [sp, 96]
	.cfi_offset 19, -112
	.cfi_offset 20, -104
	.cfi_offset 21, -96
	.cfi_offset 22, -88
	.cfi_offset 23, -80
	.cfi_offset 24, -72
	.cfi_offset 25, -64
	.cfi_offset 26, -56
	.cfi_offset 27, -48
	.cfi_offset 72, -32
	.cfi_offset 73, -24
	mov	x0, 33792
	movk	x0, 0x17d7, lsl 16
	bl	malloc
	mov	x19, x0
	mov	x0, 1
	str	x0, [sp, 120]
	mov	w1, 0
	b	.L2
.L3:
	sxtw	x2, w1
	add	w0, w1, 1
	str	w0, [x19, x2, lsl 2]
	add	x0, x2, 1
	add	w3, w1, 2
	str	w3, [x19, x0, lsl 2]
	add	x2, x2, 2
	add	w1, w1, 3
	str	w1, [x19, x2, lsl 2]
.L2:
	mov	w0, 57597
	movk	w0, 0x5f5, lsl 16
	cmp	w1, w0
	ble	.L3
	b	.L4
.L5:
	sxtw	x0, w1
	add	w1, w1, 1
	str	w1, [x19, x0, lsl 2]
.L4:
	mov	w0, 57599
	movk	w0, 0x5f5, lsl 16
	cmp	w1, w0
	ble	.L5
	mov	x26, 1
	str	x26, [sp, 120]
	bl	clock
	mov	x21, x0
	add	x24, sp, 120
	mov	x25, 57600
	movk	x25, 0x5f5, lsl 16
	mov	x2, x24
	mov	x1, x25
	mov	x0, x19
	bl	combine3
	bl	clock
	mov	x20, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x23, .LC1
	add	x23, x23, :lo12:.LC1
	ldr	x1, [sp, 120]
	mov	x0, x23
	bl	printf
	sub	x0, x20, x21
	fmov	d8, x0
	scvtf	d8, d8
	adrp	x22, .LC2
	add	x22, x22, :lo12:.LC2
	fmov	d0, d8
	mov	x0, x22
	bl	printf
	adrp	x0, .LC8
	ldr	d9, [x0, #:lo12:.LC8]
	adrp	x21, .LC3
	add	x21, x21, :lo12:.LC3
	fdiv	d0, d8, d9
	mov	x0, x21
	bl	printf
	str	x26, [sp, 120]
	bl	clock
	mov	x27, x0
	mov	x2, x24
	mov	x1, x25
	mov	x0, x19
	bl	combine4
	bl	clock
	mov	x20, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	x1, [sp, 120]
	mov	x0, x23
	bl	printf
	sub	x0, x20, x27
	fmov	d8, x0
	scvtf	d8, d8
	fmov	d0, d8
	mov	x0, x22
	bl	printf
	fdiv	d0, d8, d9
	mov	x0, x21
	bl	printf
	str	x26, [sp, 120]
	bl	clock
	mov	x27, x0
	mov	x2, x24
	mov	x1, x25
	mov	x0, x19
	bl	combine5
	bl	clock
	mov	x20, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	ldr	x1, [sp, 120]
	mov	x0, x23
	bl	printf
	sub	x0, x20, x27
	fmov	d8, x0
	scvtf	d8, d8
	fmov	d0, d8
	mov	x0, x22
	bl	printf
	fdiv	d0, d8, d9
	mov	x0, x21
	bl	printf
	str	x26, [sp, 120]
	bl	clock
	mov	x27, x0
	mov	x2, x24
	mov	x1, x25
	mov	x0, x19
	bl	combine6
	bl	clock
	mov	x20, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	x1, [sp, 120]
	mov	x0, x23
	bl	printf
	sub	x0, x20, x27
	fmov	d8, x0
	scvtf	d8, d8
	fmov	d0, d8
	mov	x0, x22
	bl	printf
	fdiv	d0, d8, d9
	mov	x0, x21
	bl	printf
	str	x26, [sp, 120]
	bl	clock
	mov	x20, x0
	mov	x2, x24
	mov	x1, x25
	mov	x0, x19
	bl	combine7
	bl	clock
	mov	x19, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldr	x1, [sp, 120]
	mov	x0, x23
	bl	printf
	sub	x0, x19, x20
	fmov	d8, x0
	scvtf	d8, d8
	fmov	d0, d8
	mov	x0, x22
	bl	printf
	fdiv	d0, d8, d9
	mov	x0, x21
	bl	printf
	mov	w0, 0
	ldp	d8, d9, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC8:
	.word	0
	.word	1100470148
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
