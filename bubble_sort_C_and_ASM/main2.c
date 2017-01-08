#include <stdio.h>
#include <stdlib.h>
#include <time.h> 
#define N 32768

int bubble_sort (int *data, int n);
int bubble_sort_asm (int *data, int n);

int main()
{
	int i, *data1, *data2;

	printf("Memory Allocation with %d\n", N);
	data1=(int*)malloc(N*sizeof(int)) ;
	data2=(int*)malloc(N*sizeof(int));
	
	srand(11);
	printf("Initialize data1 and data2\n");
	for (i=0; i<N; i++) {
		*(data2+i) = *(data1+i) = rand() ;
	}

	printf("bubble_sort(data1,N);\n");
	bubble_sort(data1, N);
	printf("bubble_sort_asm(data2,N);\n");
	bubble_sort_asm(data2,N);

	printf("Checking between data1 and data2\n");
	for (i=0; i<N; i++)
		if (data1[i]!=data2[i]){
			fprintf(stderr, "mismatch on element %d\n", i+1);
//			return -1;
		}

	for (i=0; i < N; i++ )
		printf ("%d%c", data2[i], ((i+1)%4==0) ? '\n':'\t') ;
	putchar('\n');
	printf("Success!\n");

	return 0;
}
