//Ian Martin Ajzenszmidt, MELBOURNE, AUSTRALIA has commented out conio.h and inserted stdlib.h
#include <iostream>
#include <stdlib.h>
//#include <conio.h>
#include <stdio.h>


int main(int argc, char const *argv[])
{
	while (1) {
		//IAN MARTIN AJZENSZMIDT OF MELBOURNE AUSTRALIA HAS CHANGED THE getch to getchar 03 / 2019
	int i=getchar();
	printf("%d\n",i);
	}
	return 0;
}
