            program xsplint
!            driver for routine splint, which calls spline
            INTEGER NP
            REAL PI
            PARAMETER(NP=10,PI=3.141593)
            INTEGER I, NFUNC
            REAL F,X,Y,YP1,YPN,XA(NP),YA(NP),Y2(NP)
            DO 14 NFUNC=1,2
               IF (NFUNC .EQ. 1) THEN
                     WRITE(*,*) 'SINE FUNCTION FROM 0 TO PI'
                     DO 11 I=1, NP
                     XA(I)=I*PI/NP
                     YA(I)=SIN(XA(I))
 11                  CONTINUE  
                     YP1=COS(XA(1))
                     YPN=COS(XA(NP))
                ELSE IF (NFUNC.EQ.2) THEN
                     WRITE(*,*) 'EXPONENTIAL FUNCTION FROM 0 TO 1'   
                     DO 12 I=1,NP
                      XA(I)=1.0*I/NP
                      YA(I) = EXP(XA(I))
 12                   CONTINUE                     
                 YP1=EXP(XA(1))
                 YPN=EXP(XA(NP))
         ELSE 
                 STOP
         ENDIF
!       CALL SPLINE TO GET SECOND DERIVATIVES         
        CALL SPLINE(XA,YA,NP,YP1,YPN,Y2)
!        CALL SPLINT FOR INTERPOLATIONS
        WRITE(*,'(1X,T10,A1,T20,A4,T28,A13)') 'X',&
      &        'F(X)','INTERPOLATION'
        DO 13 I=1, 10
          IF(NFUNC.EQ.1) THEN
           X=(-0.05+I/10.0)*PI
           F=SIN(X)
        ELSE IF (NFUNC .EQ.2) THEN
            X =(-0.05+I/10.0)
           F = EXP(X)
           ENDIF
           CALL SPLINT(XA,YA,Y2,NP,X,Y)
           WRITE(*,'(1X,3F12.6)') X, F, Y
  13       CONTINUE
           WRITE(*,*) '**********************************'
           WRITE(*,*) "PRESS RETURN"        
           READ(*,*)
  14       CONTINUE           
           END
           SUBROUTINE SPLINE(X,Y,N,YP1,YPN,Y2)
           PARAMETER (NMAX = 100)
           DIMENSION X(N),Y(N),Y2(N),U(NMAX)
           IF (YP1.GT..99E30) THEN
              Y2(1)=0
              U(1)=0
           ELSE
              Y2(1)=-0.5
        U(1) = (3./(X(2)-X(1)))*((Y(2)-Y(1))/(X(2)-X(1))-YP1)
            ENDIF
           DO 11 I=2,N-1
             SIG=(X(I)-X(I-1))/(X(I+1)-X(I-1))           
             P =SIG*Y2(I-1)+2
             Y2(I)=(SIG-1.)/P
       U(I)=(6.*((Y(I+1)-Y(I))/(X(I+1)-X(I))-(Y(I)-Y(I-1)) &
      & /(X(I)-X(I-1)))/(X(I+1)-X(I-1))-SIG*U(I-1))/P
 11        CONTINUE
           IF (YPN.GT..99E30) THEN
                   QN=0.
                   UN=0.0
           ELSE
                   QN=0.5
                   UN=(3./(X(N-1)))*(YPN-(Y(N)-Y(N-1))/(X(N)-X(N-1)))
           ENDIF
           Y2(N)=(UN-QN*U(N-1))/(QN*Y2(N-1)+1.)
           DO 12 K=N-1,1,-1
               Y2(K)=Y2(K)*Y2(K+1)+U(K)
 12        CONTINUE
           RETURN
           END           

           SUBROUTINE SPLINT(XA,YA,Y2A,N,X,Y)
           DIMENSION XA(N), YA(N), Y2A(N)
           KLO=1
           KHI=N
 1          IF(KHI-KLO.GT.1) THEN
               K= (KHI+KLO)/2
               IF(XA(K).GT.X) THEN
                  KHI=K
               ELSE
                   KLO=K
               ENDIF
            GOTO 1
            ENDIF
            H=(XA(KHI)-XA(KLO))
            IF (H .EQ.0) print *, 'BAD XA  INPUT. '
            A = (XA(KHI)-X)/H
            B = (X-XA(KLO))/H
            Y = A*YA(KLO)+B*(YA(KHI)+ &
        &     ((A**3-A)*Y2A(KLO)+(B**3-B)*Y2A(KHI))*(H**2)/6.)
            RETURN
            END           
