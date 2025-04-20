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
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
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
	.word	28830
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
	ldrb	r1, [r1, #68]	@ zero_extendqisi2
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
	.word	8217
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
	mov	r1, #1
	mov	ip, #256
	mov	r6, #16
	mov	r5, #24
	mov	r4, #15
	mov	lr, #3
	mov	r0, #96
	ldr	r3, .L18
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
	str	r1, [r3, #64]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	reInitPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	reInitPlayer, %function
reInitPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #472
	mov	r6, #16
	mov	r5, #24
	mov	r4, #15
	mov	lr, #3
	mov	r0, #400
	mov	r1, #1
	ldr	r3, .L22
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
	str	r2, [r3, #64]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	player
	.size	reInitPlayer, .-reInitPlayer
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
	ldr	r3, .L26
	str	ip, [r3, #24]
	ldr	ip, .L26+4
	strb	r2, [r3, #68]
	str	ip, [r3]
	sub	ip, ip, #19
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #4]
	str	r0, [r3, #60]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	str	r2, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L30
	strb	r0, [r3, #68]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	ip, [r3, #60]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #52]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r3, .L34
	str	r9, [r3]
	str	r8, [r3, #4]
	strb	r7, [r3, #68]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #64]
	ldr	r3, .L34+4
	str	r6, [r3]
	str	r5, [r3, #4]
	strb	r4, [r3, #68]
	str	r2, [r3, #24]
	str	r1, [r3, #64]
	str	r0, [r3, #28]
	ldr	r3, .L34+8
	strb	r0, [r3, #68]
	str	lr, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r1, [r3, #64]
	str	ip, [r3, #4]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L38
	strb	r0, [r3, #68]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r1, [r3, #64]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r3, .L42
	strb	r1, [r3, #68]
	stm	r3, {r4, lr}
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #64]
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L46
	ldm	r3, {r1, r2}
	ldr	r3, .L46+4
	add	r1, r1, #4
	strb	lr, [r3, #68]
	sub	r2, r2, #2
	stm	r3, {r1, r2}
	str	ip, [r3, #64]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r0, .L50
	strb	r2, [r0, #68]
	ldr	r2, .L50+4
	str	r6, [r2]
	strb	fp, [r2, #68]
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #64]
	ldr	r2, .L50+8
	str	r5, [r2]
	str	lr, [r2, #64]
	strb	r10, [r2, #68]
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	ldr	r2, .L50+12
	str	r6, [r0]
	str	lr, [r0, #64]
	str	r5, [r2]
	str	r1, [r0, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #28]
	strb	r9, [r2, #68]
	ldr	r0, .L50+16
	str	r1, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #64]
	ldr	r2, .L50+20
	str	lr, [r0, #64]
	strb	r8, [r0, #68]
	str	r4, [r0]
	str	r4, [r2]
	str	r1, [r0, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #28]
	str	r1, [r2, #4]
	strb	r7, [r2, #68]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	ip, [r2, #64]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	r9, .L54
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L54+4
	ldr	r1, .L54+8
	mov	lr, pc
	bx	r9
	mov	r0, #3
	ldr	r2, .L54+12
	ldr	r1, .L54+16
	mov	r3, #256
	mov	lr, pc
	bx	r9
	ldr	r3, .L54+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L54+32
	ldr	r3, .L54+36
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r1, #15
	ldr	r5, .L54+40
	str	r4, [r5]
	ldr	r5, .L54+44
	str	r4, [r5]
	ldr	r5, .L54+48
	str	r4, [r5]
	ldr	r5, .L54+52
	str	r4, [r5]
	ldr	r5, .L54+56
	str	r4, [r5]
	ldr	r5, .L54+60
	str	r4, [r5]
	ldr	r5, .L54+64
	str	r3, [r5]
	str	r3, [r5, #8]
	ldr	r3, .L54+68
	str	r1, [r5, #32]
	str	r1, [r3, #32]
	ldr	r1, .L54+72
	str	r1, [r3]
	sub	r1, r1, #19
	mov	r6, #1
	mov	r2, #24
	mov	r8, #3
	str	r1, [r3, #4]
	mov	r1, #32
	mov	r7, #16
	mov	r10, #96
	mov	lr, #396
	mov	ip, #81
	mov	r0, #20
	mov	fp, #2
	str	r2, [r3, #24]
	str	r1, [r3, #28]
	str	r4, [r3, #36]
	str	r6, [r3, #52]
	str	r4, [r3, #56]
	strb	r6, [r3, #68]
	str	r8, [r3, #60]
	ldr	r3, .L54+76
	str	r2, [r5, #28]
	str	lr, [r3]
	str	r4, [r5, #36]
	str	r4, [r5, #52]
	str	r4, [r5, #56]
	strb	r4, [r5, #68]
	str	r10, [r5, #4]
	str	r10, [r5, #12]
	str	r7, [r5, #24]
	str	r6, [r5, #16]
	str	r6, [r5, #20]
	str	r6, [r5, #64]
	str	r8, [r5, #60]
	str	ip, [r3, #4]
	str	r2, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r4, [r3, #36]
	str	r6, [r3, #52]
	str	r4, [r3, #56]
	str	r8, [r3, #60]
	str	r4, [r3, #40]
	str	r0, [r3, #32]
	strb	fp, [r3, #68]
	bl	initSpiritOrb
	mov	r1, #424
	ldr	r3, .L54+80
	mov	fp, #4
	str	r10, [r3, #4]
	ldr	r10, .L54+84
	mov	lr, #80
	mov	r2, #8
	mov	ip, #6
	mov	r0, #7
	str	r1, [r3]
	str	r1, [r10]
	mov	r1, #32
	str	r6, [r3, #64]
	ldr	r6, [r5]
	ldr	r5, [r5, #4]
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	strb	fp, [r3, #68]
	ldr	r3, .L54+88
	add	r6, r6, fp
	sub	r5, r5, #2
	str	r1, [r10, #28]
	str	lr, [r10, #4]
	strb	ip, [r10, #68]
	strb	r0, [r3, #68]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #64]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r7, [r10, #24]
	str	r4, [r10, #64]
	bl	initStamina
	ldr	r3, .L54+92
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+96
	mov	lr, pc
	bx	r3
	mov	r0, r8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L54+100
	mov	lr, pc
	bx	r9
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	DMANow
	.word	100728832
	.word	linkTiles
	.word	83886592
	.word	linkPal
	.word	setupSoundInterrupts
	.word	setupSounds
	.word	town_length
	.word	town_data
	.word	playSoundA
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
	.align	2
	.global	reInitGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	reInitGame, %function
reInitGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #67108864
	mov	r3, #4352
	mov	r1, #51200
	mov	r5, #0
	strh	r3, [r2]	@ movhi
	ldr	r4, .L58
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #14336
	mov	r0, #3
	ldr	r2, .L58+4
	ldr	r1, .L58+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	mov	fp, #472
	mov	r2, #400
	mov	r3, #15
	mov	r6, #1
	mov	r7, #16
	mov	r0, #24
	mov	r1, #3
	mov	r8, #32
	mov	lr, #20
	mov	ip, #2
	mov	r10, #396
	mov	r9, #81
	ldr	r4, .L58+20
	str	r5, [r4]
	ldr	r4, .L58+24
	str	r5, [r4]
	ldr	r4, .L58+28
	str	r5, [r4]
	ldr	r4, .L58+32
	stmib	r4, {r2, fp}
	str	r2, [r4, #12]
	ldr	r2, .L58+36
	str	r3, [r4, #32]
	str	r3, [r2, #32]
	ldr	r3, .L58+40
	str	r3, [r2]
	sub	r3, r3, #19
	str	r3, [r2, #4]
	ldr	r3, .L58+44
	str	r0, [r4, #28]
	str	r0, [r2, #24]
	str	r5, [r2, #36]
	str	r6, [r2, #52]
	str	r5, [r2, #56]
	strb	r6, [r2, #68]
	str	r1, [r4, #60]
	str	r1, [r2, #60]
	str	r0, [r3, #28]
	str	r7, [r3, #24]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r2, #28]
	str	r5, [r4, #36]
	str	r5, [r4, #52]
	str	r5, [r4, #56]
	strb	r5, [r4, #68]
	str	r5, [r4, #64]
	str	fp, [r4]
	str	r7, [r4, #24]
	str	r6, [r4, #16]
	str	r6, [r4, #20]
	mov	r10, #96
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r5, [r3, #36]
	str	r6, [r3, #52]
	str	r5, [r3, #56]
	str	r1, [r3, #60]
	str	r5, [r3, #40]
	str	lr, [r3, #32]
	strb	ip, [r3, #68]
	bl	initSpiritOrb
	mov	r1, #424
	mov	r2, #4
	mov	lr, #6
	mov	ip, #7
	mov	r9, #80
	mov	r0, #8
	ldr	r3, .L58+48
	strb	r2, [r3, #68]
	str	r6, [r3, #64]
	ldr	r2, .L58+52
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	str	r10, [r3, #4]
	str	r1, [r3]
	ldr	r3, [r4]
	str	r1, [r2]
	ldr	r1, [r4, #4]
	add	r4, r3, #4
	ldr	r3, .L58+56
	strb	lr, [r2, #68]
	strb	ip, [r3, #68]
	sub	r1, r1, #2
	str	r7, [r2, #24]
	str	r8, [r2, #28]
	str	r5, [r2, #64]
	str	r9, [r2, #4]
	str	r5, [r3, #64]
	str	r4, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initStamina
.L59:
	.align	2
.L58:
	.word	DMANow
	.word	100728832
	.word	linkTiles
	.word	83886592
	.word	linkPal
	.word	hOff
	.word	vOff
	.word	cooldown
	.word	player
	.word	korok1
	.word	301
	.word	korok2
	.word	chest
	.word	armor
	.word	marker
	.size	reInitGame, .-reInitGame
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
	ldr	r4, .L125
	ldr	lr, [r4, #24]
	ldr	r1, .L125+4
	ldr	ip, [r4, #28]
	ldr	r5, [r4]
	ldr	r6, [r4, #4]
	rsb	r2, lr, #240
	ldrh	r0, [r1]
	str	r9, [r4, #52]
	rsb	r3, ip, #160
	ldr	r9, .L125+8
	add	r2, r2, r2, lsr #31
	ldr	r7, .L125+12
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
	bne	.L90
	mov	r10, #1
	mov	r9, #2
	cmp	r1, #512
	str	r10, [r4, #52]
	str	r9, [r4, #36]
	blt	.L118
.L90:
	mov	r1, r6
.L61:
	ands	r9, r0, #128
	beq	.L119
.L63:
	tst	r0, #16
	bne	.L91
	mov	r9, #1
	cmp	r8, #512
	str	r9, [r4, #52]
	str	r9, [r4, #36]
	bge	.L65
	ldr	r8, [sp, #24]
	ldr	r10, [r4, #16]
	ldr	r9, .L125+16
	str	r10, [sp, #24]
	add	r10, r10, r8
	add	r8, r10, r6, lsl #9
	ldrb	r8, [r9, r8]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r8, r6, #9
	beq	.L66
	ldr	fp, [sp, #20]
	add	r10, r10, fp, lsl #9
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L66
	ldr	r10, [sp, #24]
	add	fp, r5, r10
	str	fp, [r4]
	b	.L64
.L91:
	mov	fp, r5
.L64:
	tst	r0, #32
	beq	.L67
.L84:
	ldr	r9, [r4, #52]
.L68:
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
	blt	.L120
	cmp	r3, #0
	blt	.L121
	cmp	r2, #272
	movgt	r2, #272
	ldrgt	r1, .L125+8
	strgt	r2, [r1]
.L76:
	cmp	r3, #352
	movgt	r3, #352
	strgt	r3, [r7]
.L79:
	cmp	r9, #0
	beq	.L80
.L124:
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L81
	ldr	r0, [r4, #56]
	ldr	r3, .L125+20
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L81:
	mov	r0, #496
	mov	r1, #392
	mov	r2, #16
	mov	r3, #48
	stm	sp, {r0, r1, r2, r3}
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	ldr	r4, .L125+24
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L122
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L119:
	mov	r10, #1
	str	r9, [r4, #36]
	add	r9, ip, r1
	cmp	r9, #512
	str	r10, [r4, #52]
	bge	.L63
	ldr	r9, .L125+16
.L87:
	ldr	r10, [r4, #20]
	ldr	fp, [sp, #20]
	str	r10, [sp, #28]
	add	r10, r10, fp
	add	fp, r5, r10, lsl #9
	ldrb	fp, [r9, fp]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r10, r10, #9
	beq	.L63
	ldr	fp, [sp, #24]
	add	r10, fp, r10
	ldrb	r9, [r9, r10]	@ zero_extendqisi2
	cmp	r9, #0
	ldrne	r10, [sp, #28]
	addne	r1, r1, r10
	strne	r1, [r4, #4]
	b	.L63
.L67:
	mov	r9, #1
	mov	r0, #3
	add	r8, lr, fp
	cmp	r8, #512
	str	r9, [r4, #52]
	str	r0, [r4, #36]
	bge	.L68
	ldr	r9, .L125+16
	lsl	r8, r6, #9
.L85:
	ldr	r0, [r4, #16]
	sub	r5, r5, r0
	add	r8, r8, r5
	ldrb	r6, [r9, r8]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L94
	ldr	r6, [sp, #20]
	add	r5, r5, r6, lsl #9
	ldrb	r5, [r9, r5]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L94
	sub	fp, fp, r0
	mov	r9, #1
	str	fp, [r4]
	b	.L68
.L118:
	ldr	r1, [r4, #20]
	ldr	r9, .L125+16
	sub	r1, r6, r1
	add	r10, r5, r1, lsl #9
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	lsl	r10, r1, #9
	bne	.L123
.L62:
	ands	r1, r0, #128
	movne	r1, r6
	bne	.L63
	mov	r10, #1
	str	r1, [r4, #36]
	str	r10, [r4, #52]
	mov	r1, r6
	b	.L87
.L65:
	tst	r0, #32
	bne	.L117
	mov	r0, #3
	mov	fp, r5
	str	r0, [r4, #36]
	b	.L68
.L121:
	mov	r3, #0
	cmp	r2, #272
	str	r3, [r7]
	ble	.L79
	mov	r3, #272
	ldr	r2, .L125+8
	cmp	r9, #0
	str	r3, [r2]
	bne	.L124
.L80:
	mov	r2, #1
	mov	r3, #15
	str	r2, [r4, #56]
	str	r3, [r4, #32]
	b	.L81
.L117:
	mov	fp, r5
	b	.L84
.L120:
	mov	r2, #0
	ldr	r1, .L125+8
	cmp	r3, r2
	str	r2, [r1]
	strlt	r2, [r7]
	bge	.L76
	b	.L79
.L122:
	ldr	r3, .L125+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+32
	mov	lr, pc
	bx	r3
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L66:
	tst	r0, #32
	bne	.L117
	mov	r6, #1
	mov	r0, #3
	mov	fp, r5
	str	r6, [r4, #52]
	str	r0, [r4, #36]
	b	.L85
.L123:
	add	r10, fp, r10
	ldrb	r10, [r9, r10]	@ zero_extendqisi2
	cmp	r10, #0
	strne	r1, [r4, #4]
	bne	.L61
	b	.L62
.L94:
	mov	r9, #1
	b	.L68
.L126:
	.align	2
.L125:
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
	ldr	r4, .L131
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L127
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L127
	ldr	r0, [r4, #56]
	ldr	r3, .L131+4
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #15
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L127:
	pop	{r4, lr}
	bx	lr
.L132:
	.align	2
.L131:
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
	ldr	r4, .L141
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L134
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #20]
	add	r3, r3, r2
	cmp	r3, #170
	str	r3, [r4, #4]
	movgt	r3, #2
	strgt	r3, [r4, #40]
.L136:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	streq	r3, [r4, #56]
	beq	.L133
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L133
	ldr	r0, [r4, #56]
	ldr	r3, .L141+4
	ldr	r1, [r4, #60]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r1, [r4, #56]
	str	r3, [r4, #32]
.L133:
	pop	{r4, lr}
	bx	lr
.L134:
	cmp	r3, #2
	bne	.L136
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #20]
	sub	r3, r3, r2
	cmp	r3, #81
	str	r3, [r4, #4]
	movle	r3, #0
	strle	r3, [r4, #40]
	b	.L136
.L142:
	.align	2
.L141:
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
	ldr	r5, .L168
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	sub	sp, sp, #16
	ldr	r4, .L168+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L168+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L144
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bne	.L166
.L144:
	ldr	r5, .L168+12
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
	beq	.L145
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bne	.L167
.L145:
	ldr	r5, .L168+16
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
	beq	.L143
	ldr	r3, [r5, #64]
	cmp	r3, #0
	beq	.L143
	mov	r1, #0
	ldr	r2, .L168+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #64]
.L143:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L167:
	mov	r1, #0
	ldr	r2, .L168+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #64]
	b	.L145
.L166:
	mov	r1, #0
	ldr	r2, .L168+20
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #64]
	b	.L144
.L169:
	.align	2
.L168:
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
	ldr	r3, .L193
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L171
	ldr	r3, .L193+4
	ldrh	r3, [r3]
	tst	r3, #2
	bxeq	lr
	ldr	r3, .L193+8
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bxne	lr
	ldr	r2, .L193+12
	ldr	r1, [r2, #64]
	cmp	r1, #0
	movne	r0, #1
	ldrne	r1, .L193+16
	strne	r3, [r2, #64]
	strne	r0, [r1]
	bx	lr
.L171:
	push	{r4, r5, r6, lr}
	ldr	r4, .L193+20
	ldr	r2, [r4]
	cmp	r2, #0
	sub	sp, sp, #16
	beq	.L192
	ldr	r3, .L193+4
	ldrh	r3, [r3]
.L172:
	tst	r3, #2
	beq	.L170
	ldr	r3, .L193+8
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L170
	ldr	r2, .L193+12
	ldr	r1, [r2, #64]
	cmp	r1, #0
	movne	r0, #1
	ldrne	r1, .L193+16
	strne	r3, [r2, #64]
	strne	r0, [r1]
.L170:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L192:
	ldr	r0, .L193+24
	add	r5, r3, #24
	ldm	r5, {r5, r6}
	ldm	r3, {ip, lr}
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	str	r6, [sp, #12]
	ldr	r5, .L193+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L193+4
	cmp	r0, #0
	ldrh	r3, [r3]
	beq	.L172
	tst	r3, #4
	beq	.L172
	ldr	r2, .L193+8
	ldrh	r2, [r2]
	tst	r2, #4
	moveq	r2, #1
	ldreq	r1, .L193+12
	streq	r2, [r4]
	streq	r2, [r1, #64]
	b	.L172
.L194:
	.align	2
.L193:
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
	ldr	r5, .L206
	ldr	ip, [r5, #24]
	ldr	r2, [r5, #4]
	sub	sp, sp, #20
	ldr	r7, [r5, #28]
	ldr	r3, [r5]
	ldr	r4, .L206+4
	stmib	sp, {r2, ip}
	ldm	r4, {r0, r1}
	str	r7, [sp, #12]
	str	r3, [sp]
	ldr	r6, .L206+8
	add	r2, r4, #24
	add	lr, r0, #4
	sub	ip, r1, #2
	ldm	r2, {r2, r3}
	ldr	r7, .L206+12
	str	lr, [r6]
	str	ip, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L196
	ldr	r3, [r5, #64]
	cmp	r3, #0
	beq	.L196
.L198:
	mov	r3, #1
	str	r3, [r6, #64]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L196:
	ldr	r3, .L206+16
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
	bne	.L198
	ldr	r3, .L206+20
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
	bne	.L198
	str	r0, [r6, #64]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r2, .L220
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L209
	sub	r3, r3, #1
	str	r3, [r2]
	bx	lr
.L209:
	ldr	r3, .L220+4
	ldr	r3, [r3]
	cmp	r3, #1
	str	lr, [sp, #-4]!
	beq	.L218
	cmp	r3, #2
	bne	.L219
	ldr	r1, .L220+8
	ldr	r3, [r1, #64]
	cmp	r3, #0
	bne	.L208
	mov	lr, #1
	mov	ip, #60
	ldr	r0, .L220+12
	str	lr, [r1, #64]
	str	ip, [r2]
	str	r3, [r0, #64]
.L208:
	ldr	lr, [sp], #4
	bx	lr
.L219:
	cmp	r3, #3
	bne	.L208
	ldr	r1, .L220+16
	ldr	r3, [r1, #64]
	cmp	r3, #0
	bne	.L208
	mov	lr, #1
	mov	ip, #60
	ldr	r0, .L220+20
	str	lr, [r1, #64]
	str	ip, [r2]
	str	r3, [r0, #64]
	b	.L208
.L218:
	ldr	r0, .L220+24
	ldr	r1, [r0, #64]
	cmp	r1, #0
	bne	.L208
	mov	lr, #60
	ldr	ip, .L220+28
	str	r3, [r0, #64]
	str	lr, [r2]
	str	r1, [ip, #64]
	b	.L208
.L221:
	.align	2
.L220:
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
	ldr	r2, .L234
	ldr	r3, [r2, #64]
	cmp	r3, #0
	ldrb	r3, [r2, #68]	@ zero_extendqisi2
	beq	.L225
	ldr	r0, .L234+4
	ldr	r1, .L234+8
	push	{r4, r5, r6, lr}
	ldrh	lr, [r0]
	ldr	r4, .L234+12
	ldr	r0, [r2]
	ldrh	ip, [r1]
	ldr	r1, [r2, #4]
	ldr	r5, [r4]
	sub	r0, r0, lr
	ldr	r4, [r2, #36]
	lsl	r0, r0, #23
	sub	r1, r1, ip
	lsr	r0, r0, #23
	and	r1, r1, #255
	cmp	r5, #0
	mov	r6, #67108864
	ldr	r2, [r2, #56]
	orr	r0, r0, #32768
	orr	r1, r1, #32768
	lsl	r4, r4, #6
	beq	.L233
	ldr	r5, .L234+16
	add	r2, r2, #3
	add	r2, r2, r4
	and	r2, r5, r2, lsl #1
	ldr	r4, .L234+20
	orr	r2, r2, #28672
.L232:
	add	r5, r4, r3, lsl #3
	lsl	r3, r3, #3
	strh	r2, [r5, #4]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r1, [r4, r3]	@ movhi
	strh	lr, [r6, #16]	@ movhi
	strh	ip, [r6, #18]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L225:
	mov	r1, #512
	ldr	r2, .L234+20
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L233:
	ldr	r5, .L234+16
	add	r2, r4, r2
	and	r2, r5, r2, lsl #1
	ldr	r4, .L234+20
	orr	r2, r2, #4096
	b	.L232
.L235:
	.align	2
.L234:
	.word	player
	.word	hOff
	.word	vOff
	.word	hasArmor
	.word	1022
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
	ldr	ip, .L244
	ldr	r3, .L244+4
	ldr	r1, .L244+8
	ldr	r2, [r3]
	ldr	r1, [r1]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	bgt	.L237
	ldr	r0, [ip, #28]
	rsb	r0, r0, #0
	cmp	r0, r2
	ble	.L243
.L237:
	mov	r2, #512
	ldr	r3, .L244+12
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L243:
	ldr	r0, [ip, #24]
	rsb	r0, r0, #0
	cmp	r0, r3
	bgt	.L237
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, [ip, #56]
	ldr	ip, .L244+12
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
.L245:
	.align	2
.L244:
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
	ldr	ip, .L256
	ldr	r3, .L256+4
	ldr	r1, .L256+8
	ldr	r2, [r3]
	ldr	r0, [ip, #4]
	ldr	r3, [ip]
	ldr	r1, [r1]
	sub	r2, r0, r2
	sub	r3, r3, r1
	cmp	r3, #240
	cmple	r2, #160
	bgt	.L247
	ldr	r1, [ip, #28]
	rsb	r1, r1, #0
	cmp	r1, r2
	ble	.L255
.L247:
	mov	r1, #512
	ldrb	r3, [ip, #68]	@ zero_extendqisi2
	ldr	r2, .L256+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L255:
	ldr	r1, [ip, #24]
	rsb	r1, r1, #0
	cmp	r1, r3
	bgt	.L247
	ldr	r1, [ip, #40]
	cmp	r1, #0
	push	{r4, r5, lr}
	moveq	lr, #320
	movne	lr, #384
	ldr	r5, [ip, #56]
	ldrb	r1, [ip, #68]	@ zero_extendqisi2
	ldr	r4, .L256+12
	add	ip, lr, r5
	ldr	r0, .L256+16
	ldr	lr, .L256+20
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
.L257:
	.align	2
.L256:
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
	ldr	r3, .L275
	push	{r4, lr}
	ldr	r2, [r3, #64]
	cmp	r2, #0
	ldrb	r1, [r3, #68]	@ zero_extendqisi2
	beq	.L259
	ldr	r0, .L275+4
	ldr	r2, .L275+8
	ldr	lr, [r0]
	ldr	ip, [r2]
	ldr	r0, [r3, #4]
	ldr	r2, [r3]
	sub	r0, r0, lr
	sub	r2, r2, ip
	cmp	r2, #240
	cmple	r0, #160
	ble	.L272
.L259:
	mov	r3, #512
	ldr	r2, .L275+12
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L262:
	ldr	r3, .L275+16
	ldr	r1, [r3, #64]
	cmp	r1, #0
	ldrb	r1, [r3, #68]	@ zero_extendqisi2
	beq	.L263
	ldr	ip, .L275+4
	ldr	r0, .L275+8
	ldr	r4, [ip]
	ldr	lr, [r0]
	ldr	ip, [r3, #4]
	ldr	r0, [r3]
	sub	ip, ip, r4
	sub	r0, r0, lr
	cmp	r0, #240
	cmple	ip, #160
	ble	.L273
.L263:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L266:
	ldr	r3, .L275+20
	ldr	r1, [r3, #64]
	cmp	r1, #0
	ldrb	r1, [r3, #68]	@ zero_extendqisi2
	beq	.L267
	ldr	ip, .L275+4
	ldr	r0, .L275+8
	ldr	r4, [ip]
	ldr	lr, [r0]
	ldr	ip, [r3, #4]
	ldr	r0, [r3]
	sub	ip, ip, r4
	sub	r0, r0, lr
	cmp	r0, #240
	cmple	ip, #160
	ble	.L274
.L267:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
.L258:
	pop	{r4, lr}
	bx	lr
.L274:
	ldr	lr, [r3, #28]
	rsb	lr, lr, #0
	cmp	lr, ip
	bgt	.L267
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r0
	bgt	.L267
	lsl	r0, r0, #23
	ldr	lr, .L275+24
	lsr	r0, r0, #23
	add	r3, r2, r1, lsl #3
	orr	r0, r0, #16384
	and	ip, ip, #255
	lsl	r1, r1, #3
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	b	.L258
.L273:
	ldr	lr, [r3, #28]
	rsb	lr, lr, #0
	cmp	lr, ip
	bgt	.L263
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r0
	bgt	.L263
	lsl	r0, r0, #23
	ldr	lr, .L275+24
	lsr	r0, r0, #23
	add	r3, r2, r1, lsl #3
	orr	r0, r0, #16384
	and	ip, ip, #255
	lsl	r1, r1, #3
	strh	r0, [r3, #2]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	b	.L266
.L272:
	ldr	ip, [r3, #28]
	rsb	ip, ip, #0
	cmp	ip, r0
	bgt	.L259
	ldr	r3, [r3, #24]
	rsb	r3, r3, #0
	cmp	r3, r2
	bgt	.L259
	lsl	r3, r2, #23
	ldr	r2, .L275+12
	ldr	lr, .L275+24
	lsr	r3, r3, #23
	add	ip, r2, r1, lsl #3
	orr	r3, r3, #16384
	and	r0, r0, #255
	lsl	r1, r1, #3
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [r2, r1]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	b	.L262
.L276:
	.align	2
.L275:
	.word	spiritOrb1
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	spiritOrb2
	.word	spiritOrb3
	.word	8215
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
	ldr	r3, .L289
	ldr	r2, .L289+4
	ldr	r3, [r3]
	ldr	r1, [r2, #64]
	cmp	r3, #0
	movne	r3, #2
	cmp	r1, #0
	ldrb	r1, [r2, #68]	@ zero_extendqisi2
	beq	.L279
	ldr	r0, .L289+8
	ldr	ip, .L289+12
	push	{r4, lr}
	ldr	ip, [ip]
	ldr	lr, [r0]
	ldr	r4, [r2, #4]
	ldr	r0, [r2]
	sub	ip, r4, ip
	sub	r0, r0, lr
	cmp	r0, #240
	cmple	ip, #160
	ble	.L288
.L280:
	mov	r2, #512
	ldr	r3, .L289+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
.L277:
	pop	{r4, lr}
	bx	lr
.L279:
	mov	r2, #512
	ldr	r3, .L289+16
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L288:
	ldr	lr, [r2, #28]
	rsb	lr, lr, #0
	cmp	lr, ip
	bgt	.L280
	ldr	r2, [r2, #24]
	rsb	r2, r2, #0
	cmp	r2, r0
	bgt	.L280
	ldr	r2, .L289+16
	lsl	r0, r0, #23
	lsl	r3, r3, #5
	lsr	r0, r0, #23
	add	r3, r3, #30
	add	lr, r2, r1, lsl #3
	orr	r0, r0, #16384
	orr	r3, r3, #24576
	and	ip, ip, #255
	lsl	r1, r1, #3
	strh	r0, [lr, #2]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	ip, [r2, r1]	@ movhi
	b	.L277
.L290:
	.align	2
.L289:
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
	ldr	r3, .L293
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	drawArmor.part.0
.L292:
	mov	r1, #512
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	ldr	r2, .L293+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L294:
	.align	2
.L293:
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
	ldr	r3, .L297
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	drawMarker.part.0
.L296:
	mov	r1, #512
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	ldr	r2, .L297+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L298:
	.align	2
.L297:
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
	ldr	r0, .L313
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #64]
	cmp	r3, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L300
	ldr	r1, [r0]
	ldr	r3, .L313+4
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L301:
	ldr	r0, .L313+12
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L302
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L303:
	ldr	r0, .L313+20
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L304
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L305:
	ldr	r0, .L313+24
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L306
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L307:
	ldr	r0, .L313+28
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L308
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+8
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
.L309:
	ldr	r0, .L313+32
	ldr	r2, [r0, #64]
	cmp	r2, #0
	ldrb	r2, [r0, #68]	@ zero_extendqisi2
	beq	.L310
	ldr	r1, [r0]
	lsl	r1, r1, #23
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldr	ip, .L313+16
	lsr	r1, r1, #23
	add	r0, r3, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	strh	lr, [r3, r2]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L300:
	mov	r1, #512
	ldr	r3, .L313+4
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L301
.L310:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L308:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L309
.L306:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L307
.L304:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L305
.L302:
	mov	r1, #512
	lsl	r2, r2, #3
	strh	r1, [r3, r2]	@ movhi
	b	.L303
.L314:
	.align	2
.L313:
	.word	stamina1
	.word	shadowOAM
	.word	12314
	.word	staminaHold1
	.word	12316
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
	ldr	r3, .L322
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L316
	bl	drawArmor.part.0
	ldr	r3, .L322+4
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L318
.L321:
	bl	drawMarker.part.0
.L319:
	bl	drawStamina
	ldr	r4, .L322+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L322+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L316:
	mov	r1, #512
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	ldr	r2, .L322+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L322+4
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L321
.L318:
	mov	r1, #512
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	ldr	r2, .L322+12
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	b	.L319
.L323:
	.align	2
.L322:
	.word	armor
	.word	marker
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	shadowOAM,1024,4
	.comm	spiritOrbCount,4,4
	.comm	hasArmor,4,4
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	stamina3,72,4
	.comm	stamina2,72,4
	.comm	stamina1,72,4
	.comm	staminaHold3,72,4
	.comm	staminaHold2,72,4
	.comm	staminaHold1,72,4
	.comm	marker,72,4
	.comm	armor,72,4
	.comm	chest,72,4
	.comm	spiritOrb3,72,4
	.comm	spiritOrb2,72,4
	.comm	spiritOrb1,72,4
	.comm	korok2,72,4
	.comm	korok1,72,4
	.comm	player,72,4
	.comm	cooldown,4,4
	.comm	chestOpened,4,4
	.comm	korokDirection,1,1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
