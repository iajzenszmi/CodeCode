         character(len=80) inrec
         character(len=10) reccode
         character(len=6)  stanno        
         integer:: iostatus
         logical eof  
         iostatus = 0
         read(5,9000, IOSTAT=iostatus) inrec
         do while(iostatus .eq. 0) 
!         read (5,9000,IOSTAT=iostatus) inrec1
         call reccodeget(inrec, reccode)
         call stannoget(inrec, stanno)
         print *,inrec
         write(6,9001) inrec
 9000    format(a80)
 9001    format(" ",a80)        
         print *,reccode
         print *,stanno
         read(5,9000,IOSTAT=iostatus) inrec
          end do
          end program
          subroutine reccodeget(inrec1,reccode1)
                  character(len=80) inrec1
                  character(len=10) reccode1
                  read(inrec1,9010) reccode1
 9010     format(a10) 
          end subroutine 
          subroutine stannoget(inrec2, stanno2)
          character(len=80) inrec2
          character(len=6) stanno2
          character(len=11) comma2  
          read(inrec2,9020) stanno2
 9020     format(11x, a6)           
          end subroutine
