          integer count1
          external prog1 
          count1 = 1
          call prog1(count1)
          print *, count1
          end program

          recursive subroutine prog1(icount1)
          integer icount1, count1
          icount1 = icount1 + 1
          count1 = icount1
          call prog1(count1)
          end subroutine
