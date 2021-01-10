PROGRAM QUINE
  IMPLICIT NONE
  INTEGER :: i
  CHARACTER(LEN=80), DIMENSION(10) :: Source
  Source(1) = "PROGRAM QUINE"
  Source(2) = "  IMPLICIT NONE"
  Source(3) = "  INTEGER :: i"
  Source(4) = "  DO i=1, 3"
  Source(5) = "  DO i=1, 5"
  Source(6) = "  END DO"
  DO i=1, 3
     WRITE(*,*) Source(i)
  END DO
  DO i=1, 6
     WRITE(*,*) "  Source(" // CHAR(48+i) // ") = """ // TRIM(Source(i)) // """"
  END DO
END PROGRAM QUINE