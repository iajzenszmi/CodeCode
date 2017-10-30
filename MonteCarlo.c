#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(){
int i;
long double throws = 999999, circleDarts = 0, randX, randY, pi;

srand((unsigned int)time(NULL));
for (i = 1; i < throws; ++i) {
  randX = rand() / RAND_MAX;
  randY = rand() / RAND_MAX;
  if (1 > ((randX*randX) + (randY*randY))) ++circleDarts;
}
pi = 4 * ((int)circleDarts/throws);
printf("\n%s%Le10.4"," Pi equals ",pi);
}
