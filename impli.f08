        integer i
        real x(100)
        real y(100)
        x = (/ (i, i = 1, 100) /) * 0.1
        y = sin(x)*(1-cos(x))/3
         write (6,'(F8.1,F10.5/))')(0.1*i, sin(i*0.01)*(1-cos(i*0.01))/3, i=1,100)
        end program
