#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main(){ 
int as, bs, size;
    size = 10;
    for (int y = 0; y < size; ++y)
    {
        for (int x = 0; x < size; ++x)
        {
            // reflect (x, y) to the top left quadrant as (a, b)
            int a = x;
            int b = y;
            if (a >= size / 2) a = size - a - 1;
            if (b >= size / 2) b = size - b - 1;

            // calculate distance from center ringi
	    //
	    //
	     
	    as = (a - size / 2);
	    bs = (b - size / 2);
	    int u = abs(as);
	    int v = abs(bs); 
           /*  int u = abs(a - size / 2);
	    
            int v = abs(b - size / 2); */
            int d = u > v ? u : v;
            int L = size / 2;
            if (size % 4 == 0) L--;

            // fix the top-left-to-bottom-right diagonal
            if (y == x + 1 && y <= L) d++;

            printf((d + size / 2) % 2 == 0 ? "X" : " ");
        }

        printf("\n");
    }
}
