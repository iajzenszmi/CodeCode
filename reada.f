       character(len=80) inrec
       character(len=4) year, yearx
       character(len=2) month,day
       integer io 
       integer reccount 
       logical eof
!       integer n /0/
       integer k
       eof = .false.
       reccount = 0
       io = 0
       open(5,file="IDCJAC0009_086304_1800_Data.csv")
       read(5,9000,iostat=io) inrec
       if(io.lt. 0) eof = .true.
!       print *,reccount
       reccount = reccount + 1
!       print *,reccount
       write(6,9003) inrec,reccount
!      reccount = reccount + 1
       read(5,9000,iostat=io) inrec
       if (io .lt.0) eof = .true.
!       print *, reccount
       reccount = reccount + 1
!       print *, reccount
 9000  format(a80)
 9002  format(a4)      
 9003  format(" ",a80," ",i10)  
 9004  format(a2)
!       read(year,9002) inrec(19:22)
!       read(month,9004) inrec(24:25)
!       read(day,9004) inrec(27:28)
!       write(6,9002) inrec(19:22)
        yearx = inrec(19:22)
!        write(6,9003) inrec
!       print *,eof, inrec(19:22), yearx
        do while (.not. eof .and. (inrec(19:22 ).eq.yearx))
!        print *, reccount
!       print *,eof,inrec(19:22), yearx
!        write(6,9002) inrec(19:22)
        write(6,9003)  inrec, reccount
!        print *, reccount
!        read(year,9002) inrec(19:22)
!        read(month,9004) inrec(24:25)
!        read(day,9004) inrec(27:28)
!       print *, reccount, year, month,day
        yearx = inrec(19:22)
        read(5,9000,iostat=io) inrec
        if(io .lt. 0)eof = .true.
!        yearx = inrec(19:22)
!         print *,reccount
        reccount = reccount + 1
!         print *,reccount
!        if(io .lt.0)eof =.true.
         end do
       end
