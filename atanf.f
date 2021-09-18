        real x(10)
        real y(10)
        integer i
        
        open(unit=48,file="arct.txt")
        do i = 1, 10, 1
            x(i) = i
!           y(i) = (x(i) ** 2) 
            y(i) = atan(x(i))
        enddo
        print *,x,y
        do i=1,10
        write(48,*) x(i),y(i)
        enddo
        close(48)
        call system('gnuplot -p plot3.plt')
        end program
