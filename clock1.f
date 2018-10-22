!      program by Ian Martin Ajzenszmidt in fortran programming
!      language. 
       integer seconds, minutes, hours
      do 40 hours = 1, 60, 1
         write(6, 9200) hours
 9200    format(" ","hours =",i10)

       do 30 minutes= 1,60, 1
           write(6,9100) minutes
 9100 format(" ","minutes",i10)
              do 20  seconds=1,60, 1
                write(6,9000) seconds
 9000 format(" "," seconds = ", I10 )
 20    continue             
 30    continue
 40    continue
       end program 


