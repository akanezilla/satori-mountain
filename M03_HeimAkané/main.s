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
	push	{r4, lr}
	mov	r3, #9600
	ldr	r4, .L4
	mov	r2, #100663296
	mov	r0, #3
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
	ldr	r1, .L4+20
	ldr	ip, .L4+24
	ldr	r0, .L4+28
	ldr	r2, .L4+32
	ldrb	lr, [r1, #60]	@ zero_extendqisi2
	ldrb	ip, [ip, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldr	r1, .L4+36
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+40
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startTiles
	.word	100679680
	.word	startTilesMap
	.word	startPal
	.word	player
	.word	korok1
	.word	korok2
	.word	spiritOrb1
	.word	shadowOAM
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
	push	{r4, lr}
	mov	r3, #9600
	ldr	r4, .L12
	mov	r2, #100663296
	mov	r0, #3
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
	mov	r2, #1
	ldr	r3, .L12+20
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsPalTiles
	.word	100679680
	.word	instructionsMap
	.word	instructionsPalPal
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
	mov	r2, #2
	ldr	r3, .L25+20
	strb	r2, [r3]
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
	.word	state
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
	ldr	r2, .L38+20
	ldr	lr, .L38+24
	ldr	r0, .L38+28
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldr	r1, .L38+32
	ldrb	r6, [lr, #60]	@ zero_extendqisi2
	ldr	ip, .L38+36
	ldrb	lr, [r0, #60]	@ zero_extendqisi2
	ldr	r0, .L38+40
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	ldrb	r5, [ip, #60]	@ zero_extendqisi2
	ldr	r2, .L38+44
	ldrb	ip, [r0, #60]	@ zero_extendqisi2
	ldr	r0, .L38+48
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	lsl	r6, r6, #3
	lsl	r5, r5, #3
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, r6]	@ movhi
	strh	r3, [r1, r5]	@ movhi
	ldr	r6, .L38+52
	strh	r3, [r1, lr]	@ movhi
	ldr	r5, .L38+56
	strh	r3, [r1, ip]	@ movhi
	ldr	lr, .L38+60
	strh	r3, [r1, r0]	@ movhi
	ldr	ip, .L38+64
	strh	r3, [r1, r2]	@ movhi
	ldr	r0, .L38+68
	ldr	r2, .L38+72
	ldrb	r6, [r6, #60]	@ zero_extendqisi2
	ldrb	r5, [r5, #60]	@ zero_extendqisi2
	ldrb	lr, [lr, #60]	@ zero_extendqisi2
	ldrb	ip, [ip, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
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
	mov	r2, #3
	ldr	r3, .L38+76
	strb	r2, [r3]
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
	.word	spiritOrb1
	.word	shadowOAM
	.word	korok2
	.word	chest
	.word	marker
	.word	armor
	.word	stamina1
	.word	stamina2
	.word	stamina3
	.word	staminaHold1
	.word	staminaHold2
	.word	staminaHold3
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r3, .L47
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
	ldr	r3, .L47+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
.L40:
	pop	{r4, lr}
	bx	lr
.L46:
	pop	{r4, lr}
	b	goToGame
.L48:
	.align	2
.L47:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	push	{r4, lr}
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
	mov	r3, #512
	ldr	r1, .L51+20
	ldr	ip, .L51+24
	ldr	r0, .L51+28
	ldr	r2, .L51+32
	ldrb	lr, [r1, #60]	@ zero_extendqisi2
	ldrb	ip, [ip, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldr	r1, .L51+36
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L51+40
	strb	r2, [r3]
	pop	{r4, lr}
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
	push	{r4, lr}
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
	mov	r3, #512
	ldr	r1, .L64+20
	ldr	ip, .L64+24
	ldr	r0, .L64+28
	ldr	r2, .L64+32
	ldrb	lr, [r1, #60]	@ zero_extendqisi2
	ldrb	ip, [ip, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldr	r1, .L64+36
	lsl	lr, lr, #3
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, lr]	@ movhi
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L64+40
	strb	r2, [r3]
	pop	{r4, lr}
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
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r4, .L78+4
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L67
	ldr	r2, .L78+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L76
.L67:
	tst	r3, #1
	beq	.L66
	ldr	r3, .L78+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L77
.L66:
	pop	{r4, lr}
	bx	lr
.L77:
	pop	{r4, lr}
	b	goToLose
.L76:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L67
.L79:
	.align	2
.L78:
	.word	updateGame
	.word	oldButtons
	.word	drawGame
	.word	waitForVBlank
	.word	buttons
	.size	game, .-game
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
	push	{r4, r5, r6, lr}
	mov	r3, #4096
	ldr	r4, .L83
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L83+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L83+8
	ldr	r1, .L83+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L83+16
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r5, #0
	ldr	r2, .L83+20
	ldrb	r2, [r2, #60]	@ zero_extendqisi2
	ldr	r1, .L83+24
	ldr	lr, .L83+28
	ldr	ip, .L83+32
	ldr	r0, .L83+36
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	ldrb	ip, [ip, #60]	@ zero_extendqisi2
	ldrb	r2, [lr, #60]	@ zero_extendqisi2
	ldrb	r0, [r0, #60]	@ zero_extendqisi2
	lsl	ip, ip, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r3, [r1, ip]	@ movhi
	strh	r3, [r1, r0]	@ movhi
	strh	r3, [r1, r2]	@ movhi
	mov	r0, #3
	mov	r2, #117440512
	str	r5, [lr, #56]
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L83+40
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	DMANow
	.word	springTiles
	.word	100679680
	.word	springMapMap
	.word	springPal
	.word	player
	.word	shadowOAM
	.word	spiritOrb1
	.word	korok1
	.word	korok2
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
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L85
	ldr	r3, .L92+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L91
.L85:
	pop	{r4, lr}
	bx	lr
.L91:
	pop	{r4, lr}
	b	goToPause
.L93:
	.align	2
.L92:
	.word	updateSpring
	.word	drawSpring
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	spring, .-spring
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
	ldr	r3, .L107
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+4
	mov	lr, pc
	bx	r3
	ldr	r6, .L107+8
	ldr	r8, .L107+12
	ldr	r5, .L107+16
	ldr	fp, .L107+20
	ldr	r10, .L107+24
	ldr	r9, .L107+28
	ldr	r7, .L107+32
	ldr	r4, .L107+36
.L95:
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r8]
.L96:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L96
.L98:
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L99
	.word	.L99
	.word	.L97
.L99:
	mov	lr, pc
	bx	r7
	b	.L95
.L100:
	ldr	r3, .L107+40
	mov	lr, pc
	bx	r3
	b	.L95
.L101:
	mov	lr, pc
	bx	r9
	b	.L95
.L102:
	mov	lr, pc
	bx	r10
	b	.L95
.L103:
	mov	lr, pc
	bx	fp
	b	.L95
.L97:
	ldr	r3, .L107+44
	mov	lr, pc
	bx	r3
	b	.L95
.L108:
	.align	2
.L107:
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
	.word	spring
	.size	main, .-main
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,1,1
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
