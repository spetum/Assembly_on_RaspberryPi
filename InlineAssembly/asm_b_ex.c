#include <stdio.h>

int  asm_b_ex ( void );

void b_test ( void )
{
	printf("b test called\n\n");
}

asm("	\n \
.global asm_b_ex	\n \
	asm_b_ex:			\n \ 
		b b_test		\n \ 
		mov pc, lr		\n \
");

int main ( void )
{		
	printf("\n+-------------------+\n");	
	printf("|ARMInstruction CMP|\n");		
	printf("+-------------------+\n\n");	
	
	asm_b_ex();	

	return 0;
}
