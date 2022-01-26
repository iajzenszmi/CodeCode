        program test_sin
!      programmed and designed by Ian Martin Ajzenszmidt
        real  :: x = 90.0
        integer icount
        do icount = 1,10,1
        x = real(icount)      
       y = sin(x)
       print *,x,y
       end do
       end program test_sin
