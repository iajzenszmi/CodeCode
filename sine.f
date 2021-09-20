        real x(360)
        real y(360)
        integer i
        open(unit=48,file="sin.txt")
        do i = 1, 12,1 
           x(i) = i
!           y(i)=(SIN(x(i)))*3.14159/180
           y(i) = sin(x(i))*20.*3.14159/180.         
!           y(i) = (sin() ) 
        enddo
        print *,x,y
        do i=1,12,1
        write(48,*)x(i),y(i)
!       write(48,*) y
        enddo
        close(48)
        call system('gnuplot -p sin.plt')
        end program
