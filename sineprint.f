             real ir, x
             integer i
             do 10 i = 1,180,1
             ir = real(i)
             ir = ir - 90.0
             x= sin(ir)
             print *,ir, x
 10          continue     
             end program        
