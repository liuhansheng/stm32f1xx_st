	.cpu cortex-m3
	.arch armv7-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"fal.c"
	.text
.Ltext0:
	.section	.bss.init_ok,"aw",%nobits
	.type	init_ok, %object
	.size	init_ok, 1
init_ok:
	.space	1
	.section .rodata
	.align	2
.LC0:
	.ascii	"\033[32;22m[I/FAL] \000"
	.align	2
.LC1:
	.ascii	"0.5.0\000"
	.align	2
.LC2:
	.ascii	"Flash Abstraction Layer (V%s) initialize success.\000"
	.align	2
.LC3:
	.ascii	"\033[0m\000"
	.align	2
.LC4:
	.ascii	"\033[31;22m[E/FAL] (%s:%d) \000"
	.align	2
.LC5:
	.ascii	"Flash Abstraction Layer (V%s) initialize failed.\000"
	.section	.text.fal_init,"ax",%progbits
	.align	1
	.global	fal_init
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_init, %function
fal_init:
.LFB0:
	.file 1 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Libraries\\FlashDB\\port\\fal\\src\\fal.c"
	.loc 1 36 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	.loc 1 43 14
	bl	fal_flash_init
	str	r0, [sp, #4]
	.loc 1 45 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L7
	.loc 1 50 14
	bl	fal_partition_init
	str	r0, [sp, #4]
	b	.L3
.L7:
	.loc 1 46 9
	nop
.L3:
	.loc 1 54 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ble	.L4
	.loc 1 54 26 discriminator 1
	ldr	r3, .L8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 54 22 discriminator 1
	cmp	r3, #0
	bne	.L4
	.loc 1 56 17
	ldr	r3, .L8
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 57 9
	ldr	r0, .L8+4
	bl	printf
	ldr	r1, .L8+8
	ldr	r0, .L8+12
	bl	printf
	ldr	r0, .L8+16
	bl	puts
	b	.L5
.L4:
	.loc 1 59 12
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bgt	.L5
	.loc 1 61 17
	ldr	r3, .L8
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 62 9
	movs	r2, #62
	ldr	r1, .L8+20
	ldr	r0, .L8+24
	bl	printf
	ldr	r1, .L8+8
	ldr	r0, .L8+28
	bl	printf
	ldr	r0, .L8+16
	bl	puts
.L5:
	.loc 1 65 12
	ldr	r3, [sp, #4]
	.loc 1 66 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	init_ok
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	__FUNCTION__.0
	.word	.LC4
	.word	.LC5
.LFE0:
	.size	fal_init, .-fal_init
	.section	.text.fal_init_check,"ax",%progbits
	.align	1
	.global	fal_init_check
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_init_check, %function
fal_init_check:
.LFB1:
	.loc 1 74 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 12
	ldr	r3, .L12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 76 1
	mov	r0, r3
	bx	lr
.L13:
	.align	2
.L12:
	.word	init_ok
.LFE1:
	.size	fal_init_check, .-fal_init_check
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, %object
	.size	__FUNCTION__.0, 9
__FUNCTION__.0:
	.ascii	"fal_init\000"
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/app/install/include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x113
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	0x70
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x3
	.4byte	init_ok
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x4d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x4d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x101
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x1
	.byte	0x25
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	.L3
	.uleb128 0xb
	.4byte	.LASF20
	.4byte	0x111
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0xc
	.4byte	0x77
	.4byte	0x111
	.uleb128 0xd
	.4byte	0x54
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x101
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x117
	.4byte	0x7c
	.ascii	"init_ok\000"
	.4byte	0x8e
	.ascii	"fal_init_check\000"
	.4byte	0xa4
	.ascii	"fal_init\000"
	.4byte	0xbe
	.ascii	"fal_flash_init\000"
	.4byte	0xca
	.ascii	"fal_partition_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xbd
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x117
	.4byte	0x25
	.ascii	"signed char\000"
	.4byte	0x38
	.ascii	"unsigned char\000"
	.4byte	0x2c
	.ascii	"uint8_t\000"
	.4byte	0x3f
	.ascii	"short int\000"
	.4byte	0x46
	.ascii	"short unsigned int\000"
	.4byte	0x4d
	.ascii	"int\000"
	.4byte	0x54
	.ascii	"unsigned int\000"
	.4byte	0x5b
	.ascii	"long long int\000"
	.4byte	0x62
	.ascii	"long long unsigned int\000"
	.4byte	0x69
	.ascii	"long int\000"
	.4byte	0x70
	.ascii	"char\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"__FUNCTION__\000"
.LASF18:
	.ascii	"fal_init\000"
.LASF10:
	.ascii	"fal_partition_init\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF11:
	.ascii	"init_ok\000"
.LASF9:
	.ascii	"fal_flash_init\000"
.LASF15:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Pro"
	.ascii	"ject\000"
.LASF14:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Lib"
	.ascii	"raries\\FlashDB\\port\\fal\\src\\fal.c\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"__exit\000"
.LASF8:
	.ascii	"char\000"
.LASF12:
	.ascii	"result\000"
.LASF7:
	.ascii	"long int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m3 -mlittle-endian -mfloa"
	.ascii	"t-abi=soft -mthumb -mtp=soft -mfp16-format=ieee -mu"
	.ascii	"naligned-access -gdwarf-4 -g2 -gpubnames -fomit-fra"
	.ascii	"me-pointer -fno-dwarf2-cfi-asm -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF2:
	.ascii	"short int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"fal_init_check\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
