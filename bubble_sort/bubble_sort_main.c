#include <stdlib.h>

#define N 32768

int main()
{
	int i,j, temp;
	int data[N];

	srand (11) ;
	for(i=0; i<N; i++) {
		data[i] = rand() %10000;
	}

	bubble_sort(data, N) ;
	return 0;
}
