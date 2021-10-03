         integer count11
         integer calc1
         integer calc2
         integer calc3
         integer calc4
         integer calc5
         integer calc6
         integer calc7
         integer calc8
         integer calc9
         integer calc10
         integer calc11
         integer calc12
         do 10 count11=1,12,1
             calc1  = count11 * 1
             calc2  = count11 * 2
             calc3 =  count11 * 3
             calc4 = count11  * 4
             calc5 = count11 * 5
             calc6  = count11 * 6
             calc7 =  count11 * 7
             calc8 = count11 * 8
             calc9 = count11 * 9
             calc10 = count11 * 10
             calc11 = count11 * 11
             calc12 = count11 * 12
             write(6,9010) &                     
     & calc1,calc2,calc3,calc4,calc5,calc6,calc7,calc8,calc9, &
     & calc10, calc11, calc12                
9010           format(" ",i6,i6, i6,i6,  &
     &   i6,  i6, i6, i6,  &
     &   i6,  i6, i6, i6)                
 10      continue           
         end program
