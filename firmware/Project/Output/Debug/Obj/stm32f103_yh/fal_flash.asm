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
	.file	"fal_flash.c"
	.text
.Ltext0:
	.section	.rodata.device_table,"a"
	.align	2
	.type	device_table, %object
	.size	device_table, 4
device_table:
	.word	stm32_onchip_flash
	.section	.rodata.device_table_len,"a"
	.align	2
	.type	device_table_len, %object
	.size	device_table_len, 4
device_table_len:
	.word	1
	.section	.bss.init_ok,"aw",%nobits
	.type	init_ok, %object
	.size	init_ok, 1
init_ok:
	.space	1
	.section .rodata
	.align	2
.LC0:
	.ascii	"device_table[i]->ops.read\000"
	.align	2
.LC1:
	.ascii	"(%s) has assert failed at %s.\012\000"
	.align	2
.LC2:
	.ascii	"device_table[i]->ops.write\000"
	.align	2
.LC3:
	.ascii	"device_table[i]->ops.erase\000"
	.align	2
.LC4:
	.ascii	"[D/FAL] (%s:%d) \000"
	.align	2
.LC5:
	.ascii	"Flash device | %*.*s | addr: 0x%08lx | len: 0x%08x "
	.ascii	"| blk_size: 0x%08x |initialized finish.\000"
	.section	.text.fal_flash_init,"ax",%progbits
	.align	1
	.global	fal_flash_init
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_flash_init, %function
fal_flash_init:
.LFB0:
	.file 1 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Libraries\\FlashDB\\port\\fal\\src\\fal_flash.c"
	.loc 1 43 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #28
.LCFI1:
	.loc 1 47 9
	ldr	r3, .L13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 47 8
	cmp	r3, #0
	beq	.L2
	.loc 1 49 16
	movs	r3, #0
	b	.L3
.L2:
	.loc 1 52 12
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 52 5
	b	.L4
.L12:
	.loc 1 54 13
	ldr	r3, .L13+4
	str	r3, [sp, #16]
	.loc 1 55 9
	ldr	r3, .L13+4
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L5
	.loc 1 55 9 is_stmt 0 discriminator 1
	ldr	r2, .L13+8
	ldr	r1, .L13+12
	ldr	r0, .L13+16
	bl	printf
.L6:
	b	.L6
.L5:
	.loc 1 56 9 is_stmt 1
	ldr	r3, .L13+4
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L7
	.loc 1 56 9 is_stmt 0 discriminator 1
	ldr	r2, .L13+8
	ldr	r1, .L13+20
	ldr	r0, .L13+16
	bl	printf
.L8:
	.loc 1 56 9 discriminator 2
	b	.L8
.L7:
	.loc 1 57 9 is_stmt 1
	ldr	r3, .L13+4
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L9
	.loc 1 57 9 is_stmt 0 discriminator 1
	ldr	r2, .L13+8
	ldr	r1, .L13+24
	ldr	r0, .L13+16
	bl	printf
.L10:
	.loc 1 57 9 discriminator 3
	b	.L10
.L9:
	.loc 1 59 25 is_stmt 1
	ldr	r3, .L13+4
	.loc 1 59 33
	ldr	r3, [r3, #36]
	.loc 1 59 12
	cmp	r3, #0
	beq	.L11
	.loc 1 61 25
	ldr	r3, .L13+4
	.loc 1 61 33
	ldr	r3, [r3, #36]
	.loc 1 61 13
	blx	r3
.LVL0:
.L11:
	.loc 1 63 9 discriminator 2
	movs	r2, #63
	ldr	r1, .L13+8
	ldr	r0, .L13+28
	bl	printf
	ldr	r0, [sp, #16]
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #24]
	ldr	r2, [sp, #16]
	ldr	r2, [r2, #28]
	ldr	r1, [sp, #16]
	ldr	r1, [r1, #32]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	movs	r2, #24
	movs	r1, #24
	ldr	r0, .L13+32
	bl	printf
	movs	r0, #10
	bl	putchar
	.loc 1 52 40 discriminator 2
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
.L4:
	.loc 1 52 19 discriminator 1
	movs	r2, #1
	.loc 1 52 5 discriminator 1
	ldr	r3, [sp, #20]
	cmp	r3, r2
	bcc	.L12
	.loc 1 68 13
	ldr	r3, .L13
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 69 12
	movs	r3, #0
.L3:
	.loc 1 70 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L14:
	.align	2
.L13:
	.word	init_ok
	.word	stm32_onchip_flash
	.word	__FUNCTION__.1
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
.LFE0:
	.size	fal_flash_init, .-fal_flash_init
	.section .rodata
	.align	2
.LC6:
	.ascii	"init_ok\000"
	.align	2
.LC7:
	.ascii	"name\000"
	.section	.text.fal_flash_device_find,"ax",%progbits
	.align	1
	.global	fal_flash_device_find
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_flash_device_find, %function
fal_flash_device_find:
.LFB1:
	.loc 1 81 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #20
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 82 5
	ldr	r3, .L24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
	.loc 1 82 5 is_stmt 0 discriminator 1
	ldr	r2, .L24+4
	ldr	r1, .L24+8
	ldr	r0, .L24+12
	bl	printf
.L17:
	b	.L17
.L16:
	.loc 1 83 5 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L18
	.loc 1 83 5 is_stmt 0 discriminator 1
	ldr	r2, .L24+4
	ldr	r1, .L24+16
	ldr	r0, .L24+12
	bl	printf
.L19:
	.loc 1 83 5 discriminator 2
	b	.L19
.L18:
	.loc 1 87 12 is_stmt 1
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 87 5
	b	.L20
.L23:
	.loc 1 89 40
	ldr	r3, .L24+20
	.loc 1 89 14
	movs	r2, #24
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	strncmp
	mov	r3, r0
	.loc 1 89 12
	cmp	r3, #0
	bne	.L21
	.loc 1 90 32
	ldr	r3, .L24+20
	b	.L22
.L21:
	.loc 1 87 40 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L20:
	.loc 1 87 19 discriminator 1
	movs	r2, #1
	.loc 1 87 5 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, r2
	bcc	.L23
	.loc 1 94 12
	movs	r3, #0
.L22:
	.loc 1 95 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.L25:
	.align	2
.L24:
	.word	init_ok
	.word	__FUNCTION__.0
	.word	.LC6
	.word	.LC1
	.word	.LC7
	.word	stm32_onchip_flash
.LFE1:
	.size	fal_flash_device_find, .-fal_flash_device_find
	.section	.rodata.__FUNCTION__.1,"a"
	.align	2
	.type	__FUNCTION__.1, %object
	.size	__FUNCTION__.1, 15
__FUNCTION__.1:
	.ascii	"fal_flash_init\000"
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, %object
	.size	__FUNCTION__.0, 22
__FUNCTION__.0:
	.ascii	"fal_flash_device_find\000"
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
	.uleb128 0x20
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
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "../Libraries/FlashDB/port/fal/inc/fal_def.h"
	.file 3 "D:/app/install/include/stdint.h"
	.file 4 "D:/app/install/include/stdio.h"
	.file 5 "../Src/flashdb/fal/fal_cfg.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2d7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x38
	.byte	0x2
	.byte	0x72
	.byte	0x8
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x74
	.byte	0xa
	.4byte	0x1be
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x77
	.byte	0xe
	.4byte	0xc6
	.byte	0x18
	.uleb128 0x4
	.ascii	"len\000"
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	0x100
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0x100
	.byte	0x20
	.uleb128 0x4
	.ascii	"ops\000"
	.byte	0x2
	.byte	0x82
	.byte	0x7
	.4byte	0x111
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x87
	.byte	0xc
	.4byte	0x100
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0xe
	.byte	0x23
	.4byte	0x81
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2a
	.byte	0x1c
	.4byte	0xaa
	.uleb128 0x5
	.4byte	0x99
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x3
	.byte	0x37
	.byte	0x1c
	.4byte	0xd2
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0xee
	.uleb128 0xa
	.byte	0x4
	.4byte	0xf5
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0xd2
	.uleb128 0x5
	.4byte	0x100
	.uleb128 0xb
	.byte	0x10
	.byte	0x2
	.byte	0x7c
	.byte	0x5
	.4byte	0x14f
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7e
	.byte	0xf
	.4byte	0x154
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7f
	.byte	0xf
	.4byte	0x179
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x80
	.byte	0xf
	.4byte	0x19e
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0x81
	.byte	0xf
	.4byte	0x1b8
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	0xbf
	.uleb128 0xa
	.byte	0x4
	.4byte	0x14f
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x173
	.uleb128 0xe
	.4byte	0xe7
	.uleb128 0xe
	.4byte	0x173
	.uleb128 0xe
	.4byte	0x100
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x99
	.uleb128 0xa
	.byte	0x4
	.4byte	0x15a
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x198
	.uleb128 0xe
	.4byte	0xe7
	.uleb128 0xe
	.4byte	0x198
	.uleb128 0xe
	.4byte	0x100
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x17f
	.uleb128 0xd
	.4byte	0xbf
	.4byte	0x1b8
	.uleb128 0xe
	.4byte	0xe7
	.uleb128 0xe
	.4byte	0x100
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0xf
	.4byte	0xee
	.4byte	0x1ce
	.uleb128 0x10
	.4byte	0xd2
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.4byte	0x1e9
	.4byte	0x1de
	.uleb128 0x10
	.4byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x1ce
	.uleb128 0xa
	.byte	0x4
	.4byte	0x81
	.uleb128 0x5
	.4byte	0x1e3
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x21
	.byte	0x2b
	.4byte	0x1de
	.uleb128 0x5
	.byte	0x3
	.4byte	device_table
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x22
	.byte	0x15
	.4byte	0x10c
	.uleb128 0x5
	.byte	0x3
	.4byte	device_table_len
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x23
	.byte	0x10
	.4byte	0x99
	.uleb128 0x5
	.byte	0x3
	.4byte	init_ok
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x50
	.byte	0x1d
	.4byte	0x1e3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a
	.uleb128 0x13
	.4byte	.LASF0
	.byte	0x1
	.byte	0x50
	.byte	0x3f
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF25
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.4byte	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	0xf5
	.4byte	0x27a
	.uleb128 0x10
	.4byte	0xd2
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.4byte	0x26a
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0xbf
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c5
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.ascii	"dev\000"
	.byte	0x1
	.byte	0x2d
	.byte	0x21
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF25
	.4byte	0x2d5
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.1
	.byte	0
	.uleb128 0xf
	.4byte	0xf5
	.4byte	0x2d5
	.uleb128 0x10
	.4byte	0xd2
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	0x2c5
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
	.uleb128 0x3
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x6d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2db
	.4byte	0x1ee
	.ascii	"device_table\000"
	.4byte	0x200
	.ascii	"device_table_len\000"
	.4byte	0x212
	.ascii	"init_ok\000"
	.4byte	0x224
	.ascii	"fal_flash_device_find\000"
	.4byte	0x27f
	.ascii	"fal_flash_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xe7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2db
	.4byte	0x92
	.ascii	"signed char\000"
	.4byte	0xaa
	.ascii	"unsigned char\000"
	.4byte	0x99
	.ascii	"uint8_t\000"
	.4byte	0xb1
	.ascii	"short int\000"
	.4byte	0xb8
	.ascii	"short unsigned int\000"
	.4byte	0xbf
	.ascii	"int\000"
	.4byte	0xd2
	.ascii	"unsigned int\000"
	.4byte	0xc6
	.ascii	"uint32_t\000"
	.4byte	0xd9
	.ascii	"long long int\000"
	.4byte	0xe0
	.ascii	"long long unsigned int\000"
	.4byte	0xe7
	.ascii	"long int\000"
	.4byte	0xee
	.ascii	"char\000"
	.4byte	0x100
	.ascii	"size_t\000"
	.4byte	0x25
	.ascii	"fal_flash_dev\000"
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
.LASF30:
	.ascii	"stm32_onchip_flash\000"
.LASF18:
	.ascii	"write\000"
.LASF3:
	.ascii	"write_gran\000"
.LASF15:
	.ascii	"size_t\000"
.LASF2:
	.ascii	"blk_size\000"
.LASF6:
	.ascii	"short int\000"
.LASF8:
	.ascii	"uint8_t\000"
.LASF24:
	.ascii	"fal_flash_init\000"
.LASF17:
	.ascii	"read\000"
.LASF11:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"long int\000"
.LASF1:
	.ascii	"addr\000"
.LASF25:
	.ascii	"__FUNCTION__\000"
.LASF27:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Lib"
	.ascii	"raries\\FlashDB\\port\\fal\\src\\fal_flash.c\000"
.LASF0:
	.ascii	"name\000"
.LASF29:
	.ascii	"fal_flash_dev\000"
.LASF26:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m3 -mlittle-endian -mfloa"
	.ascii	"t-abi=soft -mthumb -mtp=soft -mfp16-format=ieee -mu"
	.ascii	"naligned-access -gdwarf-4 -g2 -gpubnames -fomit-fra"
	.ascii	"me-pointer -fno-dwarf2-cfi-asm -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"device_table\000"
.LASF4:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"char\000"
.LASF16:
	.ascii	"init\000"
.LASF22:
	.ascii	"init_ok\000"
.LASF21:
	.ascii	"device_table_len\000"
.LASF19:
	.ascii	"erase\000"
.LASF28:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Pro"
	.ascii	"ject\000"
.LASF23:
	.ascii	"fal_flash_device_find\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
