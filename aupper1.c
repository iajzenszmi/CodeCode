#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
int main(){
//   aupper1();
//   fflush(stdout);
//   aupper2();
//}
//int main (){
  char a;
  char b;
  b = 'c';
  fflush(stdout);
  printf("Enter lowercase alphabetic letter" );
  fflush(stdout);
  scanf("%c", &b);
  fflush(stdout);
  a = (char)(toupper(b));
 fflush(stdout);
 printf("\n%s%c%s%c\n"," UPPERCASE ",a," lowercase ",b);
 fflush(stdout); 
}
//  void aupper2(void){
//  char a;
//  char h; 
//  h = 'c';
//  printf("Enter uppercase alphabetic letter");
//   fflush(stdout);   
//   scanf("%c", &h);
//   a = (char)(tolower(h));
//   fflush(stdout);
//   printf("\n%s%c%s%c", " UPPERCASE ", h, " lowercase ", a );
//   fflush(stdout);
//}  
