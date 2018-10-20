#include<stdio.h>
//#include<conio.h>
#include<stdlib.h>
#include<time.h>
int main()
   {
	   int  i;
	   int  n, g;
	      int   element; 
		int  location;
	   int array[100];
	   printf("\n%s","Enter the size of array:\n");
	   scanf("%d", &n);
	   printf("\n%s","Enter the elements of array :\n");
	    printf("\n%s","Enter the element of array :\n");
            scanf("%d", &element);
            
             printf("\n%s","Enter The Location for insert element:\n");
		   scanf("%d", &location);
	        array[location]=element;

	   for(i=1;i<=n;i=i+1){
   		  
		 
		           {
         
                array[location]=element;
			  
			   printf("\n%s%d", " array[location] = ", array[location]);
			    printf("\n%s","Enter the element of array :\n");
                            scanf("%d", &element);
  printf("\n%s","Enter The Location for insert element:\n");
		   scanf("%d", &location);
			   }}
			   printf("\n%s","Elements of array after insertion: \n");
			   for(g=1; g<n+1;g=g+1)
				   printf("\n%d",array[g]);
			  
        }
   
