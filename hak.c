
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
int main()
{
    int a,b,i,j;
    
    scanf("%d%d", &a, &b);
    int *arr[a][b];
    int *ptr[b];
    int *k = 0;
    ptr[b]=arr[a][b];
    printf("\n%s%p","pointer = ",ptr[b]);
    for(i=0;i<a;i++)
    {
        for(j=0;j<b;j++)
        {
            *(*(arr+i)+j)=k;
            k++;
        }
    }
    for(i=0;i<a;i++)
    {
        for(j=0;j<b;j++)
        {
            printf("%p\t",*(*(arr+i)+j));
        }
    printf("\n");
    }
    return 0;
}


