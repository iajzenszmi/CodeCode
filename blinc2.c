 #define NORMAL "\x1b[0m"
#define BLINK   "\x1b[1m"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
int main(){
	 int i;
	 for (i=1;i>=1;i=i+1){
                            printf("\r%s                 ",BLINK);
		 printf("\r%sI ",BLINK);
		// sleep(10000);
			  printf("\r%sI  am",BLINK);
                // sleep(10000);
			   printf("\r%sI am a ",BLINK);
                // sleep(10000);			   
			    printf("\r%sI am a programmer",BLINK);
			    printf("\r%s                   ",BLINK);
	 }}
