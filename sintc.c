// designed and programmed by Ian Martin Ajzenszmidt jan 27 2022
#include <stdio.h>
 #include <stdlib.h>
 #include <math.h>
int main(){
	int icount;
	float x, y1, y2, y3;
	printf("\n%s","Ian Martin Ajzenszmidt");
	printf("\n%s","  Number   Sine    Cosine   Tangent");
	for (icount=1;icount<=10;icount++){
		x = (float)icount;
		y1=sin(x);
		y2=cos(x);
		y3=tan(x);
	        printf("\n%d%-s%f%-s%f%-s%f%-s%f",icount," ",x," ",y1," ",y2," ",y3);

	}  
}	
