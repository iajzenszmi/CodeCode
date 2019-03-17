      real sins,count1r, cosins
      integer count1
      do 10 count1 = 1,360,1
        count1r = real(count1)
        sins = sin(count1r)
        cosins = sin(count1r)
        write(6,9010)count1, sins, cosins
 9010   format(" "," count ", i10,  " sine ",f10.7," cosine ", f10.7)
   10 end do      
      end program
