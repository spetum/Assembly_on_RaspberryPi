/* -- hello01.s --*/
/*
http://thinkingeek.com/2013/02/02/arm-assembler-raspberry-pi-chapter-9/
*/
.data

greeting:
 .asciz "Hello World"

 .balign 4
return: .word 0

.text

.global main

main:
	ldr r1, address_of_return
	str lr, [r1]

	ldr r0, address_of_greeting

	bl puts

	ldr r1, address_of_return
	ldr lr, [r1]
	bx lr

address_of_greeting: .word greeting
address_of_return: .word return

/* External */
.global puts

