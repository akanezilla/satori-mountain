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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #2048
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #9600
	ldr	r4, .L4
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r5, #0
	ldr	r1, .L4+20
	ldr	r7, .L4+24
	ldrb	lr, [r1, #68]	@ zero_extendqisi2
	ldr	r1, .L4+28
	ldrb	r2, [r7, #68]	@ zero_extendqisi2
	ldrb	ip, [r1, #68]	@ zero_extendqisi2
	ldr	r0, .L4+32
	ldr	r1, .L4+36
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	ldrb	r6, [r0, #68]	@ zero_extendqisi2
	ldr	r2, .L4+40
	ldr	r0, .L4+44
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	ldr	r6, .L4+48
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L4+52
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L4+56
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L4+60
	ldr	r2, .L4+64
	ldrb	r6, [r6, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	ldr	r6, .L4+68
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L4+72
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L4+76
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L4+80
	ldr	r2, .L4+84
	ldrb	r6, [r6, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	str	r5, [r7, #64]
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L4+88
	strh	r3, [r1, r2]	@ movhi
	ldr	r2, .L4+92
	ldrb	r6, [ip, #68]	@ zero_extendqisi2
	ldr	lr, .L4+96
	ldrb	ip, [r2, #68]	@ zero_extendqisi2
	ldr	r0, .L4+100
	ldr	r2, .L4+104
	ldrb	r7, [lr, #68]	@ zero_extendqisi2
	ldrb	lr, [r0, #68]	@ zero_extendqisi2
	ldrb	r0, [r2, #68]	@ zero_extendqisi2
	ldr	r2, .L4+108
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r7, r7, #3
	lsl	r6, r6, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r7]	@ movhi
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+112
	strb	r5, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startTiles
	.word	100679680
	.word	startTilesMap
	.word	startPal
	.word	korok2
	.word	player
	.word	spiritOrb1
	.word	korok1
	.word	shadowOAM
	.word	spiritOrb3
	.word	spiritOrb2
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	stamina1
	.word	stamina2
	.word	stamina3
	.word	staminaHold1
	.word	staminaHold2
	.word	staminaHold3
	.word	piece1
	.word	piece3
	.word	staminaBar
	.word	piece2
	.word	piece4
	.word	piece5
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #2048
	strh	r2, [r3]	@ movhi
	ldr	r2, .L8+4
	strh	r1, [r3, #8]	@ movhi
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	mgba_open
	.word	initSound
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #2048
	push	{r4, r5, r6, lr}
	mov	r3, #9600
	ldr	r4, .L12
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r2, #512
	mov	r6, #1
	ldr	lr, .L12+20
	ldr	r0, .L12+24
	ldr	r3, .L12+28
	ldr	ip, .L12+32
	ldrb	r5, [lr, #68]	@ zero_extendqisi2
	ldrb	lr, [r0, #68]	@ zero_extendqisi2
	ldr	r0, .L12+36
	str	r1, [r3, #64]
	ldrb	r1, [r3, #68]	@ zero_extendqisi2
	ldrb	r4, [ip, #68]	@ zero_extendqisi2
	ldr	r3, .L12+40
	ldrb	ip, [r0, #68]	@ zero_extendqisi2
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	lsl	r5, r5, #3
	lsl	r4, r4, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	ldr	r0, .L12+44
	ldr	r1, .L12+48
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, .L12+52
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r1, [r1, #68]	@ zero_extendqisi2
	strb	r6, [ip]
	lsl	r0, r0, #3
	lsl	r1, r1, #3
	strh	r2, [r3, r0]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsPalTiles
	.word	100679680
	.word	instructionsMap
	.word	instructionsPalPal
	.word	staminaBar
	.word	piece2
	.word	player
	.word	piece1
	.word	piece3
	.word	shadowOAM
	.word	piece4
	.word	piece5
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L21
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #4096
	ldr	r4, .L25
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L25+4
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L25+8
	ldr	r1, .L25+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r1, #2
	mov	ip, #512
	ldr	r3, .L25+20
	ldr	r2, .L25+24
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	ldr	r0, .L25+28
	strb	r1, [r2]
	lsl	r3, r3, #3
	strh	ip, [r0, r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	DMANow
	.word	zeldaTiles
	.word	100679680
	.word	zeldaMapMap
	.word	zeldaPal
	.word	lotm
	.word	state
	.word	shadowOAM
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L27
	ldr	r3, .L34+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L33
.L27:
	pop	{r4, lr}
	bx	lr
.L33:
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L35:
	.align	2
.L34:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #9600
	ldr	r4, .L38
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L38+8
	ldr	r1, .L38+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L38+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	ldr	ip, .L38+20
	ldr	r0, .L38+24
	ldr	r1, .L38+28
	ldr	r2, .L38+32
	ldrb	lr, [ip, #68]	@ zero_extendqisi2
	ldrb	ip, [r0, #68]	@ zero_extendqisi2
	ldrb	r0, [r1, #68]	@ zero_extendqisi2
	ldr	r1, .L38+36
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldrb	r6, [r1, #68]	@ zero_extendqisi2
	ldr	r1, .L38+40
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, lr]	@ movhi
	ldr	r5, .L38+44
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L38+48
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L38+52
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L38+56
	ldr	r2, .L38+60
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	ldr	r6, .L38+64
	strh	r3, [r1, lr]	@ movhi
	ldr	r5, .L38+68
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L38+72
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L38+76
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L38+80
	ldr	r2, .L38+84
	ldrb	r6, [r6, #68]	@ zero_extendqisi2
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L38+88
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L38+92
	ldr	r2, .L38+96
	ldr	lr, .L38+100
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldrb	r6, [lr, #68]	@ zero_extendqisi2
	ldr	lr, .L38+104
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, ip]	@ movhi
	ldrb	r5, [lr, #68]	@ zero_extendqisi2
	strh	r3, [r1, r0]	@ movhi
	ldr	lr, .L38+108
	strh	r3, [r1, r2]	@ movhi
	ldr	ip, .L38+112
	ldr	r0, .L38+116
	ldr	r2, .L38+120
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L38+124
	ldr	r2, .L38+128
	ldrb	r1, [r3]	@ zero_extendqisi2
	strb	r0, [r3]
	strb	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	pauseTiles
	.word	100679680
	.word	pauseTilesMap
	.word	pausePal
	.word	player
	.word	korok1
	.word	korok2
	.word	spiritOrb1
	.word	chest
	.word	shadowOAM
	.word	armor
	.word	marker
	.word	stamina1
	.word	stamina2
	.word	stamina3
	.word	staminaHold1
	.word	staminaHold2
	.word	staminaHold3
	.word	spiritOrb2
	.word	spiritOrb3
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	staminaBar
	.word	piece1
	.word	piece2
	.word	piece3
	.word	piece4
	.word	piece5
	.word	state
	.word	prevState
	.size	goToPause, .-goToPause
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game.part.0, %function
game.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L42
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToPause
.L43:
	.align	2
.L42:
	.word	buttons
	.size	game.part.0, .-game.part.0
	.set	trial.part.0,game.part.0
	.set	spring.part.0,game.part.0
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L47
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+12
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	game.part.0
.L44:
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	oldButtons
	.size	game, .-game
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #9600
	ldr	r4, .L51
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L51+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L51+8
	ldr	r1, .L51+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+16
	mov	lr, pc
	bx	r4
	mov	lr, #0
	mov	r3, #512
	ldr	r1, .L51+20
	ldr	ip, .L51+24
	ldr	r0, .L51+28
	ldr	r2, .L51+32
	str	lr, [r1, #64]
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	lr, [r1, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldr	r1, .L51+36
	ldr	r5, .L51+40
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	lsl	lr, lr, #3
	strh	r3, [r1, lr]	@ movhi
	ldrb	r6, [r5, #68]	@ zero_extendqisi2
	strh	r3, [r1, ip]	@ movhi
	ldr	r5, .L51+44
	strh	r3, [r1, r0]	@ movhi
	ldr	lr, .L51+48
	strh	r3, [r1, r2]	@ movhi
	ldr	ip, .L51+52
	ldr	r0, .L51+56
	ldr	r2, .L51+60
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	ldr	r6, .L51+64
	strh	r3, [r1, lr]	@ movhi
	ldr	r5, .L51+68
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L51+72
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L51+76
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L51+80
	ldr	r2, .L51+84
	ldrb	r6, [r6, #68]	@ zero_extendqisi2
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L51+88
	strh	r3, [r1, r2]	@ movhi
	ldr	r2, .L51+92
	ldrb	r5, [ip, #68]	@ zero_extendqisi2
	ldr	lr, .L51+96
	ldrb	ip, [r2, #68]	@ zero_extendqisi2
	ldr	r0, .L51+100
	ldr	r2, .L51+104
	ldrb	r6, [lr, #68]	@ zero_extendqisi2
	ldrb	lr, [r0, #68]	@ zero_extendqisi2
	ldrb	r0, [r2, #68]	@ zero_extendqisi2
	ldr	r2, .L51+108
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L51+112
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	DMANow
	.word	winPalTiles
	.word	100679680
	.word	winMap
	.word	winPalPal
	.word	player
	.word	korok1
	.word	korok2
	.word	spiritOrb1
	.word	shadowOAM
	.word	spiritOrb2
	.word	spiritOrb3
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	stamina1
	.word	stamina2
	.word	stamina3
	.word	staminaHold1
	.word	staminaHold2
	.word	staminaHold3
	.word	piece1
	.word	piece3
	.word	staminaBar
	.word	piece2
	.word	piece4
	.word	piece5
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L60
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L60+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L53
	ldr	r3, .L60+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
.L53:
	pop	{r4, lr}
	bx	lr
.L59:
	pop	{r4, lr}
	b	goToStart
.L61:
	.align	2
.L60:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #9600
	ldr	r4, .L64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L64+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L64+8
	ldr	r1, .L64+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+16
	mov	lr, pc
	bx	r4
	mov	lr, #0
	mov	r3, #512
	ldr	r1, .L64+20
	ldr	ip, .L64+24
	ldr	r0, .L64+28
	ldr	r2, .L64+32
	str	lr, [r1, #64]
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	lr, [r1, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldr	r1, .L64+36
	ldr	r5, .L64+40
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	lsl	lr, lr, #3
	strh	r3, [r1, lr]	@ movhi
	ldrb	r6, [r5, #68]	@ zero_extendqisi2
	strh	r3, [r1, ip]	@ movhi
	ldr	r5, .L64+44
	strh	r3, [r1, r0]	@ movhi
	ldr	lr, .L64+48
	strh	r3, [r1, r2]	@ movhi
	ldr	ip, .L64+52
	ldr	r0, .L64+56
	ldr	r2, .L64+60
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	ldr	r6, .L64+64
	strh	r3, [r1, lr]	@ movhi
	ldr	r5, .L64+68
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L64+72
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L64+76
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L64+80
	ldr	r2, .L64+84
	ldrb	r6, [r6, #68]	@ zero_extendqisi2
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L64+88
	strh	r3, [r1, r2]	@ movhi
	ldr	r2, .L64+92
	ldrb	r5, [ip, #68]	@ zero_extendqisi2
	ldr	lr, .L64+96
	ldrb	ip, [r2, #68]	@ zero_extendqisi2
	ldr	r0, .L64+100
	ldr	r2, .L64+104
	ldrb	r6, [lr, #68]	@ zero_extendqisi2
	ldrb	lr, [r0, #68]	@ zero_extendqisi2
	ldrb	r0, [r2, #68]	@ zero_extendqisi2
	ldr	r2, .L64+108
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L64+112
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	DMANow
	.word	losePalTiles
	.word	100679680
	.word	loseMap
	.word	losePalPal
	.word	player
	.word	korok1
	.word	korok2
	.word	spiritOrb1
	.word	shadowOAM
	.word	spiritOrb2
	.word	spiritOrb3
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	stamina1
	.word	stamina2
	.word	stamina3
	.word	staminaHold1
	.word	staminaHold2
	.word	staminaHold3
	.word	piece1
	.word	piece3
	.word	staminaBar
	.word	piece2
	.word	piece4
	.word	piece5
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToSpring
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSpring, %function
goToSpring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #4096
	ldr	r4, .L69
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L69+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+8
	ldr	r1, .L69+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L69+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #0
	ldr	r1, .L69+20
	ldr	r0, .L69+24
	ldr	ip, .L69+28
	ldrb	lr, [r1, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldr	r1, .L69+32
	ldr	r8, .L69+36
	lsl	lr, lr, #3
	lsl	r0, r0, #3
	lsl	ip, ip, #3
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	ldrb	ip, [r8, #68]	@ zero_extendqisi2
	ldr	r7, .L69+40
	lsl	ip, ip, #3
	strh	r3, [r1, ip]	@ movhi
	ldrb	ip, [r7, #68]	@ zero_extendqisi2
	ldr	r6, .L69+44
	lsl	ip, ip, #3
	strh	r3, [r1, ip]	@ movhi
	ldrb	ip, [r6, #68]	@ zero_extendqisi2
	lsl	ip, ip, #3
	strh	r3, [r1, ip]	@ movhi
	ldr	r5, .L69+48
	ldr	lr, .L69+52
	ldr	r0, .L69+56
	ldr	ip, .L69+60
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r5, r5, #3
	lsl	r0, r0, #3
	lsl	ip, ip, #3
	strh	r3, [r1, r5]	@ movhi
	str	r2, [r8, #64]
	strh	r3, [r1, lr]	@ movhi
	str	r2, [r7, #64]
	strh	r3, [r1, r0]	@ movhi
	str	r2, [r6, #64]
	strh	r3, [r1, ip]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L69+64
	strb	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	DMANow
	.word	springTiles
	.word	100679680
	.word	springMapMap
	.word	springPal
	.word	player
	.word	korok1
	.word	korok2
	.word	shadowOAM
	.word	spiritOrb1
	.word	spiritOrb2
	.word	spiritOrb3
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	state
	.size	goToSpring, .-goToSpring
	.align	2
	.global	spring
	.syntax unified
	.arm
	.fpu softvfp
	.type	spring, %function
spring:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L74
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+12
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	spring.part.0
.L71:
	pop	{r4, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	updateSpring
	.word	drawSpring
	.word	waitForVBlank
	.word	oldButtons
	.size	spring, .-spring
	.align	2
	.global	goToTrial
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTrial, %function
goToTrial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4096
	ldr	r4, .L78
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L78+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L78+8
	ldr	r1, .L78+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L78+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	ldr	r1, .L78+20
	ldr	ip, .L78+24
	ldr	r0, .L78+28
	ldr	r2, .L78+32
	ldrb	lr, [r1, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	ldr	r1, .L78+36
	ldr	r5, .L78+40
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, lr]	@ movhi
	ldrb	r6, [r5, #68]	@ zero_extendqisi2
	strh	r3, [r1, ip]	@ movhi
	ldr	r5, .L78+44
	strh	r3, [r1, r0]	@ movhi
	ldr	lr, .L78+48
	strh	r3, [r1, r2]	@ movhi
	ldr	ip, .L78+52
	ldr	r0, .L78+56
	ldr	r2, .L78+60
	ldrb	r5, [r5, #68]	@ zero_extendqisi2
	ldrb	lr, [lr, #68]	@ zero_extendqisi2
	ldrb	ip, [ip, #68]	@ zero_extendqisi2
	ldrb	r0, [r0, #68]	@ zero_extendqisi2
	ldrb	r2, [r2, #68]	@ zero_extendqisi2
	lsl	lr, lr, #3
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L78+64
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	DMANow
	.word	springTiles
	.word	100679680
	.word	trialMapMap
	.word	springPal
	.word	player
	.word	korok1
	.word	korok2
	.word	spiritOrb1
	.word	shadowOAM
	.word	spiritOrb2
	.word	spiritOrb3
	.word	blupee1
	.word	blupee2
	.word	blupee3
	.word	lotm
	.word	state
	.size	goToTrial, .-goToTrial
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L100
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldr	r5, .L100+8
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L80
	ldr	r6, .L100+12
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L97
.L83:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L98
.L84:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L99
.L80:
	pop	{r4, r5, r6, lr}
	bx	lr
.L99:
	pop	{r4, r5, r6, lr}
	b	goToTrial
.L98:
	bl	goToSpring
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L84
	b	.L80
.L97:
	bl	goToGame
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L83
	b	.L80
.L101:
	.align	2
.L100:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	prevState
	.size	pause, .-pause
	.align	2
	.global	trial
	.syntax unified
	.arm
	.fpu softvfp
	.type	trial, %function
trial:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L105
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+12
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	trial.part.0
.L102:
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	updateTrial
	.word	drawTrial
	.word	waitForVBlank
	.word	oldButtons
	.size	trial, .-trial
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L121+8
	ldr	r8, .L121+12
	ldr	r5, .L121+16
	ldr	fp, .L121+20
	ldr	r10, .L121+24
	ldr	r9, .L121+28
	ldr	r7, .L121+32
	ldr	r4, .L121+36
.L108:
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r8]
.L109:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #7
	ldrls	pc, [pc, r2, asl #2]
	b	.L109
.L111:
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L113
	.word	.L112
	.word	.L110
.L113:
	mov	lr, pc
	bx	r7
	b	.L108
.L114:
	ldr	r3, .L121+40
	mov	lr, pc
	bx	r3
	b	.L108
.L115:
	mov	lr, pc
	bx	r9
	b	.L108
.L116:
	mov	lr, pc
	bx	r10
	b	.L108
.L117:
	mov	lr, pc
	bx	fp
	b	.L108
.L110:
	ldr	r3, .L121+44
	mov	lr, pc
	bx	r3
	b	.L108
.L112:
	ldr	r3, .L121+48
	mov	lr, pc
	bx	r3
	b	.L108
.L122:
	.align	2
.L121:
	.word	mgba_open
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	win
	.word	67109120
	.word	pause
	.word	trial
	.word	spring
	.size	main, .-main
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	prevState,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,1,1
	.comm	staminaCount,4,4
	.comm	numbers,72,4
	.comm	piece5,72,4
	.comm	piece4,72,4
	.comm	piece3,72,4
	.comm	piece2,72,4
	.comm	piece1,72,4
	.comm	staminaBar,72,4
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
