// C program to illustrate 
// string input output using an array.
#include <stdio.h> 
#include <stdlib.h>


int main() 
{ 
	int i;
    char buf[20]; 
//   buf[1] = ' ';                                                 
printf("Enter a string: "); 
for (i=0;i<=20; i++) scanf("%c", &buf[i]); 
 printf("\n%s%s", " string is: ", buf); 
  
    return 0; 
} 
