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
	.file	"bsp_adc.c"
	.text
.Ltext0:
	.section	.bss.adc1_dma_buff_data,"aw",%nobits
	.align	2
	.type	adc1_dma_buff_data, %object
	.size	adc1_dma_buff_data, 240
adc1_dma_buff_data:
	.space	240
	.section	.data.bsp_adc_channel_map,"aw"
	.align	2
	.type	bsp_adc_channel_map, %object
	.size	bsp_adc_channel_map, 152
bsp_adc_channel_map:
	.word	1073811456
	.short	2
	.byte	0
	.space	1
	.short	0
	.space	58
	.short	0
	.space	2
	.word	0
	.word	1073811456
	.short	4
	.byte	0
	.space	1
	.short	0
	.space	58
	.short	0
	.space	2
	.word	0
	.section	.data.bsp_adc_map,"aw"
	.align	2
	.type	bsp_adc_map, %object
	.size	bsp_adc_map, 64
bsp_adc_map:
	.word	0
	.space	44
	.word	1073816576
	.word	bsp_adc_channel_map
	.byte	2
	.space	1
	.short	60
	.word	adc1_dma_buff_data
	.section	.text.bsp_adc_io_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_adc_io_init, %function
bsp_adc_io_init:
.LFB71:
	.file 1 "E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\Src\\drivers\\bsp_adc.c"
	.loc 1 42 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #36
.LCFI1:
	str	r0, [sp, #4]
.LBB2:
	.loc 1 43 5
	ldr	r3, .L4
	ldr	r3, [r3, #24]
	ldr	r2, .L4
	orr	r3, r3, #16
	str	r3, [r2, #24]
	ldr	r3, .L4
	ldr	r3, [r3, #24]
	and	r3, r3, #16
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
.LBE2:
	.loc 1 44 22
	add	r3, sp, #12
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	.loc 1 45 27
	movs	r3, #3
	str	r3, [sp, #24]
.LBB3:
	.loc 1 46 18
	movs	r3, #0
	strh	r3, [sp, #30]	@ movhi
	.loc 1 46 5
	b	.L2
.L3:
	.loc 1 48 30 discriminator 3
	movs	r3, #3
	str	r3, [sp, #16]
	.loc 1 49 30 discriminator 3
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 50 35 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 50 44 discriminator 3
	ldrh	r3, [sp, #30]
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 50 47 discriminator 3
	ldrh	r3, [r3, #4]
	.loc 1 50 30 discriminator 3
	str	r3, [sp, #12]
	.loc 1 51 26 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 51 35 discriminator 3
	ldrh	r3, [sp, #30]
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 51 9 discriminator 3
	ldr	r3, [r3]
	add	r2, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	HAL_GPIO_Init
	.loc 1 46 49 discriminator 3
	ldrh	r3, [sp, #30]
	adds	r3, r3, #1
	strh	r3, [sp, #30]	@ movhi
.L2:
	.loc 1 46 32 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 1 46 5 discriminator 1
	ldrh	r2, [sp, #30]
	cmp	r2, r3
	bcc	.L3
.LBE3:
	.loc 1 53 1
	nop
	nop
	add	sp, sp, #36
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L5:
	.align	2
.L4:
	.word	1073876992
.LFE71:
	.size	bsp_adc_io_init, .-bsp_adc_io_init
	.section	.text.bsp_adc_channel_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_adc_channel_init, %function
bsp_adc_channel_init:
.LFB72:
	.loc 1 55 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #28
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 56 28
	add	r3, sp, #8
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
.LBB4:
	.loc 1 57 18
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 57 5
	b	.L7
.L9:
	.loc 1 59 35
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 59 44
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 59 47
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 1 59 30
	str	r3, [sp, #8]
	.loc 1 60 34
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	.loc 1 60 30
	str	r3, [sp, #12]
	.loc 1 61 30
	movs	r3, #5
	str	r3, [sp, #16]
	.loc 1 63 13
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	HAL_ADC_ConfigChannel
	mov	r3, r0
	.loc 1 63 12
	cmp	r3, #0
	beq	.L8
	.loc 1 65 13
	bl	Error_Handler
.L8:
	.loc 1 57 48 discriminator 2
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #23]
.L7:
	.loc 1 57 32 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	.loc 1 57 5 discriminator 1
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L9
.LBE4:
	.loc 1 68 1
	nop
	nop
	add	sp, sp, #28
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.LFE72:
	.size	bsp_adc_channel_init, .-bsp_adc_channel_init
	.section	.text.bsp_adc_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_adc_init, %function
bsp_adc_init:
.LFB73:
	.loc 1 71 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #12
.LCFI7:
	str	r0, [sp, #4]
	.loc 1 72 24
	ldr	r3, [sp, #4]
	ldr	r2, .L13
	str	r2, [r3]
	.loc 1 73 33
	ldr	r3, [sp, #4]
	mov	r2, #256
	str	r2, [r3, #8]
	.loc 1 74 39
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #12]
	.loc 1 75 42
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #20]
	.loc 1 76 37
	ldr	r3, [sp, #4]
	mov	r2, #917504
	str	r2, [r3, #28]
	.loc 1 77 30
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 78 36
	ldr	r3, [sp, #4]
	movs	r2, #2
	str	r2, [r3, #16]
	.loc 1 79 40
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 80 9
	ldr	r3, [sp, #4]
	mov	r0, r3
	bl	HAL_ADC_Init
	mov	r3, r0
	.loc 1 80 8
	cmp	r3, #0
	beq	.L12
	.loc 1 82 9
	bl	Error_Handler
.L12:
	.loc 1 84 1
	nop
	add	sp, sp, #12
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L14:
	.align	2
.L13:
	.word	1073816576
.LFE73:
	.size	bsp_adc_init, .-bsp_adc_init
	.section	.text.bsp_adc_dma_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_adc_dma_init, %function
bsp_adc_dma_init:
.LFB74:
	.loc 1 86 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #20
.LCFI10:
	str	r0, [sp, #4]
	.loc 1 87 11
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #48]
	.loc 1 87 7
	ldr	r2, .L18
	cmp	r3, r2
	bne	.L17
.LBB5:
.LBB6:
	.loc 1 89 9
	ldr	r3, .L18+4
	ldr	r3, [r3, #20]
	ldr	r2, .L18+4
	orr	r3, r3, #1
	str	r3, [r2, #20]
	ldr	r3, .L18+4
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
.LBE6:
	.loc 1 92 28
	ldr	r3, .L18+8
	ldr	r2, .L18+12
	str	r2, [r3]
	.loc 1 93 34
	ldr	r3, .L18+8
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 94 34
	ldr	r3, .L18+8
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 95 31
	ldr	r3, .L18+8
	movs	r2, #128
	str	r2, [r3, #12]
	.loc 1 96 44
	ldr	r3, .L18+8
	mov	r2, #256
	str	r2, [r3, #16]
	.loc 1 97 41
	ldr	r3, .L18+8
	mov	r2, #1024
	str	r2, [r3, #20]
	.loc 1 98 29
	ldr	r3, .L18+8
	movs	r2, #32
	str	r2, [r3, #24]
	.loc 1 99 33
	ldr	r3, .L18+8
	mov	r2, #8192
	str	r2, [r3, #28]
	.loc 1 100 9
	ldr	r0, .L18+8
	bl	HAL_DMA_Init
	.loc 1 103 9
	ldr	r3, [sp, #4]
	ldr	r2, .L18+8
	str	r2, [r3, #32]
	ldr	r3, [sp, #4]
	ldr	r2, .L18+8
	str	r3, [r2, #36]
.L17:
.LBE5:
	.loc 1 106 1
	nop
	add	sp, sp, #20
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.L19:
	.align	2
.L18:
	.word	1073816576
	.word	1073876992
	.word	hdma_adc1.0
	.word	1073872904
.LFE74:
	.size	bsp_adc_dma_init, .-bsp_adc_dma_init
	.section	.text.average_filter,"ax",%progbits
	.align	1
	.global	average_filter
	.syntax unified
	.thumb
	.thumb_func
	.type	average_filter, %function
average_filter:
.LFB75:
	.loc 1 108 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI12:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 1 109 14
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #22]	@ movhi
	.loc 1 109 28
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #20]	@ movhi
	.loc 1 110 14
	movs	r3, #0
	str	r3, [sp, #16]
.LBB7:
	.loc 1 111 19
	movs	r3, #0
	strh	r3, [sp, #14]	@ movhi
	.loc 1 111 5
	b	.L21
.L24:
	.loc 1 113 22
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	.loc 1 113 12
	ldrh	r2, [sp, #22]
	cmp	r2, r3
	bcs	.L22
	.loc 1 115 22
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 1 115 17
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #22]	@ movhi
.L22:
	.loc 1 117 22
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	.loc 1 117 12
	ldrh	r2, [sp, #20]
	cmp	r2, r3
	bls	.L23
	.loc 1 119 22
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 1 119 17
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #20]	@ movhi
.L23:
	.loc 1 121 22 discriminator 2
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	.loc 1 121 16 discriminator 2
	ldr	r3, [sp, #16]
	add	r3, r3, r2
	str	r3, [sp, #16]
	.loc 1 111 36 discriminator 2
	ldrh	r3, [sp, #14]
	adds	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
.L21:
	.loc 1 111 5 discriminator 1
	ldrh	r2, [sp, #14]
	ldrh	r3, [sp, #2]
	cmp	r2, r3
	bcc	.L24
.LBE7:
	.loc 1 123 20
	ldrh	r3, [sp, #22]
	ldr	r2, [sp, #16]
	subs	r2, r2, r3
	.loc 1 123 26
	ldrh	r3, [sp, #20]
	subs	r3, r2, r3
	.loc 1 123 40
	ldrh	r2, [sp, #2]
	subs	r2, r2, #2
	.loc 1 123 33
	udiv	r3, r3, r2
	uxth	r3, r3
	.loc 1 124 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI13:
	@ sp needed
	bx	lr
.LFE75:
	.size	average_filter, .-average_filter
	.section	.text.bubbleSort,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bubbleSort, %function
bubbleSort:
.LFB76:
	.loc 1 126 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI14:
	sub	sp, sp, #12
.LCFI15:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 1 127 12
	ldrh	r3, [sp, #2]
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	average_filter
	mov	r3, r0
	.loc 1 128 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI16:
	@ sp needed
	ldr	pc, [sp], #4
.LFE76:
	.size	bubbleSort, .-bubbleSort
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.section	.text.bsp_adc_get_result,"ax",%progbits
	.align	1
	.global	bsp_adc_get_result
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_adc_get_result, %function
bsp_adc_get_result:
.LFB77:
	.loc 1 130 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI17:
	sub	sp, sp, #16
.LCFI18:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 1 131 13
	ldrh	r3, [sp, #2]	@ movhi
	strb	r3, [sp, #13]
.LBB8:
	.loc 1 132 18
	movs	r3, #0
	strh	r3, [sp, #14]	@ movhi
	.loc 1 132 5
	b	.L29
.L30:
	.loc 1 134 43 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #60]
	.loc 1 134 56 discriminator 3
	ldrh	r3, [sp, #14]
	.loc 1 134 61 discriminator 3
	ldr	r1, [sp, #4]
	ldrb	r1, [r1, #56]	@ zero_extendqisi2
	.loc 1 134 56 discriminator 3
	mul	r1, r3, r1
	.loc 1 134 75 discriminator 3
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	add	r3, r3, r1
	.loc 1 134 53 discriminator 3
	lsls	r3, r3, #1
	adds	r1, r2, r3
	.loc 1 134 12 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 134 21 discriminator 3
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r0, #76
	mul	r3, r0, r3
	add	r3, r3, r2
	.loc 1 134 34 discriminator 3
	ldrh	r2, [sp, #14]
	.loc 1 134 53 discriminator 3
	ldrh	r1, [r1]
	.loc 1 134 38 discriminator 3
	adds	r2, r2, #4
	strh	r1, [r3, r2, lsl #1]	@ movhi
	.loc 1 132 58 discriminator 3
	ldrh	r3, [sp, #14]
	adds	r3, r3, #1
	strh	r3, [sp, #14]	@ movhi
.L29:
	.loc 1 132 5 discriminator 1
	ldrh	r3, [sp, #14]
	cmp	r3, #29
	bls	.L30
.LBE8:
	.loc 1 136 48
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 136 57
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 136 64
	add	r0, r3, #8
	.loc 1 136 8
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 136 17
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r1, #76
	mul	r3, r1, r3
	adds	r4, r2, r3
	.loc 1 136 34
	movs	r1, #30
	bl	bubbleSort
	mov	r3, r0
	.loc 1 136 32
	strh	r3, [r4, #68]	@ movhi
	.loc 1 137 62
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 137 71
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 137 78
	ldrh	r2, [r3, #68]
	.loc 1 137 86
	ldr	r3, .L31+8
	umull	r1, r3, r3, r2
	subs	r2, r2, r3
	lsrs	r2, r2, #1
	add	r3, r3, r2
	lsrs	r3, r3, #11
	uxth	r3, r3
	.loc 1 137 57
	mov	r0, r3
	bl	__aeabi_i2d
	adr	r3, .L31
	ldrd	r2, [r3]
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 137 8
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #52]
	.loc 1 137 17
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r4, #76
	mul	r3, r4, r3
	adds	r4, r2, r3
	.loc 1 137 57
	bl	__aeabi_d2f
	mov	r3, r0
	.loc 1 137 30
	str	r3, [r4, #72]	@ float
	.loc 1 138 1
	nop
	add	sp, sp, #16
.LCFI19:
	@ sp needed
	pop	{r4, pc}
.L32:
	.align	3
.L31:
	.word	-858993460
	.word	1076088012
	.word	1048833
.LFE77:
	.size	bsp_adc_get_result, .-bsp_adc_get_result
	.section	.text.bsp_get_adc_volt,"ax",%progbits
	.align	1
	.global	bsp_get_adc_volt
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_get_adc_volt, %function
bsp_get_adc_volt:
.LFB78:
	.loc 1 140 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI20:
	sub	sp, sp, #20
.LCFI21:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 141 13
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #15]
.LBB9:
	.loc 1 142 18
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 142 5
	b	.L34
.L37:
	.loc 1 144 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	ldr	r2, .L38
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #56
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 144 12
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L35
	.loc 1 146 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 146 13
	lsls	r3, r3, #6
	ldr	r2, .L38
	add	r3, r3, r2
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	bsp_adc_get_result
	.loc 1 147 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	ldr	r2, .L38
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #52
	ldr	r2, [r3]
	.loc 1 147 44
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	movs	r1, #76
	mul	r3, r1, r3
	add	r3, r3, r2
	.loc 1 147 51
	ldr	r2, [r3, #72]	@ float
	.loc 1 147 20
	ldr	r3, [sp]
	str	r2, [r3]	@ float
	.loc 1 148 20
	movs	r3, #0
	b	.L36
.L35:
	.loc 1 150 32 discriminator 2
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	ldr	r2, .L38
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #56
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 150 15 discriminator 2
	ldrb	r2, [sp, #15]
	subs	r3, r2, r3
	strb	r3, [sp, #15]
	.loc 1 142 54 discriminator 2
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #14]
.L34:
	.loc 1 142 5 discriminator 1
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
.LBE9:
	.loc 1 152 12
	movs	r3, #0
.L36:
	.loc 1 153 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.L39:
	.align	2
.L38:
	.word	bsp_adc_map
.LFE78:
	.size	bsp_get_adc_volt, .-bsp_get_adc_volt
	.section	.text.bsp_task_adc_init,"ax",%progbits
	.align	1
	.global	bsp_task_adc_init
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_task_adc_init, %function
bsp_task_adc_init:
.LFB79:
	.loc 1 156 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #12
.LCFI24:
	.loc 1 157 5
	ldr	r3, .L43
	ldr	r3, [r3, #4]
	bic	r3, r3, #49152
	ldr	r2, .L43
	orr	r3, r3, #32768
	str	r3, [r2, #4]
.LBB10:
	.loc 1 158 5
	ldr	r3, .L43
	ldr	r3, [r3, #24]
	ldr	r2, .L43
	orr	r3, r3, #512
	str	r3, [r2, #24]
	ldr	r3, .L43
	ldr	r3, [r3, #24]
	and	r3, r3, #512
	str	r3, [sp]
	ldr	r3, [sp]
.LBE10:
.LBB11:
	.loc 1 159 17
	movs	r3, #0
	strb	r3, [sp, #7]
	.loc 1 159 5
	b	.L41
.L42:
	.loc 1 161 37 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 161 9 discriminator 3
	lsls	r3, r3, #6
	ldr	r2, .L43+4
	add	r3, r3, r2
	mov	r0, r3
	bl	bsp_adc_io_init
	.loc 1 162 34 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 162 9 discriminator 3
	lsls	r3, r3, #6
	ldr	r2, .L43+4
	add	r3, r3, r2
	mov	r0, r3
	bl	bsp_adc_init
	.loc 1 163 38 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 163 9 discriminator 3
	lsls	r3, r3, #6
	ldr	r2, .L43+4
	add	r3, r3, r2
	mov	r0, r3
	bl	bsp_adc_dma_init
	.loc 1 164 42 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 164 9 discriminator 3
	lsls	r3, r3, #6
	ldr	r2, .L43+4
	add	r3, r3, r2
	mov	r0, r3
	bl	bsp_adc_channel_init
	.loc 1 165 42 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 165 9 discriminator 3
	lsls	r3, r3, #6
	ldr	r2, .L43+4
	adds	r0, r3, r2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 165 75 discriminator 3
	ldr	r2, .L43+4
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #60
	ldr	r1, [r3]
	.loc 1 165 100 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldr	r2, .L43+4
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #58
	ldrh	r3, [r3]
	.loc 1 165 9 discriminator 3
	mov	r2, r3
	bl	HAL_ADC_Start_DMA
	.loc 1 159 54 discriminator 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #7]
.L41:
	.loc 1 159 5 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
.LBE11:
	.loc 1 167 1
	nop
	nop
	add	sp, sp, #12
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.L44:
	.align	2
.L43:
	.word	1073876992
	.word	bsp_adc_map
.LFE79:
	.size	bsp_task_adc_init, .-bsp_task_adc_init
	.section	.bss.hdma_adc1.0,"aw",%nobits
	.align	2
	.type	hdma_adc1.0, %object
	.size	hdma_adc1.0, 68
hdma_adc1.0:
	.space	68
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
	.uleb128 0x28
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
	.uleb128 0x20
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI9-.LFB74
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI12-.LFB75
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI14-.LFB76
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI17-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI20-.LFB78
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI23-.LFB79
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.68/segger-rtl/include/stdint.h"
	.file 3 "../Libraries/cmsis/Device/ST/STM32F1xx/Include/stm32f103xe.h"
	.file 4 "../Libraries/cmsis/Device/ST/STM32F1xx/Include/stm32f1xx.h"
	.file 5 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_def.h"
	.file 6 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_gpio.h"
	.file 7 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_dma.h"
	.file 8 "../Libraries/stm32f1xx_hal_driver/Inc/stm32f1xx_hal_adc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb0c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xc
	.4byte	.LASF129
	.4byte	.LASF130
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
	.byte	0x50
	.byte	0x3
	.byte	0xa1
	.byte	0x9
	.4byte	0x19e
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x3
	.byte	0xa3
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x3
	.byte	0xa4
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x3
	.byte	0xa5
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x3
	.byte	0xa6
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0xa7
	.byte	0x11
	.4byte	0x7f
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa8
	.byte	0x11
	.4byte	0x7f
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa9
	.byte	0x11
	.4byte	0x7f
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0xaa
	.byte	0x11
	.4byte	0x7f
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0xab
	.byte	0x11
	.4byte	0x7f
	.byte	0x20
	.uleb128 0x7
	.ascii	"HTR\000"
	.byte	0x3
	.byte	0xac
	.byte	0x11
	.4byte	0x7f
	.byte	0x24
	.uleb128 0x7
	.ascii	"LTR\000"
	.byte	0x3
	.byte	0xad
	.byte	0x11
	.4byte	0x7f
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0xae
	.byte	0x11
	.4byte	0x7f
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaf
	.byte	0x11
	.4byte	0x7f
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0xb0
	.byte	0x11
	.4byte	0x7f
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0xb1
	.byte	0x11
	.4byte	0x7f
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0xb2
	.byte	0x11
	.4byte	0x7f
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x3
	.byte	0xb3
	.byte	0x11
	.4byte	0x7f
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x3
	.byte	0xb4
	.byte	0x11
	.4byte	0x7f
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0xb5
	.byte	0x11
	.4byte	0x7f
	.byte	0x48
	.uleb128 0x7
	.ascii	"DR\000"
	.byte	0x3
	.byte	0xb6
	.byte	0x11
	.4byte	0x7f
	.byte	0x4c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0xb7
	.byte	0x3
	.4byte	0x92
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.2byte	0x169
	.byte	0x9
	.4byte	0x1ed
	.uleb128 0xa
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x16b
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x16c
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x16d
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x16e
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x16f
	.byte	0x3
	.4byte	0x1aa
	.uleb128 0x9
	.byte	0x8
	.byte	0x3
	.2byte	0x171
	.byte	0x9
	.4byte	0x221
	.uleb128 0xa
	.ascii	"ISR\000"
	.byte	0x3
	.2byte	0x173
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x174
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x175
	.byte	0x3
	.4byte	0x1fa
	.uleb128 0x9
	.byte	0x1c
	.byte	0x3
	.2byte	0x1e1
	.byte	0x9
	.4byte	0x29b
	.uleb128 0xa
	.ascii	"CRL\000"
	.byte	0x3
	.2byte	0x1e3
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0xa
	.ascii	"CRH\000"
	.byte	0x3
	.2byte	0x1e4
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x1e5
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x1e6
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x1e7
	.byte	0x11
	.4byte	0x7f
	.byte	0x10
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x3
	.2byte	0x1e8
	.byte	0x11
	.4byte	0x7f
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x1e9
	.byte	0x11
	.4byte	0x7f
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x1ea
	.byte	0x3
	.4byte	0x22e
	.uleb128 0x9
	.byte	0x28
	.byte	0x3
	.2byte	0x223
	.byte	0x9
	.4byte	0x33e
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x225
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x226
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x227
	.byte	0x11
	.4byte	0x7f
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x228
	.byte	0x11
	.4byte	0x7f
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x229
	.byte	0x11
	.4byte	0x7f
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x22a
	.byte	0x11
	.4byte	0x7f
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x22b
	.byte	0x11
	.4byte	0x7f
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x22c
	.byte	0x11
	.4byte	0x7f
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x22d
	.byte	0x11
	.4byte	0x7f
	.byte	0x20
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x22e
	.byte	0x11
	.4byte	0x7f
	.byte	0x24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x231
	.byte	0x3
	.4byte	0x2a8
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x4
	.byte	0x9e
	.byte	0x1
	.4byte	0x366
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa1
	.byte	0x3
	.4byte	0x34b
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x28
	.byte	0x1
	.4byte	0x399
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x3b4
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0x36
	.byte	0x3
	.4byte	0x399
	.uleb128 0x6
	.byte	0x10
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x3fe
	.uleb128 0x7
	.ascii	"Pin\000"
	.byte	0x6
	.byte	0x31
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.byte	0x34
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.4byte	0x73
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.byte	0x3a
	.byte	0xc
	.4byte	0x73
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x3c
	.byte	0x3
	.4byte	0x3c0
	.uleb128 0x6
	.byte	0x1c
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x46f
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x7
	.byte	0x36
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x7
	.byte	0x39
	.byte	0xc
	.4byte	0x73
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x7
	.byte	0x3c
	.byte	0xc
	.4byte	0x73
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x7
	.byte	0x3f
	.byte	0xc
	.4byte	0x73
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x7
	.byte	0x42
	.byte	0xc
	.4byte	0x73
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x7
	.byte	0x47
	.byte	0xc
	.4byte	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x7
	.byte	0x49
	.byte	0x3
	.4byte	0x40a
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x46
	.byte	0x7
	.byte	0x4f
	.byte	0x1
	.4byte	0x4a2
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x7
	.byte	0x54
	.byte	0x2
	.4byte	0x47b
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x44
	.byte	0x7
	.byte	0x6f
	.byte	0x10
	.4byte	0x558
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x7
	.byte	0x71
	.byte	0x1a
	.4byte	0x558
	.byte	0
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x7
	.byte	0x73
	.byte	0x19
	.4byte	0x46f
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x7
	.byte	0x75
	.byte	0x19
	.4byte	0x3b4
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x7
	.byte	0x77
	.byte	0x19
	.4byte	0x4a2
	.byte	0x21
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x7
	.byte	0x79
	.byte	0x1a
	.4byte	0x55e
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x7
	.byte	0x7b
	.byte	0x1c
	.4byte	0x571
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x7
	.byte	0x7d
	.byte	0x1c
	.4byte	0x571
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x7
	.byte	0x7f
	.byte	0x1c
	.4byte	0x571
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x7
	.byte	0x81
	.byte	0x1c
	.4byte	0x571
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x7
	.byte	0x83
	.byte	0x19
	.4byte	0x7f
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x7
	.byte	0x85
	.byte	0x1b
	.4byte	0x577
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x7
	.byte	0x87
	.byte	0x1a
	.4byte	0x73
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x12
	.4byte	0x56b
	.uleb128 0x13
	.4byte	0x56b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x4ae
	.uleb128 0x10
	.byte	0x4
	.4byte	0x560
	.uleb128 0x10
	.byte	0x4
	.4byte	0x221
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x7
	.byte	0x89
	.byte	0x3
	.4byte	0x4ae
	.uleb128 0x6
	.byte	0x1c
	.byte	0x8
	.byte	0x35
	.byte	0x9
	.4byte	0x5ee
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x8
	.byte	0x3a
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x8
	.byte	0x45
	.byte	0x13
	.4byte	0x366
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x8
	.byte	0x48
	.byte	0xc
	.4byte	0x73
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x8
	.byte	0x4b
	.byte	0x14
	.4byte	0x366
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x8
	.byte	0x4f
	.byte	0xc
	.4byte	0x73
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x8
	.byte	0x52
	.byte	0xc
	.4byte	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x8
	.byte	0x56
	.byte	0x2
	.4byte	0x589
	.uleb128 0x6
	.byte	0xc
	.byte	0x8
	.byte	0x5d
	.byte	0x9
	.4byte	0x62b
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x8
	.byte	0x5f
	.byte	0xc
	.4byte	0x73
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x8
	.byte	0x66
	.byte	0xc
	.4byte	0x73
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x8
	.byte	0x69
	.byte	0xc
	.4byte	0x73
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x8
	.byte	0x72
	.byte	0x2
	.4byte	0x5fa
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x30
	.byte	0x8
	.byte	0xb0
	.byte	0x10
	.4byte	0x693
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x8
	.byte	0xb2
	.byte	0x22
	.4byte	0x693
	.byte	0
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x8
	.byte	0xb4
	.byte	0x21
	.4byte	0x5ee
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x8
	.byte	0xb6
	.byte	0x22
	.4byte	0x699
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x8
	.byte	0xb8
	.byte	0x21
	.4byte	0x3b4
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x8
	.byte	0xba
	.byte	0x21
	.4byte	0x7f
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x8
	.byte	0xbc
	.byte	0x21
	.4byte	0x7f
	.byte	0x2c
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x10
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x8
	.byte	0xc7
	.byte	0x2
	.4byte	0x637
	.uleb128 0x10
	.byte	0x4
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF99
	.uleb128 0x6
	.byte	0x4c
	.byte	0x1
	.byte	0x4
	.byte	0x9
	.4byte	0x717
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0x717
	.byte	0
	.uleb128 0x7
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x7
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.4byte	0x3a
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0x71d
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.4byte	0x54
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0x72d
	.byte	0x48
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x29b
	.uleb128 0x14
	.4byte	0x54
	.4byte	0x72d
	.uleb128 0x15
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF105
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.4byte	0x6bf
	.uleb128 0x6
	.byte	0x40
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x798
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0x1
	.byte	0x13
	.byte	0x17
	.4byte	0x69f
	.byte	0
	.uleb128 0x7
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x14
	.byte	0x12
	.4byte	0x693
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x1
	.byte	0x15
	.byte	0x19
	.4byte	0x798
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x1
	.byte	0x16
	.byte	0x19
	.4byte	0x3a
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x1
	.byte	0x17
	.byte	0x19
	.4byte	0x54
	.byte	0x3a
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x1
	.byte	0x18
	.byte	0x19
	.4byte	0x6ab
	.byte	0x3c
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x734
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.4byte	0x740
	.uleb128 0x14
	.4byte	0x54
	.4byte	0x7ba
	.uleb128 0x15
	.4byte	0x2c
	.byte	0x77
	.byte	0
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x1b
	.byte	0x11
	.4byte	0x7aa
	.uleb128 0x5
	.byte	0x3
	.4byte	adc1_dma_buff_data
	.uleb128 0x14
	.4byte	0x734
	.4byte	0x7dc
	.uleb128 0x15
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0x21
	.byte	0x1a
	.4byte	0x7cc
	.uleb128 0x5
	.byte	0x3
	.4byte	bsp_adc_channel_map
	.uleb128 0x14
	.4byte	0x79e
	.4byte	0x7fe
	.uleb128 0x15
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0x25
	.byte	0x12
	.4byte	0x7ee
	.uleb128 0x5
	.byte	0x3
	.4byte	bsp_adc_map
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x1
	.byte	0x9b
	.byte	0x6
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x18
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x843
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x19
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9f
	.byte	0x11
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x3a
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ba
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x8b
	.byte	0x22
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x1
	.byte	0x8b
	.byte	0x31
	.4byte	0x8ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0x8d
	.byte	0xd
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x19
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8e
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x72d
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x1
	.byte	0x81
	.byte	0x6
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91b
	.uleb128 0x1d
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x81
	.byte	0x24
	.4byte	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF108
	.byte	0x1
	.byte	0x81
	.byte	0x31
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0x83
	.byte	0xd
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1a
	.ascii	"j\000"
	.byte	0x1
	.byte	0x84
	.byte	0x12
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x79e
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x1
	.byte	0x7d
	.byte	0x11
	.4byte	0x54
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95a
	.uleb128 0x1d
	.ascii	"arr\000"
	.byte	0x1
	.byte	0x7d
	.byte	0x26
	.4byte	0x6ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.ascii	"num\000"
	.byte	0x1
	.byte	0x7d
	.byte	0x34
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x1
	.byte	0x6b
	.byte	0xa
	.4byte	0x54
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d7
	.uleb128 0x1d
	.ascii	"arr\000"
	.byte	0x1
	.byte	0x6b
	.byte	0x2c
	.4byte	0x9d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii	"len\000"
	.byte	0x1
	.byte	0x6b
	.byte	0x3a
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.ascii	"max\000"
	.byte	0x1
	.byte	0x6d
	.byte	0xe
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x1a
	.ascii	"min\000"
	.byte	0x1
	.byte	0x6d
	.byte	0x1c
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x19
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6f
	.byte	0x13
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x60
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa38
	.uleb128 0x1d
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x55
	.byte	0x29
	.4byte	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x16
	.4byte	.LASF122
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.4byte	0x57d
	.uleb128 0x5
	.byte	0x3
	.4byte	hdma_adc1.0
	.uleb128 0x19
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0x1d
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x46
	.byte	0x25
	.4byte	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaaa
	.uleb128 0x1d
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x36
	.byte	0x2d
	.4byte	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0x38
	.byte	0x1c
	.4byte	0x62b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x39
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.ascii	"adc\000"
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.4byte	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2c
	.byte	0x16
	.4byte	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xaf7
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2e
	.byte	0x12
	.4byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.4byte	0x168
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb10
	.4byte	0x359
	.ascii	"DISABLE\000"
	.4byte	0x35f
	.ascii	"ENABLE\000"
	.4byte	0x380
	.ascii	"HAL_OK\000"
	.4byte	0x386
	.ascii	"HAL_ERROR\000"
	.4byte	0x38c
	.ascii	"HAL_BUSY\000"
	.4byte	0x392
	.ascii	"HAL_TIMEOUT\000"
	.4byte	0x7ba
	.ascii	"adc1_dma_buff_data\000"
	.4byte	0x7dc
	.ascii	"bsp_adc_channel_map\000"
	.4byte	0x7fe
	.ascii	"bsp_adc_map\000"
	.4byte	0x7ba
	.ascii	"adc1_dma_buff_data\000"
	.4byte	0x810
	.ascii	"bsp_task_adc_init\000"
	.4byte	0x85b
	.ascii	"bsp_get_adc_volt\000"
	.4byte	0x8c0
	.ascii	"bsp_adc_get_result\000"
	.4byte	0x921
	.ascii	"bubbleSort\000"
	.4byte	0x95a
	.ascii	"average_filter\000"
	.4byte	0x9dd
	.ascii	"bsp_adc_dma_init\000"
	.4byte	0xa38
	.ascii	"bsp_adc_init\000"
	.4byte	0xa5e
	.ascii	"bsp_adc_channel_init\000"
	.4byte	0xaaa
	.ascii	"bsp_adc_io_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x269
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xb10
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
	.4byte	0x19e
	.ascii	"ADC_TypeDef\000"
	.4byte	0x1ed
	.ascii	"DMA_Channel_TypeDef\000"
	.4byte	0x221
	.ascii	"DMA_TypeDef\000"
	.4byte	0x29b
	.ascii	"GPIO_TypeDef\000"
	.4byte	0x33e
	.ascii	"RCC_TypeDef\000"
	.4byte	0x366
	.ascii	"FunctionalState\000"
	.4byte	0x3b4
	.ascii	"HAL_LockTypeDef\000"
	.4byte	0x3fe
	.ascii	"GPIO_InitTypeDef\000"
	.4byte	0x46f
	.ascii	"DMA_InitTypeDef\000"
	.4byte	0x4a2
	.ascii	"HAL_DMA_StateTypeDef\000"
	.4byte	0x4ae
	.ascii	"__DMA_HandleTypeDef\000"
	.4byte	0x57d
	.ascii	"DMA_HandleTypeDef\000"
	.4byte	0x5ee
	.ascii	"ADC_InitTypeDef\000"
	.4byte	0x62b
	.ascii	"ADC_ChannelConfTypeDef\000"
	.4byte	0x637
	.ascii	"__ADC_HandleTypeDef\000"
	.4byte	0x69f
	.ascii	"ADC_HandleTypeDef\000"
	.4byte	0x6b1
	.ascii	"long int\000"
	.4byte	0x6b8
	.ascii	"long unsigned int\000"
	.4byte	0x72d
	.ascii	"float\000"
	.4byte	0x734
	.ascii	"bsp_adc_channel_t\000"
	.4byte	0x79e
	.ascii	"bsp_adc_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
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
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
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
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF124:
	.ascii	"bsp_adc_init\000"
.LASF33:
	.ascii	"LCKR\000"
.LASF70:
	.ascii	"Init\000"
.LASF63:
	.ascii	"DMA_InitTypeDef\000"
.LASF48:
	.ascii	"HAL_BUSY\000"
.LASF43:
	.ascii	"DISABLE\000"
.LASF110:
	.ascii	"dma_value_size\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF82:
	.ascii	"DataAlign\000"
.LASF88:
	.ascii	"ExternalTrigConv\000"
.LASF89:
	.ascii	"ADC_InitTypeDef\000"
.LASF64:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF20:
	.ascii	"JSQR\000"
.LASF9:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"BSRR\000"
.LASF75:
	.ascii	"XferHalfCpltCallback\000"
.LASF104:
	.ascii	"volt\000"
.LASF112:
	.ascii	"bsp_adc_t\000"
.LASF116:
	.ascii	"tmpreg\000"
.LASF52:
	.ascii	"HAL_LockTypeDef\000"
.LASF42:
	.ascii	"RCC_TypeDef\000"
.LASF98:
	.ascii	"long int\000"
.LASF44:
	.ascii	"ENABLE\000"
.LASF36:
	.ascii	"APB2RSTR\000"
.LASF58:
	.ascii	"PeriphInc\000"
.LASF81:
	.ascii	"DMA_HandleTypeDef\000"
.LASF87:
	.ascii	"NbrOfDiscConversion\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"ADC_TypeDef\000"
.LASF80:
	.ascii	"ChannelIndex\000"
.LASF73:
	.ascii	"Parent\000"
.LASF71:
	.ascii	"Lock\000"
.LASF53:
	.ascii	"Mode\000"
.LASF57:
	.ascii	"Direction\000"
.LASF122:
	.ascii	"hdma_adc1\000"
.LASF83:
	.ascii	"ScanConvMode\000"
.LASF45:
	.ascii	"FunctionalState\000"
.LASF102:
	.ascii	"value\000"
.LASF49:
	.ascii	"HAL_TIMEOUT\000"
.LASF31:
	.ascii	"DMA_TypeDef\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF93:
	.ascii	"ADC_ChannelConfTypeDef\000"
.LASF127:
	.ascii	"GPIO_InitStruct\000"
.LASF27:
	.ascii	"CPAR\000"
.LASF99:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"GPIO_TypeDef\000"
.LASF46:
	.ascii	"HAL_OK\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF62:
	.ascii	"Priority\000"
.LASF79:
	.ascii	"DmaBaseAddress\000"
.LASF125:
	.ascii	"bsp_adc_channel_init\000"
.LASF78:
	.ascii	"ErrorCode\000"
.LASF61:
	.ascii	"MemDataAlignment\000"
.LASF123:
	.ascii	"bsp_adc_dma_init\000"
.LASF65:
	.ascii	"HAL_DMA_STATE_READY\000"
.LASF13:
	.ascii	"JOFR1\000"
.LASF14:
	.ascii	"JOFR2\000"
.LASF15:
	.ascii	"JOFR3\000"
.LASF16:
	.ascii	"JOFR4\000"
.LASF85:
	.ascii	"NbrOfConversion\000"
.LASF55:
	.ascii	"Speed\000"
.LASF128:
	.ascii	"GNU C11 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=c11 -mcpu=cortex-m3 -mlittle-endian -mfloat-"
	.ascii	"abi=soft -mthumb -mtp=soft -mfp16-format=ieee -muna"
	.ascii	"ligned-access -gdwarf-4 -g2 -gpubnames -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -ffunction-sections -f"
	.ascii	"data-sections -fshort-enums -fno-common\000"
.LASF121:
	.ascii	"average_filter\000"
.LASF51:
	.ascii	"HAL_LOCKED\000"
.LASF22:
	.ascii	"JDR2\000"
.LASF23:
	.ascii	"JDR3\000"
.LASF120:
	.ascii	"bsp_get_adc_volt\000"
.LASF24:
	.ascii	"JDR4\000"
.LASF76:
	.ascii	"XferErrorCallback\000"
.LASF56:
	.ascii	"GPIO_InitTypeDef\000"
.LASF11:
	.ascii	"SMPR1\000"
.LASF12:
	.ascii	"SMPR2\000"
.LASF37:
	.ascii	"APB1RSTR\000"
.LASF17:
	.ascii	"SQR1\000"
.LASF18:
	.ascii	"SQR2\000"
.LASF19:
	.ascii	"SQR3\000"
.LASF29:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF91:
	.ascii	"Rank\000"
.LASF69:
	.ascii	"Instance\000"
.LASF115:
	.ascii	"bsp_adc_map\000"
.LASF90:
	.ascii	"Channel\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF118:
	.ascii	"bsp_task_adc_init\000"
.LASF68:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF4:
	.ascii	"short int\000"
.LASF66:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF101:
	.ascii	"adc_channel\000"
.LASF39:
	.ascii	"APB2ENR\000"
.LASF108:
	.ascii	"channel\000"
.LASF92:
	.ascii	"SamplingTime\000"
.LASF94:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF47:
	.ascii	"HAL_ERROR\000"
.LASF130:
	.ascii	"E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\P"
	.ascii	"roject\000"
.LASF40:
	.ascii	"APB1ENR\000"
.LASF84:
	.ascii	"ContinuousConvMode\000"
.LASF41:
	.ascii	"BDCR\000"
.LASF105:
	.ascii	"float\000"
.LASF0:
	.ascii	"char\000"
.LASF72:
	.ascii	"State\000"
.LASF97:
	.ascii	"ADC_HandleTypeDef\000"
.LASF117:
	.ascii	"index\000"
.LASF131:
	.ascii	"bubbleSort\000"
.LASF96:
	.ascii	"DMA_Handle\000"
.LASF119:
	.ascii	"bsp_adc_get_result\000"
.LASF107:
	.ascii	"hadc\000"
.LASF60:
	.ascii	"PeriphDataAlignment\000"
.LASF113:
	.ascii	"adc1_dma_buff_data\000"
.LASF86:
	.ascii	"DiscontinuousConvMode\000"
.LASF126:
	.ascii	"sConfig\000"
.LASF129:
	.ascii	"E:\\1_HX_DOC\\gitproject\\stm32f1xx_st\\firmware\\S"
	.ascii	"rc\\drivers\\bsp_adc.c\000"
.LASF26:
	.ascii	"CNDTR\000"
.LASF28:
	.ascii	"CMAR\000"
.LASF67:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF106:
	.ascii	"bsp_adc_channel_t\000"
.LASF21:
	.ascii	"JDR1\000"
.LASF132:
	.ascii	"bsp_adc_io_init\000"
.LASF100:
	.ascii	"gpio\000"
.LASF54:
	.ascii	"Pull\000"
.LASF35:
	.ascii	"CFGR\000"
.LASF30:
	.ascii	"IFCR\000"
.LASF111:
	.ascii	"dma_buff\000"
.LASF50:
	.ascii	"HAL_UNLOCKED\000"
.LASF95:
	.ascii	"__ADC_HandleTypeDef\000"
.LASF59:
	.ascii	"MemInc\000"
.LASF109:
	.ascii	"channel_num\000"
.LASF77:
	.ascii	"XferAbortCallback\000"
.LASF103:
	.ascii	"result\000"
.LASF74:
	.ascii	"XferCpltCallback\000"
.LASF38:
	.ascii	"AHBENR\000"
.LASF114:
	.ascii	"bsp_adc_channel_map\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
