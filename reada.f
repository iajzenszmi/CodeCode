       character(len=80) inrec
       character(len=4) year, yearx
       integer io 
       integer reccount 
       logical eof
!       integer n /0/
       integer k
       eof = .false.
       reccount = 0
       io = 0
!       do while(.not.eof)
       open(5,file="IDCJAC0009_086304_1800_Data.csv")
       read(5,9000,iostat=io) inrec
       reccount = reccount + 1
       print *,reccount
       write(6,9003) inrec
!      reccount = reccount + 1
       read(5,9000,iostat=io) inrec
       reccount = reccount + 1
       print *,  reccount
 9000  format(a80)
 9002  format(a4)      
 9003  format(" ",a80)    
       if(io  .lt. 0) eof =.true.
       yearx = year
       write(year,9002) inrec(19:22)
       write(6,9002) inrec(19:22)
!       write(6,9003) inrec
       print *,reccount
        yearx = year

        do while (.not. eof .and. (inrec(19:22 ).eq.yearx))
        write(6,9002) inrec(19:22)
        write(6,9003)  inrec
        print *, reccount
        yearx = inrec(19:22)


        read(5,9000,iostat=io) inrec
        reccount = reccount + 1
        print *,reccount
        if(io .lt.0)eof =.true.
      
       end do
!       print *, reccount
        end program
