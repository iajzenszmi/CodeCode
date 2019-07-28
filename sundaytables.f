          integer count1, count2, count3
          do 10 count1 = 1, 12
          do 20 count2 = 1, 12
               count3 = count1 * count2
               write(6,9000) count3, count2, count1
 9000     format(" ", i6, i6, i6)
 20       continue
 10       continue
          end program
