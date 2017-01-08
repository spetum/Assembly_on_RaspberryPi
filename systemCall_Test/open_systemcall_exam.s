
.global main
main :

LDR r0, =filename
MOV r1, #0101 @ O_WRONLY | O_CREAT
LDR r1, =0666 @ permission
MOV r7, #5 @ #5 is system call number for open
SVC #0
CMP r0, #0
BLT fine

@r0 contains fd (File descriptor, integer)
MOV r5, r0

push {r0, lr}
ldr r0, =message_s
bl puts
pop {r0, lr}
bx lr

fine:
push {r0, lr}
ldr r0, =message_f
bl puts
pop {r0, lr}
bx lr


.data
.align 2
filename : .asciz "out.txt"
message_s : .asciz "Success"
message_f : .asciz "Failed"

