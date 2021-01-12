      PROGRAM NEWTON
C     NUMERICAL METHODS: FORTRAN Programs, (c) John H. Mathews 1994
C     To accompany the text:
C     NUMERICAL METHODS for Mathematics, Science and Engineering, 2nd Ed, 1992
C     Prentice Hall, Englewood Cliffs, New Jersey, 07632, U.S.A.
C     This free software is complements of the author.
C
C     Algorithm 2.5 (Newton-Raphson Iteration).
C     Section 2.4, Newton-Raphson and Secant Methods, Page 84
C
      PARAMETER(Delta=5E-6,Epsilon=5E-6,Max=100)
      INTEGER Cond,K
      REAL Dp,P,P0,P1,Y1,RelErr
      CHARACTER ANS*1
      EXTERNAL F,F1
10    CALL INPUT(P0)
      P=P0
      CALL NEWRAP(F,F1,P,Delta,Epsilon,Max,P1,Dp,Y1,Cond,K)
      CALL RESULT(P0,P1,Dp,Y1,Cond,K)
      WRITE(6,*)' '
      WRITE(6,*) 'WANT TO USE A DIFFERENT STARTING VALUE? <Y/N> '
      READ(5,'(A)') ANS
      IF (ANS.EQ.'Y'.OR.ANS.EQ.'y') GOTO 10
      STOP
      END

      REAL FUNCTION F(X)
        F=X*X*X-3*X+2
      RETURN
      END

      REAL FUNCTION F1(X)
        F1=3*X*X-3
      RETURN
      END

      SUBROUTINE PRINTFN
        WRITE(6,*)'F(X)  =  X*X*X-3*X+2'
      RETURN
      END

      SUBROUTINE NEWRAP(F,F1,P0,Delta,Epsilon,Max,P1,Dp,Y1,Cond,K)
      PARAMETER(Small=1E-20)
      INTEGER Cond,K,Max
      REAL Delta,Epsilon,Df,Dp,P0,P1,Y0,Y1,RelErr
      EXTERNAL F,F1
      K=0
      Cond=0
      Y0=F(P0)
      P1=P0+1
      DO WHILE ((K.LE.Max).AND.(Cond.EQ.0))
        Df=F1(P0)
        IF (Df.EQ.0) THEN
          Cond=1
          Dp=P1-P0
          P1=P0
        ELSE
          Dp=Y0/Df
          P1=P0-Dp
        ENDIF
        Y1=F(P1)
        RelErr=ABS(Dp)/(ABS(P1)+Small)
        IF (RelErr.LT.Delta) Cond=2
        IF (ABS(Y1).LT.Epsilon) Cond=3
        IF ((Cond.EQ.2).AND.(ABS(Y1).LT.Epsilon)) Cond=4
        P0=P1
        Y0=Y1
        K=K+1
        WRITE(9,1000) K,P1,Y1
!      REPEAT
      END DO
!      PAUSE
      RETURN
1000  FORMAT(I2,4X,F15.7,4X,F15.7)
      END

      SUBROUTINE XNEWRAP(F,F1,P0,Delta,Epsilon,Max,P1,Dp,Y1,Cond,K)
C     This subroutine uses simulated WHILE loop(s).
      PARAMETER(Small=1E-20)
      INTEGER Cond,K,Max
      REAL Delta,Epsilon,Df,Dp,P0,P1,Y0,Y1,RelErr
      EXTERNAL F,F1
      K=0
      Cond=0
      Y0=F(P0)
      P1=P0+1
10    IF ((K.LE.Max).AND.(Cond.EQ.0)) THEN
        Df=F1(P0)
        IF (Df.EQ.0) THEN
          Cond=1
          Dp=P1-P0
          P1=P0
        ELSE
          Dp=Y0/Df
          P1=P0-Dp
        ENDIF
        Y1=F(P1)
        RelErr=ABS(Dp)/(ABS(P1)+Small)
        IF (RelErr.LT.Delta) Cond=2
        IF (ABS(Y1).LT.Epsilon) Cond=3
        IF ((RelErr.LE.Delta).AND.(ABS(Y1).LT.Epsilon)) Cond=4
        P0=P1
        Y0=Y1
        K=K+1
        WRITE(6,1000) K,P1,Y1
        GOTO 10
      ENDIF
!      PAUSE
      RETURN
1000  FORMAT(I2,4X,F15.7,4X,F15.7)
      END

      SUBROUTINE INPUT(P0)
      INTEGER I
      REAL P0
      DO 10 I=1,18
        WRITE(6,*)' '
10    CONTINUE
      WRITE(6,*)'THE NEWTON-RAPHSON METHOD IS USED'
      WRITE(6,*)' '
      WRITE(6,*)'TO FIND A ZERO OF THE FUNCTION: '
      WRITE(6,*)' '
      CALL PRINTFN
      WRITE(6,*)' '
      WRITE(6,*)'ONE INITIAL APPROXIMATION P0 IS NEEDED.'
      WRITE(6,*)' '
      WRITE(6,*)'ENTER P0 = '
      READ(5,*) P0
      WRITE(6,*)' '
      RETURN
      END

      SUBROUTINE RESULT(P0,P1,Dp,Y1,Cond,K)
      INTEGER Cond,I,K
      REAL P0,P1,Dp,Y1
      DO 10 I=1,18
        WRITE(9,*)' '
10    CONTINUE
      WRITE(6,*)'THE NEWTON-RAPHSON METHOD WAS USED TO FIND A ZERO OF'
      WRITE(6,*)' '
      CALL PRINTFN
      WRITE(6,*)' '
      WRITE(6,*)'STARTING WITH THE APPROXIMATION  P0 =',P0
      WRITE(6,*)' '
      WRITE(6,*)'AFTER ',K,' ITERATIONS AN APPROXIMATION FOR THE ZERO IS
     +:'
      WRITE(6,*)' '
      WRITE(6,*)'     P  =',P1
      WRITE(6,*)' '
      WRITE(6,*)'    DP  =',ABS(Dp),'  IS THE ESTIMATED ACCURACY FOR P.'
      WRITE(6,*)' '
      WRITE(6,*)'       F(',P1,'  )  =',Y1
      WRITE(6,*)' '
      IF (Y1.EQ.0) THEN
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
        WRITE(6,*)' '
        WRITE(6,*)'IS WITHIN THE DESIRED TOLERANCE.'
      ELSEIF (Cond.EQ.4) THEN
        WRITE(6,*)'THE APPROXIMATION P AND THE FUNCTION VALUE '
        WRITE(6,*)' '
        WRITE(6,*)'F(P) ARE BOTH WITHIN THE DESIRED TOLERANCES.'
      ENDIF
      WRITE(6,*)' '
      RETURN
      END
