#include <stdio.h>
#include <stdlib.h>
#include <cmath>
int main(){
float SA;
int r;
int h;
for (r=1;r<=50;r++){
for (h=1;h<=50;h++){
  SA = .5 * 2 * M_PI *r *h + .5 * M_PI * r*(exp(2));
  printf("\n%s%f%s%d%s%d","Surface Area ",SA," radius= ",r," height = ",h);

  }
  }
  }
