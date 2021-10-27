         character(len=80) inrec
         character(len=10) reccode
         character(len=6)  stanno   
         character(len = 4) inyear     
         character(len=2) inmonth
         character(len=2) inday
         character(len=3) inrain
         integer:: iostatus
         logical eof  
         iostatus = 0
         read(5,9000, IOSTAT=iostatus) inrec
         do while(iostatus .eq. 0) 
!         read (5,9000,IOSTAT=iostatus) inrec1
         call reccodeget(inrec, reccode)
         call stannoget(inrec, stanno)
         call yearget(inrec, inyear)
         call monthget(inrec, inmonth)
         call dayget(inrec, inday)
         call rainget(inrec,inrain)
         print *,inrec
         write(6,9001) inrec
 9000    format(a80)
 9001    format(" ",a80)        
         print *,reccode
         print *,stanno
         print *,inyear
         print *,inmonth
         print *,inday
         print *,inrain
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
          subroutine yearget(inrec3,inyear3)
          character(len=80) inrec3
          character(len=4) inyear3
          character(len=11) comma3
          read(inrec3,9030) inyear3
 9030     format(18x, a4)
          end subroutine
           subroutine monthget(inrec4,inmonth4)
          character(len=80) inrec4
          character(len=2) inmonth4
          character(len=11) comma4
          read(inrec4,9040) inmonth4
 9040     format(23x, a2)
           end subroutine
           subroutine dayget(inrec5,inday5)
          character(len=80) inrec5
          character(len=2) inday5
          character(len=11) comma5
          read(inrec5,9050) inday5
 9050     format(26x, a2)
           end subroutine
          subroutine rainget(inrec6,inrain6)
          character(len=80) inrec6
          character(len=3) inrain6
          character(len=11) comma6
          read(inrec6,9060) inrain6
 9060     format(30x,a3)         
          end subroutine 
