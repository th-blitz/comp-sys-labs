	.arch armv8-a
	.file	"combine.c"
	.text
.Ltext0:
	.file 0 "/home/ghost/comp-sys-labs/compiler-optimizations" "combine.c"
	.align	2
	.global	combine3
	.type	combine3, %function
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
	mov	x3, 0
	.loc 1 5 5 view .LVU4
	b	.L2
.LVL1:
.L3:
	.loc 1 6 9 is_stmt 1 discriminator 3 view .LVU5
	.loc 1 6 17 is_stmt 0 discriminator 3 view .LVU6
	ldr	x4, [x2]
	.loc 1 6 29 discriminator 3 view .LVU7
	ldrsw	x5, [x0, x3, lsl 2]
	.loc 1 6 23 discriminator 3 view .LVU8
	add	x4, x4, x5
	.loc 1 6 15 discriminator 3 view .LVU9
	str	x4, [x2]
	.loc 1 5 37 is_stmt 1 discriminator 3 view .LVU10
	add	x3, x3, 1
.LVL2:
.L2:
	.loc 1 5 24 discriminator 1 view .LVU11
	cmp	x3, x1
	blt	.L3
.LBE2:
	.loc 1 8 1 is_stmt 0 view .LVU12
	ret
	.cfi_endproc
.LFE0:
	.size	combine3, .-combine3
	.align	2
	.global	combine4
	.type	combine4, %function
combine4:
.LVL3:
.LFB1:
	.loc 1 11 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 13 5 view .LVU14
	.loc 1 13 10 is_stmt 0 view .LVU15
	ldr	x4, [x2]
.LVL4:
	.loc 1 14 5 is_stmt 1 view .LVU16
.LBB3:
	.loc 1 14 10 view .LVU17
	.loc 1 14 15 is_stmt 0 view .LVU18
	mov	x3, 0
	.loc 1 14 5 view .LVU19
	b	.L5
.LVL5:
.L6:
	.loc 1 15 9 is_stmt 1 discriminator 3 view .LVU20
	.loc 1 15 31 is_stmt 0 discriminator 3 view .LVU21
	ldrsw	x5, [x0, x3, lsl 2]
	.loc 1 15 16 discriminator 3 view .LVU22
	add	x4, x4, x5
.LVL6:
	.loc 1 14 37 is_stmt 1 discriminator 3 view .LVU23
	add	x3, x3, 1
.LVL7:
.L5:
	.loc 1 14 24 discriminator 1 view .LVU24
	cmp	x3, x1
	blt	.L6
	.loc 1 14 24 is_stmt 0 discriminator 1 view .LVU25
.LBE3:
	.loc 1 17 5 is_stmt 1 view .LVU26
	.loc 1 17 11 is_stmt 0 view .LVU27
	str	x4, [x2]
	.loc 1 18 1 view .LVU28
	ret
	.cfi_endproc
.LFE1:
	.size	combine4, .-combine4
	.align	2
	.global	combine5
	.type	combine5, %function
combine5:
.LVL8:
.LFB2:
	.loc 1 21 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 23 5 view .LVU30
	.loc 1 23 10 is_stmt 0 view .LVU31
	ldr	x4, [x2]
.LVL9:
	.loc 1 24 5 is_stmt 1 view .LVU32
	.loc 1 25 5 view .LVU33
	.loc 1 25 10 is_stmt 0 view .LVU34
	sub	x7, x1, #1
.LVL10:
	.loc 1 27 5 is_stmt 1 view .LVU35
	.loc 1 27 12 is_stmt 0 view .LVU36
	mov	x3, 0
	.loc 1 27 5 view .LVU37
	b	.L8
.LVL11:
.L9:
	.loc 1 28 9 is_stmt 1 discriminator 3 view .LVU38
	.loc 1 28 22 is_stmt 0 discriminator 3 view .LVU39
	ldrsw	x5, [x0, x3, lsl 2]
	.loc 1 28 42 discriminator 3 view .LVU40
	add	x6, x3, 1
	ldrsw	x6, [x0, x6, lsl 2]
	.loc 1 28 36 discriminator 3 view .LVU41
	add	x4, x6, x4
.LVL12:
	.loc 1 28 16 discriminator 3 view .LVU42
	add	x4, x5, x4
.LVL13:
	.loc 1 27 29 is_stmt 1 discriminator 3 view .LVU43
	add	x3, x3, 2
.LVL14:
.L8:
	.loc 1 27 19 discriminator 1 view .LVU44
	cmp	x3, x7
	blt	.L9
.L10:
	.loc 1 31 14 discriminator 1 view .LVU45
	cmp	x3, x1
	blt	.L11
	.loc 1 35 5 view .LVU46
	.loc 1 35 11 is_stmt 0 view .LVU47
	str	x4, [x2]
	.loc 1 36 1 view .LVU48
	ret
.L11:
	.loc 1 32 9 is_stmt 1 discriminator 2 view .LVU49
	.loc 1 32 31 is_stmt 0 discriminator 2 view .LVU50
	ldrsw	x5, [x0, x3, lsl 2]
	.loc 1 32 16 discriminator 2 view .LVU51
	add	x4, x4, x5
.LVL15:
	.loc 1 31 27 is_stmt 1 discriminator 2 view .LVU52
	add	x3, x3, 1
.LVL16:
	.loc 1 31 27 is_stmt 0 discriminator 2 view .LVU53
	b	.L10
	.cfi_endproc
.LFE2:
	.size	combine5, .-combine5
	.align	2
	.global	combine6
	.type	combine6, %function
combine6:
.LVL17:
.LFB3:
	.loc 1 39 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 41 5 view .LVU55
	.loc 1 41 10 is_stmt 0 view .LVU56
	ldr	x4, [x2]
.LVL18:
	.loc 1 42 5 is_stmt 1 view .LVU57
	.loc 1 43 5 view .LVU58
	.loc 1 44 5 view .LVU59
	.loc 1 44 10 is_stmt 0 view .LVU60
	sub	x7, x1, #1
.LVL19:
	.loc 1 46 5 is_stmt 1 view .LVU61
	.loc 1 42 10 is_stmt 0 view .LVU62
	mov	x5, x4
	.loc 1 46 12 view .LVU63
	mov	x3, 0
	.loc 1 46 5 view .LVU64
	b	.L13
.LVL20:
.L14:
	.loc 1 47 9 is_stmt 1 discriminator 3 view .LVU65
	.loc 1 47 33 is_stmt 0 discriminator 3 view .LVU66
	ldrsw	x6, [x0, x3, lsl 2]
	.loc 1 47 17 discriminator 3 view .LVU67
	add	x4, x4, x6
.LVL21:
	.loc 1 48 9 is_stmt 1 discriminator 3 view .LVU68
	.loc 1 48 33 is_stmt 0 discriminator 3 view .LVU69
	add	x6, x3, 1
	ldrsw	x6, [x0, x6, lsl 2]
	.loc 1 48 17 discriminator 3 view .LVU70
	add	x5, x5, x6
.LVL22:
	.loc 1 46 29 is_stmt 1 discriminator 3 view .LVU71
	add	x3, x3, 2
.LVL23:
.L13:
	.loc 1 46 19 discriminator 1 view .LVU72
	cmp	x3, x7
	blt	.L14
.L15:
	.loc 1 51 14 discriminator 1 view .LVU73
	cmp	x3, x1
	blt	.L16
	.loc 1 55 5 view .LVU74
	.loc 1 55 21 is_stmt 0 view .LVU75
	add	x4, x4, x5
.LVL24:
	.loc 1 55 31 view .LVU76
	sub	x4, x4, #1
	.loc 1 55 11 view .LVU77
	str	x4, [x2]
	.loc 1 56 1 view .LVU78
	ret
.LVL25:
.L16:
	.loc 1 52 9 is_stmt 1 discriminator 2 view .LVU79
	.loc 1 52 33 is_stmt 0 discriminator 2 view .LVU80
	ldrsw	x6, [x0, x3, lsl 2]
	.loc 1 52 17 discriminator 2 view .LVU81
	add	x4, x4, x6
.LVL26:
	.loc 1 51 27 is_stmt 1 discriminator 2 view .LVU82
	add	x3, x3, 1
.LVL27:
	.loc 1 51 27 is_stmt 0 discriminator 2 view .LVU83
	b	.L15
	.cfi_endproc
.LFE3:
	.size	combine6, .-combine6
	.align	2
	.global	combine7
	.type	combine7, %function
combine7:
.LVL28:
.LFB4:
	.loc 1 59 53 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 61 5 view .LVU85
	.loc 1 61 10 is_stmt 0 view .LVU86
	ldr	x5, [x2]
.LVL29:
	.loc 1 62 5 is_stmt 1 view .LVU87
	.loc 1 63 5 view .LVU88
	.loc 1 63 10 is_stmt 0 view .LVU89
	sub	x7, x1, #4
.LVL30:
	.loc 1 65 5 is_stmt 1 view .LVU90
	.loc 1 65 12 is_stmt 0 view .LVU91
	mov	x3, 0
	.loc 1 65 5 view .LVU92
	b	.L18
.LVL31:
.L19:
	.loc 1 66 9 is_stmt 1 discriminator 3 view .LVU93
	.loc 1 66 32 is_stmt 0 discriminator 3 view .LVU94
	add	x4, x3, 3
	ldr	w4, [x0, x4, lsl 2]
	.loc 1 66 44 discriminator 3 view .LVU95
	add	x6, x3, 2
	ldr	w6, [x0, x6, lsl 2]
	.loc 1 66 38 discriminator 3 view .LVU96
	add	w4, w4, w6
	.loc 1 66 56 discriminator 3 view .LVU97
	add	x6, x3, 1
	ldr	w6, [x0, x6, lsl 2]
	.loc 1 66 50 discriminator 3 view .LVU98
	add	w4, w4, w6
	.loc 1 66 68 discriminator 3 view .LVU99
	ldr	w6, [x0, x3, lsl 2]
	.loc 1 66 62 discriminator 3 view .LVU100
	add	w4, w4, w6
	.loc 1 66 16 discriminator 3 view .LVU101
	add	x5, x5, w4, sxtw
.LVL32:
	.loc 1 65 29 is_stmt 1 discriminator 3 view .LVU102
	add	x3, x3, 4
.LVL33:
.L18:
	.loc 1 65 19 discriminator 1 view .LVU103
	cmp	x3, x7
	blt	.L19
.L20:
	.loc 1 69 14 discriminator 1 view .LVU104
	cmp	x3, x1
	bge	.L22
	.loc 1 70 9 discriminator 2 view .LVU105
	.loc 1 70 31 is_stmt 0 discriminator 2 view .LVU106
	ldrsw	x4, [x0, x3, lsl 2]
	.loc 1 70 16 discriminator 2 view .LVU107
	add	x5, x5, x4
.LVL34:
	.loc 1 69 27 is_stmt 1 discriminator 2 view .LVU108
	add	x3, x3, 1
.LVL35:
	.loc 1 69 27 is_stmt 0 discriminator 2 view .LVU109
	b	.L20
.L22:
	.loc 1 73 5 is_stmt 1 view .LVU110
	.loc 1 73 11 is_stmt 0 view .LVU111
	str	x5, [x2]
	.loc 1 74 1 view .LVU112
	ret
	.cfi_endproc
.LFE4:
	.size	combine7, .-combine7
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29e
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3b
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x3b
	.byte	0x14
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x3b
	.byte	0x1f
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x3b
	.byte	0x2f
	.4byte	0xba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3d
	.4byte	0xb3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x3
	.string	"i"
	.byte	0x3e
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3f
	.4byte	0xb3
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x5
	.4byte	0xac
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	0xb3
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x27
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x27
	.byte	0x14
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x27
	.byte	0x1f
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x27
	.byte	0x2f
	.4byte	0xba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x29
	.4byte	0xb3
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x2a
	.4byte	0xb3
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x3
	.string	"i"
	.byte	0x2b
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2c
	.4byte	0xb3
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x15
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x15
	.byte	0x14
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x15
	.byte	0x1f
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x15
	.byte	0x2f
	.4byte	0xba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x17
	.4byte	0xb3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3
	.string	"i"
	.byte	0x18
	.byte	0xa
	.4byte	0xb3
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x19
	.4byte	0xb3
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0xb
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23c
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0xb
	.byte	0x14
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0xb
	.byte	0x1f
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xb
	.byte	0x2f
	.4byte	0xba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x6
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x3
	.string	"i"
	.byte	0xe
	.byte	0xf
	.4byte	0xb3
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x3
	.byte	0x13
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x3
	.byte	0x20
	.4byte	0xb3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x3
	.byte	0x30
	.4byte	0xba
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.uleb128 0x3
	.string	"i"
	.byte	0x5
	.byte	0xf
	.4byte	0xb3
	.4byte	.LLST0
	.4byte	.LVUS0
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
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x8
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS10:
	.uleb128 .LVU87
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS11:
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
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
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 .LVU90
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LFE4-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS6:
	.uleb128 .LVU57
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU58
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 .LVU62
	.uleb128 .LVU65
	.uleb128 .LVU65
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
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 .LVU61
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS3:
	.uleb128 .LVU32
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS4:
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU38
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
	.byte	0x53
	.byte	0
.LVUS5:
	.uleb128 .LVU35
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS1:
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS2:
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
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
	.byte	0x53
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
	.byte	0x53
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"result1"
.LASF3:
	.string	"data_len"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"combine4"
.LASF14:
	.string	"GNU C17 12.2.0 -mlittle-endian -mabi=lp64 -g -Og -fasynchronous-unwind-tables"
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
.LASF10:
	.string	"result0"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ghost/comp-sys-labs/compiler-optimizations"
.LASF0:
	.string	"combine.c"
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
