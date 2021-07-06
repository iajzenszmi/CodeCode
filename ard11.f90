program matrixmul

 !demonstrates use of matmul array function and dynamic 

 !allocation of array

 real,  allocatable, dimension(:,:) :: ra1,ra2,ra3

 integer :: size1

 !initialize the arrays

 print*, 'Shows array  manipulation using SQUARE arrays.'

 print*, 'Allocate the  space for the array at run time.'

 print*, 'Enter the  size of your array'

read *, size1

 allocate(ra1(size1,size1),ra2(size1,size1),ra3(size1,size1))

 print*, 'enter matrix  elements for ra1 row by row'

 call  fill_array(size1,ra1)

 print*, 'enter matrix  elements for ra2 row by row'

 call  fill_array(size1,ra2)

 !echo the arrays

 print *,'ra1'

 call  outputra(size1,ra1)

 print *,'ra2'

 call  outputra(size1,ra2)

 !demonstrate the use of matmul and transpose intrinsic !functions

 ra3=matmul(ra1,ra2)

 print *,'matmul of  ra1 and ra2'   

 call  outputra(size1,ra3)

 ra3=transpose(ra1)

 print *,'transpose of  ra1'

 call  outputra(size1,ra3)

 deallocate(ra1,ra2,ra3)

 end program matrixmul

 !---------------------------------------------------------

 subroutine  outputra(size1,ra)

 implicit none

 !will output a real square array nicely

 integer  :: size1,row,col

 real,dimension(size1,size1)             :: ra

 character  :: reply*1

 do row =1,size1

    write(*,10) (ra(row,col),col=1,size1)  

    10    format(100f10.2)

    !as we don't know how many numbers are to be output,

    !specify  !more than we need - the rest are ignored

 end do

 print*,'__________________________________________________'

 print*,'Hit a key and  press enter to continue'

 read *,reply

 end subroutine  outputra

 !---------------------------------------------------------

 subroutine  fill_array(size1,ra)

 implicit none                        

 !fills the array by prompting from keyboard

 integer        :: row,col,size1

 real :: num

 real, dimension(size1,size1) :: ra

 do row=1,size1

    do col=1,size1

      print *, row,col

      read *,num

      ra(row,col)=num

    end do

 end do

 end subroutine  fill_array   