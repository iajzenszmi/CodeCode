#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main() {
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    char s[64];
    strftime(s, sizeof(s), "%c", tm);
    printf("%s\n", s);
}
