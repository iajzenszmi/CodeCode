/* linux all-in-one for dummies by emmett dulaney 5th edition page 468 */
/* edited by ian martin ajzenszmidt melbourne australia september 2019 */  
#include <math.h>
#define SQUARE(x) ((x) * (x))
double circle(double r)
{
return 4.0 * M_PI * SQUARE(r);
}
