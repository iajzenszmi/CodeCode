
#include <stdio.h>
#include <stdlib.h>
char *reverse_string(char *input_string);

char *reverse_string(char *input_string)
{
    int i=0;
    int j=0;
    char *return_string;
    char filled_buffer[16];
    while (input_string[i]!='\0')
        i++;
    while (i!=0)
    {
        filled_buffer[j]=input_string[i-1];
        i--;
        j++;
    }
    return_string=filled_buffer;
    printf("%s", return_string);
    return return_string;
}

int main (void) 
{
    char *returned_string;
    returned_string=reverse_string("tasdflkj");
    printf("%s", returned_string);
    return  1;
}
