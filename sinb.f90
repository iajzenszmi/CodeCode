       real c 
       integer a
       integer b
       real r
       real k
       integer k1
       character x(100)
       do while (b .lt. 100)
       x(b) = " "
       b = b + 1
       end do
       c = 3.14159/180.0
       a = 0
       do while(a .le. 360)
           r = c * real(a)
           k =(40.0 + 25* sin(r))
           k1 = int(k)
           a = a + 15
           print *, a, "deg",(x(b),b=1,k1),"*"
       end do
       end program
