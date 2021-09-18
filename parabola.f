        integer x(10)
        integer y(10)
        integer i
        open(unit=48,file="para.txt")
        do i = 1, 10, 1
           x(i) = i
           y(i) = (x(i) ** 2) 
        enddo
        print *,x,y
        do i=1,10
        write(48,*)x(i),y(i)
        enddo
        close(48)
        call system('gnuplot -p plot2.plt')
        end program
