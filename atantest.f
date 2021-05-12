       program test_atan
       real(8) :: x = 2.866_8
       real(8) :: y = 2.866_8
       real(8) :: z
       x = atan(x)
       print *,"x =",x
       y = atan(x,y)
       print *," x = ",x, " y = ",y, " z= ",z                  
       end program test_atan

