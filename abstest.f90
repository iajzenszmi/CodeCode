            program test_abs
            integer :: i = -1
            real :: x = -1.e0
            complex :: z = (-1.e0,0.e0)
            print *,i, x, z
            i = abs(i)
            x = abs(x)
            z = abs(z)
            print *,i,x, z
          end program test_abs
