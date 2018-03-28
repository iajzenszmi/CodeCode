          #include <stdio.h>
          #include <stdlib.h>
          #include <stddef.h>
          #include <iostream>
          int main(){    
          struct Data
          {
          int values[64][64];           
          Data() {for(int i = 0; i<64 ; ++i)
                             { for(int j=0;i< 64; ++i)
           values[i][j] = i;
                     }
}
};
        Data* data = new Data;

          
          
          int  total=0;
	  int  size2=64;
          int  size1=64;
	          for (int i = 0; i < size1; ++i)
              for (int j = 0; j < size2; ++j)
              
                total += data->values[i][j];

          for (int j = 0; j < size2; ++j)
              for (int i = 0; i < size1; ++i)
               total += data->values[i][j]; 
          }   
      
