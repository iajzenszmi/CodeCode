           character  inrec(80)
           integer i
           print *, "type in your name"
           read(5,9090) (inrec(i),i=1,80)
 9090      format(80a)
            print *, "your name is ", inrec
           end program
