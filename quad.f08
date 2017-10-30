!solution of the quadratic equation
!a(1) x X x X + A(2) x X + A(3) = 
      REAL AC(3)
      AC(1) = 2.0
      AC(2) = 2.0
      AC(3) = 2.0
      XR1C = 2.0
      XR2C = 2.0
      X1C = 2.0
      CALL QUAD(AC,XR1C,XR2C,X1C)
      print *, AC,XR1C,XR2C,X1C
      END PROGRAM
      SUBROUTINE QUAD(A, XR1, XR2, X1)
      REAL       A(3)
      X1 = -A(2)/(2.*A(1))
      IF (DISC) 10, 20, 20
10    X2 = SQRT(-DISC)
      XR1 = X1
      XR2 = X1
      XI = X2
      GO TO 30
20    X2 = SQRT (DISC)
      XR1 = X1 + X2
      XR2 = X1 - X2
      XI = 0.0
30    RETURN
      END SUBROUTINE
      
