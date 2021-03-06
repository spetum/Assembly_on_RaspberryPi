.data
 
.align 4
 
big_array :
.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
.word 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41
.word 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61
.word 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81
.word 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100
.word 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116
.word 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132
.word 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148
.word 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164
.word 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180
.word 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196
.word 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212
.word 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228
.word 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244
.word 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255
 
.align 4
 
message: .asciz "The sum of 0 to 255 is %d\n"
 
.text
.globl main
 
sum_array_ref :
    /* Parameters: 
           r0  Number of items
           r1  Address of the array
    */
    push {r4, r5, r6, lr}
 
    /* We have passed all the data by reference */
 
    /* r4 will hold the sum so far */
    mov r4, #0      /* r4 ← 0 */
    mov r5, #0      /* r5 ← 0 */
 
    b .Lcheck_loop_array_sum
    .Lloop_array_sum:
      ldr r6, [r1, r5, LSL #2]   /* r6 ← *(r1 + r5 * 4) */
      add r4, r4, r6             /* r4 ← r4 + r6 */
      add r5, r5, #1             /* r5 ← r5 + 1 */
    .Lcheck_loop_array_sum:
      cmp r5, r0                 /* r5 - r0 and update cpsr */
      bne .Lloop_array_sum       /* if r5 != r0 go to .Lloop_array_sum */
 
    mov r0, r4  /* r0 ← r4, to return the value of the sum */
    pop {r4, r5, r6, lr}
 
    bx lr
 
 
main:
    push {r4, lr}
    /* we will not use r4 but we need to keep the function 8-byte aligned */
 
    mov r0, #256
    ldr r1, address_of_big_array
 
    bl sum_array_ref
 
    /* prepare the call to printf */
    mov r1, r0                  /* second parameter, the sum itself */
    ldr r0, address_of_message  /* first parameter, the message */
    bl printf
 
    pop {r4, lr}
    bx lr
 
address_of_big_array : .word big_array
address_of_message : .word message
