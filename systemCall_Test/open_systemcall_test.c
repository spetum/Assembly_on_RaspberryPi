#include <stdio.h>         // printf()
#include <string.h>        // strlen()
#include <fcntl.h>         // O_WRONLY
#include <unistd.h>        // write(), close()

const char *filename = "a.txt";

int main()
{
	int fd ;
	fd = open ( filename, O_RDONLY);
}