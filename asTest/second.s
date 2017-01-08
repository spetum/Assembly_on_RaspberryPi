/* -- second.s */
/* This is a comment */
.balign 4
.code 32
.global main /* 'main' is our entry point and must be global */
 
main:          /* This is main */
    mov r1, #2 /* Put a 2 inside the register r0 */
    mov r0, r1 , LSL #29 
/*
	lsl r0, r1, #0x7 
*/
    bx lr      /* Return from main */
