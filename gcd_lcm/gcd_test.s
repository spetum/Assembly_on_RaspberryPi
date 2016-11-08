.balign 4
.data
msg : .asciz "value = %d\n"
gcdMsg: .asciz "GCD is %d\n"
endString : .ascii "Program Terminated!"

.text
.global main

main:
#	mov r3, #106
#	mov r4, #159

#	mov r3, #107
#	mov r4, #157

	mov r3, #128
	mov r4, #256
	
	CMP r4, #0
	BLE .END
	CMP r3, #0
	BLE .END
	
	push {r0-r4, lr}
	mov r1, r3
	ldr r0, addr_msg
	bl printf
	
	pop {r0-r4, lr}
	
	push {r0-r4, lr}
	mov r1, r4
	ldr r0, addr_msg
	bl printf
	
	pop {r0-r4, lr}
	
.GCD:
	CMP r3, r4
	BEQ .COMPLETE
	BLT .LESSTHAN
	SUB r3, r3, r4
	CMP r3, #0
	BGT .GCD
	B .COMPLETE

.LESSTHAN:
#	SUB r4, r4, r3
	push { r1, r2 }
	MOV r2, r3
	MOV r3, r4
	MOV r4, r2
	pop { r1, r2 }
# Warning: swp{b} use is deprecated for ARMv6 and ARMv7
#	SWP r3, r2, [r4]
	B .GCD

.COMPLETE:
	push {r0, lr}
	mov r1, r4
	ldr r0, addr_gcdMsg
	bl printf
	pop {r0, lr}

.END:
	push {r0, lr}
	ldr r0, addr_endString
	bl puts
	pop {r0, lr}
	
	bx lr

addr_msg : .word msg
addr_endString : .word endString
addr_gcdMsg : .word gcdMsg
