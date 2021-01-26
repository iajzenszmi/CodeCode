      PROGRAM DOORS
 
       INTEGER, PARAMETER :: n = 100    ! Number of doors
       INTEGER :: i, v
       real :: k
        LOGICAL :: door(n) = .TRUE.      ! Initially closed
        k = sqrt(real(n))
        v=int(k)
       DO i = 1,v
        door(i*i) = .FALSE.
      END DO  
 
      DO i = 1, n
          WRITE(*,"(A,I3,A)", ADVANCE="NO") "Door ", i, " is "
      IF (door(i)) THEN
      WRITE(*,"(A)") "closed"
      ELSE
      WRITE(*,"(A)") "open"
      END IF
      END DO
 
      END PROGRAM DOORS
