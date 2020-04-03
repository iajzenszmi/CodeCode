        integer*8  i, limit, temp, f1, f0
        limit = 48
        f1 = 1
        f0 = 0
        i = 0
 5       if (i .gt. 52) go to 20 
!      do 10 i = 1, 52
          
          temp = f1
          f1 = f1 + f0
          f0 = temp
          print *,i, f1,f1/f0
          i = i + 1
      10  go to 5
      20    continue
          end program    

