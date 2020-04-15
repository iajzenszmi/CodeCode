
	
#include <stdio.h>
#include <stdlib.h>
 
int main() {
    // Allocating memory dynamically on the heap
    // for an integer, which returns an int* pointer
    int* a = (int*) malloc (sizeof(int));
    if (a != NULL)
        printf("Allocated memory for an integer\n");
    else
        printf("malloc() failed");
    int x = 100;
    // We can update the value to this location, since
    // we have allocated memory for the pointer
     *a = x;
    printf("a points to %d\n", *a);
 
         int* b = (int*) malloc (sizeof(int));
    if (b != NULL)
        printf("Allocated memory for an integer\n");
    else
        printf("malloc() failed");
     x = 100;
    // Will give a segmentation fault, since
    // *b is not allocated any memory
    *b = x;
    printf("b points to %d\n", *b);
     
    // Free memory from the heap
    free(a);
    return 0;
}                                                                                                                                                                                                                                                                           void* malloc(size_t size);

