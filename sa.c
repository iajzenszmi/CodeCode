#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
 float SA1;
 int r;
 int h;
 for(r=1;r<=50;r++){
	 for(h=1;h<=50;h++){
 SA1 = .5 * 2 * M_PI *r *h + .5 * M_PI * r*(exp(2));
 
 printf("\n%s%f%s%d%s%d","Surface Area ",SA1," radius= ",r," height = ",h);
}
}
  }
