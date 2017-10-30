       REAL F, X,HI, LO, ERROR
C      CHOOSE SOME INITIAL HI AND LO VALUES.
C      SUCH AS HI = 2.0 AND LO = 0.0
C      ALSO CHOOSE ERROR TO BE , SAY .002
C
       HI = 2.0
       LO = 0.0
       ERROR =.002
       DO 20 J = 1, 1000
       IF ((HI - LO) .LE. ERROR) GO TO 30
       X = (LO + HI)/ 2.0
       F = ( X ** J) + ( 3.0 * X) - 5.0
       IF (F .GT. 0.0) GO TO 15
       LO = X
       GO TO 20
15     HI = X
20     CONTINUE
30     WRITE(6, *) X
       END PROGRAM

