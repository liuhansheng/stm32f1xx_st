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
	.file	"bsp_i2c1.c"
	.text
.Ltext0:
	.global	hi2c1
	.section	.bss.hi2c1,"aw",%nobits
	.align	2
	.type	hi2c1, %object
	.size	hi2c1, 84
hi2c1:
	.space	84
	.section	.text.bsp_i2c_init,"ax",%progbits
	.align	1
	.global	bsp_i2c_init
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_i2c_init, %function
bsp_i2c_init:
.LFB71:
	.file 1 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Src\\drivers\\bsp_i2c1.c"
	.loc 1 5 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 1 6 20
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	.loc 1 7 27
	ldr	r3, .L2
	ldr	r2, .L2+8
	str	r2, [r3, #4]
	.loc 1 8 26
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 9 28
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 10 31
	ldr	r3, .L2
	mov	r2, #16384
	str	r2, [r3, #16]
	.loc 1 11 32
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #20]
	.loc 1 12 28
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 13 32
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 14 30
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #32]
	.loc 1 15 9
	ldr	r0, .L2
	bl	HAL_I2C_Init
	.loc 1 16 1
	nop
	pop	{r3, pc}
.L3:
	.align	2
.L2:
	.word	hi2c1
	.word	1073763328
	.word	100000
.LFE71:
	.size	bsp_i2c_init, .-bsp_i2c_init
	.section	.text.bsp_i2c_read_byte_from_slave,"ax",%progbits
	.align	1
	.global	bsp_i2c_read_byte_from_slave
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_i2c_read_byte_from_slave, %function
bsp_i2c_read_byte_from_slave:
.LFB72:
	.loc 1 18 1
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI1:
	sub	sp, sp, #28
.LCFI2:
	str	r2, [sp, #16]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #23]
	mov	r3, r1
	strb	r3, [sp, #22]
	mov	r3, r2
	strb	r3, [sp, #21]
	.loc 1 19 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	uxth	r1, r3
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	uxth	r2, r3
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	uxth	r3, r3
	movs	r0, #100
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [sp, #16]
	str	r3, [sp]
	movs	r3, #1
	ldr	r0, .L5
	bl	HAL_I2C_Mem_Write
	.loc 1 20 1
	nop
	add	sp, sp, #28
.LCFI3:
	@ sp needed
	ldr	pc, [sp], #4
.L6:
	.align	2
.L5:
	.word	hi2c1
.LFE72:
	.size	bsp_i2c_read_byte_from_slave, .-bsp_i2c_read_byte_from_slave
	.section	.text.bsp_i2c_write_byte_from_slave,"ax",%progbits
	.align	1
	.global	bsp_i2c_write_byte_from_slave
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_i2c_write_byte_from_slave, %function
bsp_i2c_write_byte_from_slave:
.LFB73:
	.loc 1 22 1
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #28
.LCFI5:
	str	r2, [sp, #16]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #23]
	mov	r3, r1
	strb	r3, [sp, #22]
	mov	r3, r2
	strb	r3, [sp, #21]
	.loc 1 23 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	uxth	r1, r3
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	uxth	r2, r3
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	uxth	r3, r3
	movs	r0, #100
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [sp, #16]
	str	r3, [sp]
	movs	r3, #1
	ldr	r0, .L8
	bl	HAL_I2C_Mem_Read
	.loc 1 24 1
	nop
	add	sp, sp, #28
.LCFI6:
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	hi2c1
.LFE73:
	.size	bsp_i2c_write_byte_from_slave, .-bsp_i2c_write_byte_from_slave
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
	.byte	0x4
	.4byte	.LCFI0-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI1-.LFB72
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI4-.LFB73
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/app/install/include/stdint.h"
	.file 3 "../Libraries/cmsis/Device/ST/STM32F1xx/Include/stm32f103xe.h"
	.file 4 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_def.h"
	.file 5 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_dma.h"
	.file 6 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_i2c.h"
	.file 7 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Src\\drivers\\bsp_i2c1.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x697
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x57
	.uleb128 0x4
	.4byte	0x46
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x10
	.byte	0x3
	.2byte	0x169
	.byte	0x9
	.4byte	0xce
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x16b
	.byte	0x11
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x16c
	.byte	0x11
	.4byte	0x71
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x16d
	.byte	0x11
	.4byte	0x71
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x16e
	.byte	0x11
	.4byte	0x71
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x16f
	.byte	0x3
	.4byte	0x8b
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.2byte	0x171
	.byte	0x9
	.4byte	0x102
	.uleb128 0x7
	.ascii	"ISR\000"
	.byte	0x3
	.2byte	0x173
	.byte	0x11
	.4byte	0x71
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x174
	.byte	0x11
	.4byte	0x71
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x175
	.byte	0x3
	.4byte	0xdb
	.uleb128 0x6
	.byte	0x24
	.byte	0x3
	.2byte	0x1fc
	.byte	0x9
	.4byte	0x197
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x1fe
	.byte	0x11
	.4byte	0x71
	.byte	0
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x1ff
	.byte	0x11
	.4byte	0x71
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x200
	.byte	0x11
	.4byte	0x71
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x201
	.byte	0x11
	.4byte	0x71
	.byte	0xc
	.uleb128 0x7
	.ascii	"DR\000"
	.byte	0x3
	.2byte	0x202
	.byte	0x11
	.4byte	0x71
	.byte	0x10
	.uleb128 0x7
	.ascii	"SR1\000"
	.byte	0x3
	.2byte	0x203
	.byte	0x11
	.4byte	0x71
	.byte	0x14
	.uleb128 0x7
	.ascii	"SR2\000"
	.byte	0x3
	.2byte	0x204
	.byte	0x11
	.4byte	0x71
	.byte	0x18
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x205
	.byte	0x11
	.4byte	0x71
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x206
	.byte	0x11
	.4byte	0x71
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x207
	.byte	0x3
	.4byte	0x10f
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x28
	.byte	0x1
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1fd
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x36
	.byte	0x3
	.4byte	0x1e2
	.uleb128 0xd
	.byte	0x1c
	.byte	0x5
	.byte	0x30
	.byte	0x9
	.4byte	0x26e
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.byte	0x32
	.byte	0xc
	.4byte	0x65
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0x36
	.byte	0xc
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x5
	.byte	0x39
	.byte	0xc
	.4byte	0x65
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3c
	.byte	0xc
	.4byte	0x65
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0xc
	.4byte	0x65
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.byte	0x42
	.byte	0xc
	.4byte	0x65
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x5
	.byte	0x47
	.byte	0xc
	.4byte	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x49
	.byte	0x3
	.4byte	0x209
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.4byte	0x2a1
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x5
	.byte	0x54
	.byte	0x2
	.4byte	0x27a
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x44
	.byte	0x5
	.byte	0x6f
	.byte	0x10
	.4byte	0x357
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x5
	.byte	0x71
	.byte	0x1a
	.4byte	0x357
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x5
	.byte	0x73
	.byte	0x19
	.4byte	0x26e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x5
	.byte	0x75
	.byte	0x19
	.4byte	0x1fd
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x5
	.byte	0x77
	.byte	0x19
	.4byte	0x2a1
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x5
	.byte	0x79
	.byte	0x1a
	.4byte	0x1a4
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7b
	.byte	0x1c
	.4byte	0x36e
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7d
	.byte	0x1c
	.4byte	0x36e
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5
	.byte	0x7f
	.byte	0x1c
	.4byte	0x36e
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x5
	.byte	0x81
	.byte	0x1c
	.4byte	0x36e
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.byte	0x83
	.byte	0x19
	.4byte	0x71
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x5
	.byte	0x85
	.byte	0x1b
	.4byte	0x374
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.byte	0x87
	.byte	0x1a
	.4byte	0x65
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xce
	.uleb128 0x11
	.4byte	0x368
	.uleb128 0x12
	.4byte	0x368
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2ad
	.uleb128 0x10
	.byte	0x4
	.4byte	0x35d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x102
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x5
	.byte	0x89
	.byte	0x3
	.4byte	0x2ad
	.uleb128 0x10
	.byte	0x4
	.4byte	0x37a
	.uleb128 0xd
	.byte	0x20
	.byte	0x6
	.byte	0x30
	.byte	0x9
	.4byte	0x3fe
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0x32
	.byte	0xc
	.4byte	0x65
	.byte	0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0x35
	.byte	0xc
	.4byte	0x65
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0x38
	.byte	0xc
	.4byte	0x65
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0x3b
	.byte	0xc
	.4byte	0x65
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0x3e
	.byte	0xc
	.4byte	0x65
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0x41
	.byte	0xc
	.4byte	0x65
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0x44
	.byte	0xc
	.4byte	0x65
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0x47
	.byte	0xc
	.4byte	0x65
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0x4a
	.byte	0x3
	.4byte	0x38c
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x6c
	.byte	0x1
	.4byte	0x45b
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x22
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x29
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x2a
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0xe0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x6
	.byte	0x7b
	.byte	0x3
	.4byte	0x40a
	.uleb128 0x4
	.4byte	0x45b
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.4byte	0x493
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.4byte	0x46c
	.uleb128 0x4
	.4byte	0x493
	.uleb128 0xd
	.byte	0x54
	.byte	0x6
	.byte	0xbc
	.byte	0x9
	.4byte	0x58b
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0xbf
	.byte	0x1f
	.4byte	0x58b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0xc1
	.byte	0x1e
	.4byte	0x3fe
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc3
	.byte	0x1f
	.4byte	0x591
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc5
	.byte	0x1e
	.4byte	0x46
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc7
	.byte	0x1e
	.4byte	0x52
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc9
	.byte	0x1e
	.4byte	0x71
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x6
	.byte	0xcb
	.byte	0x1e
	.4byte	0x71
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x6
	.byte	0xce
	.byte	0x1f
	.4byte	0x386
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd0
	.byte	0x1f
	.4byte	0x386
	.byte	0x38
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0xd2
	.byte	0x1e
	.4byte	0x1fd
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0xd4
	.byte	0x1e
	.4byte	0x467
	.byte	0x3d
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0xd6
	.byte	0x1e
	.4byte	0x49f
	.byte	0x3e
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x6
	.byte	0xd8
	.byte	0x1e
	.4byte	0x71
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x6
	.byte	0xda
	.byte	0x1e
	.4byte	0x71
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x6
	.byte	0xdc
	.byte	0x1e
	.4byte	0x71
	.byte	0x48
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x6
	.byte	0xde
	.byte	0x1e
	.4byte	0x71
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe0
	.byte	0x1e
	.4byte	0x71
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x197
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x6
	.byte	0xf4
	.byte	0x3
	.4byte	0x4a4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF94
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x7
	.byte	0x7
	.byte	0x1a
	.4byte	0x597
	.uleb128 0x14
	.4byte	0x5aa
	.byte	0x1
	.byte	0x3
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	hi2c1
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x626
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x15
	.byte	0x2c
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x15
	.byte	0x3d
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0x15
	.byte	0x47
	.4byte	0x1a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x15
	.byte	0x54
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x15
	.byte	0x61
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x688
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.byte	0x11
	.byte	0x2b
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x11
	.byte	0x3c
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0x11
	.byte	0x47
	.4byte	0x1a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x11
	.byte	0x54
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x11
	.byte	0x61
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x1
	.byte	0x4
	.byte	0x6
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x69b
	.4byte	0x1c9
	.ascii	"HAL_OK\000"
	.4byte	0x1cf
	.ascii	"HAL_ERROR\000"
	.4byte	0x1d5
	.ascii	"HAL_BUSY\000"
	.4byte	0x1db
	.ascii	"HAL_TIMEOUT\000"
	.4byte	0x5b6
	.ascii	"hi2c1\000"
	.4byte	0x5b6
	.ascii	"hi2c1\000"
	.4byte	0x5c4
	.ascii	"bsp_i2c_write_byte_from_slave\000"
	.4byte	0x626
	.ascii	"bsp_i2c_read_byte_from_slave\000"
	.4byte	0x688
	.ascii	"bsp_i2c_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1ff
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x69b
	.4byte	0x25
	.ascii	"signed char\000"
	.4byte	0x38
	.ascii	"unsigned char\000"
	.4byte	0x2c
	.ascii	"uint8_t\000"
	.4byte	0x3f
	.ascii	"short int\000"
	.4byte	0x57
	.ascii	"short unsigned int\000"
	.4byte	0x46
	.ascii	"uint16_t\000"
	.4byte	0x5e
	.ascii	"int\000"
	.4byte	0x76
	.ascii	"unsigned int\000"
	.4byte	0x65
	.ascii	"uint32_t\000"
	.4byte	0x7d
	.ascii	"long long int\000"
	.4byte	0x84
	.ascii	"long long unsigned int\000"
	.4byte	0xce
	.ascii	"DMA_Channel_TypeDef\000"
	.4byte	0x102
	.ascii	"DMA_TypeDef\000"
	.4byte	0x197
	.ascii	"I2C_TypeDef\000"
	.4byte	0x1a6
	.ascii	"long int\000"
	.4byte	0x1ad
	.ascii	"char\000"
	.4byte	0x1b4
	.ascii	"long double\000"
	.4byte	0x1fd
	.ascii	"HAL_LockTypeDef\000"
	.4byte	0x26e
	.ascii	"DMA_InitTypeDef\000"
	.4byte	0x2a1
	.ascii	"HAL_DMA_StateTypeDef\000"
	.4byte	0x2ad
	.ascii	"__DMA_HandleTypeDef\000"
	.4byte	0x37a
	.ascii	"DMA_HandleTypeDef\000"
	.4byte	0x3fe
	.ascii	"I2C_InitTypeDef\000"
	.4byte	0x45b
	.ascii	"HAL_I2C_StateTypeDef\000"
	.4byte	0x493
	.ascii	"HAL_I2C_ModeTypeDef\000"
	.4byte	0x597
	.ascii	"I2C_HandleTypeDef\000"
	.4byte	0x5a3
	.ascii	"long unsigned int\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF30:
	.ascii	"Direction\000"
.LASF16:
	.ascii	"OAR1\000"
.LASF27:
	.ascii	"HAL_UNLOCKED\000"
.LASF26:
	.ascii	"HAL_TIMEOUT\000"
.LASF82:
	.ascii	"pBuffPtr\000"
.LASF69:
	.ascii	"HAL_I2C_STATE_BUSY_RX\000"
.LASF36:
	.ascii	"Priority\000"
.LASF73:
	.ascii	"HAL_I2C_STATE_ABORT\000"
.LASF51:
	.ascii	"XferAbortCallback\000"
.LASF91:
	.ascii	"MemaddSize\000"
.LASF41:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF101:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m3 -mlittle-endian -mfloa"
	.ascii	"t-abi=soft -mthumb -mtp=soft -mfp16-format=ieee -mu"
	.ascii	"naligned-access -gdwarf-4 -g2 -gpubnames -fomit-fra"
	.ascii	"me-pointer -fno-dwarf2-cfi-asm -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF38:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF99:
	.ascii	"bsp_i2c_write_byte_from_slave\000"
.LASF98:
	.ascii	"time_out\000"
.LASF96:
	.ascii	"buff\000"
.LASF15:
	.ascii	"DMA_TypeDef\000"
.LASF64:
	.ascii	"I2C_InitTypeDef\000"
.LASF23:
	.ascii	"HAL_OK\000"
.LASF40:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF104:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF89:
	.ascii	"Devaddress\000"
.LASF106:
	.ascii	"bsp_i2c_init\000"
.LASF25:
	.ascii	"HAL_BUSY\000"
.LASF60:
	.ascii	"DualAddressMode\000"
.LASF81:
	.ascii	"HAL_I2C_ModeTypeDef\000"
.LASF2:
	.ascii	"short int\000"
.LASF22:
	.ascii	"long double\000"
.LASF8:
	.ascii	"long long int\000"
.LASF46:
	.ascii	"State\000"
.LASF57:
	.ascii	"DutyCycle\000"
.LASF17:
	.ascii	"OAR2\000"
.LASF20:
	.ascii	"long int\000"
.LASF31:
	.ascii	"PeriphInc\000"
.LASF83:
	.ascii	"XferSize\000"
.LASF45:
	.ascii	"Lock\000"
.LASF85:
	.ascii	"XferOptions\000"
.LASF84:
	.ascii	"XferCount\000"
.LASF79:
	.ascii	"HAL_I2C_MODE_SLAVE\000"
.LASF58:
	.ascii	"OwnAddress1\000"
.LASF44:
	.ascii	"Init\000"
.LASF19:
	.ascii	"I2C_TypeDef\000"
.LASF86:
	.ascii	"PreviousState\000"
.LASF11:
	.ascii	"CPAR\000"
.LASF75:
	.ascii	"HAL_I2C_STATE_ERROR\000"
.LASF37:
	.ascii	"DMA_InitTypeDef\000"
.LASF47:
	.ascii	"Parent\000"
.LASF24:
	.ascii	"HAL_ERROR\000"
.LASF59:
	.ascii	"AddressingMode\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF76:
	.ascii	"HAL_I2C_StateTypeDef\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF70:
	.ascii	"HAL_I2C_STATE_LISTEN\000"
.LASF63:
	.ascii	"NoStretchMode\000"
.LASF43:
	.ascii	"Instance\000"
.LASF105:
	.ascii	"hi2c1\000"
.LASF48:
	.ascii	"XferCpltCallback\000"
.LASF68:
	.ascii	"HAL_I2C_STATE_BUSY_TX\000"
.LASF28:
	.ascii	"HAL_LOCKED\000"
.LASF88:
	.ascii	"hdmarx\000"
.LASF13:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF56:
	.ascii	"ClockSpeed\000"
.LASF50:
	.ascii	"XferErrorCallback\000"
.LASF10:
	.ascii	"CNDTR\000"
.LASF21:
	.ascii	"char\000"
.LASF93:
	.ascii	"I2C_HandleTypeDef\000"
.LASF78:
	.ascii	"HAL_I2C_MODE_MASTER\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF53:
	.ascii	"DmaBaseAddress\000"
.LASF67:
	.ascii	"HAL_I2C_STATE_BUSY\000"
.LASF12:
	.ascii	"CMAR\000"
.LASF14:
	.ascii	"IFCR\000"
.LASF87:
	.ascii	"hdmatx\000"
.LASF66:
	.ascii	"HAL_I2C_STATE_READY\000"
.LASF97:
	.ascii	"size\000"
.LASF92:
	.ascii	"EventCount\000"
.LASF18:
	.ascii	"TRISE\000"
.LASF74:
	.ascii	"HAL_I2C_STATE_TIMEOUT\000"
.LASF95:
	.ascii	"i2c_addr\000"
.LASF42:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF94:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"MemInc\000"
.LASF90:
	.ascii	"Memaddress\000"
.LASF102:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Src"
	.ascii	"\\drivers\\bsp_i2c1.c\000"
.LASF54:
	.ascii	"ChannelIndex\000"
.LASF62:
	.ascii	"GeneralCallMode\000"
.LASF34:
	.ascii	"MemDataAlignment\000"
.LASF72:
	.ascii	"HAL_I2C_STATE_BUSY_RX_LISTEN\000"
.LASF33:
	.ascii	"PeriphDataAlignment\000"
.LASF65:
	.ascii	"HAL_I2C_STATE_RESET\000"
.LASF35:
	.ascii	"Mode\000"
.LASF55:
	.ascii	"DMA_HandleTypeDef\000"
.LASF103:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Pro"
	.ascii	"ject\000"
.LASF77:
	.ascii	"HAL_I2C_MODE_NONE\000"
.LASF80:
	.ascii	"HAL_I2C_MODE_MEM\000"
.LASF71:
	.ascii	"HAL_I2C_STATE_BUSY_TX_LISTEN\000"
.LASF100:
	.ascii	"bsp_i2c_read_byte_from_slave\000"
.LASF61:
	.ascii	"OwnAddress2\000"
.LASF49:
	.ascii	"XferHalfCpltCallback\000"
.LASF29:
	.ascii	"HAL_LockTypeDef\000"
.LASF52:
	.ascii	"ErrorCode\000"
.LASF39:
	.ascii	"HAL_DMA_STATE_READY\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
