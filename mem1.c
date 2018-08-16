/*Linux System Programming 
269 of 396 
ignore 
p
, and in lieu use 
r
 (which is likely the same as 
p
, as the region was almost certainly 
resized in place). We now have the responsibility to fr
ee 
r
 when we're done. 
8.2.3. Freeing Dynamic Memory 
Unlike automatic allocations, which are automatically re
aped when the stack unwinds, dynamic 
allocations are permanent parts of the process' address space
 until they are manually freed. 
The programmer thus bears the responsibility of returni
ng dynamically allocated memory to 
the system. (Both static and dynamic allocations, of course,
 disappear when the entire process 
exits.) 
Memory allocated with 
malloc( )
, 
calloc( )
, or 
realloc( )
 must be returned to the system 
when no longer in use via 
free( )
: 
#include <stdlib.h> 
void free (void *ptr);
A call to 
free( )
 frees the memory at 
ptr
. The parameter 
ptr
 must have been previously 
returned by 
malloc( )
, 
calloc( )
, or 
realloc( )
. That is, you cannot use 
free( )
 to free 
partial chunks of memory—say, half of a chunk of memory
—by passing in a pointer halfway 
into an allocated block. 
ptr
 may be 
NULL
, in which case 
free( )
 silently returns. Thus, the oft seen practice of 
checking 
ptr
 for 
NULL
 before calling 
free( )
 is redundant. 
Let's look at an example: 
Code View: 
Scroll
 / 
Show All */
#include <stdio.h>
#include <stdlib.h>
int main() 
{ 
	    char c = 's';
	    int n = 5;
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

