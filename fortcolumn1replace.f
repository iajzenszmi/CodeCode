       character icard(80)
       INTEGER  IOstatus
       IOstatus = 1
       OPEN(UNIT=8, FILE='Downloads/colsystestb.f08')
       OPEN(UNIT=7, FILE='colesystestoutb.f08')
       read(8,9000,IOSTAT=IOstatus) (icard(i),i=1,80,1)
        do 10 while (IOstatus .ge. 0)
!     read(8,9000,IOSTAT=IOstatus) (icard(i),i=1,80,1)
        print *, IOstatus
!       icard = "C12345678901234567890123456789012345678901234567890" 
9000     format(80a1)
!     do 10 i = 1,80,1
        if (icard(1) .eq. "C") icard(1) = "!"
        if (icard(1) .eq. "c") icard(1) = "!"
9002    format(80a1)        
        write(7,9002) (icard(i),i=1,80,1)
        read(8,9000,IOSTAT=IOstatus) (icard(i),i=1,80,1)
 10     end do 
        END PROGRAM
        
 

