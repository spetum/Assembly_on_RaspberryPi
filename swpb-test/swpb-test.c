
#include <stdio.h>

int asm_swp_ex( int x, int y );

int mem32;

asm("\n\
.global asm_swp_ex\n\
asm_swp_ex:\n\
ldr	r2, =mem3\n\
swpb	r0, r1, [r2]\n\
mov 	pc, lr\n\
");

int main ( void )
{
	int swp;
	
	printf("\n+------------------+\n");
	printf("|ARMInstruction SWP|\n");
	printf("+-------------------+\n\n");	

	mem32 = 0x12345678; 
				          		
	printf("SWP Before...\n");
	printf("r0 value    = 0x%08X\n", swp 	);
	printf("mem32 value = 0x%08X\n\n", mem32	);
				          		               
	swp = asm_swp_ex( 0x00000000, 0x11112222 );

	printf("SWP After...\n");
	printf("r0 value     = 0x%08X\n", swp); 
	printf("mem32 value  = 0x%08X\n", mem32 );   

	printf("Program END\n\n"); 

	return 0;
}
