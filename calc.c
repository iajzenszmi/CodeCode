#include <stdio.h>
#include <stdlib.h>
int main(){
    int a;
    int b;
    int d;
    int e;
    char f;
          scanf("%d", &e);
          a = e;
          scanf("%d", &e);
          b = e;
          scanf("%ls", &e);
          f =  e;         
          switch(f) {
          case 'a':
          d=a+b;
          break;
          case 's':
          d=a-b;
          break;
          case 'm':
          d=a*b;
          break;
          case 'd':
          d=a/b;
          break;}
          printf("%d",d);
	  }
