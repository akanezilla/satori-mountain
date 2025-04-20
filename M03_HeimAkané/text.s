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
	.file	"text.c"
	.text
	.align	2
	.global	initTextbox
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTextbox, %function
initTextbox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L6
	mov	r1, #64
	mov	r3, r2
	mov	ip, #1
	push	{r4, r5, r6, r7, lr}
	add	r0, r2, #96
.L2:
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L2
	mov	r6, #20
	mov	r5, #21
	mov	lr, #22
	mov	r0, #23
	mov	r3, #96
	mov	r7, #0
	mov	r4, #128
	mov	ip, #192
	strb	r6, [r2, #20]
	strb	r5, [r2, #44]
	strb	lr, [r2, #68]
	strb	r0, [r2, #92]
	str	r7, [r2]
	str	r4, [r2, #48]
	str	r1, [r2, #24]
	str	r3, [r2, #4]
	str	r3, [r2, #28]
	str	r3, [r2, #52]
	str	r3, [r2, #76]
	str	ip, [r2, #72]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	textbox
	.size	initTextbox, .-initTextbox
	.align	2
	.global	drawTextbox
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTextbox, %function
drawTextbox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #512
	ldr	r3, .L14
	ldr	r1, .L14+4
	ldr	r5, .L14+8
	ldr	r4, .L14+12
	ldr	lr, .L14+16
	add	ip, r3, #96
.L11:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	r7, r2, #3
	ldrne	r2, [r3]
	ldrbne	r8, [r3, #4]	@ zero_extendqisi2
	andne	r2, r2, r5
	orrne	r2, r2, r4
	lsleq	r2, r2, #3
	add	r3, r3, #24
	strhne	lr, [r0, #4]	@ movhi
	strhne	r2, [r0, #2]	@ movhi
	strhne	r8, [r1, r7]	@ movhi
	strheq	r6, [r1, r2]	@ movhi
	cmp	r3, ip
	bne	.L11
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	textbox
	.word	shadowOAM
	.word	511
	.word	-16384
	.word	20880
	.size	drawTextbox, .-drawTextbox
	.align	2
	.global	showTextbox
	.syntax unified
	.arm
	.fpu softvfp
	.type	showTextbox, %function
showTextbox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L17
	str	r2, [r3, #16]
	str	r2, [r3, #40]
	str	r2, [r3, #64]
	str	r2, [r3, #88]
	bx	lr
.L18:
	.align	2
.L17:
	.word	textbox
	.size	showTextbox, .-showTextbox
	.align	2
	.global	hideTextbox
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideTextbox, %function
hideTextbox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L20
	str	r2, [r3, #16]
	str	r2, [r3, #40]
	str	r2, [r3, #64]
	str	r2, [r3, #88]
	bx	lr
.L21:
	.align	2
.L20:
	.word	textbox
	.size	hideTextbox, .-hideTextbox
	.comm	textActivated,4,4
	.comm	textbox,96,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
