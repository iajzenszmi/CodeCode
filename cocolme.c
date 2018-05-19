#include <stdlib.h>
#include <stdio.h>
#include <string.h>
void slowdown(int count)
{
    while(--count) {
        putchar(0);
    }
}
 
int main()
{
    char *s ="Ian Martin Ajzenszmidt";
    int i;
    for(;;) {
        printf("%s", s);
        slowdown(100000000);
        putchar('\r');
        for(i = 0; i < strlen(s); i++)
           putchar(' ');
        slowdown(100000000);
           putchar('\r');
    }
}
