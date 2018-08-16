#include <stdio.h>
#include <stdlib.h>
int fun(int a, int b);
int main ()
{
int c,a=5,b=3;
c= fun (a,b);
printf("%d",c);

}
int fun (int a, int b)
{
int c= a+b; //c is an auto variable which will be destroyed as we exit this loop.
return c; //Then how come this return works fine here?
}

