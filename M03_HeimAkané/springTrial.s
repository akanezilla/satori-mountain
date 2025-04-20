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
	.global	initPlayerSpring
	.arch armv4t
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
	ldr	r3, .L4
	strb	r2, [r3, #68]
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #60]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayerSpring, .-initPlayerSpring
	.align	2
	.global	reInitPlayerSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	reInitPlayerSpring, %function
reInitPlayerSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #64
	mov	r6, #16
	mov	r5, #32
	mov	r4, #15
	mov	lr, #3
	mov	r0, #96
	mov	r1, #1
	ldr	r3, .L8
	strb	r2, [r3, #68]
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	lr, [r3, #60]
	str	ip, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	reInitPlayerSpring, .-reInitPlayerSpring
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #1
	mov	r1, #16
	mov	r0, #0
	mov	ip, #3
	mov	fp, #48
	mov	r10, #144
	mov	r9, #25
	mov	r8, #14
	mov	lr, #15
	mov	r7, #176
	mov	r6, #72
	mov	r5, #136
	mov	r4, #192
	ldr	r3, .L12
	str	fp, [r3]
	str	r9, [r3, #32]
	str	r10, [r3, #4]
	strb	r8, [r3, #68]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #52]
	str	r0, [r3, #44]
	str	r0, [r3, #56]
	str	ip, [r3, #60]
	ldr	r3, .L12+4
	str	r7, [r3]
	str	lr, [r3, #32]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r6, [r3, #4]
	str	r0, [r3, #44]
	str	r2, [r3, #52]
	str	r0, [r3, #56]
	str	ip, [r3, #60]
	strb	r2, [r3, #68]
	ldr	r3, .L12+8
	str	lr, [r3, #32]
	str	r5, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	ip, [r3, #48]
	str	r4, [r3, #4]
	strb	r1, [r3, #68]
	str	r2, [r3, #52]
	str	r0, [r3, #56]
	str	ip, [r3, #60]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.size	initBlupees, .-initBlupees
	.align	2
	.global	initSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpring, %function
initSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	mov	r1, #2048
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	strh	r3, [r2]	@ movhi
	ldr	r6, .L16
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L16+4
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r6
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r6
	mov	r5, #24
	mov	r8, #1
	mov	r7, #3
	mov	lr, #16
	mov	ip, #32
	mov	r9, #15
	mov	r0, #60
	mov	r1, #150
	mov	r2, #200
	ldr	r3, .L16+20
	str	r4, [r3]
	ldr	r3, .L16+24
	str	r4, [r3]
	ldr	r3, .L16+28
	str	r5, [r3]
	str	r4, [r3, #36]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	strb	r4, [r3, #68]
	str	lr, [r3, #24]
	str	ip, [r3, #28]
	str	r5, [r3, #4]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r8, [r3, #16]
	str	r8, [r3, #20]
	str	r9, [r3, #32]
	str	r7, [r3, #60]
	ldr	r3, .L16+32
	str	r0, [r3]
	ldr	r3, .L16+36
	str	r1, [r3]
	ldr	r3, .L16+40
	str	r2, [r3]
	bl	initBlupees
	mov	lr, #96
	mov	ip, #136
	mov	r0, #40
	mov	r1, #2
	ldr	r3, .L16+44
	ldr	r2, .L16+48
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #24]
	strb	r1, [r3, #68]
	str	r4, [r3, #56]
	str	r5, [r3, #28]
	str	r9, [r3, #32]
	str	r8, [r3, #52]
	str	r7, [r3, #60]
	mov	lr, pc
	bx	r2
	ldr	r3, .L16+52
	mov	lr, pc
	bx	r3
	mov	r0, r7
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+56
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	100728832
	.word	linkTiles
	.word	83886592
	.word	linkPal
	.word	hOff
	.word	vOff
	.word	player
	.word	countdown1
	.word	countdown2
	.word	countdown3
	.word	lotm
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	initSpring, .-initSpring
	.align	2
	.global	reInitSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	reInitSpring, %function
reInitSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #64
	mov	r4, #0
	mov	r6, #96
	mov	r5, #1
	mov	r0, #16
	mov	r1, #32
	mov	r8, #15
	mov	r7, #3
	ldr	r3, .L20
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	str	r6, [r3, #4]
	str	r6, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r8, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	strb	r4, [r3, #68]
	str	r7, [r3, #60]
	bl	initBlupees
	mov	r2, #2
	mov	ip, #136
	mov	r0, #40
	mov	r1, #24
	ldr	r3, .L20+4
	strb	r2, [r3, #68]
	str	r6, [r3]
	str	r8, [r3, #32]
	str	r5, [r3, #52]
	str	r4, [r3, #56]
	str	r7, [r3, #60]
	str	ip, [r3, #4]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	player
	.word	lotm
	.size	reInitSpring, .-reInitSpring
	.align	2
	.global	initLotM
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLotM, %function
initLotM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #2
	push	{r4, r5, r6, r7, lr}
	mov	ip, #1
	mov	r7, #96
	mov	r6, #136
	mov	r5, #40
	mov	r4, #24
	mov	lr, #15
	mov	r0, #0
	mov	r1, #3
	ldr	r3, .L24
	strb	r2, [r3, #68]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #52]
	str	r0, [r3, #56]
	str	r1, [r3, #60]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	lotm
	.size	initLotM, .-initLotM
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
	ldr	r4, .L100
	add	ip, r4, #24
	ldm	ip, {ip, lr}
	ldr	r1, .L100+4
	ldr	r5, [r4]
	rsb	r2, ip, #240
	ldr	r6, [r4, #4]
	ldr	r8, .L100+8
	add	r2, r2, r2, lsr #31
	ldrh	r0, [r1]
	rsb	r3, lr, #160
	sub	r2, r5, r2, asr #1
	str	r2, [r8]
	add	r3, r3, r3, lsr #31
	ldr	r8, .L100+12
	add	r7, r5, ip
	add	r1, r6, lr
	sub	sp, sp, #36
	str	r9, [r4, #52]
	sub	r3, r6, r3, asr #1
	sub	r9, r7, #1
	sub	r10, r1, #1
	tst	r0, #64
	str	r3, [r8]
	str	r9, [sp, #24]
	str	r10, [sp, #20]
	bne	.L56
	mov	r8, r9
	mov	r10, #1
	mov	r9, #2
	cmp	r1, #255
	str	r10, [r4, #52]
	str	r9, [r4, #36]
	ble	.L92
.L56:
	mov	r1, r6
.L27:
	ands	r9, r0, #128
	beq	.L93
.L29:
	lsr	r9, r0, #4
	eor	r9, r9, #1
	cmp	r7, #255
	movgt	r7, #0
	andle	r7, r9, #1
	cmp	r7, #0
	moveq	r7, r5
	bne	.L94
.L30:
	tst	r0, #32
	beq	.L32
.L52:
	ldr	r0, [r4, #52]
.L33:
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
	blt	.L95
	cmp	r3, #0
	blt	.L96
	cmp	r2, #16
	movgt	r2, #16
	ldrgt	r1, .L100+8
	strgt	r2, [r1]
.L41:
	cmp	r3, #96
	movgt	r3, #96
	ldrgt	r2, .L100+12
	strgt	r3, [r2]
.L44:
	cmp	r0, #0
	moveq	r3, #1
	streq	r3, [r4, #56]
	beq	.L46
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L46
	ldr	r0, [r4, #56]
	ldr	r3, .L100+16
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L46:
	mov	r0, #16
	mov	r1, #0
	mov	r2, #32
	mov	r3, #24
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r5, .L100+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L97
.L47:
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
	beq	.L26
	ldr	r3, .L100+24
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L49
	ldr	r2, .L100+28
	ldr	r2, [r2]
	cmp	r2, #0
	cmpne	r3, #0
	bgt	.L49
.L26:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	mov	r0, #1
	mov	r9, #3
	add	r10, ip, r7
	cmp	r10, #255
	str	r0, [r4, #52]
	str	r9, [r4, #36]
	bgt	.L33
	ldr	r0, .L100+32
	mov	fp, r0
	lsl	r10, r6, #8
.L50:
	ldr	r0, [r4, #16]
	sub	r5, r5, r0
	add	r10, r10, r5
	ldrb	r6, [fp, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L60
	ldr	r6, [sp, #20]
	add	r5, r5, r6, lsl #8
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L60
	sub	r7, r7, r0
	str	r7, [r4]
	mov	r0, #1
	b	.L33
.L93:
	mov	r10, #1
	str	r9, [r4, #36]
	add	r9, lr, r1
	cmp	r9, #255
	str	r10, [r4, #52]
	bgt	.L29
	ldr	r8, .L100+32
	mov	fp, r8
.L53:
	ldr	r9, [r4, #20]
	ldr	r10, [sp, #20]
	add	r10, r9, r10
	str	r9, [sp, #28]
	add	r9, r5, r10, lsl #8
	ldrb	r9, [fp, r9]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r10, r10, #8
	beq	.L29
	ldr	r8, [sp, #24]
	add	r10, r8, r10
	ldrb	r9, [fp, r10]	@ zero_extendqisi2
	cmp	r9, #0
	ldrne	r9, [sp, #28]
	addne	r1, r1, r9
	strne	r1, [r4, #4]
	b	.L29
.L92:
	ldr	r1, [r4, #20]
	ldr	fp, .L100+32
	sub	r1, r6, r1
	add	r10, r5, r1, lsl #8
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r10, r1, #8
	bne	.L98
.L28:
	ands	r1, r0, #128
	movne	r1, r6
	bne	.L29
	mov	r10, #1
	str	r1, [r4, #36]
	str	r10, [r4, #52]
	mov	r1, r6
	b	.L53
.L96:
	mov	r3, #0
	cmp	r2, #16
	ldr	r2, .L100+12
	str	r3, [r2]
	movgt	r3, #16
	ldrgt	r2, .L100+8
	strgt	r3, [r2]
	b	.L44
.L95:
	mov	r2, #0
	ldr	r1, .L100+8
	cmp	r3, r2
	str	r2, [r1]
	bge	.L41
	ldr	r3, .L100+12
	str	r2, [r3]
	b	.L44
.L97:
	ldr	r3, .L100+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+40
	mov	lr, pc
	bx	r3
	b	.L47
.L94:
	ldr	r8, .L100+32
	mov	fp, r8
	mov	r10, #1
	ldr	r9, [r4, #16]
	ldr	r7, [sp, #24]
	add	r7, r9, r7
	add	r8, r7, r6, lsl #8
	ldrb	r8, [fp, r8]	@ zero_extendqisi2
	cmp	r8, #0
	str	r10, [r4, #52]
	str	r10, [r4, #36]
	lsl	r10, r6, #8
	bne	.L99
.L31:
	tst	r0, #32
	movne	r7, r5
	bne	.L52
	mov	r6, #1
	mov	r0, #3
	mov	r7, r5
	str	r6, [r4, #52]
	str	r0, [r4, #36]
	b	.L50
.L49:
	ldr	r3, .L100+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+48
	mov	lr, pc
	bx	r3
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L99:
	ldr	r8, [sp, #20]
	add	r7, r7, r8, lsl #8
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	cmp	r7, #0
	addne	r7, r5, r9
	strne	r7, [r4]
	bne	.L30
	b	.L31
.L98:
	add	r10, r8, r10
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	strne	r1, [r4, #4]
	bne	.L27
	b	.L28
.L60:
	mov	r0, #1
	b	.L33
.L101:
	.align	2
.L100:
	.word	player
	.word	buttons
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.word	collision
	.word	spiritOrbCount
	.word	hasArmor
	.word	collisionSpringBitmap
	.word	initGame
	.word	goToGame
	.word	initTrial
	.word	goToTrial
	.size	updatePlayerSpring, .-updatePlayerSpring
	.align	2
	.global	updateBlupees
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlupees, %function
updateBlupees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L144
	ldr	r1, [r6, #4]
	cmp	r1, #191
	ble	.L137
.L103:
	ldr	r3, [r6, #44]
	cmp	r3, #1
	subeq	r1, r1, #1
	streq	r1, [r6, #4]
.L105:
	ldr	r5, .L144+4
	ldr	r2, [r5, #4]
	cmp	r2, #119
	ble	.L138
.L106:
	ldr	r3, [r5, #44]
	cmp	r3, #1
	subeq	r2, r2, #1
	streq	r2, [r5, #4]
.L108:
	ldr	r4, .L144+8
	ldr	r3, [r4]
	cmp	r3, #175
	ble	.L139
.L109:
	ldr	r0, [r4, #44]
	cmp	r0, #1
	subeq	r3, r3, #1
	streq	r3, [r4]
.L111:
	cmp	r1, #192
	beq	.L140
.L112:
	cmp	r1, #144
	bne	.L116
	ldr	ip, .L144+12
	ldr	r0, [ip]
	cmp	r0, #0
	ble	.L117
.L133:
	mov	r1, #0
	sub	r0, r0, #1
	str	r0, [ip]
	str	r1, [r6, #52]
.L114:
	cmp	r2, #120
	beq	.L141
.L118:
	cmp	r2, #72
	bne	.L120
	ldr	r0, .L144+16
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L121
.L134:
	mov	ip, #0
	sub	r2, r2, #1
	str	r2, [r0]
	str	ip, [r5, #52]
.L120:
	cmp	r3, #176
	beq	.L142
.L122:
	cmp	r3, #136
	bne	.L124
	ldr	r2, .L144+20
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L125
.L135:
	mov	r0, #0
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #52]
.L124:
	cmp	r1, #0
	streq	r1, [r6, #56]
	beq	.L127
	ldr	r3, [r6, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r6, #32]
	bne	.L127
	ldr	r0, [r6, #56]
	ldr	r3, .L144+24
	ldr	r1, [r6, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #25
	str	r1, [r6, #56]
	str	r3, [r6, #32]
.L127:
	ldr	r3, [r5, #52]
	cmp	r3, #0
	streq	r3, [r5, #56]
	beq	.L129
	ldr	r3, [r5, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #32]
	bne	.L129
	ldr	r0, [r5, #56]
	ldr	r3, .L144+24
	ldr	r1, [r5, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r5, #56]
	str	r3, [r5, #32]
.L129:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L102
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L102
	ldr	r0, [r4, #56]
	ldr	r3, .L144+24
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L102:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L139:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	addeq	r3, r3, #1
	streq	r3, [r4]
	beq	.L111
	cmp	r3, #136
	bgt	.L109
	cmp	r1, #192
	bne	.L112
.L140:
	ldr	ip, .L144+12
	ldr	r0, [ip]
	cmp	r0, #0
	bgt	.L133
	bne	.L116
	mov	r1, #1
	mov	r0, #60
	cmp	r2, #120
	str	r1, [r6, #52]
	str	r1, [r6, #44]
	str	r0, [ip]
	bne	.L118
.L141:
	ldr	r0, .L144+16
	ldr	r2, [r0]
	cmp	r2, #0
	bgt	.L134
	bne	.L120
	mov	r2, #1
	mov	ip, #150
	cmp	r3, #176
	str	r2, [r5, #52]
	str	r2, [r5, #44]
	str	ip, [r0]
	bne	.L122
.L142:
	ldr	r2, .L144+20
	ldr	r3, [r2]
	cmp	r3, #0
	bgt	.L135
	bne	.L124
	mov	r3, #1
	mov	r0, #200
	str	r3, [r4, #52]
	str	r3, [r4, #44]
	str	r0, [r2]
	b	.L124
.L138:
	ldr	r3, [r5, #44]
	cmp	r3, #0
	addeq	r2, r2, #1
	streq	r2, [r5, #4]
	beq	.L108
	cmp	r2, #72
	ble	.L108
	b	.L106
.L137:
	ldr	r3, [r6, #44]
	cmp	r3, #0
	addeq	r1, r1, #1
	streq	r1, [r6, #4]
	beq	.L105
	cmp	r1, #144
	ble	.L105
	b	.L103
.L117:
	beq	.L143
.L116:
	ldr	r1, [r6, #52]
	b	.L114
.L121:
	moveq	lr, #1
	moveq	ip, #150
	streq	r2, [r5, #44]
	streq	lr, [r5, #52]
	streq	ip, [r0]
	b	.L120
.L125:
	moveq	ip, #1
	moveq	r0, #200
	streq	r3, [r4, #44]
	streq	ip, [r4, #52]
	streq	r0, [r2]
	b	.L124
.L143:
	mov	lr, #1
	mov	r7, #60
	mov	r1, lr
	str	r0, [r6, #44]
	str	lr, [r6, #52]
	str	r7, [ip]
	b	.L114
.L145:
	.align	2
.L144:
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	countdown1
	.word	countdown2
	.word	countdown3
	.word	__aeabi_idivmod
	.size	updateBlupees, .-updateBlupees
	.align	2
	.global	updateLotM
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLotM, %function
updateLotM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L150
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L146
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L146
	ldr	r0, [r4, #56]
	ldr	r3, .L150+4
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #25
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L146:
	pop	{r4, lr}
	bx	lr
.L151:
	.align	2
.L150:
	.word	lotm
	.word	__aeabi_idivmod
	.size	updateLotM, .-updateLotM
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
	push	{r4, lr}
	bl	updatePlayerSpring
	bl	updateBlupees
	pop	{r4, lr}
	b	updateLotM
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
	push	{r4, r5, r6, lr}
	mov	r6, #67108864
	ldr	r0, .L159
	ldr	r1, .L159+4
	ldr	r0, [r0]
	ldr	r3, .L159+8
	ldr	ip, .L159+12
	ldrh	r4, [r3]
	ldrh	lr, [ip]
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	ldr	ip, [r1, #36]
	cmp	r0, #0
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, [r1, #56]
	ldr	r5, .L159+16
	addeq	r1, r1, #3
	sub	r2, r2, r4
	lsl	ip, ip, #6
	sub	r3, r3, lr
	add	ip, r1, ip
	lsl	r2, r2, #23
	ldr	r1, .L159+20
	and	ip, r5, ip, lsl #1
	lsr	r2, r2, #23
	and	r3, r3, #255
	add	r5, r1, r0, lsl #3
	orr	r2, r2, #32768
	orr	r3, r3, #32768
	orr	ip, ip, #4096
	lsl	r0, r0, #3
	strh	r3, [r1, r0]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	ip, [r5, #4]	@ movhi
	mov	r3, #512
	strh	r4, [r6, #20]	@ movhi
	mov	r2, #117440512
	strh	lr, [r6, #22]	@ movhi
	ldr	r4, .L159+24
	mov	r0, #3
	ldr	r1, .L159+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	hasArmor
	.word	player
	.word	hOff
	.word	vOff
	.word	1022
	.word	shadowOAM
	.word	DMANow
	.size	drawPlayerSpring, .-drawPlayerSpring
	.align	2
	.global	drawBlupees
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlupees, %function
drawBlupees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L181
	push	{r4, r5, lr}
	ldr	r1, .L181+4
	ldr	lr, .L181+8
	ldr	ip, [r2]
	ldr	r3, [lr, #4]
	ldr	r2, [lr]
	ldr	r0, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r0
	cmp	r2, #240
	cmple	r3, #160
	bgt	.L162
	ldr	r1, [lr, #28]
	rsb	r1, r1, #0
	cmp	r1, r3
	ble	.L178
.L162:
	mov	r3, #512
	ldrb	r2, [lr, #68]	@ zero_extendqisi2
	ldr	r1, .L181+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L164:
	ldr	r4, .L181+16
	ldm	r4, {r2, r3}
	sub	r3, r3, ip
	sub	r2, r2, r0
	cmp	r2, #240
	cmple	r3, #160
	bgt	.L166
	ldr	lr, [r4, #28]
	rsb	lr, lr, #0
	cmp	lr, r3
	ble	.L179
.L166:
	mov	r3, #512
	ldrb	r2, [r4, #68]	@ zero_extendqisi2
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L168:
	ldr	lr, .L181+20
	ldr	r2, [lr, #4]
	ldr	r3, [lr]
	sub	r2, r2, ip
	sub	r3, r3, r0
	cmp	r3, #240
	cmple	r2, #160
	bgt	.L170
	ldr	r0, [lr, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L180
.L170:
	mov	r2, #512
	ldrb	r3, [lr, #68]	@ zero_extendqisi2
	lsl	r3, r3, #3
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L180:
	ldr	r0, [lr, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L170
	ldr	r0, [lr, #48]
	cmp	r0, #0
	moveq	r0, #64
	movne	r0, #96
	ldr	ip, [lr, #56]
	add	r0, r0, ip
	lsl	r0, r0, #1
	add	r0, r0, #13
	ldrb	ip, [lr, #68]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsl	r0, r0, #22
	lsr	r3, r3, #23
	lsr	r0, r0, #22
	add	lr, r1, ip, lsl #3
	orr	r3, r3, #16384
	and	r2, r2, #255
	lsl	ip, ip, #3
	orr	r0, r0, #16384
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r2, [r1, ip]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L179:
	ldr	lr, [r4, #24]
	rsb	lr, lr, #0
	cmp	lr, r2
	bgt	.L166
	ldr	lr, [r4, #44]
	cmp	lr, #0
	moveq	lr, #0
	movne	lr, #32
	ldr	r5, [r4, #56]
	add	lr, lr, r5
	lsl	lr, lr, #1
	add	lr, lr, #13
	ldrb	r4, [r4, #68]	@ zero_extendqisi2
	lsl	r2, r2, #23
	lsl	lr, lr, #22
	lsr	r2, r2, #23
	lsr	lr, lr, #22
	add	r5, r1, r4, lsl #3
	orr	r2, r2, #16384
	and	r3, r3, #255
	lsl	r4, r4, #3
	orr	lr, lr, #16384
	strh	r2, [r5, #2]	@ movhi
	strh	r3, [r1, r4]	@ movhi
	strh	lr, [r5, #4]	@ movhi
	b	.L168
.L178:
	ldr	r1, [lr, #24]
	rsb	r1, r1, #0
	cmp	r1, r2
	bgt	.L162
	ldr	r1, [lr, #44]
	cmp	r1, #0
	moveq	r4, #0
	movne	r4, #32
	ldr	r1, [lr, #56]
	add	r4, r4, r1
	lsl	r4, r4, #1
	add	r4, r4, #13
	ldrb	r5, [lr, #68]	@ zero_extendqisi2
	ldr	r1, .L181+12
	lsl	lr, r4, #22
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	lsr	lr, lr, #22
	add	r4, r1, r5, lsl #3
	orr	r2, r2, #16384
	and	r3, r3, #255
	lsl	r5, r5, #3
	orr	lr, lr, #16384
	strh	r2, [r4, #2]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	lr, [r4, #4]	@ movhi
	b	.L164
.L182:
	.align	2
.L181:
	.word	vOff
	.word	hOff
	.word	blupee1
	.word	shadowOAM
	.word	blupee2
	.word	blupee3
	.size	drawBlupees, .-drawBlupees
	.align	2
	.global	drawLotM
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLotM, %function
drawLotM:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L191
	ldr	r3, .L191+4
	ldr	r1, .L191+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	bgt	.L184
	ldr	r0, [ip, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L190
.L184:
	mov	r2, #512
	ldr	r3, .L191+12
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L190:
	ldr	r0, [ip, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L184
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [ip, #56]
	lsl	r0, r0, #3
	ldr	ip, .L191+16
	add	r0, r0, #644
	str	lr, [sp, #-4]!
	add	r0, r0, #2
	ldr	lr, .L191+12
	and	ip, ip, r0
	and	r2, r2, #255
	add	r0, lr, r1, lsl #3
	orr	r2, r2, #16384
	orr	ip, ip, #16384
	lsl	r1, r1, #3
	strh	r2, [lr, r1]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L192:
	.align	2
.L191:
	.word	lotm
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	1022
	.size	drawLotM, .-drawLotM
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
	push	{r4, lr}
	bl	drawPlayerSpring
	bl	drawBlupees
	pop	{r4, lr}
	b	drawLotM
	.size	drawSpring, .-drawSpring
	.comm	spiritOrbCount,4,4
	.comm	hasArmor,4,4
	.comm	direction,1,1
	.comm	shadowOAM,1024,4
	.comm	blupeeDirection2,1,1
	.comm	blupeeDirection,1,1
	.comm	countdown3,4,4
	.comm	countdown2,4,4
	.comm	countdown1,4,4
	.comm	lotm,72,4
	.comm	blupee3,72,4
	.comm	blupee2,72,4
	.comm	blupee1,72,4
	.comm	player,72,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
