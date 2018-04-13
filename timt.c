#include <stdio.h>
int main(){
    int i;
    int j;
    int a;
    for (i=1;i<=12;i++){
		for (j=1; j <=12; j++){
			a = i * j;
			printf("\ni = %d j= %d a = %d",i,j,a);
		}
	}
}
