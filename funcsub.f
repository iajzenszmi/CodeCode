        implicit none
        funcn = 100
        real, dimension(funcn), intent(out) :: func
        real, dimension(funcn), intent(in) :: x, y, z
        integer, intent(in) :: funky
        int i
        do 10 i= 1, 5 
        funcn= size(func)    
        call funcsub(func, x(i), y(i), z(i), funcn)
        x(i+ 1)= x(i)+ 1
        y(i+ 1)= y(i)+ 1
        z(i+ 1) = z(i)+ 1
 10      continue      
 !       end do
        end program

        subroutine funcsub(func1, x1, y1, z1, funcn1)
        implicit none
        real, dimension(funcn1), intent(out) :: func1
        real, dimension(funcn1), intent(in) :: x1, y1, z1
        integer, intent(in) :: funky
        func1= x+ y+ z
        end subroutine funcsub
