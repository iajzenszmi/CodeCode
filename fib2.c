#include <stdio.h>
#include <stdlib.h>
#include <assert.h> 
int fibonacci(int n);
int main(){
	int y;
	int n1;
	printf("\n%s","enter a number ");
	scanf("%d",&n1);
y = fibonacci(n1);
printf("\n%s%d%s%d"," count = ",n1," fibonacci number = ",y);
}
int fibonacci(int n)
 {
	
if (n <= 1 )
    return n;
else
    return (fibonacci(n - 1) + fibonacci(n - 2));
    }

