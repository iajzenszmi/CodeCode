          integer count1
         real x, acount1
          do 10 count1 = 1, 10, 1
          acount1 = count1
          x = sin(acount1)
          write(6,9020) acount1, x
 9020     format(f10.2, f10.2)             
 10       continue
           end program
