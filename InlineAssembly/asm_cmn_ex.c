#include <stdio.h>

int  asm_cmn_ex ( int x, int y );

void cmn_blt_ok ( void )
{

	printf("CMN BLT OK \n");
	asm("mov r0, r1 \n \
	");
	printf("CMN ASM\n");
}

asm("			\n\
.global asm_cmn_ex	\n \
asm_cmn_ex:		\n \
cmn r0, r1		\n \
blt cmn_blt_ok	\n \
mov pc, lr \n \
");

int main ( void )
{		
	int cmn = 0;	
	printf("\n+-------------------+\n");	
	printf("|ARM Instruction cmn|\n");		
	printf("+-------------------+\n\n");	
	
	cmn = asm_cmn_ex( -7, 2);	
	printf("cmn = %d\n", cmn );	
	
	cmn = asm_cmn_ex( 7, 2);	
	printf("cmn = %d\n", cmn );	

	cmn = asm_cmn_ex( -2, 6);	
	printf("cmn = %d\n", cmn );	
	return 0;
}
