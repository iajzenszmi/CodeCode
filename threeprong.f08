
      integer num1, num2, num3
      call readnum(num1,num2)
      call calcnum(num1,num2,num3)
      call writenum(num1,num2,num3)
      end program
      subroutine readnum(num1r,num2r)
      integer  num1r, num2r
      read(5,9000) num1r, num2r
 9000 format(i10,i10 )
      return
      end subroutine
      subroutine calcnum(num1c, num2c, num3c)
              integer num1c, num2c, num3c
              num3c = num1c + num2c
              return
              end subroutine
      subroutine writenum(num1w, num2w, num3w)
      integer numw, num2w, num3w
      write(6,9010) num1w, num2w, num3w
 9010 format(" ",i10, " ",i10," ",i10)
      return
      end subroutine      
       

