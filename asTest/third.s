/* -- third.s */
/* This is a comment */
.data
.align 4
message : .asciz "The value of r0 is %u.\n"

.balign 4
.code 32
.global main /* 'main' is our entry point and must be global */
 
main:          /* This is main */
    mov r1, #2 /* Put a 2 inside the register r0 */
    mov r0, r1 , LSL #30 
	mov r1, r0
	push {lr}
	ldr r0, address_of_message
	bl printf
/*
	lsl r0, r1, #0x7 
*/
	pop  {lr}
    bx lr      /* Return from main */
address_of_message : .word message

