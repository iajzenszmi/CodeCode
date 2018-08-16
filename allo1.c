#include <stdlib.h>
#include <stdio.h>
int print_chars(int n,char c);
int main(){
	
int n1;
char c1;
n1 = 5;
c1 = 'a';
print_chars(n1,c1);
}


#include <stdlib.h>
#include <stdio.h>
int print_chars (int n, char c)
{ 
        int i; 
        for (i = 0; i < n; i++) { 
                char *s; 
                int j; 
                /* 
                 * Allocate and zero an i+2 element
 array 
                 * of chars. Note that 'sizeof (cha
r)' 
                 * is always 1. 
                 */ 
                s = calloc (i + 2, 1); 
                if (!s) { 
                        perror ("calloc"); 
                        break; 
                } 
                for (j = 0; j < i + 1; j++) 
                        s[j] = c; 
                printf ("%s\n", s); 
                /* Okay, all done. Hand back the me
mory. */ 
                free (s); 
        } 
        
}
