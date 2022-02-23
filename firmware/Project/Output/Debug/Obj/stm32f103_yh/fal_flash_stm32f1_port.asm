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
	.file	"fal_flash_stm32f1_port.c"
	.text
.Ltext0:
	.section	.text.init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	init, %function
init:
.LFB71:
	.file 1 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Src\\flashdb\\fal\\fal_flash_stm32f1_port.c"
	.loc 1 41 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 43 12
	movs	r3, #1
	.loc 1 44 1
	mov	r0, r3
	bx	lr
.LFE71:
	.size	init, .-init
	.section	.bss.ef_err_port_cnt,"aw",%nobits
	.align	2
	.type	ef_err_port_cnt, %object
	.size	ef_err_port_cnt, 4
ef_err_port_cnt:
	.space	4
	.global	on_ic_read_cnt
	.section	.bss.on_ic_read_cnt,"aw",%nobits
	.align	2
	.type	on_ic_read_cnt, %object
	.size	on_ic_read_cnt, 4
on_ic_read_cnt:
	.space	4
	.global	on_ic_write_cnt
	.section	.bss.on_ic_write_cnt,"aw",%nobits
	.align	2
	.type	on_ic_write_cnt, %object
	.size	on_ic_write_cnt, 4
on_ic_write_cnt:
	.space	4
	.section	.text.feed_dog,"ax",%progbits
	.align	1
	.global	feed_dog
	.syntax unified
	.thumb
	.thumb_func
	.type	feed_dog, %function
feed_dog:
.LFB72:
	.loc 1 52 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 54 1
	nop
	bx	lr
.LFE72:
	.size	feed_dog, .-feed_dog
	.section	.text.read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	read, %function
read:
.LFB73:
	.loc 1 57 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI0:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 60 39
	mov	r2, #134217728
	.loc 1 60 45
	ldr	r3, [sp, #12]
	.loc 1 60 14
	add	r3, r3, r2
	str	r3, [sp, #16]
	.loc 1 62 13
	ldr	r3, [sp, #16]
	and	r3, r3, #3
	.loc 1 62 7
	cmp	r3, #0
	beq	.L5
	.loc 1 63 24
	ldr	r3, .L9
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L9
	str	r3, [r2]
.L5:
	.loc 1 65 12
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 65 5
	b	.L6
.L7:
	.loc 1 67 17 discriminator 3
	ldr	r3, [sp, #16]
	.loc 1 67 16 discriminator 3
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 67 14 discriminator 3
	ldr	r3, [sp, #8]
	strb	r2, [r3]
	.loc 1 65 28 discriminator 3
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 65 36 discriminator 3
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 65 43 discriminator 3
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
.L6:
	.loc 1 65 5 discriminator 1
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L7
	.loc 1 69 19
	ldr	r3, .L9+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L9+4
	str	r3, [r2]
	.loc 1 70 12
	ldr	r3, [sp, #4]
	.loc 1 71 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI1:
	@ sp needed
	bx	lr
.L10:
	.align	2
.L9:
	.word	ef_err_port_cnt
	.word	on_ic_read_cnt
.LFE73:
	.size	read, .-read
	.section	.text.write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	write, %function
write:
.LFB74:
	.loc 1 75 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI2:
	sub	sp, sp, #36
.LCFI3:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 77 39
	mov	r2, #134217728
	.loc 1 77 45
	ldr	r3, [sp, #12]
	.loc 1 77 14
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 82 12
	ldr	r3, [sp, #24]
	and	r3, r3, #3
	.loc 1 82 7
	cmp	r3, #0
	beq	.L12
	.loc 1 83 24
	ldr	r3, .L18
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L18
	str	r3, [r2]
.L12:
	.loc 1 90 5
	bl	HAL_FLASH_Unlock
	.loc 1 91 12
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 91 5
	b	.L13
.L16:
	ldr	r3, [sp, #8]
	ldr	r3, [r3]	@ unaligned
	.loc 1 92 9
	str	r3, [sp, #16]
	.loc 1 93 9
	ldr	r3, [sp, #16]
	movs	r2, #0
	mov	r4, r3
	mov	r5, r2
	mov	r2, r4
	mov	r3, r5
	ldr	r1, [sp, #24]
	movs	r0, #2
	bl	HAL_FLASH_Program
	.loc 1 94 22
	ldr	r3, [sp, #24]
	.loc 1 94 19
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 96 23
	ldr	r3, [sp, #16]
	.loc 1 96 12
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L14
	.loc 1 97 13
	bl	HAL_FLASH_Lock
	.loc 1 98 20
	mov	r3, #-1
	b	.L17
.L14:
	.loc 1 102 12 discriminator 2
	bl	feed_dog
	.loc 1 91 29 discriminator 2
	ldr	r3, [sp, #28]
	adds	r3, r3, #4
	str	r3, [sp, #28]
	.loc 1 91 38 discriminator 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #4
	str	r3, [sp, #8]
	.loc 1 91 48 discriminator 2
	ldr	r3, [sp, #24]
	adds	r3, r3, #4
	str	r3, [sp, #24]
.L13:
	.loc 1 91 5 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L16
	.loc 1 105 5
	bl	HAL_FLASH_Lock
	.loc 1 107 20
	ldr	r3, .L18+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L18+4
	str	r3, [r2]
	.loc 1 108 12
	ldr	r3, [sp, #4]
.L17:
	.loc 1 109 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI4:
	@ sp needed
	pop	{r4, r5, pc}
.L19:
	.align	2
.L18:
	.word	ef_err_port_cnt
	.word	on_ic_write_cnt
.LFE74:
	.size	write, .-write
	.section	.text.erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	erase, %function
erase:
.LFB75:
	.loc 1 113 1
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #52
.LCFI6:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 114 39
	mov	r2, #134217728
	.loc 1 114 45
	ldr	r3, [sp, #4]
	.loc 1 114 14
	add	r3, r3, r2
	str	r3, [sp, #36]
	.loc 1 118 14
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 120 17
	ldr	r3, [sp]
	lsrs	r3, r3, #11
	str	r3, [sp, #44]
	.loc 1 121 14
	ldr	r3, [sp]
	ubfx	r3, r3, #0, #11
	.loc 1 121 8
	cmp	r3, #0
	beq	.L21
	.loc 1 122 20
	ldr	r3, [sp, #44]
	adds	r3, r3, #1
	str	r3, [sp, #44]
.L21:
	.loc 1 126 33
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 127 33
	movs	r3, #1
	str	r3, [sp, #24]
	.loc 1 128 5
	bl	HAL_FLASH_Unlock
	.loc 1 130 12
	movs	r3, #0
	str	r3, [sp, #40]
	.loc 1 130 5
	b	.L22
.L25:
	.loc 1 131 63
	ldr	r3, [sp, #40]
	lsls	r2, r3, #11
	.loc 1 131 44
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	.loc 1 131 37
	str	r3, [sp, #20]
	.loc 1 132 24
	add	r2, sp, #28
	add	r3, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	HAL_FLASHEx_Erase
	mov	r3, r0
	strb	r3, [sp, #35]
	.loc 1 133 12
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L23
	.loc 1 134 13
	bl	HAL_FLASH_Lock
	.loc 1 135 20
	mov	r3, #-1
	b	.L26
.L23:
	.loc 1 139 13 discriminator 2
	bl	feed_dog
	.loc 1 130 35 discriminator 2
	ldr	r3, [sp, #40]
	adds	r3, r3, #1
	str	r3, [sp, #40]
.L22:
	.loc 1 130 5 discriminator 1
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	cmp	r2, r3
	bcc	.L25
	.loc 1 142 5
	bl	HAL_FLASH_Lock
	.loc 1 144 12
	ldr	r3, [sp]
.L26:
	.loc 1 145 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #52
.LCFI7:
	@ sp needed
	ldr	pc, [sp], #4
.LFE75:
	.size	erase, .-erase
	.global	stm32_onchip_flash
	.section	.rodata.stm32_onchip_flash,"a"
	.align	2
	.type	stm32_onchip_flash, %object
	.size	stm32_onchip_flash, 56
stm32_onchip_flash:
	.ascii	"stm32_onchip\000"
	.space	11
	.word	134217728
	.word	524288
	.word	2048
	.word	init
	.word	read
	.word	write
	.word	erase
	.word	32
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
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI0-.LFB73
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI2-.LFB74
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI5-.LFB75
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 2 "../Libraries/FlashDB/port/fal/inc/fal_def.h"
	.file 3 "D:/app/install/include/string.h"
	.file 4 "D:/app/install/include/stdint.h"
	.file 5 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_def.h"
	.file 6 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_flash_ex.h"
	.file 7 "../Src/flashdb/fal/fal_cfg.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x42b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x31
	.byte	0x16
	.4byte	0x3a
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x38
	.byte	0x2
	.byte	0x72
	.byte	0x8
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x2
	.byte	0x74
	.byte	0xa
	.4byte	0x1ae
	.byte	0
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x2
	.byte	0x77
	.byte	0xe
	.4byte	0xe7
	.byte	0x18
	.uleb128 0x7
	.ascii	"len\000"
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	0x4f
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0x4f
	.byte	0x20
	.uleb128 0x7
	.ascii	"ops\000"
	.byte	0x2
	.byte	0x82
	.byte	0x7
	.4byte	0x101
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0x87
	.byte	0xc
	.4byte	0x4f
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.4byte	0x5b
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0xe
	.byte	0x23
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2a
	.byte	0x1c
	.4byte	0x41
	.uleb128 0x8
	.4byte	0xcf
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x1c
	.4byte	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0x7c
	.byte	0x5
	.4byte	0x13f
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7e
	.byte	0xf
	.4byte	0x144
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7f
	.byte	0xf
	.4byte	0x169
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x80
	.byte	0xf
	.4byte	0x18e
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x81
	.byte	0xf
	.4byte	0x1a8
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x25
	.uleb128 0xc
	.byte	0x4
	.4byte	0x13f
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x163
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x163
	.uleb128 0xe
	.4byte	0x4f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xcf
	.uleb128 0xc
	.byte	0x4
	.4byte	0x14a
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x188
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x188
	.uleb128 0xe
	.4byte	0x4f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xdb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x16f
	.uleb128 0xd
	.4byte	0x25
	.4byte	0x1a8
	.uleb128 0xe
	.4byte	0x2c
	.uleb128 0xe
	.4byte	0x4f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x194
	.uleb128 0xf
	.4byte	0x33
	.4byte	0x1be
	.uleb128 0x10
	.4byte	0x3a
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x41
	.byte	0x5
	.byte	0x28
	.byte	0x1
	.4byte	0x1ec
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2d
	.byte	0x3
	.4byte	0x1c5
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.byte	0xaa
	.byte	0x9
	.4byte	0x236
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x6
	.byte	0xac
	.byte	0xc
	.4byte	0xe7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0xaf
	.byte	0xc
	.4byte	0xe7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0xb2
	.byte	0xc
	.4byte	0xe7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb6
	.byte	0xc
	.4byte	0xe7
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0xb9
	.byte	0x3
	.4byte	0x1f8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	ef_err_port_cnt
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	on_ic_read_cnt
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x31
	.byte	0x5
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	on_ic_write_cnt
	.uleb128 0x15
	.4byte	0xbc
	.byte	0x1
	.byte	0xa3
	.byte	0x1c
	.uleb128 0x5
	.byte	0x3
	.4byte	stm32_onchip_flash
	.uleb128 0x16
	.4byte	.LASF19
	.byte	0x1
	.byte	0x70
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x70
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x70
	.byte	0x26
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF6
	.byte	0x1
	.byte	0x72
	.byte	0xe
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x74
	.byte	0x17
	.4byte	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x75
	.byte	0xc
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x75
	.byte	0x19
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x76
	.byte	0xe
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7d
	.byte	0x1c
	.4byte	0x236
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4a
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4a
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x4a
	.byte	0x2e
	.4byte	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4a
	.byte	0x3a
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4f
	.byte	0x1c
	.4byte	0xe7
	.byte	0x4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0x50
	.byte	0x1c
	.4byte	0xe7
	.byte	0x4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x406
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x38
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x38
	.byte	0x27
	.4byte	0x163
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x38
	.byte	0x33
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x13
	.4byte	.LASF6
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF16
	.byte	0x1
	.byte	0x28
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xc9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x42f
	.4byte	0x1d3
	.ascii	"HAL_OK\000"
	.4byte	0x1d9
	.ascii	"HAL_ERROR\000"
	.4byte	0x1df
	.ascii	"HAL_BUSY\000"
	.4byte	0x1e5
	.ascii	"HAL_TIMEOUT\000"
	.4byte	0x249
	.ascii	"ef_err_port_cnt\000"
	.4byte	0x25b
	.ascii	"on_ic_read_cnt\000"
	.4byte	0x26d
	.ascii	"on_ic_write_cnt\000"
	.4byte	0x27f
	.ascii	"stm32_onchip_flash\000"
	.4byte	0x28d
	.ascii	"erase\000"
	.4byte	0x31e
	.ascii	"write\000"
	.4byte	0x3a2
	.ascii	"read\000"
	.4byte	0x406
	.ascii	"feed_dog\000"
	.4byte	0x418
	.ascii	"init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x13e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x42f
	.4byte	0x25
	.ascii	"int\000"
	.4byte	0x2c
	.ascii	"long int\000"
	.4byte	0x33
	.ascii	"char\000"
	.4byte	0x3a
	.ascii	"unsigned int\000"
	.4byte	0x41
	.ascii	"unsigned char\000"
	.4byte	0x48
	.ascii	"short unsigned int\000"
	.4byte	0x4f
	.ascii	"size_t\000"
	.4byte	0xc8
	.ascii	"signed char\000"
	.4byte	0xcf
	.ascii	"uint8_t\000"
	.4byte	0xe0
	.ascii	"short int\000"
	.4byte	0xe7
	.ascii	"uint32_t\000"
	.4byte	0xf3
	.ascii	"long long int\000"
	.4byte	0xfa
	.ascii	"long long unsigned int\000"
	.4byte	0x5b
	.ascii	"fal_flash_dev\000"
	.4byte	0x1be
	.ascii	"long double\000"
	.4byte	0x1ec
	.ascii	"HAL_StatusTypeDef\000"
	.4byte	0x236
	.ascii	"FLASH_EraseInitTypeDef\000"
	.4byte	0x242
	.ascii	"long unsigned int\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"ef_err_port_cnt\000"
.LASF8:
	.ascii	"write_gran\000"
.LASF10:
	.ascii	"size_t\000"
.LASF27:
	.ascii	"Banks\000"
.LASF22:
	.ascii	"HAL_ERROR\000"
.LASF29:
	.ascii	"NbPages\000"
.LASF21:
	.ascii	"HAL_OK\000"
.LASF16:
	.ascii	"init\000"
.LASF15:
	.ascii	"long long unsigned int\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF46:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Pro"
	.ascii	"ject\000"
.LASF31:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"addr\000"
.LASF23:
	.ascii	"HAL_BUSY\000"
.LASF18:
	.ascii	"write\000"
.LASF42:
	.ascii	"write_data\000"
.LASF32:
	.ascii	"stm32_onchip_flash\000"
.LASF24:
	.ascii	"HAL_TIMEOUT\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF26:
	.ascii	"TypeErase\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF44:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m3 -mlittle-endian -mfloa"
	.ascii	"t-abi=soft -mthumb -mtp=soft -mfp16-format=ieee -mu"
	.ascii	"naligned-access -gdwarf-4 -g2 -gpubnames -fomit-fra"
	.ascii	"me-pointer -fno-dwarf2-cfi-asm -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF17:
	.ascii	"read\000"
.LASF28:
	.ascii	"PageAddress\000"
.LASF7:
	.ascii	"blk_size\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF1:
	.ascii	"char\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF47:
	.ascii	"fal_flash_dev\000"
.LASF30:
	.ascii	"FLASH_EraseInitTypeDef\000"
.LASF40:
	.ascii	"PAGEError\000"
.LASF33:
	.ascii	"on_ic_read_cnt\000"
.LASF25:
	.ascii	"HAL_StatusTypeDef\000"
.LASF14:
	.ascii	"long long int\000"
.LASF5:
	.ascii	"name\000"
.LASF35:
	.ascii	"offset\000"
.LASF41:
	.ascii	"EraseInitStruct\000"
.LASF12:
	.ascii	"short int\000"
.LASF19:
	.ascii	"erase\000"
.LASF39:
	.ascii	"erase_pages\000"
.LASF0:
	.ascii	"long int\000"
.LASF34:
	.ascii	"on_ic_write_cnt\000"
.LASF20:
	.ascii	"long double\000"
.LASF9:
	.ascii	"signed char\000"
.LASF48:
	.ascii	"feed_dog\000"
.LASF36:
	.ascii	"size\000"
.LASF38:
	.ascii	"flash_status\000"
.LASF43:
	.ascii	"read_data\000"
.LASF45:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Src"
	.ascii	"\\flashdb\\fal\\fal_flash_stm32f1_port.c\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
