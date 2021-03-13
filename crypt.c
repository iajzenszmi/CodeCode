#include <stdio.h>
#include <string.h>


int main(){
        int i;
        int j;
//      int x;
//      int np;
        int ac;
        int bc;
        int dc;
        const   char * table[1000];
const   char * buf1[15];
ac = 0;
bc = 0;
dc = 0;
                table[0]= "w";
        table[1]="e";
        table[2]=" ";
        table[3]= "a";
        table[4] = "r";
        table[5] = "e";
        table[6] = " ";
        table[7] = "b";
        table[8]= "a";
        table[9] = "d";
        table[10] = "£";
        table[11] =" ";
        table[12] =" ";
        table[13]=" ";
        for(i=0;i<=13;i++){
                buf1[i]=table[i];

        }



        for(j=0;j<=13;j++)
        {
        if( strcmp(buf1[j],"£") !=0) {
//              printf("\n%d%c%d%c%d",i,j,x);
                if (strcmp(buf1[j],"a")==0){
                        ac =ac+ 1;
}
         if(strcmp(buf1[j],"b")==0) bc = bc + 1;   if(strcmp(buf1[j],"d")==0) dc = dc + 1;

        }
        }
        printf("\n%s%d","A ",ac);
        printf("\n%s%d","B ",bc);
        printf("\n%s%d\n","D ",dc);

}
