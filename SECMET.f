      PROGRAM SECMET
C     NUMERICAL METHODS: FORTRAN Programs, (c) John H. Mathews 1994
C     To accompany the text:
C     NUMERICAL METHODS for Mathematics, Science and Engineering, 2nd Ed, 1992
C     Prentice Hall, Englewood Cliffs, New Jersey, 07632, U.S.A.
C     This free software is complements of the author.
C
C     Algorithm 2.6 (Secant Method).
C     Section 2.4, Newton-Raphson and Secant Methods, Page 85
C
      PARAMETER(Delta=5E-6,Epsilon=5E-6,Max=100)
      INTEGER Cond,K
      REAL Dp,P0,P1,P2,Q0,Q1
      CHARACTER ANS*1
      EXTERNAL F
10    CONTINUE
      CALL INPUTS(P0,P1)
      Q0=P0
      Q1=P1
      CALL SECANT(F,Q0,Q1,Delta,Epsilon,Max,P2,Dp,Cond,K)
      CALL RESULT(P0,P1,P2,Dp,Cond,K)
      WRITE(6,*)' '
      WRITE(6,*) 'WANT TO TRY A ANOTHER STARTING VALUE? <Y/N> '
      READ(5,'(A)') ANS
      IF (ANS.EQ.'Y'.OR.ANS.EQ.'y') GOTO 10
      STOP
      END

      REAL FUNCTION F(X)
      REAL X
        F=X*X*X-3*X+2
      RETURN
      END

      SUBROUTINE PRINTFN
        WRITE(6,*)'F(X)  =  X*X*X-3*X+2'
      RETURN
      END

      SUBROUTINE SECANT(F,P0,P1,Delta,Epsilon,Max,P2,Dp,Cond,K)
      PARAMETER(Small=1E-10)
      INTEGER Cond,K
      REAL Delta,Epsilon,Df,Dp,P0,P1,P2,Y0,Y1,Y2,RelErr
      EXTERNAL F
      K=0
      Cond=0
      Y0=F(P0)
      Y1=F(P1)
      DO WHILE ((K.LT.Max).AND.(Cond.EQ.0))
        Df=(Y1-Y0)/(P1-P0)
        IF (Df.EQ.0) THEN
          Cond=1
          Dp=P1-P0
          P2=P1
        ELSE
          Dp=Y1/Df
          P2=P1-Dp
        ENDIF
        Y2=F(P2)
        RelErr=ABS(Dp)/(ABS(P2)+Small)
        IF (RelErr.LT.Delta) Cond=2
        IF (ABS(Y2).LT.Epsilon) Cond=3
        IF ((Cond.EQ.2).AND.(ABS(Y2).LT.Epsilon)) Cond=4
        P0=P1
        P1=P2
        Y0=Y1
        Y1=Y2
        K=K+1
        WRITE(6,1000) K,P1,Y1
      END DO
 !     PAUSE
      RETURN
1000  FORMAT(I2,4X,F15.7,4X,F15.7)
      END SUBROUTINE

      SUBROUTINE XSECANT(F,P0,P1,Delta,Epsilon,Max,P2,Dp,Cond,K)
C     This subroutine uses simulated WHILE loop(s).
      PARAMETER(Small=1E-10)
      INTEGER Cond,K
      REAL Delta,Epsilon,Df,Dp,P0,P1,P2,Y0,Y1,Y2,RelErr
      EXTERNAL F
      K=0
      Cond=0
      Y0=F(P0)
      Y1=F(P1)
10    IF ((K.LT.Max).AND.(Cond.EQ.0)) THEN
        Df=(Y1-Y0)/(P1-P0)
        IF (Df.EQ.0) THEN
          Cond=1
          Dp=P1-P0
          P2=P1
        ELSE
          Dp=Y1/Df
          P2=P1-Dp
        ENDIF
        Y2=F(P2)
        RelErr=ABS(Dp)/(ABS(P2)+Small)
        IF (RelErr.LT.Delta) Cond=2
        IF (ABS(Y2).LT.Epsilon) Cond=3
        IF ((RelErr.LE.Delta).AND.(ABS(Y2).LT.Epsilon)) Cond=4
        P0=P1
        P1=P2
        Y0=Y1
        Y1=Y2
        K=K+1
        WRITE(6,1000) K,P1,Y1
        GOTO 10
      ENDIF
!      PAUSE
      RETURN
1000  FORMAT(I2,4X,F15.7,4X,F15.7)
      END SUBROUTINE

      SUBROUTINE INPUTS(P0,P1)
      INTEGER I
      REAL P0,P1
      DO 10 I=1,18
      WRITE(6,*)' '
10    CONTINUE
      WRITE(6,*)"THE SECANT METHOD IS USED TO FIND A ZERO OF FUNCTION"     
      WRITE(6,*)' '
      CALL PRINTFN
      WRITE(6,*)' '
      WRITE(6,*)'TWO INITIAL APPROXIMATIONS P0, P1 ARE NEEDED.'
      WRITE(6,*)' '
      WRITE(6,*)'ENTER P0 = '
      READ(5,*) P0
      WRITE(6,*)'ENTER P1 = '
      READ(5,*) P1
      WRITE(6,*)' '
      RETURN
      END

      SUBROUTINE RESULT(P0,P1,P2,Dp,Cond,K)
      INTEGER Cond,I,K
      REAL Dp,P0,P1,P2,Y2
      DO 10 I=1,14
        WRITE(6,*)' '
10    CONTINUE
      Y2=F(P2)
      WRITE(6,*)'THE SECANT METHOD WAS USED TO FIND A ZERO OF THE FUNCTI
     +ON'
      WRITE(6,*)' '
      CALL PRINTFN
      WRITE(6,*)' '
      WRITE(6,*)'STARTING WITH THE TWO APPROXIMATIONS:'
      WRITE(6,*)' '
      WRITE(6,*)'P0  =',P0,'     AND     P1  =',P1
      WRITE(6,*)' '
      WRITE(6,*)'AFTER ',K,' ITERATIONS AN APPROXIMATE VALUE FOR THE ZER
     +O IS:'
      WRITE(6,*)' '
      WRITE(6,*)'  P  =',P2
      WRITE(6,*)' '
      WRITE(6,*)' DP  =',ABS(Dp),'  IS THE ESTIMATED ACCURACY FOR P.'
      WRITE(6,*)' '
      WRITE(6,*)'    F(',P2,'  )  = ',Y2
      WRITE(6,*)' '
      IF (Y2.EQ.0) THEN
        WRITE(6,*)'THE COMPUTED FUNCTION VALUE IS EXACTLY ZERO!'
        WRITE(6,*)' '
      ENDIF
      IF (Cond.EQ.0) THEN
        WRITE(6,*)'CONVERGENCE IS DOUBTFUL BECAUSE'
        WRITE(6,*)' '
        WRITE(6,*)'THE MAXIMUM NUMBER OF ITERATIONS WAS EXCEEDED.'
      ELSEIF (Cond.EQ.1) THEN
        WRITE(6,*)'CONVERGENCE IS DOUBTFUL BECAUSE '
        WRITE(6,*)' '
        WRITE(6,*)'DIVISION BY ZERO WAS ENCOUNTERED.'
      ELSEIF (Cond.EQ.2) THEN
        WRITE(6,*)'THE APPROXIMATION P IS'
        WRITE(6,*)' '
        WRITE(6,*)'WITHIN THE DESIRED TOLERANCE.'
      ELSEIF (Cond.EQ.3) THEN
        WRITE(6,*)'THE COMPUTED FUNCTION VALUE F(P)'
        WRITE(66,*)' '
        WRITE(6,*)'IS WITHIN THE DESIRED TOLERANCE.'
      ELSEIF (Cond.EQ.4) THEN
        WRITE(6,*)'THE APPROXIMATION P AND THE FUNCTION VALUE '
        WRITE(6,*)' '
        WRITE(6,*)'F(P) ARE BOTH WITHIN THE DESIRED TOLERANCES.'
      ENDIF
      RETURN
      END SUBROUTINE












