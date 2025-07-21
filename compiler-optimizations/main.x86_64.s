	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/ghost/experiments/comp-sys-labs/compiler-optimizations" "main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"error: creating perf even open"
	.text
	.type	perf_event_open, @function
perf_event_open:
.LVL0:
.LFB52:
	.file 1 "main.c"
	.loc 1 20 1 view -0
	.cfi_startproc
	.loc 1 20 1 is_stmt 0 view .LVU1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 21 5 is_stmt 1 view .LVU2
	.loc 1 22 5 view .LVU3
	.loc 1 22 10 is_stmt 0 view .LVU4
	movq	%r8, %r9
	movl	%ecx, %r8d
.LVL1:
	.loc 1 22 10 view .LVU5
	movl	%edx, %ecx
.LVL2:
	.loc 1 22 10 view .LVU6
	movl	%esi, %edx
.LVL3:
	.loc 1 22 10 view .LVU7
	movq	%rdi, %rsi
.LVL4:
	.loc 1 22 10 view .LVU8
	movl	$298, %edi
.LVL5:
	.loc 1 22 10 view .LVU9
	movl	$0, %eax
	call	syscall@PLT
.LVL6:
	.loc 1 24 5 is_stmt 1 view .LVU10
	.loc 1 24 8 is_stmt 0 view .LVU11
	cmpl	$-1, %eax
	je	.L4
	.loc 1 28 5 is_stmt 1 view .LVU12
	.loc 1 28 12 is_stmt 0 view .LVU13
	cltq
	.loc 1 29 1 view .LVU14
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	.loc 1 25 9 is_stmt 1 view .LVU15
	movq	stderr(%rip), %rcx
	movl	$30, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
.LVL7:
	.loc 1 26 9 view .LVU16
	movl	$1, %edi
	call	exit@PLT
.LVL8:
	.cfi_endproc
.LFE52:
	.size	perf_event_open, .-perf_event_open
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\ncombine3:"
.LC2:
	.string	"result of dest: %ld\n"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"number of clock cycles took: %f\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Total CPU cycles: %lu\n"
.LC6:
	.string	"Cycles per element: %.2f\n"
.LC7:
	.string	"\ncombine4:"
.LC8:
	.string	"CPE (cycles/element): %f\n"
.LC9:
	.string	"\ncombine5:"
.LC10:
	.string	"\ncombine6:"
.LC11:
	.string	"\ncombine7:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB53:
	.loc 1 32 12 view -0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.loc 1 34 5 view .LVU18
.LVL9:
	.loc 1 35 5 view .LVU19
	.loc 1 35 23 is_stmt 0 view .LVU20
	movl	$400000000, %edi
	call	malloc@PLT
.LVL10:
	movq	%rax, %rbx
.LVL11:
	.loc 1 36 5 is_stmt 1 view .LVU21
	.loc 1 36 10 is_stmt 0 view .LVU22
	movq	$1, 168(%rsp)
	.loc 1 37 5 is_stmt 1 view .LVU23
	.loc 1 38 5 view .LVU24
	.loc 1 39 5 view .LVU25
.LVL12:
	.loc 1 41 5 view .LVU26
	.loc 1 42 5 view .LVU27
	.loc 1 44 5 view .LVU28
	leaq	32(%rsp), %r9
	movl	$16, %ecx
	movl	$0, %eax
.LVL13:
	.loc 1 44 5 is_stmt 0 view .LVU29
	movq	%r9, %rdi
	rep stosq
	.loc 1 45 5 is_stmt 1 view .LVU30
	.loc 1 46 5 view .LVU31
	.loc 1 46 13 is_stmt 0 view .LVU32
	movl	$128, 36(%rsp)
	.loc 1 47 5 is_stmt 1 view .LVU33
	.loc 1 47 15 is_stmt 0 view .LVU34
	movq	$1, 40(%rsp)
	.loc 1 48 5 is_stmt 1 view .LVU35
	.loc 1 48 17 is_stmt 0 view .LVU36
	movzbl	72(%rsp), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movb	%dl, 72(%rsp)
	.loc 1 49 5 is_stmt 1 view .LVU37
	.loc 1 49 23 is_stmt 0 view .LVU38
	movl	%eax, %edx
	orl	$33, %edx
	movb	%dl, 72(%rsp)
	.loc 1 50 5 is_stmt 1 view .LVU39
	.loc 1 50 19 is_stmt 0 view .LVU40
	orl	$97, %eax
	movb	%al, 72(%rsp)
	.loc 1 51 5 is_stmt 1 view .LVU41
	.loc 1 53 5 view .LVU42
	.loc 1 53 10 is_stmt 0 view .LVU43
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%r9, %rdi
	call	perf_event_open
.LVL14:
	.loc 1 53 8 view .LVU44
	movl	%eax, %ebp
.LVL15:
	.loc 1 55 5 is_stmt 1 view .LVU45
	.loc 1 55 12 is_stmt 0 view .LVU46
	movl	$0, %eax
.LVL16:
	.loc 1 55 5 view .LVU47
	jmp	.L6
.LVL17:
.L7:
	.loc 1 56 9 is_stmt 1 discriminator 3 view .LVU48
	.loc 1 56 13 is_stmt 0 discriminator 3 view .LVU49
	movslq	%eax, %rdx
	.loc 1 56 20 discriminator 3 view .LVU50
	leal	1(%rax), %ecx
	.loc 1 56 17 discriminator 3 view .LVU51
	movl	%ecx, (%rbx,%rdx,4)
	.loc 1 57 9 is_stmt 1 discriminator 3 view .LVU52
	.loc 1 57 22 is_stmt 0 discriminator 3 view .LVU53
	leal	2(%rax), %ecx
	.loc 1 57 19 discriminator 3 view .LVU54
	movl	%ecx, 4(%rbx,%rdx,4)
	.loc 1 58 9 is_stmt 1 discriminator 3 view .LVU55
	.loc 1 58 22 is_stmt 0 discriminator 3 view .LVU56
	addl	$3, %eax
.LVL18:
	.loc 1 58 19 discriminator 3 view .LVU57
	movl	%eax, 8(%rbx,%rdx,4)
	.loc 1 55 29 is_stmt 1 discriminator 3 view .LVU58
.LVL19:
.L6:
	.loc 1 55 19 discriminator 1 view .LVU59
	cmpl	$99999997, %eax
	jle	.L7
	jmp	.L8
.L9:
	.loc 1 61 9 discriminator 2 view .LVU60
	.loc 1 61 13 is_stmt 0 discriminator 2 view .LVU61
	movslq	%eax, %rdx
	.loc 1 61 20 discriminator 2 view .LVU62
	addl	$1, %eax
.LVL20:
	.loc 1 61 17 discriminator 2 view .LVU63
	movl	%eax, (%rbx,%rdx,4)
	.loc 1 60 27 is_stmt 1 discriminator 2 view .LVU64
.LVL21:
.L8:
	.loc 1 60 14 discriminator 1 view .LVU65
	cmpl	$99999999, %eax
	jle	.L9
	.loc 1 64 5 view .LVU66
	.loc 1 64 10 is_stmt 0 view .LVU67
	movq	$1, 168(%rsp)
	.loc 1 65 5 is_stmt 1 view .LVU68
	.loc 1 65 19 is_stmt 0 view .LVU69
	call	clock@PLT
.LVL22:
	.loc 1 65 19 view .LVU70
	movq	%rax, %r13
.LVL23:
	.loc 1 66 5 is_stmt 1 view .LVU71
	movl	$0, %edx
	movl	$9219, %esi
	movl	%ebp, %edi
	movl	$0, %eax
.LVL24:
	.loc 1 66 5 is_stmt 0 view .LVU72
	call	ioctl@PLT
.LVL25:
	.loc 1 67 5 is_stmt 1 view .LVU73
	movl	$0, %edx
	movl	$9216, %esi
	movl	%ebp, %edi
	movl	$0, %eax
	call	ioctl@PLT
.LVL26:
	.loc 1 68 5 view .LVU74
	leaq	168(%rsp), %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine3@PLT
.LVL27:
	.loc 1 69 5 view .LVU75
	movl	$0, %edx
	movl	$9217, %esi
	movl	%ebp, %edi
	movl	$0, %eax
	call	ioctl@PLT
.LVL28:
	.loc 1 70 5 view .LVU76
	.loc 1 70 17 is_stmt 0 view .LVU77
	call	clock@PLT
.LVL29:
	movq	%rax, %r12
.LVL30:
	.loc 1 71 5 is_stmt 1 view .LVU78
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
.LVL31:
	.loc 1 71 5 is_stmt 0 view .LVU79
	call	printf@PLT
.LVL32:
	.loc 1 72 5 is_stmt 1 view .LVU80
	movq	168(%rsp), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL33:
	.loc 1 73 5 view .LVU81
	.loc 1 73 68 is_stmt 0 view .LVU82
	subq	%r13, %r12
.LVL34:
	.loc 1 73 5 view .LVU83
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL35:
	.loc 1 75 5 is_stmt 1 view .LVU84
	leaq	24(%rsp), %rsi
	movl	$8, %edx
	movl	%ebp, %edi
	call	read@PLT
.LVL36:
	.loc 1 76 5 view .LVU85
	movq	24(%rsp), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL37:
	.loc 1 77 5 view .LVU86
	.loc 1 77 42 is_stmt 0 view .LVU87
	movq	24(%rsp), %rax
	testq	%rax, %rax
	js	.L10
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L11:
	.loc 1 77 5 view .LVU88
	divsd	.LC5(%rip), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL38:
	.loc 1 79 5 is_stmt 1 view .LVU89
	.loc 1 79 10 is_stmt 0 view .LVU90
	movq	$1, 168(%rsp)
	.loc 1 80 5 is_stmt 1 view .LVU91
	.loc 1 80 19 is_stmt 0 view .LVU92
	call	clock@PLT
.LVL39:
	movq	%rax, %r15
.LVL40:
	.loc 1 81 5 is_stmt 1 view .LVU93
	leaq	168(%rsp), %r14
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine4@PLT
.LVL41:
	.loc 1 82 5 view .LVU94
	.loc 1 82 17 is_stmt 0 view .LVU95
	call	clock@PLT
.LVL42:
	movq	%rax, %r12
.LVL43:
	.loc 1 83 5 is_stmt 1 view .LVU96
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
.LVL44:
	.loc 1 83 5 is_stmt 0 view .LVU97
	call	printf@PLT
.LVL45:
	.loc 1 84 5 is_stmt 1 view .LVU98
	movq	168(%rsp), %rsi
	leaq	.LC2(%rip), %r13
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL46:
	.loc 1 85 5 view .LVU99
	.loc 1 85 68 is_stmt 0 view .LVU100
	subq	%r15, %r12
.LVL47:
	.loc 1 85 5 view .LVU101
	pxor	%xmm3, %xmm3
	cvtsi2sdq	%r12, %xmm3
	movq	%xmm3, %r15
.LVL48:
	.loc 1 85 5 view .LVU102
	movapd	%xmm3, %xmm0
	leaq	.LC3(%rip), %r12
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL49:
	.loc 1 86 5 is_stmt 1 view .LVU103
	movq	%r15, %xmm0
	divsd	.LC5(%rip), %xmm0
	leaq	.LC8(%rip), %r15
	movq	%r15, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL50:
	.loc 1 88 5 view .LVU104
	.loc 1 88 10 is_stmt 0 view .LVU105
	movq	$1, 168(%rsp)
	.loc 1 89 5 is_stmt 1 view .LVU106
	.loc 1 89 19 is_stmt 0 view .LVU107
	call	clock@PLT
.LVL51:
	movq	%rax, (%rsp)
.LVL52:
	.loc 1 90 5 is_stmt 1 view .LVU108
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine5@PLT
.LVL53:
	.loc 1 91 5 view .LVU109
	.loc 1 91 17 is_stmt 0 view .LVU110
	call	clock@PLT
.LVL54:
	movq	%rax, 8(%rsp)
.LVL55:
	.loc 1 92 5 is_stmt 1 view .LVU111
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
.LVL56:
	.loc 1 92 5 is_stmt 0 view .LVU112
	call	printf@PLT
.LVL57:
	.loc 1 93 5 is_stmt 1 view .LVU113
	movq	168(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL58:
	.loc 1 94 5 view .LVU114
	.loc 1 94 68 is_stmt 0 view .LVU115
	movq	8(%rsp), %rax
	movq	(%rsp), %rsi
	subq	%rsi, %rax
	.loc 1 94 5 view .LVU116
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm1, (%rsp)
.LVL59:
	.loc 1 94 5 view .LVU117
	movapd	%xmm1, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL60:
	.loc 1 95 5 is_stmt 1 view .LVU118
	movsd	(%rsp), %xmm0
	divsd	.LC5(%rip), %xmm0
	movq	%r15, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL61:
	.loc 1 97 5 view .LVU119
	.loc 1 97 10 is_stmt 0 view .LVU120
	movq	$1, 168(%rsp)
	.loc 1 98 5 is_stmt 1 view .LVU121
	.loc 1 98 19 is_stmt 0 view .LVU122
	call	clock@PLT
.LVL62:
	movq	%rax, (%rsp)
.LVL63:
	.loc 1 99 5 is_stmt 1 view .LVU123
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine6@PLT
.LVL64:
	.loc 1 100 5 view .LVU124
	.loc 1 100 17 is_stmt 0 view .LVU125
	call	clock@PLT
.LVL65:
	movq	%rax, 8(%rsp)
.LVL66:
	.loc 1 101 5 is_stmt 1 view .LVU126
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
.LVL67:
	.loc 1 101 5 is_stmt 0 view .LVU127
	call	printf@PLT
.LVL68:
	.loc 1 102 5 is_stmt 1 view .LVU128
	movq	168(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL69:
	.loc 1 103 5 view .LVU129
	.loc 1 103 68 is_stmt 0 view .LVU130
	movq	8(%rsp), %rax
	movq	(%rsp), %rsi
	subq	%rsi, %rax
	.loc 1 103 5 view .LVU131
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movsd	%xmm2, (%rsp)
.LVL70:
	.loc 1 103 5 view .LVU132
	movapd	%xmm2, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL71:
	.loc 1 104 5 is_stmt 1 view .LVU133
	movsd	(%rsp), %xmm0
	divsd	.LC5(%rip), %xmm0
	movq	%r15, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL72:
	.loc 1 106 5 view .LVU134
	.loc 1 106 10 is_stmt 0 view .LVU135
	movq	$1, 168(%rsp)
	.loc 1 107 5 is_stmt 1 view .LVU136
	.loc 1 107 19 is_stmt 0 view .LVU137
	call	clock@PLT
.LVL73:
	movq	%rax, (%rsp)
.LVL74:
	.loc 1 108 5 is_stmt 1 view .LVU138
	movl	$0, %edx
	movl	$9219, %esi
	movl	%ebp, %edi
	movl	$0, %eax
.LVL75:
	.loc 1 108 5 is_stmt 0 view .LVU139
	call	ioctl@PLT
.LVL76:
	.loc 1 109 5 is_stmt 1 view .LVU140
	movl	$0, %edx
	movl	$9216, %esi
	movl	%ebp, %edi
	movl	$0, %eax
	call	ioctl@PLT
.LVL77:
	.loc 1 110 5 view .LVU141
	movq	%r14, %rdx
	movl	$100000000, %esi
	movq	%rbx, %rdi
	call	combine7@PLT
.LVL78:
	.loc 1 111 5 view .LVU142
	movl	$0, %edx
	movl	$9217, %esi
	movl	%ebp, %edi
	movl	$0, %eax
	call	ioctl@PLT
.LVL79:
	.loc 1 112 5 view .LVU143
	.loc 1 112 17 is_stmt 0 view .LVU144
	call	clock@PLT
.LVL80:
	movq	%rax, %rbx
.LVL81:
	.loc 1 113 5 is_stmt 1 view .LVU145
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
.LVL82:
	.loc 1 113 5 is_stmt 0 view .LVU146
	call	printf@PLT
.LVL83:
	.loc 1 114 5 is_stmt 1 view .LVU147
	movq	168(%rsp), %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL84:
	.loc 1 115 5 view .LVU148
	.loc 1 115 68 is_stmt 0 view .LVU149
	movq	(%rsp), %rax
	subq	%rax, %rbx
.LVL85:
	.loc 1 115 5 view .LVU150
	pxor	%xmm4, %xmm4
	cvtsi2sdq	%rbx, %xmm4
	movq	%xmm4, %rbx
	movapd	%xmm4, %xmm0
	movq	%r12, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL86:
	.loc 1 116 5 is_stmt 1 view .LVU151
	movq	%rbx, %xmm0
	divsd	.LC5(%rip), %xmm0
	movq	%r15, %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL87:
	.loc 1 117 5 view .LVU152
	leaq	24(%rsp), %rsi
	movl	$8, %edx
	movl	%ebp, %edi
	call	read@PLT
.LVL88:
	.loc 1 118 5 view .LVU153
	movq	24(%rsp), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LVL89:
	.loc 1 119 5 view .LVU154
	.loc 1 119 42 is_stmt 0 view .LVU155
	movq	24(%rsp), %rax
	testq	%rax, %rax
	js	.L12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L13:
	.loc 1 119 5 view .LVU156
	divsd	.LC5(%rip), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL90:
	.loc 1 121 5 is_stmt 1 view .LVU157
	movl	%ebp, %edi
	call	close@PLT
.LVL91:
	.loc 1 122 5 view .LVU158
	.loc 1 123 1 is_stmt 0 view .LVU159
	movl	$0, %eax
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL92:
.L10:
	.cfi_restore_state
	.loc 1 77 42 view .LVU160
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L11
.LVL93:
.L12:
	.loc 1 119 42 view .LVU161
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L13
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1100470148
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/asm-generic/int-ll64.h"
	.file 10 "/usr/include/linux/perf_event.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "combine.h"
	.file 15 "/usr/include/x86_64-linux-gnu/sys/ioctl.h"
	.file 16 "/usr/include/string.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x106a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x8
	.long	.LASF10
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x41
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x41
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x72
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x72
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x9a
	.byte	0x19
	.long	0x6b
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x9c
	.byte	0x1b
	.long	0x72
	.uleb128 0x20
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0xc2
	.byte	0x1b
	.long	0x72
	.uleb128 0xb
	.long	0xc8
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x21
	.long	0xc8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.long	0xa9
	.uleb128 0xb
	.long	0xcf
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.byte	0x11
	.long	0x9d
	.uleb128 0x22
	.long	.LASF92
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x25b
	.uleb128 0x4
	.long	.LASF20
	.byte	0x33
	.byte	0x7
	.long	0x6b
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x36
	.byte	0x9
	.long	0xc3
	.byte	0x8
	.uleb128 0x4
	.long	.LASF22
	.byte	0x37
	.byte	0x9
	.long	0xc3
	.byte	0x10
	.uleb128 0x4
	.long	.LASF23
	.byte	0x38
	.byte	0x9
	.long	0xc3
	.byte	0x18
	.uleb128 0x4
	.long	.LASF24
	.byte	0x39
	.byte	0x9
	.long	0xc3
	.byte	0x20
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3a
	.byte	0x9
	.long	0xc3
	.byte	0x28
	.uleb128 0x4
	.long	.LASF26
	.byte	0x3b
	.byte	0x9
	.long	0xc3
	.byte	0x30
	.uleb128 0x4
	.long	.LASF27
	.byte	0x3c
	.byte	0x9
	.long	0xc3
	.byte	0x38
	.uleb128 0x4
	.long	.LASF28
	.byte	0x3d
	.byte	0x9
	.long	0xc3
	.byte	0x40
	.uleb128 0x4
	.long	.LASF29
	.byte	0x40
	.byte	0x9
	.long	0xc3
	.byte	0x48
	.uleb128 0x4
	.long	.LASF30
	.byte	0x41
	.byte	0x9
	.long	0xc3
	.byte	0x50
	.uleb128 0x4
	.long	.LASF31
	.byte	0x42
	.byte	0x9
	.long	0xc3
	.byte	0x58
	.uleb128 0x4
	.long	.LASF32
	.byte	0x44
	.byte	0x16
	.long	0x274
	.byte	0x60
	.uleb128 0x4
	.long	.LASF33
	.byte	0x46
	.byte	0x14
	.long	0x279
	.byte	0x68
	.uleb128 0x4
	.long	.LASF34
	.byte	0x48
	.byte	0x7
	.long	0x6b
	.byte	0x70
	.uleb128 0x4
	.long	.LASF35
	.byte	0x49
	.byte	0x7
	.long	0x6b
	.byte	0x74
	.uleb128 0x4
	.long	.LASF36
	.byte	0x4a
	.byte	0xb
	.long	0x85
	.byte	0x78
	.uleb128 0x4
	.long	.LASF37
	.byte	0x4d
	.byte	0x12
	.long	0x4f
	.byte	0x80
	.uleb128 0x4
	.long	.LASF38
	.byte	0x4e
	.byte	0xf
	.long	0x5d
	.byte	0x82
	.uleb128 0x4
	.long	.LASF39
	.byte	0x4f
	.byte	0x8
	.long	0x27e
	.byte	0x83
	.uleb128 0x4
	.long	.LASF40
	.byte	0x51
	.byte	0xf
	.long	0x28e
	.byte	0x88
	.uleb128 0x4
	.long	.LASF41
	.byte	0x59
	.byte	0xd
	.long	0x91
	.byte	0x90
	.uleb128 0x4
	.long	.LASF42
	.byte	0x5b
	.byte	0x17
	.long	0x298
	.byte	0x98
	.uleb128 0x4
	.long	.LASF43
	.byte	0x5c
	.byte	0x19
	.long	0x2a2
	.byte	0xa0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x5d
	.byte	0x14
	.long	0x279
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF45
	.byte	0x5e
	.byte	0x9
	.long	0xb5
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x5f
	.byte	0xa
	.long	0x35
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF47
	.byte	0x60
	.byte	0x7
	.long	0x6b
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x62
	.byte	0x8
	.long	0x2a7
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0xf1
	.uleb128 0x23
	.long	.LASF175
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF50
	.uleb128 0xb
	.long	0x26f
	.uleb128 0xb
	.long	0xf1
	.uleb128 0x16
	.long	0xc8
	.long	0x28e
	.uleb128 0x17
	.long	0x41
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x267
	.uleb128 0x11
	.long	.LASF51
	.uleb128 0xb
	.long	0x293
	.uleb128 0x11
	.long	.LASF52
	.uleb128 0xb
	.long	0x29d
	.uleb128 0x16
	.long	0xc8
	.long	0x2b7
	.uleb128 0x17
	.long	0x41
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x8
	.byte	0x4d
	.byte	0x13
	.long	0xb7
	.uleb128 0xb
	.long	0x25b
	.uleb128 0x24
	.long	.LASF163
	.byte	0x8
	.byte	0x91
	.byte	0xe
	.long	0x2c3
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x18
	.byte	0x18
	.long	0x4f
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x1a
	.byte	0x18
	.long	0x6b
	.uleb128 0x8
	.long	.LASF58
	.byte	0x9
	.byte	0x1b
	.byte	0x16
	.long	0x56
	.uleb128 0x8
	.long	.LASF59
	.byte	0x9
	.byte	0x1f
	.byte	0x2a
	.long	0x2db
	.uleb128 0x18
	.long	.LASF67
	.long	0x56
	.byte	0x1d
	.long	0x34b
	.uleb128 0x6
	.long	.LASF60
	.byte	0
	.uleb128 0x6
	.long	.LASF61
	.byte	0x1
	.uleb128 0x6
	.long	.LASF62
	.byte	0x2
	.uleb128 0x6
	.long	.LASF63
	.byte	0x3
	.uleb128 0x6
	.long	.LASF64
	.byte	0x4
	.uleb128 0x6
	.long	.LASF65
	.byte	0x5
	.uleb128 0x6
	.long	.LASF66
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.long	.LASF68
	.long	0x56
	.byte	0x3c
	.long	0x39c
	.uleb128 0x6
	.long	.LASF69
	.byte	0
	.uleb128 0x6
	.long	.LASF70
	.byte	0x1
	.uleb128 0x6
	.long	.LASF71
	.byte	0x2
	.uleb128 0x6
	.long	.LASF72
	.byte	0x3
	.uleb128 0x6
	.long	.LASF73
	.byte	0x4
	.uleb128 0x6
	.long	.LASF74
	.byte	0x5
	.uleb128 0x6
	.long	.LASF75
	.byte	0x6
	.uleb128 0x6
	.long	.LASF76
	.byte	0x7
	.uleb128 0x6
	.long	.LASF77
	.byte	0x8
	.uleb128 0x6
	.long	.LASF78
	.byte	0x9
	.uleb128 0x6
	.long	.LASF79
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.value	0x191
	.long	0x3bb
	.uleb128 0x9
	.long	.LASF80
	.value	0x192
	.long	0x306
	.uleb128 0x9
	.long	.LASF81
	.value	0x193
	.long	0x306
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.value	0x1cc
	.long	0x3da
	.uleb128 0x9
	.long	.LASF82
	.value	0x1cd
	.long	0x2fa
	.uleb128 0x9
	.long	.LASF83
	.value	0x1ce
	.long	0x2fa
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.value	0x1d2
	.long	0x40f
	.uleb128 0x9
	.long	.LASF84
	.value	0x1d3
	.long	0x306
	.uleb128 0x9
	.long	.LASF85
	.value	0x1d4
	.long	0x306
	.uleb128 0x9
	.long	.LASF86
	.value	0x1d5
	.long	0x306
	.uleb128 0x9
	.long	.LASF87
	.value	0x1d6
	.long	0x306
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.value	0x1d8
	.long	0x444
	.uleb128 0x9
	.long	.LASF88
	.value	0x1d9
	.long	0x306
	.uleb128 0x9
	.long	.LASF89
	.value	0x1da
	.long	0x306
	.uleb128 0x9
	.long	.LASF90
	.value	0x1db
	.long	0x306
	.uleb128 0x9
	.long	.LASF91
	.value	0x1dc
	.long	0x306
	.byte	0
	.uleb128 0x25
	.long	.LASF93
	.byte	0x80
	.byte	0xa
	.value	0x180
	.byte	0x8
	.long	0x782
	.uleb128 0x7
	.long	.LASF94
	.value	0x185
	.byte	0xa
	.long	0x2fa
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.value	0x18a
	.byte	0xa
	.long	0x2fa
	.byte	0x4
	.uleb128 0x7
	.long	.LASF96
	.value	0x18f
	.byte	0xa
	.long	0x306
	.byte	0x8
	.uleb128 0x10
	.long	0x39c
	.byte	0x10
	.uleb128 0x7
	.long	.LASF97
	.value	0x196
	.byte	0xa
	.long	0x306
	.byte	0x18
	.uleb128 0x7
	.long	.LASF98
	.value	0x197
	.byte	0xa
	.long	0x306
	.byte	0x20
	.uleb128 0x3
	.long	.LASF99
	.value	0x199
	.byte	0xa
	.long	0x306
	.byte	0x1
	.value	0x140
	.uleb128 0x3
	.long	.LASF100
	.value	0x19a
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x141
	.uleb128 0x3
	.long	.LASF101
	.value	0x19b
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x142
	.uleb128 0x3
	.long	.LASF102
	.value	0x19c
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x143
	.uleb128 0x3
	.long	.LASF103
	.value	0x19d
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x144
	.uleb128 0x3
	.long	.LASF104
	.value	0x19e
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x145
	.uleb128 0x3
	.long	.LASF105
	.value	0x19f
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x146
	.uleb128 0x3
	.long	.LASF106
	.value	0x1a0
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x147
	.uleb128 0x3
	.long	.LASF107
	.value	0x1a1
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x148
	.uleb128 0x3
	.long	.LASF108
	.value	0x1a2
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x149
	.uleb128 0x3
	.long	.LASF109
	.value	0x1a3
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x14a
	.uleb128 0x3
	.long	.LASF110
	.value	0x1a4
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x14b
	.uleb128 0x3
	.long	.LASF111
	.value	0x1a5
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x14c
	.uleb128 0x3
	.long	.LASF112
	.value	0x1a6
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x14d
	.uleb128 0x3
	.long	.LASF113
	.value	0x1a7
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x14e
	.uleb128 0x3
	.long	.LASF114
	.value	0x1b2
	.byte	0x5
	.long	0x306
	.byte	0x2
	.value	0x14f
	.uleb128 0x3
	.long	.LASF115
	.value	0x1b3
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x151
	.uleb128 0x3
	.long	.LASF116
	.value	0x1b4
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x152
	.uleb128 0x3
	.long	.LASF117
	.value	0x1b6
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x153
	.uleb128 0x3
	.long	.LASF118
	.value	0x1b7
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x154
	.uleb128 0x3
	.long	.LASF119
	.value	0x1b9
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x155
	.uleb128 0x3
	.long	.LASF120
	.value	0x1ba
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x156
	.uleb128 0x3
	.long	.LASF121
	.value	0x1bb
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x157
	.uleb128 0x3
	.long	.LASF122
	.value	0x1bc
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x158
	.uleb128 0x3
	.long	.LASF123
	.value	0x1bd
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x159
	.uleb128 0x3
	.long	.LASF124
	.value	0x1be
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15a
	.uleb128 0x3
	.long	.LASF125
	.value	0x1bf
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15b
	.uleb128 0x3
	.long	.LASF126
	.value	0x1c0
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15c
	.uleb128 0x3
	.long	.LASF127
	.value	0x1c1
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15d
	.uleb128 0x3
	.long	.LASF128
	.value	0x1c2
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15e
	.uleb128 0x3
	.long	.LASF129
	.value	0x1c3
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x15f
	.uleb128 0x3
	.long	.LASF130
	.value	0x1c4
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x160
	.uleb128 0x3
	.long	.LASF131
	.value	0x1c5
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x161
	.uleb128 0x3
	.long	.LASF132
	.value	0x1c6
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x162
	.uleb128 0x3
	.long	.LASF133
	.value	0x1c7
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x163
	.uleb128 0x3
	.long	.LASF134
	.value	0x1c8
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x164
	.uleb128 0x3
	.long	.LASF135
	.value	0x1c9
	.byte	0x5
	.long	0x306
	.byte	0x1
	.value	0x165
	.uleb128 0x3
	.long	.LASF136
	.value	0x1ca
	.byte	0x5
	.long	0x306
	.byte	0x1a
	.value	0x166
	.uleb128 0x10
	.long	0x3bb
	.byte	0x30
	.uleb128 0x7
	.long	.LASF137
	.value	0x1d1
	.byte	0xa
	.long	0x2fa
	.byte	0x34
	.uleb128 0x10
	.long	0x3da
	.byte	0x38
	.uleb128 0x10
	.long	0x40f
	.byte	0x40
	.uleb128 0x7
	.long	.LASF138
	.value	0x1de
	.byte	0x8
	.long	0x306
	.byte	0x48
	.uleb128 0x7
	.long	.LASF139
	.value	0x1e4
	.byte	0x8
	.long	0x306
	.byte	0x50
	.uleb128 0x7
	.long	.LASF140
	.value	0x1e9
	.byte	0x8
	.long	0x2fa
	.byte	0x58
	.uleb128 0x7
	.long	.LASF141
	.value	0x1eb
	.byte	0x8
	.long	0x2ee
	.byte	0x5c
	.uleb128 0x7
	.long	.LASF142
	.value	0x1f4
	.byte	0x8
	.long	0x306
	.byte	0x60
	.uleb128 0x7
	.long	.LASF143
	.value	0x1f9
	.byte	0x8
	.long	0x2fa
	.byte	0x68
	.uleb128 0x7
	.long	.LASF144
	.value	0x1fa
	.byte	0x8
	.long	0x2e2
	.byte	0x6c
	.uleb128 0x7
	.long	.LASF145
	.value	0x1fb
	.byte	0x8
	.long	0x2e2
	.byte	0x6e
	.uleb128 0x7
	.long	.LASF146
	.value	0x1fc
	.byte	0x8
	.long	0x2fa
	.byte	0x70
	.uleb128 0x7
	.long	.LASF147
	.value	0x1fd
	.byte	0x8
	.long	0x2fa
	.byte	0x74
	.uleb128 0x7
	.long	.LASF148
	.value	0x205
	.byte	0x8
	.long	0x306
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	.LASF149
	.byte	0xb
	.byte	0x1b
	.byte	0x14
	.long	0x79
	.uleb128 0x26
	.long	.LASF150
	.byte	0xc
	.value	0x27d
	.byte	0xd
	.long	0x7a1
	.uleb128 0x5
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF151
	.byte	0xd
	.value	0x443
	.byte	0x11
	.long	0x72
	.long	0x7b9
	.uleb128 0x5
	.long	0x72
	.uleb128 0x12
	.byte	0
	.uleb128 0xd
	.long	.LASF152
	.byte	0xd
	.value	0x166
	.byte	0xc
	.long	0x6b
	.long	0x7d0
	.uleb128 0x5
	.long	0x6b
	.byte	0
	.uleb128 0xe
	.long	.LASF153
	.byte	0x8
	.long	0x7ea
	.uleb128 0x5
	.long	0x7ea
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x7ef
	.byte	0
	.uleb128 0xb
	.long	0x6b
	.uleb128 0xb
	.long	0x72
	.uleb128 0xe
	.long	.LASF154
	.byte	0x7
	.long	0x80e
	.uleb128 0x5
	.long	0x7ea
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x7ef
	.byte	0
	.uleb128 0xe
	.long	.LASF155
	.byte	0x6
	.long	0x828
	.uleb128 0x5
	.long	0x7ea
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x7ef
	.byte	0
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.long	0x842
	.uleb128 0x5
	.long	0x7ea
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x7ef
	.byte	0
	.uleb128 0xd
	.long	.LASF157
	.byte	0xd
	.value	0x173
	.byte	0x10
	.long	0x2b7
	.long	0x863
	.uleb128 0x5
	.long	0x6b
	.uleb128 0x5
	.long	0xb5
	.uleb128 0x5
	.long	0x35
	.byte	0
	.uleb128 0xd
	.long	.LASF158
	.byte	0x8
	.value	0x164
	.byte	0xc
	.long	0x6b
	.long	0x87b
	.uleb128 0x5
	.long	0xe0
	.uleb128 0x12
	.byte	0
	.uleb128 0xe
	.long	.LASF159
	.byte	0x4
	.long	0x895
	.uleb128 0x5
	.long	0x7ea
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x7ef
	.byte	0
	.uleb128 0x19
	.long	.LASF160
	.byte	0xf
	.byte	0x2a
	.byte	0xc
	.long	0x6b
	.long	0x8b1
	.uleb128 0x5
	.long	0x6b
	.uleb128 0x5
	.long	0x41
	.uleb128 0x12
	.byte	0
	.uleb128 0x27
	.long	.LASF176
	.byte	0x5
	.byte	0x48
	.byte	0x10
	.long	0xd4
	.uleb128 0x19
	.long	.LASF161
	.byte	0x10
	.byte	0x3d
	.byte	0xe
	.long	0xb5
	.long	0x8dd
	.uleb128 0x5
	.long	0xb5
	.uleb128 0x5
	.long	0x6b
	.uleb128 0x5
	.long	0x35
	.byte	0
	.uleb128 0xd
	.long	.LASF162
	.byte	0xc
	.value	0x229
	.byte	0xe
	.long	0xb5
	.long	0x8f4
	.uleb128 0x5
	.long	0x35
	.byte	0
	.uleb128 0x28
	.long	.LASF177
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.long	0x6b
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xf54
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x22
	.long	0x72
	.long	0x5f5e100
	.uleb128 0x13
	.long	.LASF164
	.byte	0x23
	.byte	0xa
	.long	0x7ea
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x24
	.byte	0xa
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"i"
	.byte	0x25
	.long	0x6b
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x13
	.long	.LASF167
	.byte	0x26
	.byte	0xd
	.long	0xd4
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x13
	.long	.LASF168
	.byte	0x26
	.byte	0x1a
	.long	0xd4
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1a
	.long	.LASF169
	.byte	0x27
	.long	0x72
	.long	0x5f5e0fe
	.uleb128 0x29
	.string	"pe"
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.long	0x444
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.string	"fd"
	.byte	0x2a
	.long	0x6b
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x33
	.byte	0xe
	.long	0x782
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2
	.quad	.LVL10
	.long	0x8dd
	.long	0x9d4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x17d78400
	.byte	0
	.uleb128 0x2
	.quad	.LVL14
	.long	0xf54
	.long	0xa03
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.quad	.LVL22
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL25
	.long	0x895
	.long	0xa34
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2403
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL26
	.long	0x895
	.long	0xa58
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2400
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL27
	.long	0x87b
	.long	0xa80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2
	.quad	.LVL28
	.long	0x895
	.long	0xaa4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2401
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.quad	.LVL29
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL32
	.long	0x863
	.long	0xad0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x2
	.quad	.LVL33
	.long	0x863
	.long	0xaef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x2
	.quad	.LVL35
	.long	0x863
	.long	0xb0e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x2
	.quad	.LVL36
	.long	0x842
	.long	0xb32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.quad	.LVL37
	.long	0x863
	.long	0xb51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x2
	.quad	.LVL38
	.long	0x863
	.long	0xb70
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0xc
	.quad	.LVL39
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL41
	.long	0x828
	.long	0xba4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL42
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL45
	.long	0x863
	.long	0xbd0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x2
	.quad	.LVL46
	.long	0x863
	.long	0xbe8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL49
	.long	0x863
	.long	0xc07
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2
	.quad	.LVL50
	.long	0x863
	.long	0xc1f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL51
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL53
	.long	0x80e
	.long	0xc53
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL54
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL57
	.long	0x863
	.long	0xc7f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x2
	.quad	.LVL58
	.long	0x863
	.long	0xc97
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL60
	.long	0x863
	.long	0xcb9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -240
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2
	.quad	.LVL61
	.long	0x863
	.long	0xce7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x12
	.byte	0x91
	.sleb128 -240
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0
	.long	0x4197d784
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.quad	.LVL62
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL64
	.long	0x7f4
	.long	0xd1b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL65
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL68
	.long	0x863
	.long	0xd47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x2
	.quad	.LVL69
	.long	0x863
	.long	0xd5f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL71
	.long	0x863
	.long	0xd81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -240
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2
	.quad	.LVL72
	.long	0x863
	.long	0xdaf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x12
	.byte	0x91
	.sleb128 -240
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0
	.long	0x4197d784
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.quad	.LVL73
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL76
	.long	0x895
	.long	0xde0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2403
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL77
	.long	0x895
	.long	0xe04
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2400
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL78
	.long	0x7d0
	.long	0xe2b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0x5f5e100
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL79
	.long	0x895
	.long	0xe4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x2401
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.quad	.LVL80
	.long	0x8b1
	.uleb128 0x2
	.quad	.LVL83
	.long	0x863
	.long	0xe7b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x2
	.quad	.LVL84
	.long	0x863
	.long	0xe93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL86
	.long	0x863
	.long	0xeb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2
	.quad	.LVL87
	.long	0x863
	.long	0xedd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xf
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0
	.long	0x4197d784
	.byte	0x1b
	.byte	0
	.uleb128 0x2
	.quad	.LVL88
	.long	0x842
	.long	0xf01
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.quad	.LVL89
	.long	0x863
	.long	0xf20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x2
	.quad	.LVL90
	.long	0x863
	.long	0xf3f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1c
	.quad	.LVL91
	.long	0x7b9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF178
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.long	0x72
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x105d
	.uleb128 0x15
	.long	.LASF171
	.byte	0x10
	.byte	0x21
	.long	0x105d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1d
	.string	"pid"
	.byte	0xf
	.long	0xe5
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1d
	.string	"cpu"
	.byte	0x18
	.long	0x6b
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x15
	.long	.LASF172
	.byte	0x11
	.byte	0x21
	.long	0x6b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x15
	.long	.LASF173
	.byte	0x12
	.byte	0x17
	.long	0x41
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x14
	.string	"fd"
	.byte	0x15
	.long	0x6b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2
	.quad	.LVL6
	.long	0x7a1
	.long	0x1020
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x12a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.quad	.LVL7
	.long	0x1062
	.long	0x1049
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x1c
	.quad	.LVL8
	.long	0x78e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x444
	.uleb128 0x2b
	.long	.LASF179
	.long	.LASF180
	.byte	0x11
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS6:
	.uleb128 .LVU21
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU145
	.uleb128 .LVU160
	.uleb128 .LVU161
.LLST6:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU70
.LLST7:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 -3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU71
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU102
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU117
	.uleb128 .LVU123
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU132
	.uleb128 .LVU138
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LVL53-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL53-1-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL64-1-.Ltext0
	.uleb128 .LVL70-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
.LVUS9:
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU83
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU101
	.uleb128 .LVU111
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU150
.LLST9:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 .LVU45
	.uleb128 .LVU47
.LLST10:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL6-1-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU10
	.uleb128 .LVU16
.LLST5:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF158:
	.string	"printf"
.LASF12:
	.string	"__off_t"
.LASF170:
	.string	"count"
.LASF167:
	.string	"start_clock"
.LASF21:
	.string	"_IO_read_ptr"
.LASF162:
	.string	"malloc"
.LASF33:
	.string	"_chain"
.LASF174:
	.string	"GNU C17 12.2.0 -mtune=generic -march=x86-64 -g -Og -fasynchronous-unwind-tables"
.LASF115:
	.string	"mmap_data"
.LASF79:
	.string	"PERF_COUNT_HW_MAX"
.LASF10:
	.string	"size_t"
.LASF159:
	.string	"combine3"
.LASF142:
	.string	"sample_regs_intr"
.LASF39:
	.string	"_shortbuf"
.LASF102:
	.string	"exclusive"
.LASF152:
	.string	"close"
.LASF53:
	.string	"ssize_t"
.LASF127:
	.string	"ksymbol"
.LASF108:
	.string	"comm"
.LASF94:
	.string	"type"
.LASF77:
	.string	"PERF_COUNT_HW_STALLED_CYCLES_BACKEND"
.LASF27:
	.string	"_IO_buf_base"
.LASF98:
	.string	"read_format"
.LASF113:
	.string	"watermark"
.LASF131:
	.string	"text_poke"
.LASF72:
	.string	"PERF_COUNT_HW_CACHE_MISSES"
.LASF55:
	.string	"long long unsigned int"
.LASF172:
	.string	"group_fd"
.LASF56:
	.string	"__u16"
.LASF169:
	.string	"limit"
.LASF73:
	.string	"PERF_COUNT_HW_BRANCH_INSTRUCTIONS"
.LASF106:
	.string	"exclude_idle"
.LASF74:
	.string	"PERF_COUNT_HW_BRANCH_MISSES"
.LASF42:
	.string	"_codecvt"
.LASF83:
	.string	"wakeup_watermark"
.LASF54:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF180:
	.string	"__builtin_fwrite"
.LASF34:
	.string	"_fileno"
.LASF82:
	.string	"wakeup_events"
.LASF22:
	.string	"_IO_read_end"
.LASF171:
	.string	"hw_event"
.LASF103:
	.string	"exclude_user"
.LASF9:
	.string	"long int"
.LASF135:
	.string	"sigtrap"
.LASF20:
	.string	"_flags"
.LASF63:
	.string	"PERF_TYPE_HW_CACHE"
.LASF16:
	.string	"__ssize_t"
.LASF28:
	.string	"_IO_buf_end"
.LASF37:
	.string	"_cur_column"
.LASF51:
	.string	"_IO_codecvt"
.LASF120:
	.string	"exclude_callchain_user"
.LASF2:
	.string	"double"
.LASF67:
	.string	"perf_type_id"
.LASF62:
	.string	"PERF_TYPE_TRACEPOINT"
.LASF41:
	.string	"_offset"
.LASF148:
	.string	"sig_data"
.LASF121:
	.string	"mmap2"
.LASF130:
	.string	"cgroup"
.LASF87:
	.string	"config1"
.LASF91:
	.string	"config2"
.LASF18:
	.string	"clock_t"
.LASF155:
	.string	"combine5"
.LASF119:
	.string	"exclude_callchain_kernel"
.LASF138:
	.string	"branch_sample_type"
.LASF66:
	.string	"PERF_TYPE_MAX"
.LASF50:
	.string	"_IO_marker"
.LASF136:
	.string	"__reserved_1"
.LASF145:
	.string	"__reserved_2"
.LASF6:
	.string	"unsigned int"
.LASF109:
	.string	"freq"
.LASF88:
	.string	"bp_len"
.LASF45:
	.string	"_freeres_buf"
.LASF99:
	.string	"disabled"
.LASF100:
	.string	"inherit"
.LASF97:
	.string	"sample_type"
.LASF3:
	.string	"long unsigned int"
.LASF58:
	.string	"__u32"
.LASF25:
	.string	"_IO_write_ptr"
.LASF168:
	.string	"end_clock"
.LASF60:
	.string	"PERF_TYPE_HARDWARE"
.LASF105:
	.string	"exclude_hv"
.LASF164:
	.string	"data"
.LASF95:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF64:
	.string	"PERF_TYPE_RAW"
.LASF90:
	.string	"probe_offset"
.LASF29:
	.string	"_IO_save_base"
.LASF124:
	.string	"context_switch"
.LASF15:
	.string	"__clock_t"
.LASF40:
	.string	"_lock"
.LASF137:
	.string	"bp_type"
.LASF35:
	.string	"_flags2"
.LASF47:
	.string	"_mode"
.LASF69:
	.string	"PERF_COUNT_HW_CPU_CYCLES"
.LASF144:
	.string	"sample_max_stack"
.LASF43:
	.string	"_wide_data"
.LASF133:
	.string	"inherit_thread"
.LASF140:
	.string	"sample_stack_user"
.LASF122:
	.string	"comm_exec"
.LASF134:
	.string	"remove_on_exec"
.LASF85:
	.string	"kprobe_func"
.LASF104:
	.string	"exclude_kernel"
.LASF26:
	.string	"_IO_write_end"
.LASF149:
	.string	"uint64_t"
.LASF61:
	.string	"PERF_TYPE_SOFTWARE"
.LASF80:
	.string	"sample_period"
.LASF175:
	.string	"_IO_lock_t"
.LASF92:
	.string	"_IO_FILE"
.LASF141:
	.string	"clockid"
.LASF132:
	.string	"build_id"
.LASF11:
	.string	"__uint64_t"
.LASF36:
	.string	"_old_offset"
.LASF78:
	.string	"PERF_COUNT_HW_REF_CPU_CYCLES"
.LASF166:
	.string	"dest"
.LASF32:
	.string	"_markers"
.LASF147:
	.string	"__reserved_3"
.LASF116:
	.string	"sample_id_all"
.LASF151:
	.string	"syscall"
.LASF84:
	.string	"bp_addr"
.LASF4:
	.string	"unsigned char"
.LASF71:
	.string	"PERF_COUNT_HW_CACHE_REFERENCES"
.LASF86:
	.string	"uprobe_path"
.LASF93:
	.string	"perf_event_attr"
.LASF126:
	.string	"namespaces"
.LASF14:
	.string	"__pid_t"
.LASF125:
	.string	"write_backward"
.LASF8:
	.string	"short int"
.LASF38:
	.string	"_vtable_offset"
.LASF165:
	.string	"data_len"
.LASF107:
	.string	"mmap"
.LASF49:
	.string	"FILE"
.LASF150:
	.string	"exit"
.LASF70:
	.string	"PERF_COUNT_HW_INSTRUCTIONS"
.LASF57:
	.string	"__s32"
.LASF123:
	.string	"use_clockid"
.LASF118:
	.string	"exclude_guest"
.LASF81:
	.string	"sample_freq"
.LASF143:
	.string	"aux_watermark"
.LASF59:
	.string	"__u64"
.LASF17:
	.string	"char"
.LASF96:
	.string	"config"
.LASF76:
	.string	"PERF_COUNT_HW_STALLED_CYCLES_FRONTEND"
.LASF128:
	.string	"bpf_event"
.LASF68:
	.string	"perf_hw_id"
.LASF101:
	.string	"pinned"
.LASF156:
	.string	"combine4"
.LASF160:
	.string	"ioctl"
.LASF154:
	.string	"combine6"
.LASF153:
	.string	"combine7"
.LASF13:
	.string	"__off64_t"
.LASF112:
	.string	"task"
.LASF23:
	.string	"_IO_read_base"
.LASF31:
	.string	"_IO_save_end"
.LASF139:
	.string	"sample_regs_user"
.LASF89:
	.string	"kprobe_addr"
.LASF46:
	.string	"__pad5"
.LASF178:
	.string	"perf_event_open"
.LASF114:
	.string	"precise_ip"
.LASF48:
	.string	"_unused2"
.LASF163:
	.string	"stderr"
.LASF161:
	.string	"memset"
.LASF65:
	.string	"PERF_TYPE_BREAKPOINT"
.LASF129:
	.string	"aux_output"
.LASF30:
	.string	"_IO_backup_base"
.LASF173:
	.string	"flags"
.LASF75:
	.string	"PERF_COUNT_HW_BUS_CYCLES"
.LASF157:
	.string	"read"
.LASF179:
	.string	"fwrite"
.LASF19:
	.string	"pid_t"
.LASF44:
	.string	"_freeres_list"
.LASF52:
	.string	"_IO_wide_data"
.LASF146:
	.string	"aux_sample_size"
.LASF176:
	.string	"clock"
.LASF177:
	.string	"main"
.LASF24:
	.string	"_IO_write_base"
.LASF110:
	.string	"inherit_stat"
.LASF117:
	.string	"exclude_host"
.LASF111:
	.string	"enable_on_exec"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"main.c"
.LASF1:
	.string	"/home/ghost/experiments/comp-sys-labs/compiler-optimizations"
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
