      program temp_conversition
      implicit none
      real ::fahrenheit,celsius
      integer intemp      
      do intemp = 1, 100
      celsius = real(intemp)
      fahrenheit=1.8*celsius+32.0
      print*," celsius ",celsius,"fahrenheit=", fahrenheit
      end do
      end program  
