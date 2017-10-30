      integer e,m,c,i,j
      m = 0
      c = 0
      i = 0
      j = 0
      do 10 while(i .le. 10)
          i = i + 1
      print *, " i = ",  i 
          m = i
      print * , "m = ",  m
         do 20 while(j .le. 10)
          j =j + 1
          print *, " j = ",  j
          

          c = j
             e = m*c**2
      
             
             print * , " e = ", e
             print * , "m = ",  m
             print * , " c = ", c
!             print *, e,m, c
20         end do
10      end do
      end
