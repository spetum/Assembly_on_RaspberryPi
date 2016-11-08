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
	.file	"bubble_sort.c"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L8
	ldr	r0, .L8+4
.L2:
	ldr	r3, .L8+8
.L4:
	ldr	r1, [r3]
	ldr	r2, [r3, #4]!
	cmp	r1, r2
	strgt	r2, [r3, #-4]
	strgt	r2, [r3]
	cmp	r3, r0
	bne	.L4
	subs	ip, ip, #1
	bne	.L2
	mov	r0, #1
	bx	lr
.L9:
	.align	2
.L8:
	.word	32767
	.word	data+131068
	.word	data
	.size	main, .-main
	.comm	data,131072,4
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
