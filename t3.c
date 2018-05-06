/* calculate the factorial of an integer quantity */
 #include <stdio.h> 
 #include <stdlib.h>
 #include <math.h>
long int factorial(int n) /* calculate the factorial of n */
 { 
int i; 
long int prod = 1;
 if (n > 1) 
     for (i = 2; i <= n; ++i){
 prod *=  i;
}
 return(prod);
}
int  main() 
{ 
int n ; /* read in the integer quantity */
long int x;
 printf ( "\n%s","n= " ); 
 scanf("%d",&n);
 /* calculate and display the factorial */
 x = factorial(n); 
 printf ( "\n%ld",x); 
}
