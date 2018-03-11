       PROGRAM XSPLINE
C     PAGE 33 NUMERICAL RECIPIES EXAMPLE BOOK SECOND EDITION.
C     DRIVER FOR ROUTINE SPLINE
      INTEGER N
      REAL PI
      PARAMETER(N=20,PI=3.141593)
      INTEGER I
      REAL YPI, YPN, X(N),Y(N),Y2(N)
      WRITE(*,*) 'SECOND - DERIVATIVES FOR SIN(X) FROM 0 TO PI'
C     GENERATE  ARRAY FOR INTERPOLATION
C
      DO 11 I=1,20
         X(I)=I*PI/N
         Y(I)=SIN(X(I))
 11   CONTINUE
C
C     CALCULATE 2ND DERIVATIVE WITH SPLINE
C
      YP1=COS(X(1))
      YPN=COS(X(N))
      CALL SPLINE(X,Y,N,YP1,YPN,Y2)
C     TEST RESULT
      WRITE(*,'(T19,A,T35,A)') 'SPLINE','ACTUAL'
      WRITE(*,'(T6,A,T17,A,T33,A)') 'ANGLE','2ND DERIV','2ND DERIV'
       DO 12 I = 1, N
        WRITE(*,'(1X,F8.2,2F16.6)') X(I),Y2(I),-SIN(X(I))
 12   CONTINUE
      END PROGRAM 
      SUBROUTINE SPLINE(X,Y,N,YP1,YPN,Y2)
      PARAMETER (NMAX=100)
      DIMENSION X(N),Y(N),Y2(N),U(NMAX)
      IF (YP1.GT..99E30) THEN
        Y2(1)=0.0
         U(1)=0.0
      ELSE
        Y2(1)=-0.5
        U(1)=(3./(X(2)-X(1)))*((Y(2)-Y(1))/(X(2)-X(1))-YP1)
      ENDIF
      DO 11 I=2,N-1
          SIG=(X(I)-X(I-1))/(X(I+1)-X(I-1))
          P=SIG*Y2(I-1)+2.
          Y2(I)=(SIG-1.)/P
           U(I) = (6.*((Y(I+1)-Y(I))/(X(I+1)-X(I))-(Y(I)-Y(I-1))
     *    /(X(I)-X(I-1)))/(X(I+1)-X(I-1))-SIG*U(I-1))/P
  11      CONTINUE
      IF (YPN.GT..99E30) THEN
       QN=0.
       UN=0.
      ELSE
       QN=0.5
       UN=(3./(X(N)-X(N-1)))*(YPN-(Y(n)-Y(N-1))/(X(N)-X(N-1)))
      ENDIF
       Y2(N)=(UN-QN*U(N-1))/(QN*Y2(N-1)+1.)
       DO 12 K=N-1,1,-1
        Y2(K)=Y2(K)*Y2(K+1)+U(K)
  12   CONTINUE
      RETURN
      END SUBROUTINE 
