            real  m(20, 20, 20, 20),x1,x2,y2,y1,y3,x3

            do y2 = 1, 20, 1
            do y1 = 1,20, 1
            do x2 = 1, 20,1
            do x1 = 1, 20,1
      do while(((real(y2 - y1).ge.1.0).and.(real(x2 -x1)).ge.1.0))
           m(y2,y1, x2, x1) = (real(y2 - y1)) /(real(x2 - x1))
      end do
!            print *, m
      
            print *, x1,x2,y1,y2

          
            end do
            end do
            end do
            end do
            end program           





































































































