       character(len=80) inrec
       integer io 
       logical eof
       eof = .false.
       io = 0
!       do while(.not.eof)
       open(5,file="IDCJAC0009_086304_1800_Data.csv")
       read(5,9000,iostat=io) inrec
 9000  format(80a)
 9002  format(" ",80a)      
       if(io  .lt. 0) eof =.true.
       write(6,9002) inrec
       do while (.not. eof)
      ! call zerof(inrec)
       read(5,9000,iostat=io) inrec
       if(io .lt.0)eof =.true.
       write(6,9002) inrec
       end do
       end program
