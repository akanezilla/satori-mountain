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
	.file	"trial.c"
	.text
	.align	2
	.global	initPlayerTrial
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerTrial, %function
initPlayerTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r1, #16
	mov	r5, #32
	mov	r4, #15
	mov	lr, #3
	mov	ip, #88
	mov	r0, #1
	ldr	r3, .L4
	strb	r2, [r3, #68]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	lr, [r3, #60]
	str	r1, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #8]
	str	ip, [r3, #4]
	str	ip, [r3, #12]
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
	.size	initPlayerTrial, .-initPlayerTrial
	.align	2
	.global	initLotMTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLotMTrial, %function
initLotMTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, r6, lr}
	mov	ip, #15
	mov	r6, #96
	mov	r5, #136
	mov	r4, #40
	mov	lr, #24
	mov	r0, #0
	mov	r1, #3
	ldr	r3, .L8
	strb	r2, [r3, #68]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #32]
	str	r0, [r3, #56]
	str	r1, [r3, #60]
	str	r2, [r3, #52]
	str	r2, [r3, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	lotm
	.size	initLotMTrial, .-initLotMTrial
	.align	2
	.global	initBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBar, %function
initBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #16
	mov	r0, #2
	mov	lr, #24
	mov	fp, #7
	mov	r2, #0
	mov	r10, #17
	ldr	r1, .L12
	mov	r9, #27
	mov	r8, #3
	str	r3, [r1]
	str	lr, [r1, #24]
	strb	fp, [r1, #68]
	str	r0, [r1, #4]
	str	lr, [r1, #28]
	mov	r7, #4
	ldr	r1, .L12+4
	mov	ip, #9
	str	r0, [r1]
	str	r3, [r1, #24]
	str	r3, [r1, #28]
	strb	r0, [r1, #68]
	str	r10, [r1, #4]
	str	r2, [r1, #64]
	mov	r6, #30
	ldr	r1, .L12+8
	mov	r5, #5
	str	r0, [r1]
	mov	r4, #18
	mov	r0, #21
	str	r3, [r1, #24]
	str	r3, [r1, #28]
	str	r9, [r1, #4]
	strb	r8, [r1, #68]
	str	r2, [r1, #64]
	ldr	r1, .L12+12
	str	r3, [r1, #24]
	str	r3, [r1, #4]
	str	r3, [r1, #28]
	strb	r7, [r1, #68]
	str	ip, [r1]
	str	r2, [r1, #64]
	ldr	r1, .L12+16
	str	r3, [r1, #24]
	str	ip, [r1]
	str	r3, [r1, #28]
	str	r6, [r1, #4]
	strb	r5, [r1, #68]
	str	r2, [r1, #64]
	ldr	r1, .L12+20
	str	r3, [r1, #24]
	str	r4, [r1]
	str	r0, [r1, #4]
	str	r3, [r1, #28]
	mov	r3, #6
	strb	r3, [r1, #68]
	str	r2, [r1, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	staminaBar
	.word	piece1
	.word	piece2
	.word	piece3
	.word	piece4
	.word	piece5
	.size	initBar, .-initBar
	.align	2
	.global	initTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTrial, %function
initTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #4608
	mov	r1, #2048
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	strh	r3, [r2]	@ movhi
	ldr	r7, .L16
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L16+4
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r7
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r7
	mov	r5, #1
	mov	r6, #16
	mov	r2, #88
	mov	r9, #15
	mov	r8, #3
	mov	r10, #32
	mov	lr, #96
	mov	ip, #136
	mov	r0, #40
	mov	r1, #24
	ldr	r3, .L16+20
	str	r4, [r3]
	ldr	r3, .L16+24
	str	r4, [r3]
	ldr	r3, .L16+28
	str	r4, [r3]
	ldr	r3, .L16+32
	str	r4, [r3]
	ldr	r3, .L16+36
	stmib	r3, {r2, r6}
	str	r4, [r3, #36]
	str	r4, [r3, #52]
	str	r4, [r3, #56]
	strb	r4, [r3, #68]
	str	r10, [r3, #28]
	str	r6, [r3]
	str	r6, [r3, #24]
	str	r9, [r3, #32]
	str	r8, [r3, #60]
	str	r2, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	ldr	r3, .L16+40
	str	lr, [r3]
	str	r9, [r3, #32]
	str	r5, [r3, #52]
	str	r4, [r3, #56]
	str	r8, [r3, #60]
	strb	r5, [r3, #68]
	str	r5, [r3, #36]
	str	ip, [r3, #4]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	bl	initBar
	mov	ip, #208
	mov	r0, #8
	mov	r1, #60
	ldr	r3, .L16+44
	ldr	r2, .L16+48
	str	ip, [r3]
	strb	r0, [r3, #68]
	str	r1, [r3, #32]
	str	r9, [r3, #60]
	str	r4, [r3, #4]
	str	r6, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #64]
	str	r5, [r3, #52]
	str	r4, [r3, #56]
	mov	lr, pc
	bx	r2
	ldr	r3, .L16+52
	mov	lr, pc
	bx	r3
	mov	r0, r8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+56
	mov	lr, pc
	bx	r7
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
	.word	staminaCount
	.word	alreadyAnimated
	.word	player
	.word	lotm
	.word	numbers
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	initTrial, .-initTrial
	.align	2
	.global	initNumbers
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNumbers, %function
initNumbers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, #8
	mov	r5, #208
	mov	lr, #15
	mov	r0, #0
	mov	r1, #16
	mov	r2, #1
	mov	ip, #60
	ldr	r3, .L20
	strb	r4, [r3, #68]
	str	r5, [r3]
	str	lr, [r3, #60]
	str	ip, [r3, #32]
	str	r0, [r3, #4]
	str	r0, [r3, #56]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #64]
	str	r2, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	numbers
	.size	initNumbers, .-initNumbers
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerTrial, %function
updatePlayerTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #0
	ldr	r4, .L62
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r5, .L62+4
	ldr	r0, [r4]
	ldrh	r7, [r5]
	ldr	r1, [r4, #4]
	rsb	lr, r2, #240
	rsb	ip, r3, #160
	ldr	r6, .L62+8
	ldr	r5, .L62+12
	add	lr, lr, lr, lsr #31
	add	ip, ip, ip, lsr #31
	sub	lr, r0, lr, asr #1
	sub	ip, r1, ip, asr #1
	tst	r7, #64
	str	r8, [r4, #52]
	str	lr, [r6]
	str	ip, [r5]
	sub	sp, sp, #16
	add	r9, r0, r2
	bne	.L23
	mov	r10, #1
	mov	r8, #2
	str	r10, [r4, #52]
	add	r10, r1, r3
	cmp	r10, #255
	str	r8, [r4, #36]
	ldrle	r8, [r4, #20]
	suble	r1, r1, r8
	strle	r1, [r4, #4]
.L23:
	ands	r8, r7, #128
	bne	.L24
	mov	r10, #1
	str	r8, [r4, #36]
	add	r8, r3, r1
	cmp	r8, #255
	ldrle	r8, [r4, #20]
	addle	r1, r1, r8
	str	r10, [r4, #52]
	strle	r1, [r4, #4]
.L24:
	lsr	r8, r7, #4
	eor	r8, r8, #1
	cmp	r9, #255
	movgt	r8, #0
	andle	r8, r8, #1
	cmp	r8, #0
	bne	.L58
.L25:
	tst	r7, #32
	bne	.L26
	mov	r9, #1
	mov	r8, #3
	str	r9, [r4, #52]
	add	r9, r2, r0
	cmp	r9, #255
	str	r8, [r4, #36]
	ldrle	r8, [r4, #16]
	suble	r0, r0, r8
	strle	r0, [r4]
.L26:
	ldr	r8, .L62+16
	ldrh	r8, [r8]
	tst	r8, #4
	beq	.L55
	tst	r7, #4
	beq	.L53
.L55:
	ldr	r7, .L62+20
.L27:
	cmp	r0, #0
	movlt	r8, #0
	movlt	r0, r2
	strlt	r8, [r4]
	addge	r0, r0, r2
	cmp	r1, #0
	movlt	r8, #0
	movlt	r1, r3
	addge	r1, r1, r3
	strlt	r8, [r4, #4]
	cmp	r0, #256
	rsbgt	r2, r2, #256
	strgt	r2, [r4]
	cmp	r1, #256
	rsbgt	r3, r3, #256
	strgt	r3, [r4, #4]
	cmp	lr, #0
	blt	.L59
	cmp	ip, #0
	blt	.L60
	cmp	lr, #16
	movgt	r3, #16
	strgt	r3, [r6]
.L36:
	cmp	ip, #96
	ble	.L39
	mov	r3, #96
.L57:
	str	r3, [r5]
.L39:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r4, #56]
	beq	.L41
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L41
	ldr	r0, [r4, #56]
	ldr	r3, .L62+24
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L41:
	mov	r0, #16
	mov	r1, #0
	mov	r2, #32
	mov	r3, #24
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L61
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L60:
	mov	r3, #0
	cmp	lr, #16
	str	r3, [r5]
	movgt	r3, #16
	strgt	r3, [r6]
	b	.L39
.L59:
	mov	r3, #0
	cmp	ip, r3
	str	r3, [r6]
	bge	.L36
	b	.L57
.L61:
	ldr	r3, .L62+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+32
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L58:
	mov	r8, #1
	ldr	r9, [r4, #16]
	add	r0, r0, r9
	str	r0, [r4]
	str	r8, [r4, #52]
	str	r8, [r4, #36]
	b	.L25
.L53:
	ldr	ip, .L62+36
	ldr	r7, [ip, #28]
	ldr	lr, [ip, #24]
	str	r7, [sp, #12]
	ldr	r7, [ip, #4]
	ldr	ip, [ip]
	stmib	sp, {r7, lr}
	str	ip, [sp]
	ldr	r7, .L62+20
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r2, .L62+40
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r3, [r2]
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	ldr	lr, [r6]
	ldr	ip, [r5]
	b	.L27
.L63:
	.align	2
.L62:
	.word	player
	.word	buttons
	.word	hOff
	.word	vOff
	.word	oldButtons
	.word	collision
	.word	__aeabi_idivmod
	.word	reInitSpring
	.word	goToSpring
	.word	lotm
	.word	staminaCount
	.size	updatePlayerTrial, .-updatePlayerTrial
	.align	2
	.global	updateLotMTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLotMTrial, %function
updateLotMTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L101
	ldr	r3, [r4, #36]
	cmp	r3, #1
	ldr	r2, [r4, #4]
	beq	.L99
	cmp	r3, #0
	bne	.L68
	cmp	r2, #175
	ble	.L69
.L72:
	ldr	r1, [r4]
.L70:
	cmp	r2, #88
	beq	.L76
.L75:
	cmp	r3, #0
	cmpeq	r2, #176
	moveq	r3, #3
	streq	r3, [r4, #36]
	beq	.L74
.L76:
	cmp	r3, #3
	cmpeq	r1, #8
	moveq	r3, #2
	streq	r3, [r4, #36]
.L74:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L64
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L64
	ldr	r0, [r4, #56]
	ldr	r3, .L101+4
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #25
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L64:
	pop	{r4, lr}
	bx	lr
.L68:
	cmp	r3, #3
	bne	.L71
	ldr	r1, [r4]
	cmp	r1, #8
	subgt	r1, r1, #1
	strgt	r1, [r4]
	ble	.L70
.L67:
	cmp	r2, #88
	ldrne	r1, [r4]
	beq	.L100
.L80:
	cmp	r1, #184
	cmpeq	r3, #1
	bne	.L75
.L82:
	mov	r3, #0
	str	r3, [r4, #36]
	b	.L74
.L99:
	ldr	r1, [r4]
	cmp	r1, #183
	addle	r1, r1, #1
	strle	r1, [r4]
	ble	.L67
	cmp	r2, #88
	bne	.L80
	cmp	r1, #184
	bne	.L74
	b	.L82
.L69:
	add	r2, r2, #1
	cmp	r2, #88
	str	r2, [r4, #4]
	ldrne	r1, [r4]
	bne	.L80
.L100:
	ldr	r1, [r4]
	cmp	r3, #1
	cmpeq	r1, #184
	bne	.L76
	b	.L82
.L71:
	cmp	r3, #2
	bne	.L72
	cmp	r2, #88
	subgt	r2, r2, #1
	strgt	r2, [r4, #4]
	cmp	r2, #88
	ldrne	r1, [r4]
	bne	.L76
.L81:
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L74
.L102:
	.align	2
.L101:
	.word	lotm
	.word	__aeabi_idivmod
	.size	updateLotMTrial, .-updateLotMTrial
	.align	2
	.global	updateBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBar, %function
updateBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L119
	ldr	r3, [r3]
	cmp	r3, #10
	beq	.L116
	cmp	r3, #20
	beq	.L117
	cmp	r3, #30
	beq	.L118
	cmp	r3, #40
	bne	.L108
	ldr	r3, .L119+4
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
	str	r2, [r3, #64]
	bx	lr
.L117:
	ldr	r3, .L119+8
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
	str	r2, [r3, #64]
	bx	lr
.L118:
	ldr	r3, .L119+12
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
	str	r2, [r3, #64]
	bx	lr
.L116:
	ldr	r3, .L119+16
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
	str	r2, [r3, #64]
	bx	lr
.L108:
	cmp	r3, #50
	bxne	lr
	ldr	r3, .L119+20
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L119+24
	str	r1, [r3, #64]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	staminaCount
	.word	piece3
	.word	piece4
	.word	piece5
	.word	piece2
	.word	piece1
	.word	goToWin
	.size	updateBar, .-updateBar
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"current frame: %d\000"
	.text
	.align	2
	.global	updateNumbers
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNumbers, %function
updateNumbers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L133
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L122
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	ldr	r0, [r4, #56]
	beq	.L132
.L123:
	cmp	r0, #0
	beq	.L124
.L121:
	pop	{r4, lr}
	bx	lr
.L122:
	str	r3, [r4, #56]
.L124:
	ldr	r3, .L133+4
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L121
	mov	r3, #0
	ldr	r2, .L133+8
	ldr	r2, [r2]
	cmp	r2, #49
	str	r3, [r4, #52]
	str	r3, [r4, #64]
	ldrgt	r3, .L133+12
	ldrle	r3, .L133+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L132:
	ldr	r3, .L133+20
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	ip, #60
	ldr	r2, .L133+4
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r0, .L133+24
	ldr	r3, .L133+28
	str	r1, [r4, #56]
	str	ip, [r4, #32]
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #56]
	b	.L123
.L134:
	.align	2
.L133:
	.word	numbers
	.word	alreadyAnimated
	.word	staminaCount
	.word	goToWin
	.word	goToLose
	.word	__aeabi_idivmod
	.word	.LC0
	.word	mgba_printf
	.size	updateNumbers, .-updateNumbers
	.align	2
	.global	updateTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTrial, %function
updateTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayerTrial
	bl	updateLotMTrial
	bl	updateBar
	pop	{r4, lr}
	b	updateNumbers
	.size	updateTrial, .-updateTrial
	.align	2
	.global	drawPlayerTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerTrial, %function
drawPlayerTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L141
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r2, #64]
	cmp	r3, #0
	ldrb	r0, [r2, #68]	@ zero_extendqisi2
	beq	.L138
	mov	lr, #67108864
	ldr	r1, .L141+4
	ldrh	r5, [r1]
	ldr	r1, .L141+8
	ldr	r3, [r2]
	ldr	r8, [r2, #36]
	ldrh	r4, [r1]
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #56]
	sub	r3, r3, r5
	ldr	r2, .L141+12
	add	r1, r1, r8, lsl #6
	ldr	r7, .L141+16
	ldr	r6, .L141+20
	lsl	r3, r3, #23
	sub	ip, ip, r4
	lsr	r3, r3, #23
	and	r2, r2, r1, lsl #1
	and	ip, ip, #255
	orr	r1, r3, r7
	add	r8, r6, r0, lsl #3
	lsl	r3, r0, #3
	orr	r2, r2, #4096
	orr	ip, ip, r7
	strh	r1, [r8, #2]	@ movhi
	strh	r2, [r8, #4]	@ movhi
	strh	ip, [r6, r3]	@ movhi
	strh	r5, [lr, #20]	@ movhi
	strh	r4, [lr, #22]	@ movhi
.L139:
	ldr	r4, .L141+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L141+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L138:
	mov	r1, #512
	ldr	r2, .L141+20
	lsl	r3, r0, #3
	strh	r1, [r2, r3]	@ movhi
	b	.L139
.L142:
	.align	2
.L141:
	.word	player
	.word	hOff
	.word	vOff
	.word	1022
	.word	-32768
	.word	shadowOAM
	.word	DMANow
	.size	drawPlayerTrial, .-drawPlayerTrial
	.align	2
	.global	drawLotMTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLotMTrial, %function
drawLotMTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L151
	ldr	r3, .L151+4
	ldr	r1, .L151+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	bgt	.L144
	ldr	r0, [ip, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L150
.L144:
	mov	r2, #512
	ldr	r3, .L151+12
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L150:
	ldr	r0, [ip, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L144
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, [ip, #56]
	lsl	r0, r0, #3
	ldr	ip, .L151+16
	add	r0, r0, #644
	str	lr, [sp, #-4]!
	add	r0, r0, #2
	ldr	lr, .L151+12
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
.L152:
	.align	2
.L151:
	.word	lotm
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	1022
	.size	drawLotMTrial, .-drawLotMTrial
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L165
	push	{r4, r5, lr}
	ldr	r2, [ip]
	ldr	lr, .L165+4
	and	r2, r2, lr
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, .L165+8
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	ldr	r3, .L165+12
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldr	r5, [r0, #64]
	add	ip, r3, r1, lsl #3
	strh	r2, [ip, #2]	@ movhi
	ldr	r2, .L165+16
	lsl	r1, r1, #3
	cmp	r5, #0
	strh	r2, [ip, #4]	@ movhi
	strh	r4, [r3, r1]	@ movhi
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L154
	ldr	r1, [r0, #4]
	ldrb	r4, [r0]	@ zero_extendqisi2
	ldr	ip, .L165+20
	and	r1, r1, lr
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	r4, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L155:
	ldr	r0, .L165+24
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L156
	ldr	r1, [r0, #4]
	lsl	r1, r1, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	ip, .L165+28
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L157:
	ldr	r0, .L165+32
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L158
	ldr	r1, [r0, #4]
	lsl	r1, r1, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	ip, .L165+36
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L159:
	ldr	r0, .L165+40
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L160
	ldr	r1, [r0, #4]
	lsl	r1, r1, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	ip, .L165+44
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L161:
	ldr	r0, .L165+48
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L162
	ldr	r1, [r0, #4]
	lsl	r1, r1, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	ip, .L165+52
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r3, r2]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L154:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L155
.L162:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L160:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L161
.L158:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L159
.L156:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L157
.L166:
	.align	2
.L165:
	.word	staminaBar
	.word	511
	.word	piece1
	.word	shadowOAM
	.word	12307
	.word	12435
	.word	piece2
	.word	12437
	.word	piece3
	.word	12439
	.word	piece4
	.word	12441
	.word	piece5
	.word	12443
	.size	drawBar, .-drawBar
	.align	2
	.global	drawNumbers
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNumbers, %function
drawNumbers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L176
	ldr	r3, [r2, #56]
	ldr	r1, [r2, #64]
	cmp	r3, #8
	movlt	ip, #24
	movge	ip, #26
	cmp	r1, #0
	ldrb	r1, [r2, #68]	@ zero_extendqisi2
	beq	.L169
	rsbs	r0, r3, #0
	and	r0, r0, #7
	and	r3, r3, #7
	rsbpl	r3, r0, #0
	ldr	r0, [r2]
	add	r3, r3, #3
	add	r3, r3, ip, lsl #4
	lsl	r0, r0, #23
	ldr	ip, .L176+4
	str	lr, [sp, #-4]!
	lsl	r3, r3, #1
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	lsr	r0, r0, #23
	add	r2, ip, r1, lsl #3
	orr	r3, r3, #20480
	lsl	r1, r1, #3
	orr	r0, r0, #16384
	strh	lr, [ip, r1]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L169:
	mov	r2, #512
	ldr	r3, .L176+4
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L177:
	.align	2
.L176:
	.word	numbers
	.word	shadowOAM
	.size	drawNumbers, .-drawNumbers
	.align	2
	.global	drawTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTrial, %function
drawTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayerTrial
	bl	drawLotMTrial
	bl	drawBar
	pop	{r4, lr}
	b	drawNumbers
	.size	drawTrial, .-drawTrial
	.comm	alreadyAnimated,4,4
	.comm	thirteen,72,4
	.comm	fourteen,72,4
	.comm	fifteen,72,4
	.comm	direction,1,1
	.comm	shadowOAM,1024,4
	.comm	staminaCount,4,4
	.comm	numbers,72,4
	.comm	piece5,72,4
	.comm	piece4,72,4
	.comm	piece3,72,4
	.comm	piece2,72,4
	.comm	piece1,72,4
	.comm	staminaBar,72,4
	.comm	lotm,72,4
	.comm	player,72,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
