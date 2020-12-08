        implicit none
        real func(5) ,funcn(5) 
        real  x(5), y(5), z(5)
  !      integer, intent(in) :: funky
        integer i      
  !      funcn = 100
        do 10 i= 1, 5 
        funcn= size(func)    
        call funcsub(func, x, y, z,i)
        print *," funcn = ",funcn," func =",func," x = ", x," y = ",y
        print  *," z = ",z," i = ",i
        x(i+ 1)= x(i)+ 1
        y(i+ 1)= y(i)+ 1
        z(i+ 1) = z(i)+ 1
 10     continue      
  !       end do
        end program

        subroutine funcsub(func1, x1, y1, z1,i1)        
        implicit none
        real x1(5), y1(5), z1(5)
        integer i1
        real func1(5)
!        real, dimension(funcn1), intent(in) :: x1, y1, z1
        !integer, intent(in) :: funky
        func1= x1(i1)+ y1(i1)+ z1(i1)
        end subroutine funcsub
