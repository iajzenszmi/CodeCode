

//sum of digits using recursion
#include<stdio.h>
int find_digits(int );

int main()
{
    int num;
    printf("Enter a number\n");
    scanf("%d", &num);
    int sum = 0;
    printf("\nThe sum of the digits is %d", sum);
    sum = find_digits(num);
    printf("\nThe sum of the digits is %d", sum);
}

int find_digits(int num)
{
    int digit = num%10;
    printf("\nDigit is %d", digit);
//    static int sum=0;
    static int sum;
    sum += digit;
    printf("\nsum is %d", sum);
    if(num<=0)
    {
        printf("\n1. Num is %d and sum is %d", num, sum);
        return sum;
    }
    else
    {
        printf("\n2. Num is %d and sum is %d", num, sum);
        return (sum + find_digits(num/10)); 
    }
}


