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
	.file	"bsp_uarts.c"
	.text
.Ltext0:
	.section	.text.HAL_UART_TxCpltCallback,"ax",%progbits
	.align	1
	.global	HAL_UART_TxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.type	HAL_UART_TxCpltCallback, %function
HAL_UART_TxCpltCallback:
.LFB71:
	.file 1 "E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\Src\\drivers\\bsp_uarts.c"
	.loc 1 6 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	str	r0, [sp, #4]
	.loc 1 7 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 7 8
	ldr	r2, .L5
	cmp	r3, r2
	bne	.L2
	.loc 1 9 9
	bl	bsp_uart2_dma_tx_cplt_cb
	.loc 1 15 1
	b	.L4
.L2:
	.loc 1 11 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 11 13
	ldr	r2, .L5+4
	cmp	r3, r2
	bne	.L4
	.loc 1 13 9
	bl	bsp_uart1_dma_tx_cplt_cb
.L4:
	.loc 1 15 1
	nop
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L6:
	.align	2
.L5:
	.word	1073759232
	.word	1073821696
.LFE71:
	.size	HAL_UART_TxCpltCallback, .-HAL_UART_TxCpltCallback
	.section	.text.HAL_UART_RxHalfCpltCallback,"ax",%progbits
	.align	1
	.global	HAL_UART_RxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.type	HAL_UART_RxHalfCpltCallback, %function
HAL_UART_RxHalfCpltCallback:
.LFB72:
	.loc 1 18 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #12
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 19 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 19 8
	ldr	r2, .L11
	cmp	r3, r2
	bne	.L8
	.loc 1 21 9
	bl	bsp_uart2_dma_rx_halt_cb
	.loc 1 27 1
	b	.L10
.L8:
	.loc 1 23 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 23 13
	ldr	r2, .L11+4
	cmp	r3, r2
	bne	.L10
	.loc 1 25 9
	bl	bsp_uart1_dma_tx_cplt_cb
.L10:
	.loc 1 27 1
	nop
	add	sp, sp, #12
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.L12:
	.align	2
.L11:
	.word	1073759232
	.word	1073821696
.LFE72:
	.size	HAL_UART_RxHalfCpltCallback, .-HAL_UART_RxHalfCpltCallback
	.section	.text.HAL_UART_RxCpltCallback,"ax",%progbits
	.align	1
	.global	HAL_UART_RxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.type	HAL_UART_RxCpltCallback, %function
HAL_UART_RxCpltCallback:
.LFB73:
	.loc 1 30 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #12
.LCFI7:
	str	r0, [sp, #4]
	.loc 1 31 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 31 8
	ldr	r2, .L17
	cmp	r3, r2
	bne	.L14
	.loc 1 33 9
	bl	bsp_uart2_dma_rx_cplt_cb
	.loc 1 39 1
	b	.L16
.L14:
	.loc 1 35 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 35 13
	ldr	r2, .L17+4
	cmp	r3, r2
	bne	.L16
	.loc 1 37 9
	bl	bsp_uart1_dma_tx_cplt_cb
.L16:
	.loc 1 39 1
	nop
	add	sp, sp, #12
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L18:
	.align	2
.L17:
	.word	1073759232
	.word	1073821696
.LFE73:
	.size	HAL_UART_RxCpltCallback, .-HAL_UART_RxCpltCallback
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
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI3-.LFB72
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LCFI6-.LFB73
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.68/segger-rtl/include/stdint.h"
	.file 3 "../Libraries/cmsis/Device/ST/STM32F1xx/Include/stm32f103xe.h"
	.file 4 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_def.h"
	.file 5 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_dma.h"
	.file 6 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_uart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x574
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd6
	.byte	0x1c
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd9
	.byte	0x1c
	.4byte	0x65
	.uleb128 0x4
	.4byte	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xdb
	.byte	0x1c
	.4byte	0x2c
	.uleb128 0x4
	.4byte	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x10
	.byte	0x3
	.2byte	0x169
	.byte	0x9
	.4byte	0xd5
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x16b
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x16c
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x16d
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x16e
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x16f
	.byte	0x3
	.4byte	0x92
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.2byte	0x171
	.byte	0x9
	.4byte	0x109
	.uleb128 0x7
	.ascii	"ISR\000"
	.byte	0x3
	.2byte	0x173
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x174
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x175
	.byte	0x3
	.4byte	0xe2
	.uleb128 0x6
	.byte	0x1c
	.byte	0x3
	.2byte	0x293
	.byte	0x9
	.4byte	0x181
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x295
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0x7
	.ascii	"DR\000"
	.byte	0x3
	.2byte	0x296
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x7
	.ascii	"BRR\000"
	.byte	0x3
	.2byte	0x297
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x298
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x299
	.byte	0x11
	.4byte	0x7f
	.byte	0x10
	.uleb128 0x7
	.ascii	"CR3\000"
	.byte	0x3
	.2byte	0x29a
	.byte	0x11
	.4byte	0x7f
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x29b
	.byte	0x11
	.4byte	0x7f
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x29c
	.byte	0x3
	.4byte	0x116
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1a9
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0x3
	.4byte	0x18e
	.uleb128 0xc
	.byte	0x1c
	.byte	0x5
	.byte	0x30
	.byte	0x9
	.4byte	0x21a
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x32
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x39
	.byte	0xc
	.4byte	0x73
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3c
	.byte	0xc
	.4byte	0x73
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3f
	.byte	0xc
	.4byte	0x73
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x42
	.byte	0xc
	.4byte	0x73
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x47
	.byte	0xc
	.4byte	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x3
	.4byte	0x1b5
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.4byte	0x24d
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x54
	.byte	0x2
	.4byte	0x226
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x44
	.byte	0x5
	.byte	0x6f
	.byte	0x10
	.4byte	0x303
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.byte	0x71
	.byte	0x1a
	.4byte	0x303
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0x73
	.byte	0x19
	.4byte	0x21a
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x5
	.byte	0x75
	.byte	0x19
	.4byte	0x1a9
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.byte	0x77
	.byte	0x19
	.4byte	0x24d
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0x79
	.byte	0x1a
	.4byte	0x309
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x5
	.byte	0x7b
	.byte	0x1c
	.4byte	0x31c
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x5
	.byte	0x7d
	.byte	0x1c
	.4byte	0x31c
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x5
	.byte	0x7f
	.byte	0x1c
	.4byte	0x31c
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.byte	0x81
	.byte	0x1c
	.4byte	0x31c
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.byte	0x83
	.byte	0x19
	.4byte	0x7f
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x5
	.byte	0x85
	.byte	0x1b
	.4byte	0x322
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x5
	.byte	0x87
	.byte	0x1a
	.4byte	0x73
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.4byte	0x316
	.uleb128 0x12
	.4byte	0x316
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x259
	.uleb128 0xf
	.byte	0x4
	.4byte	0x30b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x109
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x89
	.byte	0x3
	.4byte	0x259
	.uleb128 0xf
	.byte	0x4
	.4byte	0x328
	.uleb128 0xf
	.byte	0x4
	.4byte	0x3a
	.uleb128 0xc
	.byte	0x1c
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x3a5
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.byte	0x31
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0x39
	.byte	0xc
	.4byte	0x73
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0x3c
	.byte	0xc
	.4byte	0x73
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x43
	.byte	0xc
	.4byte	0x73
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0x46
	.byte	0xc
	.4byte	0x73
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0x49
	.byte	0xc
	.4byte	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x6
	.byte	0x4c
	.byte	0x3
	.4byte	0x340
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x6
	.byte	0x76
	.byte	0x1
	.4byte	0x3f0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x23
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xe0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x6
	.byte	0x88
	.byte	0x3
	.4byte	0x3b1
	.uleb128 0x4
	.4byte	0x3f0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0x91
	.byte	0x12
	.4byte	0x73
	.uleb128 0x4
	.4byte	0x401
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x44
	.byte	0x6
	.byte	0x96
	.byte	0x10
	.4byte	0x4e3
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x98
	.byte	0x22
	.4byte	0x4e3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x9a
	.byte	0x21
	.4byte	0x3a5
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0x9c
	.byte	0x22
	.4byte	0x33a
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x6
	.byte	0x9e
	.byte	0x21
	.4byte	0x54
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x6
	.byte	0xa0
	.byte	0x21
	.4byte	0x60
	.byte	0x26
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x6
	.byte	0xa2
	.byte	0x22
	.4byte	0x33a
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x6
	.byte	0xa4
	.byte	0x21
	.4byte	0x54
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x6
	.byte	0xa6
	.byte	0x21
	.4byte	0x60
	.byte	0x2e
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x6
	.byte	0xa8
	.byte	0x1f
	.4byte	0x40d
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x6
	.byte	0xaa
	.byte	0x22
	.4byte	0x334
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x6
	.byte	0xac
	.byte	0x22
	.4byte	0x334
	.byte	0x38
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0xae
	.byte	0x21
	.4byte	0x1a9
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x6
	.byte	0xb0
	.byte	0x21
	.4byte	0x3fc
	.byte	0x3d
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb4
	.byte	0x21
	.4byte	0x3fc
	.byte	0x3e
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.byte	0xb7
	.byte	0x21
	.4byte	0x7f
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x181
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x6
	.byte	0xc9
	.byte	0x3
	.4byte	0x412
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF79
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF80
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x529
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x1d
	.byte	0x32
	.4byte	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4e9
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x555
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x11
	.byte	0x36
	.4byte	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x5
	.byte	0x32
	.4byte	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x66
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x578
	.4byte	0x503
	.ascii	"HAL_UART_RxCpltCallback\000"
	.4byte	0x52f
	.ascii	"HAL_UART_RxHalfCpltCallback\000"
	.4byte	0x555
	.ascii	"HAL_UART_TxCpltCallback\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x210
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x578
	.4byte	0x25
	.ascii	"char\000"
	.4byte	0x2c
	.ascii	"unsigned int\000"
	.4byte	0x33
	.ascii	"signed char\000"
	.4byte	0x46
	.ascii	"unsigned char\000"
	.4byte	0x3a
	.ascii	"uint8_t\000"
	.4byte	0x4d
	.ascii	"short int\000"
	.4byte	0x65
	.ascii	"short unsigned int\000"
	.4byte	0x54
	.ascii	"uint16_t\000"
	.4byte	0x6c
	.ascii	"int\000"
	.4byte	0x73
	.ascii	"uint32_t\000"
	.4byte	0x84
	.ascii	"long long int\000"
	.4byte	0x8b
	.ascii	"long long unsigned int\000"
	.4byte	0xd5
	.ascii	"DMA_Channel_TypeDef\000"
	.4byte	0x109
	.ascii	"DMA_TypeDef\000"
	.4byte	0x181
	.ascii	"USART_TypeDef\000"
	.4byte	0x1a9
	.ascii	"HAL_LockTypeDef\000"
	.4byte	0x21a
	.ascii	"DMA_InitTypeDef\000"
	.4byte	0x24d
	.ascii	"HAL_DMA_StateTypeDef\000"
	.4byte	0x259
	.ascii	"__DMA_HandleTypeDef\000"
	.4byte	0x328
	.ascii	"DMA_HandleTypeDef\000"
	.4byte	0x3a5
	.ascii	"UART_InitTypeDef\000"
	.4byte	0x3f0
	.ascii	"HAL_UART_StateTypeDef\000"
	.4byte	0x401
	.ascii	"HAL_UART_RxTypeTypeDef\000"
	.4byte	0x412
	.ascii	"__UART_HandleTypeDef\000"
	.4byte	0x4e9
	.ascii	"UART_HandleTypeDef\000"
	.4byte	0x4f5
	.ascii	"long int\000"
	.4byte	0x4fc
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
.LASF22:
	.ascii	"Direction\000"
.LASF69:
	.ascii	"TxXferCount\000"
.LASF31:
	.ascii	"HAL_DMA_STATE_READY\000"
.LASF50:
	.ascii	"StopBits\000"
.LASF17:
	.ascii	"GTPR\000"
.LASF39:
	.ascii	"Parent\000"
.LASF65:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF66:
	.ascii	"__UART_HandleTypeDef\000"
.LASF43:
	.ascii	"XferAbortCallback\000"
.LASF4:
	.ascii	"short int\000"
.LASF30:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF74:
	.ascii	"hdmatx\000"
.LASF16:
	.ascii	"DMA_TypeDef\000"
.LASF18:
	.ascii	"USART_TypeDef\000"
.LASF85:
	.ascii	"E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\S"
	.ascii	"rc\\drivers\\bsp_uarts.c\000"
.LASF32:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF73:
	.ascii	"ReceptionType\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF42:
	.ascii	"XferErrorCallback\000"
.LASF64:
	.ascii	"HAL_UART_RxTypeTypeDef\000"
.LASF58:
	.ascii	"HAL_UART_STATE_BUSY_TX\000"
.LASF2:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long int\000"
.LASF61:
	.ascii	"HAL_UART_STATE_TIMEOUT\000"
.LASF38:
	.ascii	"State\000"
.LASF79:
	.ascii	"long int\000"
.LASF23:
	.ascii	"PeriphInc\000"
.LASF37:
	.ascii	"Lock\000"
.LASF28:
	.ascii	"Priority\000"
.LASF86:
	.ascii	"E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\P"
	.ascii	"roject\000"
.LASF87:
	.ascii	"HAL_UART_TxCpltCallback\000"
.LASF36:
	.ascii	"Init\000"
.LASF33:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF56:
	.ascii	"HAL_UART_STATE_READY\000"
.LASF12:
	.ascii	"CPAR\000"
.LASF29:
	.ascii	"DMA_InitTypeDef\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"HAL_UART_STATE_ERROR\000"
.LASF68:
	.ascii	"TxXferSize\000"
.LASF77:
	.ascii	"RxState\000"
.LASF83:
	.ascii	"huart\000"
.LASF54:
	.ascii	"UART_InitTypeDef\000"
.LASF48:
	.ascii	"BaudRate\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF53:
	.ascii	"OverSampling\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF84:
	.ascii	"GNU C11 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=c11 -mcpu=cortex-m3 -mlittle-endian -mfloat-"
	.ascii	"abi=soft -mthumb -mtp=soft -mfp16-format=ieee -muna"
	.ascii	"ligned-access -gdwarf-4 -g2 -gpubnames -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -ffunction-sections -f"
	.ascii	"data-sections -fshort-enums -fno-common\000"
.LASF35:
	.ascii	"Instance\000"
.LASF40:
	.ascii	"XferCpltCallback\000"
.LASF57:
	.ascii	"HAL_UART_STATE_BUSY\000"
.LASF63:
	.ascii	"HAL_UART_StateTypeDef\000"
.LASF75:
	.ascii	"hdmarx\000"
.LASF14:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF51:
	.ascii	"Parity\000"
.LASF11:
	.ascii	"CNDTR\000"
.LASF0:
	.ascii	"char\000"
.LASF59:
	.ascii	"HAL_UART_STATE_BUSY_RX\000"
.LASF60:
	.ascii	"HAL_UART_STATE_BUSY_TX_RX\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF45:
	.ascii	"DmaBaseAddress\000"
.LASF71:
	.ascii	"RxXferSize\000"
.LASF15:
	.ascii	"IFCR\000"
.LASF72:
	.ascii	"RxXferCount\000"
.LASF81:
	.ascii	"HAL_UART_RxCpltCallback\000"
.LASF20:
	.ascii	"HAL_LOCKED\000"
.LASF78:
	.ascii	"UART_HandleTypeDef\000"
.LASF52:
	.ascii	"HwFlowCtl\000"
.LASF34:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF80:
	.ascii	"long unsigned int\000"
.LASF24:
	.ascii	"MemInc\000"
.LASF70:
	.ascii	"pRxBuffPtr\000"
.LASF46:
	.ascii	"ChannelIndex\000"
.LASF13:
	.ascii	"CMAR\000"
.LASF26:
	.ascii	"MemDataAlignment\000"
.LASF19:
	.ascii	"HAL_UNLOCKED\000"
.LASF67:
	.ascii	"pTxBuffPtr\000"
.LASF25:
	.ascii	"PeriphDataAlignment\000"
.LASF27:
	.ascii	"Mode\000"
.LASF55:
	.ascii	"HAL_UART_STATE_RESET\000"
.LASF47:
	.ascii	"DMA_HandleTypeDef\000"
.LASF76:
	.ascii	"gState\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF41:
	.ascii	"XferHalfCpltCallback\000"
.LASF49:
	.ascii	"WordLength\000"
.LASF21:
	.ascii	"HAL_LockTypeDef\000"
.LASF44:
	.ascii	"ErrorCode\000"
.LASF82:
	.ascii	"HAL_UART_RxHalfCpltCallback\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
