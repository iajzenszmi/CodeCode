#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_RESET  "\x1b[0m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"

void slowdown(int count)
{
    while(--count) {
        putchar(0);
    }
}
 
int main()
{
   // char *sred = "Ian Martin Ajzenszmidt";
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
        printf(ANSI_COLOR_RED "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');    
        printf(ANSI_COLOR_GREEN "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');
         printf(ANSI_COLOR_YELLOW "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');
        printf(ANSI_COLOR_BLUE "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');
         printf(ANSI_COLOR_MAGENTA "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');
        printf(ANSI_COLOR_CYAN "Ian Martin Ajzenszmidt" ANSI_COLOR_RESET );
        slowdown(100000000);
        putchar('\r');
        for(i=0; i < strlen(s); i++) putchar(' ');
        slowdown(100000000);
        putchar('\r');


}

    
}
