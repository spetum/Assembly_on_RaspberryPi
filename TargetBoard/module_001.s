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
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"module_001.c"
#APP
			
.global asm_mov_ex	
asm_mov_ex:		
mov r0, #1004		
mov pc, lr		

	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	r0, .L3
	bl	puts
	ldr	r0, .L3+4
	bl	puts
	ldr	r0, .L3+8
	bl	puts
	mov	r0, #2
	mov	r1, #3
	bl	asm_mov_ex
	mov	r1, r0
	ldr	r0, .L3+12
	bl	printf
	mov	r0, #0
	ldmfd	sp!, {r3, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012+-------------------+\000"
	.space	1
.LC1:
	.ascii	"|ARMInstruction MOV|\000"
	.space	3
.LC2:
	.ascii	"+-------------------+\012\000"
	.space	1
.LC3:
	.ascii	"mov = %d\012\012\000"
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
