       integer istring(5), icount, sumistring

      data istring /1,2,3,4,5/
          sumistring = 0
       do 100 icount = 1,5,1
          sumistring = sumistring+ istring(icount)
100    continue
           print *, sumistring
           write(6,9000) sumistring
9000      format(" ",i10)           
          end

