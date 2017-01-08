extern int data[];
int bubble_sort(int *data, int N)
{
	int i,j, temp;

	for (i=0; i<(N-1); i++)
		for (j=0; j<(N-1); j++)
			if (data[j]>data[j+1]) {
				temp = data[j];
				data[j] = data[j+1];
				data[j+1] = data[j];
			}
	return 1;
}
