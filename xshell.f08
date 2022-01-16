program xshell
! driver for shell routine
integer i, j
real a(100) 
integer,parameter :: seed = 86456
call srand(seed)
open(8,file="tarray.dat",status="old")
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(),  rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(),  rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
write(8,9010) rand(), rand(), rand(), rand(),rand()
9010 format(5f10.8)
close(8)
open(7,file="tarray.dat",status="old")
read(7,9010) (a(i),i=1,100)
close(7)
! print original array
write(*,*) "original array"
    do  i = 1, 10
     write(*,"(1x,10f7.2)") (a(10*(i-1)+j),j=1,10)
     end do
! sort array
call shell(100,a)
! print sorted array
write(*,*) "sorted array:"
   do i=1,10
   write(*,"(1x,10f7.2)") (a(10*(i-1)+j),j=1,10) 
   end do
   END
   
   SUBROUTINE shell(n,a)
INTEGER n
REAL a(n)
!Sorts an array a(1:n) into ascending numerical order by Shell’s method (diminishing in-
!crement sort). n is input; a is replaced on output by its sorted rearrangement.
INTEGER i,j,inc
REAL v
inc=1
!Determine the starting increment.
1 inc=3*inc+1
if(inc.le.n)goto 1
2 continue
!Loop over the partial sorts.
inc=inc/3
do 11 i=inc+1,n
! Outer loop of straight insertion.
v=a(i)
j=i
3 if(a(j-inc).gt.v)then
! Inner loop of straight insertion.
a(j)=a(j-inc)
j=j-inc
if(j.le.inc)goto 4
goto 3
endif
4 a(j)=v
11 enddo
if(inc.gt.1)goto 2
return
END

