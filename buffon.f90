       real    t1
       real    t2
       integer k,i,x,ix
       real  d
       real t
       real d1
       integer,parameter :: seed = 86456

 
       t1 = 0
       k = 1                                   
       t2 = 0
       i = 1
       do 80 while(i  .le. 90)
       do 90 while(k  .le. 1000)
                           
            call srand(seed)
            print *, rand(), rand(), rand(), rand()
            print *, rand(seed), rand(), rand(), rand()
                 call srand(0)
                d = 2 * rand(3)
                call srand(0)
                t = 3.14159*rand(3)
                d1 = sin(t)
                t1 = t1 + 1.0000
                if (d .gt. d1) go to 90
                t2 = t2 + 1.0000
                print *,"t2 =",t2,"t1 = ",t1, "d1 = ",d1
                print *," t = ",t,"d = ",d,"k = ",k
                k = k + 1
90       end do
         pi   = t1 / t2
         print *,"approximation to pi is",pi
         i = i + 1      
80       end do
         end program                                                                        

