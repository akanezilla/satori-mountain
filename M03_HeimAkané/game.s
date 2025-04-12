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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawArmor.part.0, %function
drawArmor.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L10
	ldr	r2, .L10+4
	ldr	r0, .L10+8
	ldr	ip, [r2]
	ldr	r0, [r0]
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	sub	r3, r3, ip
	sub	r2, r2, r0
	cmp	r2, #240
	cmple	r3, #160
	ldrb	r0, [r1, #60]	@ zero_extendqisi2
	bgt	.L2
	ldr	ip, [r1, #28]
	rsb	ip, ip, #0
	cmp	r3, ip
	bge	.L9
.L2:
	mov	r2, #512
	ldr	r3, .L10+12
	lsl	r0, r0, #3
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L9:
	ldr	r1, [r1, #24]
	rsb	r1, r1, #0
	cmp	r2, r1
	blt	.L2
	ldr	r1, .L10+16
	ldr	ip, .L10+12
	lsl	r2, r2, #23
	str	lr, [sp, #-4]!
	lsr	r2, r2, #23
	ldr	lr, .L10+20
	and	r3, r3, #255
	orr	r2, r2, r1
	orr	r3, r3, r1
	add	r1, ip, r0, lsl #3
	lsl	r0, r0, #3
	strh	lr, [r1, #4]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r3, [ip, r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	armor
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	-32768
	.word	8202
	.size	drawArmor.part.0, .-drawArmor.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMarker.part.0, %function
drawMarker.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	r1, .L14
	ldr	r2, .L14+4
	ldr	r0, .L14+8
	ldr	ip, [r2]
	ldr	r3, [r1]
	ldr	r0, [r0]
	ldr	r2, [r1, #4]
	sub	r3, r3, ip
	ldrb	r1, [r1, #60]	@ zero_extendqisi2
	ldr	ip, .L14+12
	ldr	lr, .L14+16
	sub	r2, r2, r0
	lsl	r3, r3, #23
	add	r0, ip, r1, lsl #3
	lsr	r3, r3, #23
	lsl	r1, r1, #3
	and	r2, r2, #255
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	marker
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	8328
	.size	drawMarker.part.0, .-drawMarker.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #256
	mov	r6, #16
	mov	r5, #24
	mov	r4, #15
	mov	lr, #3
	mov	r0, #96
	mov	r1, #1
	ldr	r3, .L18
	strb	r2, [r3, #60]
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	lr, [r3, #52]
	str	ip, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initKorok1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKorok1, %function
initKorok1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #24
	mov	r2, #1
	push	{r4, lr}
	mov	r1, #0
	mov	r4, #32
	mov	lr, #15
	mov	r0, #3
	ldr	r3, .L22
	str	ip, [r3, #24]
	ldr	ip, .L22+4
	strb	r2, [r3, #60]
	str	ip, [r3]
	sub	ip, ip, #19
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #4]
	str	r0, [r3, #52]
	str	r1, [r3, #36]
	str	r1, [r3, #48]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	korok1
	.word	301
	.size	initKorok1, .-initKorok1
	.align	2
	.global	initKorok2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKorok2, %function
initKorok2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #2
	push	{r4, r5, r6, r7, lr}
	mov	r1, #1
	mov	r2, #0
	mov	r7, #396
	mov	r6, #81
	mov	r5, #16
	mov	r4, #24
	mov	lr, #20
	mov	ip, #3
	ldr	r3, .L26
	strb	r0, [r3, #60]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #52]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	korok2
	.size	initKorok2, .-initKorok2
	.align	2
	.global	initSpiritOrb
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpiritOrb, %function
initSpiritOrb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r2, #16
	mov	r1, #1
	mov	r9, #64
	mov	r8, #24
	mov	r7, #3
	mov	r6, #120
	mov	r5, #240
	mov	r4, #14
	mov	r0, #15
	mov	lr, #320
	mov	ip, #464
	ldr	r3, .L30
	str	r9, [r3]
	str	r8, [r3, #4]
	strb	r7, [r3, #60]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #56]
	ldr	r3, .L30+4
	str	r6, [r3]
	str	r5, [r3, #4]
	strb	r4, [r3, #60]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #56]
	ldr	r3, .L30+8
	strb	r0, [r3, #60]
	str	lr, [r3]
	str	r1, [r3, #56]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	ip, [r3, #4]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	spiritOrb1
	.word	spiritOrb2
	.word	spiritOrb3
	.size	initSpiritOrb, .-initSpiritOrb
	.align	2
	.global	initChest
	.syntax unified
	.arm
	.fpu softvfp
	.type	initChest, %function
initChest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #4
	str	lr, [sp, #-4]!
	mov	r2, #16
	mov	lr, #424
	mov	ip, #96
	mov	r1, #1
	ldr	r3, .L34
	strb	r0, [r3, #60]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r3, #56]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	chest
	.size	initChest, .-initChest
	.align	2
	.global	initArmor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initArmor, %function
initArmor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6
	push	{r4, lr}
	mov	ip, #16
	mov	r4, #424
	mov	lr, #80
	mov	r0, #32
	mov	r2, #0
	ldr	r3, .L38
	strb	r1, [r3, #60]
	stm	r3, {r4, lr}
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #56]
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	armor
	.size	initArmor, .-initArmor
	.align	2
	.global	initMarker
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMarker, %function
initMarker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #7
	mov	r0, #8
	mov	ip, #0
	ldr	r3, .L42
	ldm	r3, {r1, r2}
	ldr	r3, .L42+4
	add	r1, r1, #4
	strb	lr, [r3, #60]
	sub	r2, r2, #2
	stm	r3, {r1, r2}
	str	ip, [r3, #56]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L43:
	.align	2
.L42:
	.word	player
	.word	marker
	.size	initMarker, .-initMarker
	.align	2
	.global	initStamina
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStamina, %function
initStamina:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #8
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #16
	mov	r1, #5
	mov	r6, #180
	mov	ip, #1
	mov	fp, #11
	mov	lr, #0
	mov	r5, #200
	mov	r10, #9
	mov	r9, #12
	mov	r4, #220
	mov	r8, #10
	mov	r7, #13
	ldr	r0, .L46
	strb	r2, [r0, #60]
	ldr	r2, .L46+4
	str	r6, [r2]
	strb	fp, [r2, #60]
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #56]
	ldr	r2, .L46+8
	str	r5, [r2]
	str	lr, [r2, #56]
	strb	r10, [r2, #60]
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	ldr	r2, .L46+12
	str	r6, [r0]
	str	lr, [r0, #56]
	str	r5, [r2]
	str	r1, [r0, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #28]
	strb	r9, [r2, #60]
	ldr	r0, .L46+16
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #56]
	ldr	r2, .L46+20
	str	lr, [r0, #56]
	strb	r8, [r0, #60]
	str	r4, [r0]
	str	r4, [r2]
	str	r1, [r0, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #28]
	str	r1, [r2, #4]
	strb	r7, [r2, #60]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #56]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	stamina1
	.word	staminaHold1
	.word	stamina2
	.word	staminaHold2
	.word	stamina3
	.word	staminaHold3
	.size	initStamina, .-initStamina
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #51200
	mov	r4, #0
	strh	r3, [r2]	@ movhi
	ldr	r9, .L50
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L50+4
	ldr	r1, .L50+8
	mov	lr, pc
	bx	r9
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L50+12
	ldr	r1, .L50+16
	mov	lr, pc
	bx	r9
	mov	r2, #256
	mov	r3, #15
	mov	ip, #81
	ldr	r5, .L50+20
	str	r4, [r5]
	ldr	r5, .L50+24
	str	r4, [r5]
	ldr	r5, .L50+28
	str	r4, [r5]
	ldr	r5, .L50+32
	str	r4, [r5]
	ldr	r5, .L50+36
	str	r4, [r5]
	ldr	r5, .L50+40
	str	r4, [r5]
	ldr	r5, .L50+44
	str	r2, [r5]
	str	r2, [r5, #8]
	ldr	r2, .L50+48
	str	r3, [r5, #32]
	str	r3, [r2, #32]
	ldr	r3, .L50+52
	str	r3, [r2]
	sub	r3, r3, #19
	str	r3, [r2, #4]
	ldr	r3, .L50+56
	mov	r6, #1
	mov	r7, #16
	mov	r1, #24
	mov	r8, #3
	mov	r10, #96
	str	ip, [r3, #4]
	mov	lr, #396
	mov	r0, #20
	mov	ip, #32
	mov	fp, #2
	str	r1, [r5, #28]
	str	r1, [r2, #24]
	str	r4, [r2, #36]
	str	r6, [r2, #44]
	str	r4, [r2, #48]
	strb	r6, [r2, #60]
	str	r8, [r2, #52]
	str	lr, [r3]
	str	ip, [r2, #28]
	str	r4, [r5, #36]
	str	r4, [r5, #44]
	str	r4, [r5, #48]
	strb	r4, [r5, #60]
	str	r10, [r5, #4]
	str	r10, [r5, #12]
	str	r7, [r5, #24]
	str	r6, [r5, #16]
	str	r6, [r5, #20]
	str	r8, [r5, #52]
	str	r7, [r3, #24]
	str	r1, [r3, #28]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r4, [r3, #36]
	str	r6, [r3, #44]
	str	r4, [r3, #48]
	str	r8, [r3, #52]
	str	r4, [r3, #40]
	str	r0, [r3, #32]
	strb	fp, [r3, #60]
	bl	initSpiritOrb
	mov	r1, #424
	ldr	r3, .L50+60
	mov	fp, #4
	str	r10, [r3, #4]
	ldr	r10, .L50+64
	mov	lr, #80
	mov	r2, #8
	mov	ip, #6
	mov	r0, #7
	str	r1, [r3]
	str	r1, [r10]
	mov	r1, #32
	str	r6, [r3, #56]
	ldr	r6, [r5]
	ldr	r5, [r5, #4]
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	strb	fp, [r3, #60]
	ldr	r3, .L50+68
	add	r6, r6, fp
	sub	r5, r5, #2
	str	r1, [r10, #28]
	str	lr, [r10, #4]
	strb	ip, [r10, #60]
	strb	r0, [r3, #60]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #56]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r7, [r10, #24]
	str	r4, [r10, #56]
	bl	initStamina
	ldr	r3, .L50+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+76
	mov	lr, pc
	bx	r3
	mov	r0, r8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L50+80
	mov	lr, pc
	bx	r9
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	DMANow
	.word	100728832
	.word	linkTiles
	.word	83886592
	.word	linkPal
	.word	chestOpened
	.word	hOff
	.word	vOff
	.word	hasArmor
	.word	spiritOrbCount
	.word	cooldown
	.word	player
	.word	korok1
	.word	301
	.word	korok2
	.word	chest
	.word	armor
	.word	marker
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.size	initGame, .-initGame
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #0
	ldr	r4, .L117
	ldr	lr, [r4, #24]
	ldr	r1, .L117+4
	ldr	ip, [r4, #28]
	ldr	r5, [r4]
	ldr	r6, [r4, #4]
	rsb	r2, lr, #240
	ldrh	r0, [r1]
	str	r9, [r4, #44]
	rsb	r3, ip, #160
	ldr	r9, .L117+8
	add	r2, r2, r2, lsr #31
	ldr	r7, .L117+12
	add	r3, r3, r3, lsr #31
	sub	r2, r5, r2, asr #1
	add	r8, r5, lr
	add	r1, r6, ip
	sub	sp, sp, #36
	str	r2, [r9]
	sub	r3, r6, r3, asr #1
	sub	fp, r8, #1
	sub	r9, r1, #1
	tst	r0, #64
	str	r3, [r7]
	str	fp, [sp, #24]
	str	r9, [sp, #20]
	bne	.L82
	mov	r10, #1
	mov	r9, #2
	cmp	r1, #512
	str	r10, [r4, #44]
	str	r9, [r4, #36]
	blt	.L110
.L82:
	mov	r1, r6
.L53:
	ands	r9, r0, #128
	beq	.L111
.L55:
	tst	r0, #16
	bne	.L83
	mov	r9, #1
	cmp	r8, #512
	str	r9, [r4, #44]
	str	r9, [r4, #36]
	bge	.L57
	ldr	r8, [sp, #24]
	ldr	r10, [r4, #16]
	ldr	r9, .L117+16
	str	r10, [sp, #24]
	add	r10, r10, r8
	add	r8, r10, r6, lsl #9
	ldrb	r8, [r9, r8]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r6, #9
	beq	.L58
	ldr	fp, [sp, #20]
	add	r10, r10, fp, lsl #9
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L58
	ldr	r10, [sp, #24]
	add	fp, r5, r10
	str	fp, [r4]
	b	.L56
.L83:
	mov	fp, r5
.L56:
	tst	r0, #32
	beq	.L59
.L76:
	ldr	r9, [r4, #44]
.L60:
	cmp	fp, #0
	movlt	r0, #0
	movlt	fp, lr
	strlt	r0, [r4]
	addge	fp, lr, fp
	cmp	r1, #0
	movlt	r0, #0
	movlt	r1, ip
	addge	r1, ip, r1
	strlt	r0, [r4, #4]
	cmp	fp, #512
	rsbgt	lr, lr, #512
	strgt	lr, [r4]
	cmp	r1, #512
	rsbgt	ip, ip, #512
	strgt	ip, [r4, #4]
	cmp	r2, #0
	blt	.L112
	cmp	r3, #0
	blt	.L113
	cmp	r2, #272
	movgt	r2, #272
	ldrgt	r1, .L117+8
	strgt	r2, [r1]
.L68:
	cmp	r3, #352
	movgt	r3, #352
	strgt	r3, [r7]
.L71:
	cmp	r9, #0
	beq	.L72
.L116:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L73
	ldr	r0, [r4, #48]
	ldr	r3, .L117+20
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #48]
	str	r3, [r4, #32]
.L73:
	mov	r0, #496
	mov	r1, #392
	mov	r2, #16
	mov	r3, #48
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	ldr	r4, .L117+24
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L114
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L111:
	mov	r10, #1
	str	r9, [r4, #36]
	add	r9, ip, r1
	cmp	r9, #512
	str	r10, [r4, #44]
	bge	.L55
	ldr	r9, .L117+16
.L79:
	ldr	r10, [r4, #20]
	ldr	fp, [sp, #20]
	str	r10, [sp, #28]
	add	r10, r10, fp
	add	fp, r5, r10, lsl #9
	ldrb	fp, [r9, fp]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r10, r10, #9
	beq	.L55
	ldr	fp, [sp, #24]
	add	r10, fp, r10
	ldrb	r9, [r9, r10]	@ zero_extendqisi2
	cmp	r9, #0
	ldrne	r10, [sp, #28]
	addne	r1, r1, r10
	strne	r1, [r4, #4]
	b	.L55
.L59:
	mov	r9, #1
	mov	r0, #3
	add	r8, lr, fp
	cmp	r8, #512
	str	r9, [r4, #44]
	str	r0, [r4, #36]
	bge	.L60
	ldr	r9, .L117+16
	lsl	r8, r6, #9
.L77:
	ldr	r0, [r4, #16]
	sub	r5, r5, r0
	add	r8, r8, r5
	ldrb	r6, [r9, r8]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L86
	ldr	r6, [sp, #20]
	add	r5, r5, r6, lsl #9
	ldrb	r5, [r9, r5]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L86
	sub	fp, fp, r0
	mov	r9, #1
	str	fp, [r4]
	b	.L60
.L110:
	ldr	r1, [r4, #20]
	ldr	r9, .L117+16
	sub	r1, r6, r1
	add	r10, r5, r1, lsl #9
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r10, r1, #9
	bne	.L115
.L54:
	ands	r1, r0, #128
	movne	r1, r6
	bne	.L55
	mov	r10, #1
	str	r1, [r4, #36]
	str	r10, [r4, #44]
	mov	r1, r6
	b	.L79
.L57:
	tst	r0, #32
	bne	.L109
	mov	r0, #3
	mov	fp, r5
	str	r0, [r4, #36]
	b	.L60
.L113:
	mov	r3, #0
	cmp	r2, #272
	str	r3, [r7]
	ble	.L71
	mov	r3, #272
	ldr	r2, .L117+8
	cmp	r9, #0
	str	r3, [r2]
	bne	.L116
.L72:
	mov	r2, #1
	mov	r3, #15
	str	r2, [r4, #48]
	str	r3, [r4, #32]
	b	.L73
.L109:
	mov	fp, r5
	b	.L76
.L112:
	mov	r2, #0
	ldr	r1, .L117+8
	cmp	r3, r2
	str	r2, [r1]
	strlt	r2, [r7]
	bge	.L68
	b	.L71
.L114:
	ldr	r3, .L117+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+32
	mov	lr, pc
	bx	r3
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L58:
	tst	r0, #32
	bne	.L109
	mov	r6, #1
	mov	r0, #3
	mov	fp, r5
	str	r6, [r4, #44]
	str	r0, [r4, #36]
	b	.L77
.L115:
	add	r10, fp, r10
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	strne	r1, [r4, #4]
	bne	.L53
	b	.L54
.L86:
	mov	r9, #1
	b	.L60
.L118:
	.align	2
.L117:
	.word	player
	.word	buttons
	.word	hOff
	.word	vOff
	.word	collisionZeldaBitmap
	.word	__aeabi_idivmod
	.word	collision
	.word	initSpring
	.word	goToSpring
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateKorok1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKorok1, %function
updateKorok1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L123
	ldr	r3, [r4, #44]
	cmp	r3, #0
	streq	r3, [r4, #48]
	beq	.L119
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L119
	ldr	r0, [r4, #48]
	ldr	r3, .L123+4
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #48]
	str	r3, [r4, #32]
.L119:
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	korok1
	.word	__aeabi_idivmod
	.size	updateKorok1, .-updateKorok1
	.align	2
	.global	updateKorok2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKorok2, %function
updateKorok2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L133
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L126
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r3, #170
	str	r3, [r4, #4]
	movgt	r3, #2
	strgt	r3, [r4, #40]
.L128:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	streq	r3, [r4, #48]
	beq	.L125
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L125
	ldr	r0, [r4, #48]
	ldr	r3, .L133+4
	ldr	r1, [r4, #52]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r1, [r4, #48]
	str	r3, [r4, #32]
.L125:
	pop	{r4, lr}
	bx	lr
.L126:
	cmp	r3, #2
	bne	.L128
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #20]
	sub	r3, r3, r2
	cmp	r3, #81
	str	r3, [r4, #4]
	movle	r3, #0
	strle	r3, [r4, #40]
	b	.L128
.L134:
	.align	2
.L133:
	.word	korok2
	.word	__aeabi_idivmod
	.size	updateKorok2, .-updateKorok2
	.align	2
	.global	updateSpiritOrb
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpiritOrb, %function
updateSpiritOrb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L160
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	sub	sp, sp, #16
	ldr	r4, .L160+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L160+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L136
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L158
.L136:
	ldr	r5, .L160+12
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L137
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L159
.L137:
	ldr	r5, .L160+16
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L135
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L135
	mov	r1, #0
	ldr	r2, .L160+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #56]
.L135:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L159:
	mov	r1, #0
	ldr	r2, .L160+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #56]
	b	.L137
.L158:
	mov	r1, #0
	ldr	r2, .L160+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #56]
	b	.L136
.L161:
	.align	2
.L160:
	.word	spiritOrb1
	.word	player
	.word	collision
	.word	spiritOrb2
	.word	spiritOrb3
	.word	spiritOrbCount
	.size	updateSpiritOrb, .-updateSpiritOrb
	.align	2
	.global	updateChests
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateChests, %function
updateChests:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L185
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L163
	ldr	r3, .L185+4
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L185+8
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bxne	lr
	ldr	r2, .L185+12
	ldr	r1, [r2, #56]
	cmp	r1, #0
	movne	r0, #1
	ldrne	r1, .L185+16
	strne	r3, [r2, #56]
	strne	r0, [r1]
	bx	lr
.L163:
	push	{r4, r5, r6, lr}
	ldr	r4, .L185+20
	ldr	r2, [r4]
	cmp	r2, #0
	sub	sp, sp, #16
	beq	.L184
	ldr	r3, .L185+4
	ldrh	r3, [r3]
.L164:
	tst	r3, #2
	beq	.L162
	ldr	r3, .L185+8
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L162
	ldr	r2, .L185+12
	ldr	r1, [r2, #56]
	cmp	r1, #0
	movne	r0, #1
	ldrne	r1, .L185+16
	strne	r3, [r2, #56]
	strne	r0, [r1]
.L162:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L184:
	ldr	r0, .L185+24
	add	r5, r3, #24
	ldm	r5, {r5, r6}
	ldm	r3, {ip, lr}
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	ldr	r5, .L185+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L185+4
	cmp	r0, #0
	ldrh	r3, [r3]
	beq	.L164
	tst	r3, #4
	beq	.L164
	ldr	r2, .L185+8
	ldrh	r2, [r2]
	tst	r2, #4
	moveq	r2, #1
	ldreq	r1, .L185+12
	streq	r2, [r4]
	streq	r2, [r1, #56]
	b	.L164
.L186:
	.align	2
.L185:
	.word	chest
	.word	oldButtons
	.word	buttons
	.word	armor
	.word	hasArmor
	.word	chestOpened
	.word	player
	.word	collision
	.size	updateChests, .-updateChests
	.align	2
	.global	updateMarker
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMarker, %function
updateMarker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L198
	ldr	ip, [r5, #24]
	ldr	r2, [r5, #4]
	sub	sp, sp, #20
	ldr	r7, [r5, #28]
	ldr	r3, [r5]
	ldr	r4, .L198+4
	stmib	sp, {r2, ip}
	ldm	r4, {r0, r1}
	str	r7, [sp, #12]
	str	r3, [sp]
	ldr	r6, .L198+8
	add	r2, r4, #24
	add	lr, r0, #4
	sub	ip, r1, #2
	ldm	r2, {r2, r3}
	ldr	r7, .L198+12
	str	lr, [r6]
	str	ip, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L188
	ldr	r3, [r5, #56]
	cmp	r3, #0
	beq	.L188
.L190:
	mov	r3, #1
	str	r3, [r6, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L188:
	ldr	r3, .L198+16
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L190
	ldr	r3, .L198+20
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L190
	str	r0, [r6, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L199:
	.align	2
.L198:
	.word	chest
	.word	player
	.word	marker
	.word	collision
	.word	korok1
	.word	korok2
	.size	updateMarker, .-updateMarker
	.align	2
	.global	updateStamina
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStamina, %function
updateStamina:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L212
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L201
	sub	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L201:
	ldr	r3, .L212+4
	ldr	r3, [r3]
	cmp	r3, #1
	str	lr, [sp, #-4]!
	beq	.L210
	cmp	r3, #2
	bne	.L211
	ldr	r1, .L212+8
	ldr	r3, [r1, #56]
	cmp	r3, #0
	bne	.L200
	mov	lr, #1
	mov	ip, #60
	ldr	r0, .L212+12
	str	lr, [r1, #56]
	str	ip, [r2]
	str	r3, [r0, #56]
.L200:
	ldr	lr, [sp], #4
	bx	lr
.L211:
	cmp	r3, #3
	bne	.L200
	ldr	r1, .L212+16
	ldr	r3, [r1, #56]
	cmp	r3, #0
	bne	.L200
	mov	lr, #1
	mov	ip, #60
	ldr	r0, .L212+20
	str	lr, [r1, #56]
	str	ip, [r2]
	str	r3, [r0, #56]
	b	.L200
.L210:
	ldr	r0, .L212+24
	ldr	r1, [r0, #56]
	cmp	r1, #0
	bne	.L200
	mov	lr, #60
	ldr	ip, .L212+28
	str	r3, [r0, #56]
	str	lr, [r2]
	str	r1, [ip, #56]
	b	.L200
.L213:
	.align	2
.L212:
	.word	cooldown
	.word	spiritOrbCount
	.word	stamina2
	.word	staminaHold2
	.word	stamina3
	.word	staminaHold3
	.word	stamina1
	.word	staminaHold1
	.size	updateStamina, .-updateStamina
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateKorok1
	bl	updateKorok2
	bl	updateSpiritOrb
	bl	updateChests
	bl	updateMarker
	pop	{r4, lr}
	b	updateStamina
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #67108864
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L218
	ldr	r1, .L218+4
	ldr	r2, .L218+8
	ldr	r3, [r0]
	ldrh	r4, [r1]
	ldr	r8, [r0, #36]
	ldr	r1, [r0, #48]
	ldrh	lr, [r2]
	ldr	r2, [r0, #4]
	ldrb	r6, [r0, #60]	@ zero_extendqisi2
	sub	r3, r3, r4
	add	r0, r1, r8, lsl #6
	ldr	r1, .L218+12
	ldr	r7, .L218+16
	ldr	r5, .L218+20
	sub	r2, r2, lr
	lsl	r3, r3, #23
	and	r1, r1, r0, lsl #1
	lsr	r3, r3, #23
	and	r2, r2, #255
	add	r0, r5, r6, lsl #3
	orr	r3, r3, r7
	lsl	r6, r6, #3
	orr	r2, r2, r7
	orr	r1, r1, #4096
	strh	r2, [r5, r6]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [ip, #16]	@ movhi
	strh	lr, [ip, #18]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L219:
	.align	2
.L218:
	.word	player
	.word	hOff
	.word	vOff
	.word	1022
	.word	-32768
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawKorok1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKorok1, %function
drawKorok1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L228
	ldr	r3, .L228+4
	ldr	r1, .L228+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	ldrb	r1, [ip, #60]	@ zero_extendqisi2
	bgt	.L221
	ldr	r0, [ip, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L227
.L221:
	mov	r2, #512
	ldr	r3, .L228+12
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L227:
	ldr	r0, [ip, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L221
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [ip, #48]
	ldr	ip, .L228+12
	add	r0, r0, #128
	lsl	r0, r0, #2
	str	lr, [sp, #-4]!
	and	r0, r0, #1020
	add	lr, ip, r1, lsl #3
	and	r2, r2, #255
	lsl	r1, r1, #3
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r2, [ip, r1]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L229:
	.align	2
.L228:
	.word	korok1
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawKorok1, .-drawKorok1
	.align	2
	.global	drawKorok2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKorok2, %function
drawKorok2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L240
	ldr	r3, .L240+4
	ldr	r1, .L240+8
	ldr	r2, [r3]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	ldr	r1, [r1]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	bgt	.L231
	ldr	r1, [ip, #28]
	rsb	r1, r1, #0
	cmp	r1, r2
	ble	.L239
.L231:
	mov	r1, #512
	ldrb	r3, [ip, #60]	@ zero_extendqisi2
	ldr	r2, .L240+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L239:
	ldr	r1, [ip, #24]
	rsb	r1, r1, #0
	cmp	r1, r3
	bgt	.L231
	ldr	r1, [ip, #40]
	cmp	r1, #0
	push	{r4, r5, lr}
	moveq	lr, #320
	movne	lr, #384
	ldr	r5, [ip, #48]
	ldrb	r1, [ip, #60]	@ zero_extendqisi2
	ldr	r4, .L240+12
	add	ip, lr, r5
	ldr	r0, .L240+16
	ldr	lr, .L240+20
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	and	r2, r2, #255
	and	r0, r0, ip, lsl #1
	orr	r2, r2, lr
	add	ip, r4, r1, lsl #3
	orr	r3, r3, lr
	lsl	r1, r1, #3
	strh	r2, [r4, r1]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L241:
	.align	2
.L240:
	.word	korok2
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	1022
	.word	-32768
	.size	drawKorok2, .-drawKorok2
	.align	2
	.global	drawSpiritOrb
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSpiritOrb, %function
drawSpiritOrb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L259
	push	{r4, lr}
	ldr	r2, [r3, #56]
	cmp	r2, #0
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	beq	.L243
	ldr	r0, .L259+4
	ldr	r2, .L259+8
	ldr	lr, [r0]
	ldr	ip, [r2]
	ldr	r0, [r3, #4]
	ldr	r2, [r3]
	sub	r0, r0, lr
	sub	r2, r2, ip
	cmp	r2, #240
	cmple	r0, #160
	ble	.L256
.L243:
	mov	r3, #512
	ldr	r2, .L259+12
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L246:
	ldr	r3, .L259+16
	ldr	r1, [r3, #56]
	cmp	r1, #0
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	beq	.L247
	ldr	ip, .L259+4
	ldr	r0, .L259+8
	ldr	r4, [ip]
	ldr	lr, [r0]
	ldr	ip, [r3, #4]
	ldr	r0, [r3]
	sub	ip, ip, r4
	sub	r0, r0, lr
	cmp	r0, #240
	cmple	ip, #160
	ble	.L257
.L247:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L250:
	ldr	r3, .L259+20
	ldr	r1, [r3, #56]
	cmp	r1, #0
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	beq	.L251
	ldr	ip, .L259+4
	ldr	r0, .L259+8
	ldr	r4, [ip]
	ldr	lr, [r0]
	ldr	ip, [r3, #4]
	ldr	r0, [r3]
	sub	ip, ip, r4
	sub	r0, r0, lr
	cmp	r0, #240
	cmple	ip, #160
	ble	.L258
.L251:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L242:
	pop	{r4, lr}
	bx	lr
.L258:
	ldr	lr, [r3, #28]
	rsb	lr, lr, #0
	cmp	lr, ip
	bgt	.L251
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r0
	bgt	.L251
	lsl	r0, r0, #23
	ldr	lr, .L259+24
	lsr	r0, r0, #23
	add	r3, r2, r1, lsl #3
	orr	r0, r0, #16384
	and	ip, ip, #255
	lsl	r1, r1, #3
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	b	.L242
.L257:
	ldr	lr, [r3, #28]
	rsb	lr, lr, #0
	cmp	lr, ip
	bgt	.L247
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r0
	bgt	.L247
	lsl	r0, r0, #23
	ldr	lr, .L259+24
	lsr	r0, r0, #23
	add	r3, r2, r1, lsl #3
	orr	r0, r0, #16384
	and	ip, ip, #255
	lsl	r1, r1, #3
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	b	.L250
.L256:
	ldr	ip, [r3, #28]
	rsb	ip, ip, #0
	cmp	ip, r0
	bgt	.L243
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r2
	bgt	.L243
	lsl	r3, r2, #23
	ldr	r2, .L259+12
	ldr	lr, .L259+24
	lsr	r3, r3, #23
	add	ip, r2, r1, lsl #3
	orr	r3, r3, #16384
	and	r0, r0, #255
	lsl	r1, r1, #3
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [r2, r1]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	b	.L246
.L260:
	.align	2
.L259:
	.word	spiritOrb1
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	spiritOrb2
	.word	spiritOrb3
	.word	8231
	.size	drawSpiritOrb, .-drawSpiritOrb
	.align	2
	.global	drawChests
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChests, %function
drawChests:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L270
	push	{r4, lr}
	ldr	r3, .L270+4
	ldr	r1, [r2]
	ldr	r2, [r3, #56]
	cmp	r1, #0
	movne	r4, #6
	moveq	r4, #4
	cmp	r2, #0
	ldrb	r2, [r3, #60]	@ zero_extendqisi2
	beq	.L263
	ldr	r1, .L270+8
	ldr	r0, .L270+12
	ldr	ip, [r1]
	ldr	r0, [r0]
	ldr	lr, [r3, #4]
	ldr	r1, [r3]
	sub	r0, lr, r0
	sub	r1, r1, ip
	cmp	r1, #240
	cmple	r0, #160
	ble	.L269
.L263:
	mov	r1, #512
	ldr	r3, .L270+16
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
.L261:
	pop	{r4, lr}
	bx	lr
.L269:
	ldr	ip, [r3, #28]
	rsb	ip, ip, #0
	cmp	ip, r0
	bgt	.L263
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r1
	bgt	.L263
	ldr	ip, .L270+16
	lsl	r1, r1, #23
	lsl	r3, r4, #5
	lsr	r1, r1, #23
	add	r3, r3, #6
	add	lr, ip, r2, lsl #3
	orr	r1, r1, #16384
	orr	r3, r3, #8192
	and	r0, r0, #255
	lsl	r2, r2, #3
	strh	r1, [lr, #2]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	r0, [ip, r2]	@ movhi
	b	.L261
.L271:
	.align	2
.L270:
	.word	chestOpened
	.word	chest
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawChests, .-drawChests
	.align	2
	.global	drawArmor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawArmor, %function
drawArmor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L274
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	drawArmor.part.0
.L273:
	mov	r1, #512
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	ldr	r2, .L274+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L275:
	.align	2
.L274:
	.word	armor
	.word	shadowOAM
	.size	drawArmor, .-drawArmor
	.align	2
	.global	drawMarker
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMarker, %function
drawMarker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L278
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	drawMarker.part.0
.L277:
	mov	r1, #512
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	ldr	r2, .L278+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L279:
	.align	2
.L278:
	.word	marker
	.word	shadowOAM
	.size	drawMarker, .-drawMarker
	.align	2
	.global	drawStamina
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStamina, %function
drawStamina:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L294
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #56]
	cmp	r3, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L281
	ldr	r1, [r0]
	ldr	r3, .L294+4
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L282:
	ldr	r0, .L294+12
	ldr	r2, [r0, #56]
	cmp	r2, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L283
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L284:
	ldr	r0, .L294+20
	ldr	r2, [r0, #56]
	cmp	r2, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L285
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L286:
	ldr	r0, .L294+24
	ldr	r2, [r0, #56]
	cmp	r2, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L287
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L288:
	ldr	r0, .L294+28
	ldr	r2, [r0, #56]
	cmp	r2, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L289
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L290:
	ldr	r0, .L294+32
	ldr	r2, [r0, #56]
	cmp	r2, #0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	beq	.L291
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L294+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r3, r2]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L281:
	mov	r1, #512
	ldr	r3, .L294+4
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L282
.L291:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L289:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L290
.L287:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L288
.L285:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L286
.L283:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L284
.L295:
	.align	2
.L294:
	.word	stamina1
	.word	shadowOAM
	.word	12488
	.word	staminaHold1
	.word	12490
	.word	stamina2
	.word	staminaHold2
	.word	stamina3
	.word	staminaHold3
	.size	drawStamina, .-drawStamina
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayer
	bl	drawKorok1
	bl	drawKorok2
	bl	drawSpiritOrb
	bl	drawChests
	ldr	r3, .L303
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L297
	bl	drawArmor.part.0
	ldr	r3, .L303+4
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L299
.L302:
	bl	drawMarker.part.0
.L300:
	bl	drawStamina
	ldr	r4, .L303+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L303+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L297:
	mov	r1, #512
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	ldr	r2, .L303+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L303+4
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L302
.L299:
	mov	r1, #512
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	ldr	r2, .L303+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	b	.L300
.L304:
	.align	2
.L303:
	.word	armor
	.word	marker
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	shadowOAM,1024,4
	.comm	spiritOrbCount,4,4
	.comm	hasArmor,4,4
	.comm	stamina3,64,4
	.comm	stamina2,64,4
	.comm	stamina1,64,4
	.comm	staminaHold3,64,4
	.comm	staminaHold2,64,4
	.comm	staminaHold1,64,4
	.comm	marker,64,4
	.comm	armor,64,4
	.comm	chest,64,4
	.comm	spiritOrb3,64,4
	.comm	spiritOrb2,64,4
	.comm	spiritOrb1,64,4
	.comm	korok2,64,4
	.comm	korok1,64,4
	.comm	player,64,4
	.comm	cooldown,4,4
	.comm	chestOpened,4,4
	.comm	korokDirection,1,1
	.comm	direction,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
