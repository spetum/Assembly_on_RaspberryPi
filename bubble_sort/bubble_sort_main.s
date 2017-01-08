	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bubble_sort_main.c"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 131072
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #131072
	sub	sp, sp, #4
	mov	r0, #11
	bl	srand
	add	r4, sp, #130048
	ldr	r6, .L6
	ldr	r5, .L6+4
	sub	r7, sp, #4
	add	r4, r4, #1020
.L2:
	bl	rand
	smull	r3, r2, r6, r0
	mov	r3, r0, asr #31
	rsb	r3, r3, r2, asr #12
	mul	r3, r5, r3
	rsb	r0, r3, r0
	str	r0, [r7, #4]!
	cmp	r7, r4
	bne	.L2
	mov	r0, sp
	mov	r1, #32768
	bl	bubble_sort
	mov	r0, #0
	add	sp, sp, #131072
	add	sp, sp, #4
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L7:
	.align	2
.L6:
	.word	1759218605
	.word	10000
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
