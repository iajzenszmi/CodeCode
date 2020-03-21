#include <stdio.h>

int main(void)
{
   char     c1;
   char	    c2;
   char	    c3;
   int      i;
   float    x;
   float    y;
      

   printf("\n%s",
      "Input three characters, an int, a float, and a double:  ");
   scanf("%c%c%c%d%f%f", &c1, &c2, &c3, &i, &x, &y);
   printf("\nHere is the data that you typed in:\n");
   printf("\n%3c%3c%3c%d%e%e", c1, c2, c3, i, x, y);
   return 0;
}
