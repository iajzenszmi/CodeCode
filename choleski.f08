        program choleski

        implicit none

        integer, parameter :: pr = selected_real_kind(15,3)

        integer :: i,j,k

        real(pr) :: a,b,c,d

        real(pr), dimension(4,4) :: MA,ML,MLT,R

        real(pr), dimension(4) :: MX,MY,MB

data MA / 1.0, 1.0, 1.0, 1.0, &
        & 1.0, 5.0, 5.0, 5.0, &
        & 1.0, 5.0, 14.0, 14.0, &
        & 1.0, 5.0, 14.0, 15.0  /        

data MB / 9.0, 25.0, 43.0, 44.0/

!----------------------------------------------------------------------------------------!
! Print A MAtrix

      write(6,*) '---------- Matrix A ----------'

      do i = 1, 4
        write(6,*) MA(i,1),MA(i,2),MA(i,3),MA(i,4)
       end do

!----------------------------------------------------------------------------------------!
! Choleski factorisation 

       ML = 0.0

       ML(1,1) = sqrt( MA(1,1) )
       do i =  2 , 4
        ML(i,1) = MA(1,i) / ML(1,1)
       enddo

       do j = 2 , 4
	do i = 1 , 4
		if( i .lt. j ) then
			ML(i,j) = 0.0
		else
			if( i .eq. j) then
				a = 0.0
				do k = 1 , i -1
					a = a + ML(i,k)**2
				enddo
				ML(i,j) = sqrt( MA(i,i) - a )
			else
				a = 0.0
				do k = 1 , i - 1
					a = a + ML(j,k) * ML(i,k)
				enddo
				ML(i,j) = ( MA(j,i) - a ) / ML(j,j)
			endif
		endif
	enddo
enddo

!----------------------------------------------------------------------------------------!
! Sanity Check 

MLT = transpose(ML)

R = matmul(ML,MLT)

write(6,*) '---------- Matrix R = L * Transpose(L) ----------'

do i = 1, 4
	write(6,*) R(i,1),R(i,2),R(i,3),R(i,4)
end do

!----------------------------------------------------------------------------------------!
! Solve linear system 1

MY(1) = MB(1) / ML(1,1)
do i = 2 , 4
	a = 0.0
	do k = 1 , i-1
   a = a + ML(i,k) * MY(k)
	enddo
	MY(i) = ( MB(i) - a ) / ML(i,i)
enddo

!----------------------------------------------------------------------------------------!
! Solve linear system 2

MX(4) = MY(4) / ML(4,4)
do i = 4-1, 1, -1
	a = 0.0
	do k = 4, i+1, -1
		a = a + ML(k,i) * MX(k)
	enddo
	MX(i) = ( MY(i) - a ) / ML(i,i)
enddo

write(6,*) '---------- Solution A*X = B ----------'

write(6,*) MX(1),MX(2),MX(3),MX(4)

!----------------------------------------------------------------------------------------!

end program choleski
