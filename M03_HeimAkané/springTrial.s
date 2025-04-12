	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"springTrial.c"
	.text
	.align	2
	.global	initSpring
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpring, %function
initSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #2048
	push	{r4, r5, r6, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #14336
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r1, #24
	mov	lr, #32
	mov	r0, #1
	mov	ip, #15
	mov	r5, #3
	mov	r6, #16
	ldr	r3, .L4+20
	str	r2, [r3]
	ldr	r3, .L4+24
	str	r2, [r3]
	ldr	r3, .L4+28
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	strb	r2, [r3, #60]
	ldr	r2, .L4+32
	str	lr, [r3, #28]
	str	ip, [r3, #32]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #52]
	mov	lr, pc
	bx	r2
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	r0, r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	100728832
	.word	linkTiles
	.word	83886592
	.word	linkPal
	.word	hOff
	.word	vOff
	.word	player
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	initSpring, .-initSpring
	.align	2
	.global	initPlayerSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerSpring, %function
initPlayerSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r1, #24
	mov	r5, #16
	mov	r4, #32
	mov	lr, #15
	mov	r0, #1
	mov	ip, #3
	ldr	r3, .L8
	strb	r2, [r3, #60]
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #52]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayerSpring, .-initPlayerSpring
	.align	2
	.global	initBlupees
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlupees, %function
initBlupees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initBlupees, .-initBlupees
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerSpring, %function
updatePlayerSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #0
	ldr	r4, .L79
	add	ip, r4, #24
	ldm	ip, {ip, lr}
	ldr	r1, .L79+4
	ldr	r5, [r4]
	rsb	r2, ip, #240
	ldr	r6, [r4, #4]
	ldr	r8, .L79+8
	add	r2, r2, r2, lsr #31
	ldrh	r0, [r1]
	rsb	r3, lr, #160
	sub	r2, r5, r2, asr #1
	str	r2, [r8]
	add	r3, r3, r3, lsr #31
	ldr	r8, .L79+12
	add	r7, r5, ip
	add	r1, r6, lr
	sub	sp, sp, #36
	str	r9, [r4, #44]
	sub	r3, r6, r3, asr #1
	sub	r9, r7, #1
	sub	r10, r1, #1
	tst	r0, #64
	str	r3, [r8]
	str	r9, [sp, #24]
	str	r10, [sp, #20]
	bne	.L41
	mov	r8, r9
	mov	r10, #1
	mov	r9, #2
	cmp	r1, #255
	str	r10, [r4, #44]
	str	r9, [r4, #36]
	ble	.L71
.L41:
	mov	r1, r6
.L12:
	ands	r9, r0, #128
	beq	.L72
.L14:
	lsr	r9, r0, #4
	eor	r9, r9, #1
	cmp	r7, #255
	movgt	r7, #0
	andle	r7, r9, #1
	cmp	r7, #0
	moveq	r7, r5
	bne	.L73
.L15:
	tst	r0, #32
	beq	.L17
.L37:
	ldr	r0, [r4, #44]
.L18:
	cmp	r7, #0
	movlt	r5, #0
	movlt	r7, ip
	strlt	r5, [r4]
	addge	r7, ip, r7
	cmp	r1, #0
	movlt	r5, #0
	movlt	r1, lr
	addge	r1, lr, r1
	strlt	r5, [r4, #4]
	cmp	r7, #256
	rsbgt	ip, ip, #256
	strgt	ip, [r4]
	cmp	r1, #256
	rsbgt	lr, lr, #256
	strgt	lr, [r4, #4]
	cmp	r2, #0
	blt	.L74
	cmp	r3, #0
	blt	.L75
	cmp	r2, #16
	movgt	r2, #16
	ldrgt	r1, .L79+8
	strgt	r2, [r1]
.L26:
	cmp	r3, #96
	movgt	r3, #96
	ldrgt	r2, .L79+12
	strgt	r3, [r2]
.L29:
	cmp	r0, #0
	moveq	r3, #1
	streq	r3, [r4, #48]
	beq	.L31
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L31
	ldr	r0, [r4, #48]
	ldr	r3, .L79+16
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #48]
	str	r3, [r4, #32]
.L31:
	mov	r0, #16
	mov	r1, #0
	mov	r2, #32
	mov	r3, #24
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r5, .L79+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L76
.L32:
	mov	r3, #80
	mov	r1, #50
	mov	r2, #133
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L11
	ldr	r3, .L79+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldrne	r3, .L79+28
	ldreq	r3, .L79+32
	mov	lr, pc
	bx	r3
.L11:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	mov	r0, #1
	mov	r9, #3
	add	r10, ip, r7
	cmp	r10, #255
	str	r0, [r4, #44]
	str	r9, [r4, #36]
	bgt	.L18
	ldr	r0, .L79+36
	mov	fp, r0
	lsl	r10, r6, #8
.L35:
	ldr	r0, [r4, #16]
	sub	r5, r5, r0
	add	r10, r10, r5
	ldrb	r6, [fp, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L45
	ldr	r6, [sp, #20]
	add	r5, r5, r6, lsl #8
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L45
	sub	r7, r7, r0
	str	r7, [r4]
	mov	r0, #1
	b	.L18
.L72:
	mov	r10, #1
	str	r9, [r4, #36]
	add	r9, lr, r1
	cmp	r9, #255
	str	r10, [r4, #44]
	bgt	.L14
	ldr	r8, .L79+36
	mov	fp, r8
.L38:
	ldr	r9, [r4, #20]
	ldr	r10, [sp, #20]
	add	r10, r9, r10
	str	r9, [sp, #28]
	add	r9, r5, r10, lsl #8
	ldrb	r9, [fp, r9]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r10, r10, #8
	beq	.L14
	ldr	r8, [sp, #24]
	add	r10, r8, r10
	ldrb	r9, [fp, r10]	@ zero_extendqisi2
	cmp	r9, #0
	ldrne	r9, [sp, #28]
	addne	r1, r1, r9
	strne	r1, [r4, #4]
	b	.L14
.L71:
	ldr	r1, [r4, #20]
	ldr	fp, .L79+36
	sub	r1, r6, r1
	add	r10, r5, r1, lsl #8
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r10, r1, #8
	bne	.L77
.L13:
	ands	r1, r0, #128
	movne	r1, r6
	bne	.L14
	mov	r10, #1
	str	r1, [r4, #36]
	str	r10, [r4, #44]
	mov	r1, r6
	b	.L38
.L75:
	mov	r3, #0
	cmp	r2, #16
	ldr	r2, .L79+12
	str	r3, [r2]
	movgt	r3, #16
	ldrgt	r2, .L79+8
	strgt	r3, [r2]
	b	.L29
.L74:
	mov	r2, #0
	ldr	r1, .L79+8
	cmp	r3, r2
	str	r2, [r1]
	bge	.L26
	ldr	r3, .L79+12
	str	r2, [r3]
	b	.L29
.L76:
	ldr	r3, .L79+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+44
	mov	lr, pc
	bx	r3
	b	.L32
.L73:
	ldr	r8, .L79+36
	mov	fp, r8
	mov	r10, #1
	ldr	r9, [r4, #16]
	ldr	r7, [sp, #24]
	add	r7, r9, r7
	add	r8, r7, r6, lsl #8
	ldrb	r8, [fp, r8]	@ zero_extendqisi2
	cmp	r8, #0
	str	r10, [r4, #44]
	str	r10, [r4, #36]
	lsl	r10, r6, #8
	bne	.L78
.L16:
	tst	r0, #32
	movne	r7, r5
	bne	.L37
	mov	r6, #1
	mov	r0, #3
	mov	r7, r5
	str	r6, [r4, #44]
	str	r0, [r4, #36]
	b	.L35
.L78:
	ldr	r8, [sp, #20]
	add	r7, r7, r8, lsl #8
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	cmp	r7, #0
	addne	r7, r5, r9
	strne	r7, [r4]
	bne	.L15
	b	.L16
.L77:
	add	r10, r8, r10
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	strne	r1, [r4, #4]
	bne	.L12
	b	.L13
.L45:
	mov	r0, #1
	b	.L18
.L80:
	.align	2
.L79:
	.word	player
	.word	buttons
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.word	collision
	.word	hasArmor
	.word	goToWin
	.word	goToLose
	.word	collisionSpringBitmap
	.word	initGame
	.word	goToGame
	.size	updatePlayerSpring, .-updatePlayerSpring
	.align	2
	.global	updateSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpring, %function
updateSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerSpring
	.size	updateSpring, .-updateSpring
	.align	2
	.global	drawPlayerSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerSpring, %function
drawPlayerSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #67108864
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L84
	ldr	r5, .L84+4
	ldr	r2, .L84+8
	ldr	r3, [r5]
	ldrh	r4, [r1]
	ldr	r8, [r5, #36]
	ldr	r0, [r5, #48]
	ldrh	lr, [r2]
	ldr	r2, [r5, #4]
	ldrb	r6, [r5, #60]	@ zero_extendqisi2
	sub	r3, r3, r4
	add	r5, r0, r8, lsl #6
	ldr	r0, .L84+12
	ldr	r7, .L84+16
	ldr	r1, .L84+20
	sub	r2, r2, lr
	lsl	r3, r3, #23
	and	r0, r0, r5, lsl #1
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r5, r1, r6, lsl #3
	orr	r3, r3, r7
	orr	r2, r2, r7
	lsl	r6, r6, #3
	orr	r0, r0, #4096
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r1, r6]	@ movhi
	strh	r0, [r5, #4]	@ movhi
	mov	r3, #512
	strh	r4, [ip, #16]	@ movhi
	mov	r2, #117440512
	strh	lr, [ip, #18]	@ movhi
	ldr	r4, .L84+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L85:
	.align	2
.L84:
	.word	hOff
	.word	player
	.word	vOff
	.word	1022
	.word	-32768
	.word	shadowOAM
	.word	DMANow
	.size	drawPlayerSpring, .-drawPlayerSpring
	.align	2
	.global	drawSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSpring, %function
drawSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawPlayerSpring
	.size	drawSpring, .-drawSpring
	.comm	hasArmor,4,4
	.comm	shadowOAM,1024,4
	.comm	direction,1,1
	.comm	lotm,64,4
	.comm	blupee3,64,4
	.comm	blupee2,64,4
	.comm	blupee1,64,4
	.comm	player,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
