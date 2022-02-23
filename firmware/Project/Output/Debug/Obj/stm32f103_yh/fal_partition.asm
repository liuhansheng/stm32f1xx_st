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
	.file	"fal_partition.c"
	.text
.Ltext0:
	.section	.rodata.partition_table_def,"a"
	.align	2
	.type	partition_table_def, %object
	.size	partition_table_def, 64
partition_table_def:
	.word	1162883376
	.ascii	"fdb_kvdb\000"
	.space	15
	.ascii	"stm32_onchip\000"
	.space	11
	.word	32768
	.word	32768
	.word	0
	.section	.bss.partition_table,"aw",%nobits
	.align	2
	.type	partition_table, %object
	.size	partition_table, 4
partition_table:
	.space	4
	.section	.bss.init_ok,"aw",%nobits
	.type	init_ok, %object
	.size	init_ok, 1
init_ok:
	.space	1
	.section	.bss.partition_table_len,"aw",%nobits
	.align	2
	.type	partition_table_len, %object
	.size	partition_table_len, 4
partition_table_len:
	.space	4
	.section .rodata
	.align	2
.LC0:
	.ascii	"name\000"
	.align	2
.LC1:
	.ascii	"flash_dev\000"
	.align	2
.LC2:
	.ascii	"\033[32;22m[I/FAL] \000"
	.align	2
.LC3:
	.ascii	"==================== FAL partition table =========="
	.ascii	"==========\000"
	.align	2
.LC4:
	.ascii	"\033[0m\000"
	.align	2
.LC5:
	.ascii	"| %-*.*s | %-*.*s |   offset   |    length  |\000"
	.align	2
.LC6:
	.ascii	"---------------------------------------------------"
	.ascii	"----------\000"
	.align	2
.LC7:
	.ascii	"| %-*.*s | %-*.*s | 0x%08lx | 0x%08x |\000"
	.align	2
.LC8:
	.ascii	"==================================================="
	.ascii	"==========\000"
	.section	.text.fal_show_part_table,"ax",%progbits
	.align	1
	.global	fal_show_part_table
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_show_part_table, %function
fal_show_part_table:
.LFB0:
	.file 1 "D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Libraries\\FlashDB\\port\\fal\\src\\fal_partition.c"
	.loc 1 83 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #52
.LCFI1:
	.loc 1 84 11
	ldr	r3, .L9
	str	r3, [sp, #32]
	.loc 1 84 28
	ldr	r3, .L9+4
	str	r3, [sp, #28]
	.loc 1 85 31
	ldr	r0, [sp, #32]
	bl	strlen
	str	r0, [sp, #40]
	.loc 1 85 67
	ldr	r0, [sp, #28]
	bl	strlen
	str	r0, [sp, #36]
	.loc 1 88 9
	ldr	r3, .L9+8
	ldr	r3, [r3]
	.loc 1 88 8
	cmp	r3, #0
	beq	.L2
	.loc 1 90 16
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 90 9
	b	.L3
.L6:
	.loc 1 92 20
	ldr	r3, .L9+12
	ldr	r2, [r3]
	.loc 1 92 36
	ldr	r3, [sp, #44]
	lsls	r3, r3, #6
	.loc 1 92 18
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 93 28
	ldr	r3, [sp, #24]
	adds	r3, r3, #4
	.loc 1 93 17
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	.loc 1 93 16
	ldr	r3, [sp, #40]
	cmp	r3, r2
	bcs	.L4
	.loc 1 95 44
	ldr	r3, [sp, #24]
	adds	r3, r3, #4
	.loc 1 95 33
	mov	r0, r3
	bl	strlen
	str	r0, [sp, #40]
.L4:
	.loc 1 97 28
	ldr	r3, [sp, #24]
	adds	r3, r3, #28
	.loc 1 97 17
	mov	r0, r3
	bl	strlen
	mov	r2, r0
	.loc 1 97 16
	ldr	r3, [sp, #36]
	cmp	r3, r2
	bcs	.L5
	.loc 1 99 49
	ldr	r3, [sp, #24]
	adds	r3, r3, #28
	.loc 1 99 38
	mov	r0, r3
	bl	strlen
	str	r0, [sp, #36]
.L5:
	.loc 1 90 47 discriminator 2
	ldr	r3, [sp, #44]
	adds	r3, r3, #1
	str	r3, [sp, #44]
.L3:
	.loc 1 90 23 discriminator 1
	ldr	r3, .L9+8
	ldr	r3, [r3]
	.loc 1 90 9 discriminator 1
	ldr	r2, [sp, #44]
	cmp	r2, r3
	bcc	.L6
.L2:
	.loc 1 103 5
	ldr	r0, .L9+16
	bl	printf
	ldr	r0, .L9+20
	bl	printf
	ldr	r0, .L9+24
	bl	puts
	.loc 1 104 5
	ldr	r0, .L9+16
	bl	printf
	ldr	r3, [sp, #28]
	str	r3, [sp, #8]
	movs	r3, #24
	str	r3, [sp, #4]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	ldr	r3, [sp, #32]
	movs	r2, #24
	ldr	r1, [sp, #40]
	ldr	r0, .L9+28
	bl	printf
	ldr	r0, .L9+24
	bl	puts
	.loc 1 106 5
	ldr	r0, .L9+16
	bl	printf
	ldr	r0, .L9+32
	bl	printf
	ldr	r0, .L9+24
	bl	puts
	.loc 1 107 12
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 107 5
	b	.L7
.L8:
	.loc 1 111 16 discriminator 3
	ldr	r3, .L9+12
	ldr	r2, [r3]
	.loc 1 111 32 discriminator 3
	ldr	r3, [sp, #44]
	lsls	r3, r3, #6
	.loc 1 111 14 discriminator 3
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 116 9 discriminator 3
	ldr	r0, .L9+16
	bl	printf
	ldr	r3, [sp, #24]
	adds	r0, r3, #4
	ldr	r3, [sp, #24]
	adds	r3, r3, #28
	ldr	r2, [sp, #24]
	ldr	r2, [r2, #52]
	ldr	r1, [sp, #24]
	ldr	r1, [r1, #56]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	movs	r3, #24
	str	r3, [sp, #4]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	mov	r3, r0
	movs	r2, #24
	ldr	r1, [sp, #40]
	ldr	r0, .L9+36
	bl	printf
	ldr	r0, .L9+24
	bl	puts
	.loc 1 107 43 discriminator 3
	ldr	r3, [sp, #44]
	adds	r3, r3, #1
	str	r3, [sp, #44]
.L7:
	.loc 1 107 19 discriminator 1
	ldr	r3, .L9+8
	ldr	r3, [r3]
	.loc 1 107 5 discriminator 1
	ldr	r2, [sp, #44]
	cmp	r2, r3
	bcc	.L8
	.loc 1 119 5
	ldr	r0, .L9+16
	bl	printf
	ldr	r0, .L9+40
	bl	printf
	ldr	r0, .L9+24
	bl	puts
	.loc 1 120 1
	nop
	add	sp, sp, #52
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L10:
	.align	2
.L9:
	.word	.LC0
	.word	.LC1
	.word	partition_table_len
	.word	partition_table
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
.LFE0:
	.size	fal_show_part_table, .-fal_show_part_table
	.section .rodata
	.align	2
.LC9:
	.ascii	"[D/FAL] (%s:%d) \000"
	.align	2
.LC10:
	.ascii	"Warning: Do NOT found the flash device(%s).\000"
	.align	2
.LC11:
	.ascii	"\033[31;22m[E/FAL] (%s:%d) \000"
	.align	2
.LC12:
	.ascii	"Initialize failed! Partition(%s) offset address(%ld"
	.ascii	") out of flash bound(<%d).\000"
	.section	.text.fal_partition_init,"ax",%progbits
	.align	1
	.global	fal_partition_init
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_init, %function
fal_partition_init:
.LFB1:
	.loc 1 128 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #12
.LCFI4:
	.loc 1 130 33
	movs	r3, #0
	str	r3, [sp]
	.loc 1 132 9
	ldr	r3, .L19
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 132 8
	cmp	r3, #0
	beq	.L12
	.loc 1 134 16
	ldr	r3, .L19+4
	ldr	r3, [r3]
	b	.L13
.L12:
	.loc 1 138 21
	ldr	r3, .L19+8
	ldr	r2, .L19+12
	str	r2, [r3]
	.loc 1 139 25
	ldr	r3, .L19+4
	movs	r2, #1
	str	r2, [r3]
	.loc 1 268 12
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 1 268 5
	b	.L14
.L18:
	.loc 1 270 58
	ldr	r3, .L19+8
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	lsls	r3, r3, #6
	add	r3, r3, r2
	.loc 1 270 61
	adds	r3, r3, #28
	.loc 1 270 21
	mov	r0, r3
	bl	fal_flash_device_find
	str	r0, [sp]
	.loc 1 271 12
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L15
	.loc 1 273 13
	movw	r2, #273
	ldr	r1, .L19+16
	ldr	r0, .L19+20
	bl	printf
	ldr	r3, .L19+8
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r3, r3, #28
	mov	r1, r3
	ldr	r0, .L19+24
	bl	printf
	movs	r0, #10
	bl	putchar
	.loc 1 274 13
	b	.L16
.L15:
	.loc 1 277 28
	ldr	r3, .L19+8
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	lsls	r3, r3, #6
	add	r3, r3, r2
	.loc 1 277 31
	ldr	r3, [r3, #52]
	.loc 1 277 57
	ldr	r2, [sp]
	ldr	r2, [r2, #28]
	.loc 1 277 12
	cmp	r3, r2
	blt	.L16
	.loc 1 279 13
	movw	r2, #279
	ldr	r1, .L19+16
	ldr	r0, .L19+28
	bl	printf
	ldr	r3, .L19+8
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	lsls	r3, r3, #6
	add	r3, r3, r2
	adds	r1, r3, #4
	ldr	r3, .L19+8
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	lsls	r3, r3, #6
	add	r3, r3, r2
	ldr	r2, [r3, #52]
	ldr	r3, [sp]
	ldr	r3, [r3, #28]
	ldr	r0, .L19+32
	bl	printf
	ldr	r0, .L19+36
	bl	puts
	.loc 1 281 33
	ldr	r3, .L19+4
	movs	r2, #0
	str	r2, [r3]
	.loc 1 282 13
	b	.L17
.L16:
	.loc 1 268 43 discriminator 2
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	str	r3, [sp, #4]
.L14:
	.loc 1 268 19 discriminator 1
	ldr	r3, .L19+4
	ldr	r3, [r3]
	.loc 1 268 5 discriminator 1
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bcc	.L18
	.loc 1 286 13
	ldr	r3, .L19
	movs	r2, #1
	strb	r2, [r3]
.L17:
	.loc 1 291 5
	bl	fal_show_part_table
	.loc 1 301 12
	ldr	r3, .L19+4
	ldr	r3, [r3]
.L13:
	.loc 1 302 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.L20:
	.align	2
.L19:
	.word	init_ok
	.word	partition_table_len
	.word	partition_table
	.word	partition_table_def
	.word	__FUNCTION__.6
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC4
.LFE1:
	.size	fal_partition_init, .-fal_partition_init
	.section .rodata
	.align	2
.LC13:
	.ascii	"init_ok\000"
	.align	2
.LC14:
	.ascii	"(%s) has assert failed at %s.\012\000"
	.section	.text.fal_partition_find,"ax",%progbits
	.align	1
	.global	fal_partition_find
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_find, %function
fal_partition_find:
.LFB2:
	.loc 1 313 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #20
.LCFI7:
	str	r0, [sp, #4]
	.loc 1 314 5
	ldr	r3, .L28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L22
	.loc 1 314 5 is_stmt 0 discriminator 1
	ldr	r2, .L28+4
	ldr	r1, .L28+8
	ldr	r0, .L28+12
	bl	printf
.L23:
	b	.L23
.L22:
	.loc 1 318 12 is_stmt 1
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 318 5
	b	.L24
.L27:
	.loc 1 320 42
	ldr	r3, .L28+16
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	lsls	r3, r3, #6
	add	r3, r3, r2
	.loc 1 320 45
	adds	r3, r3, #4
	.loc 1 320 14
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	strcmp
	mov	r3, r0
	.loc 1 320 12
	cmp	r3, #0
	bne	.L25
	.loc 1 322 20
	ldr	r3, .L28+16
	ldr	r2, [r3]
	.loc 1 322 36
	ldr	r3, [sp, #12]
	lsls	r3, r3, #6
	.loc 1 322 20
	add	r3, r3, r2
	b	.L26
.L25:
	.loc 1 318 43 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L24:
	.loc 1 318 19 discriminator 1
	ldr	r3, .L28+20
	ldr	r3, [r3]
	.loc 1 318 5 discriminator 1
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcc	.L27
	.loc 1 326 12
	movs	r3, #0
.L26:
	.loc 1 327 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L29:
	.align	2
.L28:
	.word	init_ok
	.word	__FUNCTION__.5
	.word	.LC13
	.word	.LC14
	.word	partition_table
	.word	partition_table_len
.LFE2:
	.size	fal_partition_find, .-fal_partition_find
	.section .rodata
	.align	2
.LC15:
	.ascii	"len\000"
	.section	.text.fal_get_partition_table,"ax",%progbits
	.align	1
	.global	fal_get_partition_table
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_get_partition_table, %function
fal_get_partition_table:
.LFB3:
	.loc 1 337 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #12
.LCFI10:
	str	r0, [sp, #4]
	.loc 1 338 5
	ldr	r3, .L36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L31
	.loc 1 338 5 is_stmt 0 discriminator 1
	ldr	r2, .L36+4
	ldr	r1, .L36+8
	ldr	r0, .L36+12
	bl	printf
.L32:
	b	.L32
.L31:
	.loc 1 339 5 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L33
	.loc 1 339 5 is_stmt 0 discriminator 1
	ldr	r2, .L36+4
	ldr	r1, .L36+16
	ldr	r0, .L36+12
	bl	printf
.L34:
	.loc 1 339 5 discriminator 2
	b	.L34
.L33:
	.loc 1 341 10 is_stmt 1
	ldr	r3, .L36+20
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 343 12
	ldr	r3, .L36+24
	ldr	r3, [r3]
	.loc 1 344 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.L37:
	.align	2
.L36:
	.word	init_ok
	.word	__FUNCTION__.4
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	partition_table_len
	.word	partition_table
.LFE3:
	.size	fal_get_partition_table, .-fal_get_partition_table
	.section .rodata
	.align	2
.LC16:
	.ascii	"table\000"
	.section	.text.fal_set_partition_table_temp,"ax",%progbits
	.align	1
	.global	fal_set_partition_table_temp
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_set_partition_table_temp, %function
fal_set_partition_table_temp:
.LFB4:
	.loc 1 354 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #12
.LCFI13:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 355 5
	ldr	r3, .L43
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L39
	.loc 1 355 5 is_stmt 0 discriminator 1
	ldr	r2, .L43+4
	ldr	r1, .L43+8
	ldr	r0, .L43+12
	bl	printf
.L40:
	b	.L40
.L39:
	.loc 1 356 5 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L41
	.loc 1 356 5 is_stmt 0 discriminator 1
	ldr	r2, .L43+4
	ldr	r1, .L43+16
	ldr	r0, .L43+12
	bl	printf
.L42:
	.loc 1 356 5 discriminator 2
	b	.L42
.L41:
	.loc 1 358 25 is_stmt 1
	ldr	r2, .L43+20
	ldr	r3, [sp]
	str	r3, [r2]
	.loc 1 359 21
	ldr	r2, .L43+24
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 1 360 1
	nop
	add	sp, sp, #12
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.L44:
	.align	2
.L43:
	.word	init_ok
	.word	__FUNCTION__.3
	.word	.LC13
	.word	.LC14
	.word	.LC16
	.word	partition_table_len
	.word	partition_table
.LFE4:
	.size	fal_set_partition_table_temp, .-fal_set_partition_table_temp
	.section .rodata
	.align	2
.LC17:
	.ascii	"part\000"
	.align	2
.LC18:
	.ascii	"buf\000"
	.align	2
.LC19:
	.ascii	"Partition read error! Partition address out of boun"
	.ascii	"d.\000"
	.align	2
.LC20:
	.ascii	"Partition read error! Don't found flash device(%s) "
	.ascii	"of the partition(%s).\000"
	.align	2
.LC21:
	.ascii	"Partition read error! Flash device(%s) read error!\000"
	.section	.text.fal_partition_read,"ax",%progbits
	.align	1
	.global	fal_partition_read
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_read, %function
fal_partition_read:
.LFB5:
	.loc 1 374 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #28
.LCFI16:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 375 9
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 376 33
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 378 5
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L46
	.loc 1 378 5 is_stmt 0 discriminator 1
	ldr	r2, .L54
	ldr	r1, .L54+4
	ldr	r0, .L54+8
	bl	printf
.L47:
	b	.L47
.L46:
	.loc 1 379 5 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L48
	.loc 1 379 5 is_stmt 0 discriminator 1
	ldr	r2, .L54
	ldr	r1, .L54+12
	ldr	r0, .L54+8
	bl	printf
.L49:
	.loc 1 379 5 discriminator 2
	b	.L49
.L48:
	.loc 1 381 14 is_stmt 1
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	add	r2, r2, r3
	.loc 1 381 27
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	.loc 1 381 8
	cmp	r2, r3
	bls	.L50
	.loc 1 383 9
	movw	r2, #383
	ldr	r1, .L54
	ldr	r0, .L54+16
	bl	printf
	ldr	r0, .L54+20
	bl	printf
	ldr	r0, .L54+24
	bl	puts
	.loc 1 384 16
	mov	r3, #-1
	b	.L51
.L50:
	.loc 1 387 43
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	.loc 1 387 17
	mov	r0, r3
	bl	fal_flash_device_find
	str	r0, [sp, #16]
	.loc 1 388 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L52
	.loc 1 390 9
	mov	r2, #390
	ldr	r1, .L54
	ldr	r0, .L54+16
	bl	printf
	ldr	r3, [sp, #12]
	add	r1, r3, #28
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r0, .L54+28
	bl	printf
	ldr	r0, .L54+24
	bl	puts
	.loc 1 391 16
	mov	r3, #-1
	b	.L51
.L52:
	.loc 1 394 25
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #40]
	.loc 1 394 35
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #52]
	mov	r1, r2
	.loc 1 394 44
	ldr	r2, [sp, #8]
	add	r2, r2, r1
	.loc 1 394 11
	mov	r0, r2
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	blx	r3
.LVL0:
	str	r0, [sp, #20]
	.loc 1 395 8
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L53
	.loc 1 397 9
	movw	r2, #397
	ldr	r1, .L54
	ldr	r0, .L54+16
	bl	printf
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	mov	r1, r3
	ldr	r0, .L54+32
	bl	printf
	ldr	r0, .L54+24
	bl	puts
.L53:
	.loc 1 400 12
	ldr	r3, [sp, #20]
.L51:
	.loc 1 401 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.L55:
	.align	2
.L54:
	.word	__FUNCTION__.2
	.word	.LC17
	.word	.LC14
	.word	.LC18
	.word	.LC11
	.word	.LC19
	.word	.LC4
	.word	.LC20
	.word	.LC21
.LFE5:
	.size	fal_partition_read, .-fal_partition_read
	.section .rodata
	.align	2
.LC22:
	.ascii	"Partition write error! Partition address out of bou"
	.ascii	"nd.\000"
	.align	2
.LC23:
	.ascii	"Partition write error!  Don't found flash device(%s"
	.ascii	") of the partition(%s).\000"
	.align	2
.LC24:
	.ascii	"Partition write error! Flash device(%s) write error"
	.ascii	"!\000"
	.section	.text.fal_partition_write,"ax",%progbits
	.align	1
	.global	fal_partition_write
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_write, %function
fal_partition_write:
.LFB6:
	.loc 1 415 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #28
.LCFI19:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 416 9
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 417 33
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 419 5
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L57
	.loc 1 419 5 is_stmt 0 discriminator 1
	ldr	r2, .L65
	ldr	r1, .L65+4
	ldr	r0, .L65+8
	bl	printf
.L58:
	b	.L58
.L57:
	.loc 1 420 5 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L59
	.loc 1 420 5 is_stmt 0 discriminator 1
	ldr	r2, .L65
	ldr	r1, .L65+12
	ldr	r0, .L65+8
	bl	printf
.L60:
	.loc 1 420 5 discriminator 2
	b	.L60
.L59:
	.loc 1 422 14 is_stmt 1
	ldr	r2, [sp, #8]
	ldr	r3, [sp]
	add	r2, r2, r3
	.loc 1 422 27
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	.loc 1 422 8
	cmp	r2, r3
	bls	.L61
	.loc 1 424 9
	mov	r2, #424
	ldr	r1, .L65
	ldr	r0, .L65+16
	bl	printf
	ldr	r0, .L65+20
	bl	printf
	ldr	r0, .L65+24
	bl	puts
	.loc 1 425 16
	mov	r3, #-1
	b	.L62
.L61:
	.loc 1 428 43
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	.loc 1 428 17
	mov	r0, r3
	bl	fal_flash_device_find
	str	r0, [sp, #16]
	.loc 1 429 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L63
	.loc 1 431 9
	movw	r2, #431
	ldr	r1, .L65
	ldr	r0, .L65+16
	bl	printf
	ldr	r3, [sp, #12]
	add	r1, r3, #28
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r0, .L65+28
	bl	printf
	ldr	r0, .L65+24
	bl	puts
	.loc 1 432 16
	mov	r3, #-1
	b	.L62
.L63:
	.loc 1 435 25
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #44]
	.loc 1 435 36
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #52]
	mov	r1, r2
	.loc 1 435 45
	ldr	r2, [sp, #8]
	add	r2, r2, r1
	.loc 1 435 11
	mov	r0, r2
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	blx	r3
.LVL1:
	str	r0, [sp, #20]
	.loc 1 436 8
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L64
	.loc 1 438 9
	mov	r2, #438
	ldr	r1, .L65
	ldr	r0, .L65+16
	bl	printf
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	mov	r1, r3
	ldr	r0, .L65+32
	bl	printf
	ldr	r0, .L65+24
	bl	puts
.L64:
	.loc 1 441 12
	ldr	r3, [sp, #20]
.L62:
	.loc 1 442 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.L66:
	.align	2
.L65:
	.word	__FUNCTION__.1
	.word	.LC17
	.word	.LC14
	.word	.LC18
	.word	.LC11
	.word	.LC22
	.word	.LC4
	.word	.LC23
	.word	.LC24
.LFE6:
	.size	fal_partition_write, .-fal_partition_write
	.section .rodata
	.align	2
.LC25:
	.ascii	"Partition erase error! Partition address out of bou"
	.ascii	"nd.\000"
	.align	2
.LC26:
	.ascii	"Partition erase error! Don't found flash device(%s)"
	.ascii	" of the partition(%s).\000"
	.align	2
.LC27:
	.ascii	"Partition erase error! Flash device(%s) erase error"
	.ascii	"!\000"
	.section	.text.fal_partition_erase,"ax",%progbits
	.align	1
	.global	fal_partition_erase
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_erase, %function
fal_partition_erase:
.LFB7:
	.loc 1 455 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI21:
	sub	sp, sp, #28
.LCFI22:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 456 9
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 457 33
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 459 5
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L68
	.loc 1 459 5 is_stmt 0 discriminator 1
	ldr	r2, .L74
	ldr	r1, .L74+4
	ldr	r0, .L74+8
	bl	printf
.L69:
	b	.L69
.L68:
	.loc 1 461 14 is_stmt 1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 461 27
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #56]
	.loc 1 461 8
	cmp	r2, r3
	bls	.L70
	.loc 1 463 9
	movw	r2, #463
	ldr	r1, .L74
	ldr	r0, .L74+12
	bl	printf
	ldr	r0, .L74+16
	bl	printf
	ldr	r0, .L74+20
	bl	puts
	.loc 1 464 16
	mov	r3, #-1
	b	.L71
.L70:
	.loc 1 467 43
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	.loc 1 467 17
	mov	r0, r3
	bl	fal_flash_device_find
	str	r0, [sp, #16]
	.loc 1 468 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L72
	.loc 1 470 9
	mov	r2, #470
	ldr	r1, .L74
	ldr	r0, .L74+12
	bl	printf
	ldr	r3, [sp, #12]
	add	r1, r3, #28
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r0, .L74+24
	bl	printf
	ldr	r0, .L74+20
	bl	puts
	.loc 1 471 16
	mov	r3, #-1
	b	.L71
.L72:
	.loc 1 474 25
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #48]
	.loc 1 474 36
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #52]
	mov	r1, r2
	.loc 1 474 45
	ldr	r2, [sp, #8]
	add	r2, r2, r1
	.loc 1 474 11
	ldr	r1, [sp, #4]
	mov	r0, r2
	blx	r3
.LVL2:
	str	r0, [sp, #20]
	.loc 1 475 8
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bge	.L73
	.loc 1 477 9
	movw	r2, #477
	ldr	r1, .L74
	ldr	r0, .L74+12
	bl	printf
	ldr	r3, [sp, #12]
	adds	r3, r3, #28
	mov	r1, r3
	ldr	r0, .L74+28
	bl	printf
	ldr	r0, .L74+20
	bl	puts
.L73:
	.loc 1 480 12
	ldr	r3, [sp, #20]
.L71:
	.loc 1 481 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI23:
	@ sp needed
	ldr	pc, [sp], #4
.L75:
	.align	2
.L74:
	.word	__FUNCTION__.0
	.word	.LC17
	.word	.LC14
	.word	.LC11
	.word	.LC25
	.word	.LC4
	.word	.LC26
	.word	.LC27
.LFE7:
	.size	fal_partition_erase, .-fal_partition_erase
	.section	.text.fal_partition_erase_all,"ax",%progbits
	.align	1
	.global	fal_partition_erase_all
	.syntax unified
	.thumb
	.thumb_func
	.type	fal_partition_erase_all, %function
fal_partition_erase_all:
.LFB8:
	.loc 1 492 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI24:
	sub	sp, sp, #12
.LCFI25:
	str	r0, [sp, #4]
	.loc 1 493 12
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #56]
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	fal_partition_erase
	mov	r3, r0
	.loc 1 494 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI26:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	fal_partition_erase_all, .-fal_partition_erase_all
	.section	.rodata.__FUNCTION__.6,"a"
	.align	2
	.type	__FUNCTION__.6, %object
	.size	__FUNCTION__.6, 19
__FUNCTION__.6:
	.ascii	"fal_partition_init\000"
	.section	.rodata.__FUNCTION__.5,"a"
	.align	2
	.type	__FUNCTION__.5, %object
	.size	__FUNCTION__.5, 19
__FUNCTION__.5:
	.ascii	"fal_partition_find\000"
	.section	.rodata.__FUNCTION__.4,"a"
	.align	2
	.type	__FUNCTION__.4, %object
	.size	__FUNCTION__.4, 24
__FUNCTION__.4:
	.ascii	"fal_get_partition_table\000"
	.section	.rodata.__FUNCTION__.3,"a"
	.align	2
	.type	__FUNCTION__.3, %object
	.size	__FUNCTION__.3, 29
__FUNCTION__.3:
	.ascii	"fal_set_partition_table_temp\000"
	.section	.rodata.__FUNCTION__.2,"a"
	.align	2
	.type	__FUNCTION__.2, %object
	.size	__FUNCTION__.2, 19
__FUNCTION__.2:
	.ascii	"fal_partition_read\000"
	.section	.rodata.__FUNCTION__.1,"a"
	.align	2
	.type	__FUNCTION__.1, %object
	.size	__FUNCTION__.1, 20
__FUNCTION__.1:
	.ascii	"fal_partition_write\000"
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.type	__FUNCTION__.0, %object
	.size	__FUNCTION__.0, 20
__FUNCTION__.0:
	.ascii	"fal_partition_erase\000"
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
	.uleb128 0x38
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI9-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x10
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI15-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI18-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI21-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI24-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
	.text
.Letext0:
	.file 2 "../Libraries/FlashDB/port/fal/inc/fal_def.h"
	.file 3 "D:/app/install/include/stdint.h"
	.file 4 "D:/app/install/include/stdio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x630
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF20
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
	.4byte	0x1b3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x77
	.byte	0xe
	.4byte	0xba
	.byte	0x18
	.uleb128 0x4
	.ascii	"len\000"
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	0xfa
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0xfa
	.byte	0x20
	.uleb128 0x4
	.ascii	"ops\000"
	.byte	0x2
	.byte	0x82
	.byte	0x7
	.4byte	0x106
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x87
	.byte	0xc
	.4byte	0xfa
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2a
	.byte	0x1c
	.4byte	0x9e
	.uleb128 0x5
	.4byte	0x8d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x37
	.byte	0x1c
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe8
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	0xe8
	.uleb128 0x9
	.byte	0x4
	.4byte	0xef
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0xc6
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0x7c
	.byte	0x5
	.4byte	0x144
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7e
	.byte	0xf
	.4byte	0x149
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7f
	.byte	0xf
	.4byte	0x16e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x80
	.byte	0xf
	.4byte	0x193
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0x81
	.byte	0xf
	.4byte	0x1ad
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x144
	.uleb128 0xc
	.4byte	0xb3
	.4byte	0x168
	.uleb128 0xd
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0x168
	.uleb128 0xd
	.4byte	0xfa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x14f
	.uleb128 0xc
	.4byte	0xb3
	.4byte	0x18d
	.uleb128 0xd
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0x18d
	.uleb128 0xd
	.4byte	0xfa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x99
	.uleb128 0x9
	.byte	0x4
	.4byte	0x174
	.uleb128 0xc
	.4byte	0xb3
	.4byte	0x1ad
	.uleb128 0xd
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0xfa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x199
	.uleb128 0xe
	.4byte	0xe8
	.4byte	0x1c3
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x40
	.byte	0x2
	.byte	0x8e
	.byte	0x8
	.4byte	0x21f
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.byte	0x90
	.byte	0xe
	.4byte	0xba
	.byte	0
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	0x1b3
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x95
	.byte	0xa
	.4byte	0x1b3
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x2
	.byte	0x98
	.byte	0xa
	.4byte	0xdb
	.byte	0x34
	.uleb128 0x4
	.ascii	"len\000"
	.byte	0x2
	.byte	0x99
	.byte	0xc
	.4byte	0xfa
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0x9b
	.byte	0xe
	.4byte	0xba
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.4byte	0x1c3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0xe
	.4byte	0x21f
	.4byte	0x23a
	.uleb128 0xf
	.4byte	0xc6
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x22a
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3b
	.byte	0x23
	.4byte	0x23a
	.uleb128 0x5
	.byte	0x3
	.4byte	partition_table_def
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.byte	0x24
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	partition_table
	.uleb128 0x9
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4c
	.byte	0x10
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x3
	.4byte	init_ok
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4d
	.byte	0xf
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	partition_table_len
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1eb
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b9
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1eb
	.byte	0x39
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c6
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x334
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1c6
	.byte	0x35
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x1c6
	.byte	0x44
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1c6
	.byte	0x51
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1c8
	.byte	0x9
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1c9
	.byte	0x21
	.4byte	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x34a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x81
	.uleb128 0xe
	.4byte	0xef
	.4byte	0x34a
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.4byte	0x33a
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x19e
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3da
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x19e
	.byte	0x35
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x19e
	.byte	0x44
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x19e
	.byte	0x59
	.4byte	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x19e
	.byte	0x65
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x1a0
	.byte	0x9
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1a1
	.byte	0x21
	.4byte	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x34a
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x175
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x465
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x175
	.byte	0x34
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x175
	.byte	0x43
	.4byte	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x175
	.byte	0x52
	.4byte	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x175
	.byte	0x5e
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x178
	.byte	0x21
	.4byte	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x475
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.2
	.byte	0
	.uleb128 0xe
	.4byte	0xef
	.4byte	0x475
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.4byte	0x465
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x161
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x161
	.byte	0x39
	.4byte	0x224
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x161
	.byte	0x47
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x4d1
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.3
	.byte	0
	.uleb128 0xe
	.4byte	0xef
	.4byte	0x4d1
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	0x4c1
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x150
	.byte	0x1d
	.4byte	0x263
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x511
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x150
	.byte	0x3d
	.4byte	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x527
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xe
	.4byte	0xef
	.4byte	0x527
	.uleb128 0xf
	.4byte	0xc6
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	0x517
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x138
	.byte	0x1d
	.4byte	0x263
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x575
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x138
	.byte	0x3c
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x475
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.5
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x13c
	.byte	0xc
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c8
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x82
	.byte	0x21
	.4byte	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	0x475
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__.6
	.uleb128 0x1a
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x120
	.byte	0x1
	.4byte	.L17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x52
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x54
	.byte	0xb
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x54
	.byte	0x1c
	.4byte	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x55
	.byte	0xf
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x55
	.byte	0x2e
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x56
	.byte	0x21
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.4byte	0x144
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x634
	.4byte	0x23f
	.ascii	"partition_table_def\000"
	.4byte	0x251
	.ascii	"partition_table\000"
	.4byte	0x269
	.ascii	"init_ok\000"
	.4byte	0x27b
	.ascii	"partition_table_len\000"
	.4byte	0x28d
	.ascii	"fal_partition_erase_all\000"
	.4byte	0x2b9
	.ascii	"fal_partition_erase\000"
	.4byte	0x34f
	.ascii	"fal_partition_write\000"
	.4byte	0x3da
	.ascii	"fal_partition_read\000"
	.4byte	0x47a
	.ascii	"fal_set_partition_table_temp\000"
	.4byte	0x4d6
	.ascii	"fal_get_partition_table\000"
	.4byte	0x52c
	.ascii	"fal_partition_find\000"
	.4byte	0x575
	.ascii	"fal_partition_init\000"
	.4byte	0x5c8
	.ascii	"fal_show_part_table\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xf9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x634
	.4byte	0x86
	.ascii	"signed char\000"
	.4byte	0x9e
	.ascii	"unsigned char\000"
	.4byte	0x8d
	.ascii	"uint8_t\000"
	.4byte	0xa5
	.ascii	"short int\000"
	.4byte	0xac
	.ascii	"short unsigned int\000"
	.4byte	0xb3
	.ascii	"int\000"
	.4byte	0xc6
	.ascii	"unsigned int\000"
	.4byte	0xba
	.ascii	"uint32_t\000"
	.4byte	0xcd
	.ascii	"long long int\000"
	.4byte	0xd4
	.ascii	"long long unsigned int\000"
	.4byte	0xdb
	.ascii	"long int\000"
	.4byte	0xe8
	.ascii	"char\000"
	.4byte	0xfa
	.ascii	"size_t\000"
	.4byte	0x25
	.ascii	"fal_flash_dev\000"
	.4byte	0x1c3
	.ascii	"fal_partition\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"part_name_max\000"
.LASF39:
	.ascii	"fal_get_partition_table\000"
.LASF21:
	.ascii	"fal_partition\000"
.LASF3:
	.ascii	"write_gran\000"
.LASF43:
	.ascii	"item2\000"
.LASF42:
	.ascii	"item1\000"
.LASF40:
	.ascii	"fal_partition_find\000"
.LASF35:
	.ascii	"fal_partition_write\000"
.LASF29:
	.ascii	"partition_table_len\000"
.LASF25:
	.ascii	"reserved\000"
.LASF34:
	.ascii	"flash_dev\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"fal_partition_read\000"
.LASF16:
	.ascii	"init\000"
.LASF23:
	.ascii	"flash_name\000"
.LASF41:
	.ascii	"fal_partition_init\000"
.LASF2:
	.ascii	"blk_size\000"
.LASF33:
	.ascii	"size\000"
.LASF48:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Pro"
	.ascii	"ject\000"
.LASF24:
	.ascii	"offset\000"
.LASF1:
	.ascii	"addr\000"
.LASF15:
	.ascii	"size_t\000"
.LASF31:
	.ascii	"fal_partition_erase\000"
.LASF18:
	.ascii	"write\000"
.LASF38:
	.ascii	"table\000"
.LASF50:
	.ascii	"_exit\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF47:
	.ascii	"D:\\1995work\\studyMCU\\stm32f1xx_st\\firmware\\Lib"
	.ascii	"raries\\FlashDB\\port\\fal\\src\\fal_partition.c\000"
.LASF27:
	.ascii	"partition_table\000"
.LASF46:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m3 -mlittle-endian -mfloa"
	.ascii	"t-abi=soft -mthumb -mtp=soft -mfp16-format=ieee -mu"
	.ascii	"naligned-access -gdwarf-4 -g2 -gpubnames -fomit-fra"
	.ascii	"me-pointer -fno-dwarf2-cfi-asm -ffunction-sections "
	.ascii	"-fdata-sections -fshort-enums -fno-common\000"
.LASF36:
	.ascii	"__FUNCTION__\000"
.LASF51:
	.ascii	"fal_show_part_table\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"fal_flash_dev\000"
.LASF11:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"flash_dev_name_max\000"
.LASF0:
	.ascii	"name\000"
.LASF49:
	.ascii	"fal_set_partition_table_temp\000"
.LASF28:
	.ascii	"init_ok\000"
.LASF6:
	.ascii	"short int\000"
.LASF22:
	.ascii	"magic_word\000"
.LASF19:
	.ascii	"erase\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"long int\000"
.LASF14:
	.ascii	"char\000"
.LASF26:
	.ascii	"partition_table_def\000"
.LASF4:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"part\000"
.LASF30:
	.ascii	"fal_partition_erase_all\000"
.LASF17:
	.ascii	"read\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
