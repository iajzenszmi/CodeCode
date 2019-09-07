/* linux all-in-one for dummies by emmett dulaney fifth edition page 468 */
/* edited by ian martin ajzenszmidt melbourne australia september 2019 */  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "circle.h"
int main(int argc, char **argv)
{
if(argc < 2)
{
printf("\n%s%s%s","Usage:", " radius",argv[0]);
exit(1);
}
else 
{
double radius = atof(argv[1]);
double area = circle(radius);
printf("\n%s%lf%s%lf", "area of circle with radius", radius," = ", area);
}
return 0;
}

