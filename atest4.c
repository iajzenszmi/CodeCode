            #include <stdlib.h>
            #include <stdio.h>
            #include <math.h>                     
            int main(){
            int remainder;
            int len = 800;
            double k = 800.000, sixteen = 16.00000, k2;
            int k1;
            int k5;
            char Hex[8];
            int quotient; 
            int power1;
            int original_value = 1000;
            int sign = '+';
            remainder = (original_value-1)-1;
            for ( k1 = len; k1 > 0; k1-- )
            {
			//	k5 =(double)k1;
//			
     	printf("\n%d", k5);
                if (sign == '+') { 
					k2 = k - 1;                  
                    power1 = pow(sixteen, k2);
//                    printf("\n%d", power1);
                    quotient = 15 - (remainder / power1);
                    //                    printf("\n%d", quotient);
                    remainder = remainder % power1;
 //                   printf("\n%d", remainder);
                    if (quotient < 10)
                        Hex[len - k1] = (int)quotient;
                    else if (quotient == 10)
                        Hex[len - k1] = 'A';
                    else if (quotient == 11)
                        Hex[len - k1] = 'B';
                    else if (quotient == 12)
                        Hex[len - k1] = 'C';
                    else if (quotient == 13)
                        Hex[len - k1] = 'D';
                    else if (quotient == 14)
                        Hex[len - k1] = 'E';
                    else if (quotient == 15)
                        Hex[len - k1] = 'F';
                }
            }



             for( k = 1; k < len; k++) {
                   printf("/n%c", Hex[k1]);
           }
                 
}


