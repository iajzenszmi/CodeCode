#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>
 int main(){
int another;
 char  numchar, anotherc;
  int  num, num2;
  int icount;
  another = 0;
  printf("\n%s","enter a number");
  scanf(" %d",&num); 	  
//  getchar();
  printf("\n%s\n"," if want another enter 1?");
  scanf(" %d",&another);
  if(another == 0) return 1;
 //  getchar();
// num2 = num * num;
//  printf("\n%s%d%s%d","square of number",num," ", num2);
  for (icount=1; another== 1;icount++)
  {
 num2 = num * num;
 printf("\n%s%d%s%d","square of number", num, " ", num2);
  printf("\n%s","if want another enter 1");
  scanf(" %d",&another);
  if(another == 0) return 1; 
 // getchar();
  printf("\n%s","enter a number");
  scanf(" %d",&num);
//  getchar();

 // printf("\n%s"," enter a number");
//  numchar=getchar();
//  num = (int)(numchar);
//  strcpy("y",&another);  
  }   }  
