        program dataread
        implicit none
        character*15 ::head_1,head_2,head_3,head_4,head_5,head_6
        character*15:: B,C, head_7,head_8,head_9,head_10
        character*15 in1,in2,in3,in4,in5,in6,in7,in8
        character A(1:71385,1:10)
        character*10 prodno
        character*12 quality
        integer::i,j
        integer iostatus
        real rainfall,rainmean
        integer stationno,year,month,day,raindays
        integer monthmem
        real rainsum
        integer raindaysum
       open(unit=18, file='IDCJAC0009_070165_1800_Data.csv',&
     & status='old',access ='sequential')

        read(18,*,iostat=iostatus) head_1,head_2,head_3,head_4,head_5,head_6,&
     &          head_7,head_8


!       do i=2,71385
!       read(18,3000)(A(i,j),j=1,10)
!3000    format(10A10)
!       end do

        print*, head_1,head_2,head_3,head_4,head_5,head_6,&
     &          head_7,head_8
       rainsum = 0.0      
       raindaysum = 0.0 
       monthmem = 0 
       rainmean = 0
       do while (iostatus .eq. 0)     
       monthmem = month
       read(18,*,iostat=iostatus) prodno,stationno,year,month,day,rainfall,raindays,&
      &quality
       if (monthmem .eq. month) then
               rainsum = rainsum +  rainfall
               raindaysum = raindaysum + raindays
               rainmean = rainsum /day
!              print *,rainfall, rainsum, rainmean, day
               elseif  (monthmem .ne. month) then
         
         rainsum = rainsum +  rainfall
         rainmean = rainsum / day
         print *,rainfall, rainsum, rainmean, day
         print *,prodno,stationno,year,month,day,rainfall,raindays,&
     &   quality    
         rainsum = 0.0
         rainmean = 0.0
         monthmem = month
         
       endif      

       !3000    format(8A10)
!       print *,prodno,stationno,year,month,day,rainfall,rainday,&
!     &quality
        if ( mod(year,4) .eq. 0) then
                print *,"leap year"
        endif


       end do
       
        print*, head_1,head_2,head_3,head_4,head_5,head_6,&
     &          head_7,head_8

               

        end program
