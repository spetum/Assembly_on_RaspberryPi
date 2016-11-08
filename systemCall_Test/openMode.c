#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main()
{
	printf ("O_RDONLY = %d\n", O_RDONLY) ;	// 0
	printf ("O_WRONLY = %d\n", O_WRONLY) ;	//1
	printf ("O_RDWR = %d\n", O_RDWR) ;	// 2

	printf ("O_CREAT= %d\n", O_CREAT) ;	// 64
	printf ("O_EXCL= %d\n", O_EXCL) ;	// 128
	printf ("O_TRUNC= %d\n", O_TRUNC) ;	// 512
	printf ("O_APPEND = %d\n", O_APPEND) ;	//1024
	
	puts ("Other Modes");
	
	printf("O_CLOEXEC = %d\n",O_CLOEXEC);	// 524288
	printf("O_DIRECTORY = %d\n",O_DIRECTORY);	// 16384
	printf("O_EXCL = %d\n",O_EXCL);	// 128
	printf("O_NOCTTY = %d\n",O_NOCTTY);	//  256
	printf("O_NOFOLLOW = %d\n",O_NOFOLLOW);	// 32768
//	printf("O_TTY_INIT = %d\n",O_TTY_INIT); 
	printf("O_DSYNC = %d\n",O_DSYNC);	// 4096
	printf("O_NONBLOCK = %d\n",O_NONBLOCK);	// 2048
	printf("O_RSYNC = %d\n",O_RSYNC);	// 105672
	printf("O_SYNC = %d\n",O_SYNC);	// 1052672
	printf("O_ACCMODE = %d\n",O_ACCMODE);	// 3
//	printf("O_EXEC = %d\n",O_EXEC);
//	printf("O_SEARCH = %d\n",O_SEARCH);
	
	return 0;
}
