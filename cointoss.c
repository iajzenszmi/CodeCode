#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
int flip( );
int main( void )
{
//int side;
int toss;
int heads = 0;
int tails = 0;
srand(time(NULL)); 
for ( toss = 1; toss <= 100; toss++ ){
    printf( "%d\n", flip( ));
     
    if (flip( ) == 0)
    heads++;
    else
    tails++;
 
         
 
}
printf( "heads was flipped %d times\n", heads );
printf( "tails was flipped %d times\n", tails );
 
return 0;
 
}    
int flip( )
{
    int i = rand() % 2;
    
 
        if (i == 0)
             return 0;
              
        else
             return 1;
              
              
       }
