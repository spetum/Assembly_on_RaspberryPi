#.equ N, 32768
#.comm data, N*4, 4
.global bubble_sort_asm
#.arch armv6
.type bubble_sort_asm, %function
bubble_sort_asm:
	push {r0, r1, r2, r3, r5, r10, r11, lr}
#	ldr r1, =N
	sub r1, r1, #1
	mov r5, #0
	
	mov r2, r0

oloop:
	cmp r5, r1
	beq exito

	mov r3, #0
#	ldr r2, =data
	mov r2, r0
	ldr r11, [r2]
	
iloop:
	cmp r3, r1
	beq exiti
	
	ldr r10, [r2,#4]
	cmp r11, r10
	stmgt r2, {r10,r11}
	movle r11, r10
	add r2, r2, #4
	add r3, r3, #1
	b iloop
	
exiti:
	add r5, r5, #1
	b oloop
exito:
	pop {r0, r1, r2, r3, r5, r10, r11, lr}
	mov r0, #1
	bx lr
