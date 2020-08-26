          integer a(5,2) /1,2,3,4,5,6,7,8,9,10/
          integer b(2,5)
          b = transpose(a)
           print *, "before transpose",((a(i,j),i=1,5),j=1,2)
           print *, "after transpose",((b(i,j),i=1,2),j=1,5)
           end
          
