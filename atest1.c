nclude <stdio.h>
unsigned long long int pow(unsigned long long int n,unsigned long long int d);
int main(){

    unsigned long long int a,x,n;
    printf("Number:");
    scanf("%llu",&a);
    printf("power:");
    scanf("%llu",&n);
    x = pow(n,a);
    printf("%llu\n",x);
}
unsigned long long int pow(unsigned long long int n,unsigned long long int d){
    if(n+1==1)
        return 1;
    return d*pow(n-1,d);
}
