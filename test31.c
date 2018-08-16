#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
int count;
for(count=1;count<=20;count++){
   sleep(1);
   printf("\n%d",count);
   }}
