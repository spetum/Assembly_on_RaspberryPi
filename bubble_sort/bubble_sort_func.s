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
	.file	"bubble_sort_func.c"
	.text
	.align	2
	.global	bubble_sort
	.type	bubble_sort, %function
bubble_sort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	ble	.L8
	sub	ip, r1, #-1073741823
	stmfd	sp!, {r4, lr}
	add	ip, r0, ip, asl #2
	sub	r4, r1, #1
	mov	lr, #0
.L3:
	mov	r3, r0
.L5:
	ldr	r1, [r3]
	ldr	r2, [r3, #4]!
	cmp	r1, r2
	strgt	r2, [r3, #-4]
	strgt	r2, [r3]
	cmp	r3, ip
	bne	.L5
	add	lr, lr, #1
	cmp	lr, r4
	bne	.L3
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.L8:
	mov	r0, #1
	bx	lr
	.size	bubble_sort, .-bubble_sort
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
