

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<time.h>
int main()
{
int a,b,c,i,j,k=0;
scanf("%d%d", &a, &b);
int arr[a][b];
int *ptr[b];
ptr[b]=arr;
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
        printf("%d\t",*(*(arr+i)+j));
    }
    printf("\n");
}
return 0;

}
