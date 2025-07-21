	.file	"combine.c"
	.text
.Ltext0:
	.file 0 "/home/ghost/experiments/comp-sys-labs/compiler-optimizations" "combine.c"
	.globl	combine3
	.type	combine3, @function
combine3:
.LVL0:
.LFB0:
	.file 1 "combine.c"
	.loc 1 3 54 view -0
	.cfi_startproc
	.loc 1 5 5 view .LVU1
.LBB2:
	.loc 1 5 10 view .LVU2
	.loc 1 5 15 is_stmt 0 view .LVU3
	movl	$0, %eax
	.loc 1 5 5 view .LVU4
	jmp	.L2
.LVL1:
.L3:
	.loc 1 6 9 is_stmt 1 discriminator 3 view .LVU5
	.loc 1 6 29 is_stmt 0 discriminator 3 view .LVU6
	movslq	(%rdi,%rax,4), %rcx
	.loc 1 6 15 discriminator 3 view .LVU7
	addq	%rcx, (%rdx)
	.loc 1 5 37 is_stmt 1 discriminator 3 view .LVU8
	addq	$1, %rax
.LVL2:
.L2:
	.loc 1 5 24 discriminator 1 view .LVU9
	cmpq	%rsi, %rax
	jl	.L3
.LBE2:
	.loc 1 8 1 is_stmt 0 view .LVU10
	ret
	.cfi_endproc
.LFE0:
	.size	combine3, .-combine3
	.globl	combine4
	.type	combine4, @function
combine4:
.LVL3:
.LFB1:
	.loc 1 11 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 13 5 view .LVU12
	.loc 1 13 10 is_stmt 0 view .LVU13
	movq	(%rdx), %rcx
.LVL4:
	.loc 1 14 5 is_stmt 1 view .LVU14
.LBB3:
	.loc 1 14 10 view .LVU15
	.loc 1 14 15 is_stmt 0 view .LVU16
	movl	$0, %eax
	.loc 1 14 5 view .LVU17
	jmp	.L5
.LVL5:
.L6:
	.loc 1 15 9 is_stmt 1 discriminator 3 view .LVU18
	.loc 1 15 31 is_stmt 0 discriminator 3 view .LVU19
	movslq	(%rdi,%rax,4), %r8
	.loc 1 15 16 discriminator 3 view .LVU20
	addq	%r8, %rcx
.LVL6:
	.loc 1 14 37 is_stmt 1 discriminator 3 view .LVU21
	addq	$1, %rax
.LVL7:
.L5:
	.loc 1 14 24 discriminator 1 view .LVU22
	cmpq	%rsi, %rax
	jl	.L6
	.loc 1 14 24 is_stmt 0 discriminator 1 view .LVU23
.LBE3:
	.loc 1 17 5 is_stmt 1 view .LVU24
	.loc 1 17 11 is_stmt 0 view .LVU25
	movq	%rcx, (%rdx)
	.loc 1 18 1 view .LVU26
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.globl	combine5
	.type	combine5, @function
combine5:
.LVL8:
.LFB2:
	.loc 1 21 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 23 5 view .LVU28
	.loc 1 23 10 is_stmt 0 view .LVU29
	movq	(%rdx), %rcx
.LVL9:
	.loc 1 24 5 is_stmt 1 view .LVU30
	.loc 1 25 5 view .LVU31
	.loc 1 25 10 is_stmt 0 view .LVU32
	leaq	-1(%rsi), %r10
.LVL10:
	.loc 1 27 5 is_stmt 1 view .LVU33
	.loc 1 27 12 is_stmt 0 view .LVU34
	movl	$0, %eax
	.loc 1 27 5 view .LVU35
	jmp	.L8
.LVL11:
.L9:
	.loc 1 28 9 is_stmt 1 discriminator 3 view .LVU36
	.loc 1 28 22 is_stmt 0 discriminator 3 view .LVU37
	movslq	(%rdi,%rax,4), %r8
	.loc 1 28 42 discriminator 3 view .LVU38
	movslq	4(%rdi,%rax,4), %r9
	.loc 1 28 36 discriminator 3 view .LVU39
	addq	%r9, %rcx
.LVL12:
	.loc 1 28 16 discriminator 3 view .LVU40
	addq	%r8, %rcx
.LVL13:
	.loc 1 27 29 is_stmt 1 discriminator 3 view .LVU41
	addq	$2, %rax
.LVL14:
.L8:
	.loc 1 27 19 discriminator 1 view .LVU42
	cmpq	%r10, %rax
	jl	.L9
.L10:
	.loc 1 31 14 discriminator 1 view .LVU43
	cmpq	%rsi, %rax
	jl	.L11
	.loc 1 35 5 view .LVU44
	.loc 1 35 11 is_stmt 0 view .LVU45
	movq	%rcx, (%rdx)
	.loc 1 36 1 view .LVU46
	ret
.L11:
	.loc 1 32 9 is_stmt 1 discriminator 2 view .LVU47
	.loc 1 32 31 is_stmt 0 discriminator 2 view .LVU48
	movslq	(%rdi,%rax,4), %r8
	.loc 1 32 16 discriminator 2 view .LVU49
	addq	%r8, %rcx
.LVL15:
	.loc 1 31 27 is_stmt 1 discriminator 2 view .LVU50
	addq	$1, %rax
.LVL16:
	.loc 1 31 27 is_stmt 0 discriminator 2 view .LVU51
	jmp	.L10
	.cfi_endproc
.LFE2:
	.size	combine5, .-combine5
	.globl	combine6
	.type	combine6, @function
combine6:
.LVL17:
.LFB3:
	.loc 1 39 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 41 5 view .LVU53
	.loc 1 41 10 is_stmt 0 view .LVU54
	movq	(%rdx), %rcx
.LVL18:
	.loc 1 42 5 is_stmt 1 view .LVU55
	.loc 1 43 5 view .LVU56
	.loc 1 44 5 view .LVU57
	.loc 1 44 10 is_stmt 0 view .LVU58
	leaq	-1(%rsi), %r10
.LVL19:
	.loc 1 46 5 is_stmt 1 view .LVU59
	.loc 1 42 10 is_stmt 0 view .LVU60
	movq	%rcx, %r8
	.loc 1 46 12 view .LVU61
	movl	$0, %eax
	.loc 1 46 5 view .LVU62
	jmp	.L13
.LVL20:
.L14:
	.loc 1 47 9 is_stmt 1 discriminator 3 view .LVU63
	.loc 1 47 33 is_stmt 0 discriminator 3 view .LVU64
	movslq	(%rdi,%rax,4), %r9
	.loc 1 47 17 discriminator 3 view .LVU65
	addq	%r9, %rcx
.LVL21:
	.loc 1 48 9 is_stmt 1 discriminator 3 view .LVU66
	.loc 1 48 33 is_stmt 0 discriminator 3 view .LVU67
	movslq	4(%rdi,%rax,4), %r9
	.loc 1 48 17 discriminator 3 view .LVU68
	addq	%r9, %r8
.LVL22:
	.loc 1 46 29 is_stmt 1 discriminator 3 view .LVU69
	addq	$2, %rax
.LVL23:
.L13:
	.loc 1 46 19 discriminator 1 view .LVU70
	cmpq	%r10, %rax
	jl	.L14
.L15:
	.loc 1 51 14 discriminator 1 view .LVU71
	cmpq	%rsi, %rax
	jl	.L16
	.loc 1 55 5 view .LVU72
	.loc 1 55 31 is_stmt 0 view .LVU73
	leaq	-1(%rcx,%r8), %rax
.LVL24:
	.loc 1 55 11 view .LVU74
	movq	%rax, (%rdx)
	.loc 1 56 1 view .LVU75
	ret
.LVL25:
.L16:
	.loc 1 52 9 is_stmt 1 discriminator 2 view .LVU76
	.loc 1 52 33 is_stmt 0 discriminator 2 view .LVU77
	movslq	(%rdi,%rax,4), %r9
	.loc 1 52 17 discriminator 2 view .LVU78
	addq	%r9, %rcx
.LVL26:
	.loc 1 51 27 is_stmt 1 discriminator 2 view .LVU79
	addq	$1, %rax
.LVL27:
	.loc 1 51 27 is_stmt 0 discriminator 2 view .LVU80
	jmp	.L15
	.cfi_endproc
.LFE3:
	.size	combine6, .-combine6
	.globl	combine7
	.type	combine7, @function
combine7:
.LVL28:
.LFB4:
	.loc 1 59 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 61 5 view .LVU82
	.loc 1 61 10 is_stmt 0 view .LVU83
	movq	(%rdx), %r8
.LVL29:
	.loc 1 62 5 is_stmt 1 view .LVU84
	.loc 1 63 5 view .LVU85
	.loc 1 63 10 is_stmt 0 view .LVU86
	leaq	-4(%rsi), %r9
.LVL30:
	.loc 1 65 5 is_stmt 1 view .LVU87
	.loc 1 65 12 is_stmt 0 view .LVU88
	movl	$0, %ecx
	.loc 1 65 5 view .LVU89
	jmp	.L18
.LVL31:
.L19:
	.loc 1 66 9 is_stmt 1 discriminator 3 view .LVU90
	.loc 1 66 44 is_stmt 0 discriminator 3 view .LVU91
	movl	8(%rdi,%rcx,4), %eax
	.loc 1 66 38 discriminator 3 view .LVU92
	addl	12(%rdi,%rcx,4), %eax
	.loc 1 66 50 discriminator 3 view .LVU93
	addl	4(%rdi,%rcx,4), %eax
	.loc 1 66 62 discriminator 3 view .LVU94
	addl	(%rdi,%rcx,4), %eax
	cltq
	.loc 1 66 16 discriminator 3 view .LVU95
	addq	%rax, %r8
.LVL32:
	.loc 1 65 29 is_stmt 1 discriminator 3 view .LVU96
	addq	$4, %rcx
.LVL33:
.L18:
	.loc 1 65 19 discriminator 1 view .LVU97
	cmpq	%r9, %rcx
	jl	.L19
.L20:
	.loc 1 69 14 discriminator 1 view .LVU98
	cmpq	%rsi, %rcx
	jge	.L22
	.loc 1 70 9 discriminator 2 view .LVU99
	.loc 1 70 31 is_stmt 0 discriminator 2 view .LVU100
	movslq	(%rdi,%rcx,4), %rax
	.loc 1 70 16 discriminator 2 view .LVU101
	addq	%rax, %r8
.LVL34:
	.loc 1 69 27 is_stmt 1 discriminator 2 view .LVU102
	addq	$1, %rcx
.LVL35:
	.loc 1 69 27 is_stmt 0 discriminator 2 view .LVU103
	jmp	.L20
.L22:
	.loc 1 73 5 is_stmt 1 view .LVU104
	.loc 1 73 11 is_stmt 0 view .LVU105
	movq	%r8, (%rdx)
	.loc 1 74 1 view .LVU106
	ret
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7
	.uleb128 0x1
	.long	.LASF2
	.byte	0x3b
	.byte	0x14
	.long	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.long	.LASF3
	.byte	0x3b
	.byte	0x1f
	.long	0xb3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.long	.LASF4
	.byte	0x3b
	.byte	0x2f
	.long	0xba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.long	.LASF5
	.byte	0x3d
	.long	0xb3
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x3
	.string	"i"
	.byte	0x3e
	.byte	0xa
	.long	0xb3
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3f
	.long	0xb3
	.long	.LLST12
	.long	.LVUS12
	.byte	0
	.uleb128 0x5
	.long	0xac
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	0xb3
	.uleb128 0x4
	.long	.LASF9
	.byte	0x27
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a
	.uleb128 0x1
	.long	.LASF2
	.byte	0x27
	.byte	0x14
	.long	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.long	.LASF3
	.byte	0x27
	.byte	0x1f
	.long	0xb3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.long	.LASF4
	.byte	0x27
	.byte	0x2f
	.long	0xba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.long	.LASF10
	.byte	0x29
	.long	0xb3
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.long	.LASF11
	.byte	0x2a
	.long	0xb3
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x3
	.string	"i"
	.byte	0x2b
	.byte	0xa
	.long	0xb3
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2c
	.long	0xb3
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x15
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3
	.uleb128 0x1
	.long	.LASF2
	.byte	0x15
	.byte	0x14
	.long	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.long	.LASF3
	.byte	0x15
	.byte	0x1f
	.long	0xb3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.long	.LASF4
	.byte	0x15
	.byte	0x2f
	.long	0xba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.long	.LASF5
	.byte	0x17
	.long	0xb3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3
	.string	"i"
	.byte	0x18
	.byte	0xa
	.long	0xb3
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x2
	.long	.LASF6
	.byte	0x19
	.long	0xb3
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0xb
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c
	.uleb128 0x1
	.long	.LASF2
	.byte	0xb
	.byte	0x14
	.long	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.long	.LASF3
	.byte	0xb
	.byte	0x1f
	.long	0xb3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.long	.LASF4
	.byte	0xb
	.byte	0x2f
	.long	0xba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.long	.LASF5
	.byte	0xd
	.long	0xb3
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x6
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x3
	.string	"i"
	.byte	0xe
	.byte	0xf
	.long	0xb3
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF2
	.byte	0x3
	.byte	0x13
	.long	0xa7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.long	.LASF3
	.byte	0x3
	.byte	0x20
	.long	0xb3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.long	.LASF4
	.byte	0x3
	.byte	0x30
	.long	0xba
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x3
	.string	"i"
	.byte	0x5
	.byte	0xf
	.long	0xb3
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
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
.LVUS10:
	.uleb128 .LVU84
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS11:
	.uleb128 .LVU88
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS12:
	.uleb128 .LVU87
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS6:
	.uleb128 .LVU55
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS7:
	.uleb128 .LVU56
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS8:
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU74
	.uleb128 .LVU76
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS9:
	.uleb128 .LVU59
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS3:
	.uleb128 .LVU30
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS4:
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS5:
	.uleb128 .LVU33
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS1:
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS2:
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 .LVU3
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE0-.Ltext0
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
.LASF11:
	.string	"result1"
.LASF3:
	.string	"data_len"
.LASF7:
	.string	"long int"
.LASF14:
	.string	"GNU C17 12.2.0 -mtune=generic -march=x86-64 -g -Og -fasynchronous-unwind-tables"
.LASF15:
	.string	"combine3"
.LASF12:
	.string	"combine5"
.LASF9:
	.string	"combine6"
.LASF8:
	.string	"combine7"
.LASF4:
	.string	"dest"
.LASF6:
	.string	"limit"
.LASF5:
	.string	"result"
.LASF2:
	.string	"data"
.LASF13:
	.string	"combine4"
.LASF10:
	.string	"result0"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"combine.c"
.LASF1:
	.string	"/home/ghost/experiments/comp-sys-labs/compiler-optimizations"
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
