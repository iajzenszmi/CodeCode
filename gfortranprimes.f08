PROGRAM  Primes
IMPLICIT NONE
   
   ! declare integers
   INTEGER  :: Range, OptimusPrime, Divisor   
   
   ! declare strings
   CHARACTER(LEN = 15) :: strLine1
   
   ! set string 
   strLine1 = 'Prime numbers: '

   ! display string
   PRINT *, strLine1
   PRINT *, " "
      
   ! set range value
   Range = 100
   
   ! evaluate for prime number
   DO OptimusPrime = 3, Range, 2
      Divisor = 3                    
      DO
         ! not prime
         IF (Divisor*Divisor > OptimusPrime .OR. MOD(OptimusPrime,Divisor) == 0)  EXIT
         Divisor = Divisor + 2          
      END DO   

      IF (Divisor*Divisor > OptimusPrime) THEN         
         ! display prime
         PRINT *, OptimusPrime
      END IF
   END DO

READ(*,*)

! end program
END PROGRAM  Primes
