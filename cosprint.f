             real ir, x,s
             integer i
             do 10 i = 1,180,1
             ir = real(i)
             ir = ir - 90.0
             s = sin(ir)
             x= cos(ir)
             print *,ir, x,s
 10          continue     
             end program        
