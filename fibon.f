       program fibon 
       integer x, y, z
       x = 1
       y = 1 
10     if (x .Lt. 200) then
       write(*,*)x 
       z = x + y
       y = x 
       x = z
       goto 10
       endif 
       stop 
       end program
