#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(){
   float c, r;
   int a;
   int k1;
   int x1;
   float k;
//   char filled_buffer[100];
   int s;
//   for(s = 1; s <=100; s++){
//      filled_buffer[s] = " ";
//   }  
   c = 3.14159/180.0;
   for(a=1;a<=360;a=a+15){
      r = c * (float)(a);
      k=(40 + 25*sin(r));
      k1 = (int)(k);
 //    for(x1=1;x1<=k1;x1++){
 //    filled_buffer[x1] =  "x";
 //     }
     printf("\n%d%s",a,"deg");//,filled_buffer[1]);
      for (s = 1;s <=k1; s++){
      printf("%c","x");
}
//      for(s=1;s<=100;s++){
//      filled_buffer[s] = " ";
//   }      
//     printf("\n%d%s%s","deg",filled_buffer[1]);       
   }
}
      
      
