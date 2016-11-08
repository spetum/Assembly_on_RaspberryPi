#include <stdio.h>

int  asm_mov_ex ( int x, int y );

asm("			\n\
.global asm_mov_ex	\n\
asm_mov_ex:		\n\
mov r0, #1004		\n\
mov pc, lr		\n\
");

int main ( void )
{
	int mov;

	printf("\n+-------------------+\n");
	printf("|ARMInstruction MOV|\n");
	printf("+-------------------+\n\n");

	mov = asm_mov_ex( 2, 3);
	printf("mov = %d\n\n", mov );

	return 0;
}
