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
	mov	r1, #1
	mov	r0, #16
	mov	ip, #0
	mov	lr, #3
	mov	fp, #48
	mov	r10, #144
	mov	r9, #25
	mov	r2, #14
	mov	r4, #15
	mov	r8, #176
	mov	r7, #72
	mov	r6, #136
	mov	r5, #192
	ldr	r3, .L8
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r9, [r3, #32]
	strb	r2, [r3, #68]
	str	r0, [r3, #24]
	ldr	r2, .L8+4
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	lr, [r3, #60]
	str	r1, [r3, #52]
	str	ip, [r3, #44]
	str	ip, [r3, #56]
	ldr	r3, .L8+8
	str	lr, [r2, #60]
	str	r8, [r2]
	str	r7, [r2, #4]
	str	r4, [r2, #32]
	str	lr, [r3, #48]
	str	r6, [r3]
	str	r5, [r3, #4]
	strb	r4, [r2, #68]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	ip, [r2, #44]
	str	r1, [r2, #52]
	str	ip, [r2, #56]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r4, [r3, #32]
	strb	r0, [r3, #68]
	str	lr, [r3, #60]
	str	r1, [r3, #52]
	str	ip, [r3, #56]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
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
	mov	r3, #4352
	mov	r1, #2048
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	strh	r3, [r2]	@ movhi
	ldr	r6, .L12
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L12+4
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r6
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
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
	ldr	r3, .L12+20
	str	r4, [r3]
	ldr	r3, .L12+24
	str	r4, [r3]
	ldr	r3, .L12+28
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
	ldr	r3, .L12+32
	str	r0, [r3]
	ldr	r3, .L12+36
	str	r1, [r3]
	ldr	r3, .L12+40
	str	r2, [r3]
	bl	initBlupees
	mov	lr, #96
	mov	ip, #136
	mov	r0, #40
	mov	r1, #2
	ldr	r3, .L12+44
	ldr	r2, .L12+48
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
	ldr	r3, .L12+52
	mov	lr, pc
	bx	r3
	mov	r0, r7
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+56
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
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
	ldr	r4, .L86
	add	ip, r4, #24
	ldm	ip, {ip, lr}
	ldr	r1, .L86+4
	ldr	r5, [r4]
	rsb	r2, ip, #240
	ldr	r6, [r4, #4]
	ldr	r8, .L86+8
	add	r2, r2, r2, lsr #31
	ldrh	r0, [r1]
	rsb	r3, lr, #160
	sub	r2, r5, r2, asr #1
	str	r2, [r8]
	add	r3, r3, r3, lsr #31
	ldr	r8, .L86+12
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
	bne	.L48
	mov	r8, r9
	mov	r10, #1
	mov	r9, #2
	cmp	r1, #255
	str	r10, [r4, #52]
	str	r9, [r4, #36]
	ble	.L78
.L48:
	mov	r1, r6
.L19:
	ands	r9, r0, #128
	beq	.L79
.L21:
	lsr	r9, r0, #4
	eor	r9, r9, #1
	cmp	r7, #255
	movgt	r7, #0
	andle	r7, r9, #1
	cmp	r7, #0
	moveq	r7, r5
	bne	.L80
.L22:
	tst	r0, #32
	beq	.L24
.L44:
	ldr	r0, [r4, #52]
.L25:
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
	blt	.L81
	cmp	r3, #0
	blt	.L82
	cmp	r2, #16
	movgt	r2, #16
	ldrgt	r1, .L86+8
	strgt	r2, [r1]
.L33:
	cmp	r3, #96
	movgt	r3, #96
	ldrgt	r2, .L86+12
	strgt	r3, [r2]
.L36:
	cmp	r0, #0
	moveq	r3, #1
	streq	r3, [r4, #56]
	beq	.L38
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L38
	ldr	r0, [r4, #56]
	ldr	r3, .L86+16
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L38:
	mov	r0, #16
	mov	r1, #0
	mov	r2, #32
	mov	r3, #24
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r5, .L86+20
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L83
.L39:
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
	beq	.L18
	ldr	r3, .L86+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldrne	r3, .L86+28
	ldreq	r3, .L86+32
	mov	lr, pc
	bx	r3
.L18:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	mov	r0, #1
	mov	r9, #3
	add	r10, ip, r7
	cmp	r10, #255
	str	r0, [r4, #52]
	str	r9, [r4, #36]
	bgt	.L25
	ldr	r0, .L86+36
	mov	fp, r0
	lsl	r10, r6, #8
.L42:
	ldr	r0, [r4, #16]
	sub	r5, r5, r0
	add	r10, r10, r5
	ldrb	r6, [fp, r10]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L52
	ldr	r6, [sp, #20]
	add	r5, r5, r6, lsl #8
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L52
	sub	r7, r7, r0
	str	r7, [r4]
	mov	r0, #1
	b	.L25
.L79:
	mov	r10, #1
	str	r9, [r4, #36]
	add	r9, lr, r1
	cmp	r9, #255
	str	r10, [r4, #52]
	bgt	.L21
	ldr	r8, .L86+36
	mov	fp, r8
.L45:
	ldr	r9, [r4, #20]
	ldr	r10, [sp, #20]
	add	r10, r9, r10
	str	r9, [sp, #28]
	add	r9, r5, r10, lsl #8
	ldrb	r9, [fp, r9]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r10, r10, #8
	beq	.L21
	ldr	r8, [sp, #24]
	add	r10, r8, r10
	ldrb	r9, [fp, r10]	@ zero_extendqisi2
	cmp	r9, #0
	ldrne	r9, [sp, #28]
	addne	r1, r1, r9
	strne	r1, [r4, #4]
	b	.L21
.L78:
	ldr	r1, [r4, #20]
	ldr	fp, .L86+36
	sub	r1, r6, r1
	add	r10, r5, r1, lsl #8
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r10, r1, #8
	bne	.L84
.L20:
	ands	r1, r0, #128
	movne	r1, r6
	bne	.L21
	mov	r10, #1
	str	r1, [r4, #36]
	str	r10, [r4, #52]
	mov	r1, r6
	b	.L45
.L82:
	mov	r3, #0
	cmp	r2, #16
	ldr	r2, .L86+12
	str	r3, [r2]
	movgt	r3, #16
	ldrgt	r2, .L86+8
	strgt	r3, [r2]
	b	.L36
.L81:
	mov	r2, #0
	ldr	r1, .L86+8
	cmp	r3, r2
	str	r2, [r1]
	bge	.L33
	ldr	r3, .L86+12
	str	r2, [r3]
	b	.L36
.L83:
	ldr	r3, .L86+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+44
	mov	lr, pc
	bx	r3
	b	.L39
.L80:
	ldr	r8, .L86+36
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
	bne	.L85
.L23:
	tst	r0, #32
	movne	r7, r5
	bne	.L44
	mov	r6, #1
	mov	r0, #3
	mov	r7, r5
	str	r6, [r4, #52]
	str	r0, [r4, #36]
	b	.L42
.L85:
	ldr	r8, [sp, #20]
	add	r7, r7, r8, lsl #8
	ldrb	r7, [fp, r7]	@ zero_extendqisi2
	cmp	r7, #0
	addne	r7, r5, r9
	strne	r7, [r4]
	bne	.L22
	b	.L23
.L84:
	add	r10, r8, r10
	ldrb	r10, [fp, r10]	@ zero_extendqisi2
	cmp	r10, #0
	strne	r1, [r4, #4]
	bne	.L19
	b	.L20
.L52:
	mov	r0, #1
	b	.L25
.L87:
	.align	2
.L86:
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
	ldr	r6, .L130
	ldr	r1, [r6, #4]
	cmp	r1, #191
	ble	.L123
.L89:
	ldr	r3, [r6, #44]
	cmp	r3, #1
	subeq	r1, r1, #1
	streq	r1, [r6, #4]
.L91:
	ldr	r5, .L130+4
	ldr	r2, [r5, #4]
	cmp	r2, #119
	ble	.L124
.L92:
	ldr	r3, [r5, #44]
	cmp	r3, #1
	subeq	r2, r2, #1
	streq	r2, [r5, #4]
.L94:
	ldr	r4, .L130+8
	ldr	r3, [r4]
	cmp	r3, #175
	ble	.L125
.L95:
	ldr	r0, [r4, #44]
	cmp	r0, #1
	subeq	r3, r3, #1
	streq	r3, [r4]
.L97:
	cmp	r1, #192
	beq	.L126
.L98:
	cmp	r1, #144
	bne	.L102
	ldr	ip, .L130+12
	ldr	r0, [ip]
	cmp	r0, #0
	ble	.L103
.L119:
	mov	r1, #0
	sub	r0, r0, #1
	str	r0, [ip]
	str	r1, [r6, #52]
.L100:
	cmp	r2, #120
	beq	.L127
.L104:
	cmp	r2, #72
	bne	.L106
	ldr	r0, .L130+16
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L107
.L120:
	mov	ip, #0
	sub	r2, r2, #1
	str	r2, [r0]
	str	ip, [r5, #52]
.L106:
	cmp	r3, #176
	beq	.L128
.L108:
	cmp	r3, #136
	bne	.L110
	ldr	r2, .L130+20
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L111
.L121:
	mov	r0, #0
	sub	r3, r3, #1
	str	r3, [r2]
	str	r0, [r4, #52]
.L110:
	cmp	r1, #0
	streq	r1, [r6, #56]
	beq	.L113
	ldr	r3, [r6, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r6, #32]
	bne	.L113
	ldr	r0, [r6, #56]
	ldr	r3, .L130+24
	ldr	r1, [r6, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #25
	str	r1, [r6, #56]
	str	r3, [r6, #32]
.L113:
	ldr	r3, [r5, #52]
	cmp	r3, #0
	streq	r3, [r5, #56]
	beq	.L115
	ldr	r3, [r5, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5, #32]
	bne	.L115
	ldr	r0, [r5, #56]
	ldr	r3, .L130+24
	ldr	r1, [r5, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r5, #56]
	str	r3, [r5, #32]
.L115:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L88
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L88
	ldr	r0, [r4, #56]
	ldr	r3, .L130+24
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L88:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L125:
	ldr	r0, [r4, #44]
	cmp	r0, #0
	addeq	r3, r3, #1
	streq	r3, [r4]
	beq	.L97
	cmp	r3, #136
	bgt	.L95
	cmp	r1, #192
	bne	.L98
.L126:
	ldr	ip, .L130+12
	ldr	r0, [ip]
	cmp	r0, #0
	bgt	.L119
	bne	.L102
	mov	r1, #1
	mov	r0, #60
	cmp	r2, #120
	str	r1, [r6, #52]
	str	r1, [r6, #44]
	str	r0, [ip]
	bne	.L104
.L127:
	ldr	r0, .L130+16
	ldr	r2, [r0]
	cmp	r2, #0
	bgt	.L120
	bne	.L106
	mov	r2, #1
	mov	ip, #150
	cmp	r3, #176
	str	r2, [r5, #52]
	str	r2, [r5, #44]
	str	ip, [r0]
	bne	.L108
.L128:
	ldr	r2, .L130+20
	ldr	r3, [r2]
	cmp	r3, #0
	bgt	.L121
	bne	.L110
	mov	r3, #1
	mov	r0, #200
	str	r3, [r4, #52]
	str	r3, [r4, #44]
	str	r0, [r2]
	b	.L110
.L124:
	ldr	r3, [r5, #44]
	cmp	r3, #0
	addeq	r2, r2, #1
	streq	r2, [r5, #4]
	beq	.L94
	cmp	r2, #72
	ble	.L94
	b	.L92
.L123:
	ldr	r3, [r6, #44]
	cmp	r3, #0
	addeq	r1, r1, #1
	streq	r1, [r6, #4]
	beq	.L91
	cmp	r1, #144
	ble	.L91
	b	.L89
.L103:
	beq	.L129
.L102:
	ldr	r1, [r6, #52]
	b	.L100
.L107:
	moveq	lr, #1
	moveq	ip, #150
	streq	r2, [r5, #44]
	streq	lr, [r5, #52]
	streq	ip, [r0]
	b	.L106
.L111:
	moveq	ip, #1
	moveq	r0, #200
	streq	r3, [r4, #44]
	streq	ip, [r4, #52]
	streq	r0, [r2]
	b	.L110
.L129:
	mov	lr, #1
	mov	r7, #60
	mov	r1, lr
	str	r0, [r6, #44]
	str	lr, [r6, #52]
	str	r7, [ip]
	b	.L100
.L131:
	.align	2
.L130:
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
	ldr	r4, .L136
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L132
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L132
	ldr	r0, [r4, #56]
	ldr	r3, .L136+4
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #25
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L132:
	pop	{r4, lr}
	bx	lr
.L137:
	.align	2
.L136:
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
	mov	ip, #67108864
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L142
	ldr	r5, .L142+4
	ldr	r2, .L142+8
	ldr	r3, [r5]
	ldrh	r4, [r1]
	ldr	r8, [r5, #36]
	ldr	r0, [r5, #56]
	ldrh	lr, [r2]
	ldr	r2, [r5, #4]
	ldrb	r6, [r5, #68]	@ zero_extendqisi2
	sub	r3, r3, r4
	add	r5, r0, r8, lsl #6
	ldr	r0, .L142+12
	ldr	r7, .L142+16
	ldr	r1, .L142+20
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
	ldr	r4, .L142+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L143:
	.align	2
.L142:
	.word	hOff
	.word	player
	.word	vOff
	.word	1022
	.word	-32768
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
	ldr	r2, .L164
	push	{r4, r5, lr}
	ldr	r1, .L164+4
	ldr	lr, .L164+8
	ldr	ip, [r2]
	ldr	r3, [lr, #4]
	ldr	r2, [lr]
	ldr	r0, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r0
	cmp	r2, #240
	cmple	r3, #160
	bgt	.L145
	ldr	r1, [lr, #28]
	rsb	r1, r1, #0
	cmp	r1, r3
	ble	.L161
.L145:
	mov	r3, #512
	ldrb	r2, [lr, #68]	@ zero_extendqisi2
	ldr	r1, .L164+12
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L147:
	ldr	r4, .L164+16
	ldm	r4, {r2, r3}
	sub	r3, r3, ip
	sub	r2, r2, r0
	cmp	r2, #240
	cmple	r3, #160
	bgt	.L149
	ldr	lr, [r4, #28]
	rsb	lr, lr, #0
	cmp	lr, r3
	ble	.L162
.L149:
	mov	r3, #512
	ldrb	r2, [r4, #68]	@ zero_extendqisi2
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
.L151:
	ldr	lr, .L164+20
	ldr	r2, [lr, #4]
	ldr	r3, [lr]
	sub	r2, r2, ip
	sub	r3, r3, r0
	cmp	r3, #240
	cmple	r2, #160
	bgt	.L153
	ldr	r0, [lr, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L163
.L153:
	mov	r2, #512
	ldrb	r3, [lr, #68]	@ zero_extendqisi2
	lsl	r3, r3, #3
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L163:
	ldr	r0, [lr, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L153
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
.L162:
	ldr	lr, [r4, #24]
	rsb	lr, lr, #0
	cmp	lr, r2
	bgt	.L149
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
	b	.L151
.L161:
	ldr	r1, [lr, #24]
	rsb	r1, r1, #0
	cmp	r1, r2
	bgt	.L145
	ldr	r1, [lr, #44]
	cmp	r1, #0
	moveq	r4, #0
	movne	r4, #32
	ldr	r1, [lr, #56]
	add	r4, r4, r1
	lsl	r4, r4, #1
	add	r4, r4, #13
	ldrb	r5, [lr, #68]	@ zero_extendqisi2
	ldr	r1, .L164+12
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
	b	.L147
.L165:
	.align	2
.L164:
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
	ldr	ip, .L174
	ldr	r3, .L174+4
	ldr	r1, .L174+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	bgt	.L167
	ldr	r0, [ip, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L173
.L167:
	mov	r2, #512
	ldr	r3, .L174+12
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L173:
	ldr	r0, [ip, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L167
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [ip, #56]
	add	r0, r0, #33
	ldr	ip, .L174+12
	lsl	r0, r0, #3
	and	r0, r0, #1016
	and	r2, r2, #255
	str	lr, [sp, #-4]!
	orr	r0, r0, #16384
	add	lr, ip, r1, lsl #3
	orr	r2, r2, #16384
	lsl	r1, r1, #3
	strh	r0, [lr, #4]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L175:
	.align	2
.L174:
	.word	lotm
	.word	vOff
	.word	hOff
	.word	shadowOAM
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
