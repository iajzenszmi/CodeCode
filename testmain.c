#include "ANSI-color-codes.h"
#include <stdio.h>

int main(){
	
	printf(BRED "Hey this is the color red, and it's bold! \n" reset);
	printf(RED "If" BLU "you" YEL "are" GRN "bored" CYN "do" MAG "this! \n" reset); 
	printf(BRED "If" BBLU "you" BYEL "are" BGRN "bored" BCYN "do" BMAG "this! \n" reset); 
	printf(URED "If" UBLU "you" UYEL "are" UGRN "bored" UCYN "do" UMAG "this! \n" reset);
return 0;};
