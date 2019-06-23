#include "cpgplot.h"
#include "math.h"

int main()
{
   int i;
   float xs[9], ys[9];
   float xr[101], yr[101];

   /* Compute numbers to be plotted. */

   for (i=0; i<101; i++) {
     xr[i] = 0.1*i;
/*     yr[i] = xr[i]*xr[i]*exp(-xr[i]);*/
        yr[i] = xr[i]*xr[i]*xr[i];
       
   }
   for (i=0; i<9; i++) {
     xs[i] = i+1;
  /*     ys[i] = xs[i]*xs[i]*exp(-xs[i]); */
     ys[i] = xs[i]*xs[i]*xs[i];
   }

   /* Open graphics device. */

   if (cpgopen("?") < 1)
     return 1;

   /* Define coordinate range of graph (0 < x < 10, 0 < y < 0.65),
      and draw axes. */

   cpgenv(0., 10., 0., 0.65, 0, 0);
   
   /* Label the axes (note use of \\u and \\d for raising exponent). */
   
  /* cpglab("x", "y", "PGPLOT Graph: y = x\\u2\\dexp(-x)"); */
     cpglab("x", "y", "PGPLOT Graph: y = x\\u3");
   /*  Plot the line graph. */
    
   cpgline(101, xr, yr);

   /* Plot symbols at selected points. */

   cpgpt(9, xs, ys, 18);

   /* Close the graphics device */

   cpgclos();
   return 0;
}
