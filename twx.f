         program hello
         integer i
         integer j
         integer k
         do 20 i=1,12,1
         do 30 j=1,12,1
         Print *, "Hello World! Ian Martin Ajzenszmidt"
         k = i * j
         write(6,9000) i, j, k
9000     format(" ",i4," x ",i4, "=", i4)
30        continue
20      continue   
        end program Hello
