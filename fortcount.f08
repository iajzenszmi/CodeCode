!      fortran program by Ian Martin Ajzenszmidt Monday 22 Oct 2018
       integer   icount1, icount2, iresult
       do 20 icount1 =1, 12, 1
          do 10 icount2 = 1, 12, 1
            iresult = icount1 * icount2
            write(6,9000) icount1, icount2, iresult
 10       continue
 20      continue
 9000  format(" ",i10," x ", i10, " = ",i10)   
       end program       
