.data
.align 4
printf_format: .asciz "CPSR is %X\n"
.global main /* 'main' is our entry point and must be global */
 
main:          /* This is main */
	mov r4, #2 /* Put a 2 inside the register r0 */
	mov r9, #2

	push {r0, lr}
	mrs r2, cpsr
	mov r1, r2
	ldr r0, addr_printf_format
	bl printf

	pop {r0, lr} 
	teq r4, r9
	/* copy CSPR into R0 */
	mrs r2, cpsr

	/* other than MSR ; msr CPSR, R0 */
	/* copy R0 into CPSR */
	/* but RaspberryPi3 chip does not support */
	/*
	MSR R0 , CPSR
	*/
	
	push { r0, lr }

	mov r1 , r2 
	ldr r0, addr_printf_format
	bl printf
	
	pop { r0, lr }

    bx lr      /* Return from main */

addr_printf_format : .word printf_format


