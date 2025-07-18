	.arch armv8-a
	.file	"floats.c"
	.text
	.align	2
	.global	float_mov
	.type	float_mov, %function
float_mov:
.LFB0:
	.cfi_startproc
	fmov	s1, s0
	ldr	s0, [x0]
	str	s1, [x1]
	ret
	.cfi_endproc
.LFE0:
	.size	float_mov, .-float_mov
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
