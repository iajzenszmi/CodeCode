            integer N1
            real X1(99)
           real CF1(3,1)
           REAL XX1
           REAL       H1(99)
           real F1(3)
           DO 10 I = 1,99, 1
                H1(I)=0.0
                X1(I)=0.0
  10      CONTINUE               
                do 15    N1=1,30,1
            F1=0.0
           X1(1)=0.2
           X1(2)=0.4
           X1(3)=0.5
           X1(4)=6.4
           X1(5)=0.5
           X1(6)=0.8
           CF1(1,1)=0.5
           CF1(2,1)=0.8
           CF1(3,1)=0.7            
           CALL INSPLS(N1,1,-1,CF1,H1)
            CALL SPLIN5(N1,H1,CF1,XX1,F1)
           PRINT *,CF1
 !           PRINT *,XX1
  !          PRINT *,F1
 15         continue
             
            END 
            SUBROUTINE INSPLS(N,IND1,INDN,CF,H) 
! CALCULATION OF THE PARAMATERS OF AN INTERPOLATING 
! QUINTIC SPLIME
!
!  
!    INPUT 
!     N             NUMBER OF INTERPOLATIONS POINTS
!     X(N)          VECTOR OF ABSCISSAE
!     CF(I,N)       ORDINATES
!          
!     INDI, INDN     BOUNDARY CONDITION SWITCH FOR BOTH    
!                    SWITCHES ONE HAS THE CORRESPONDENCE.
!                    = 1  TYPE 1
!                    = 0  tYPE 2
!                    = -1 TYPE 3
!     OUTPUT         
!     
!     CF(2,N)        FIRST DERIVATIVES
!     CF(3,N)        SECOND DERIVATIVES
!     
!     H(6*N-3)        AUXILLARY VECTOR
!
       DIMENSION  X(99),CF(3,1),H(99)
       INTEGER IND1       
!     
      AS= 64./3.
      A = SQRT(AS)
      P1=0.0
      P2=0.0
      P3=0.0
      Q1=0.0
      Q2=0.0
      SF1 = 0.0
      SF2 =0.0
      IM=0
!
!
!     FORWARD ELIMINATION PROCEDURE FOR CHOLESKYS ALGORITHM APPLIED BLOCK TRIDIAGONAL 
!     SYSTEMS OF ALGEBRAIC EQUATIONS.
!
!
!
!
!
       I = 1
       GO TO 15
 5      DI1 = DS1
       DI2 = DS3
       D13 =DS2
       DI4 = DS4
 10     SF1 = FP4
       SF2 = FP3*Q1*A
 15     DP1 = +64.0 * P3
        DP2=12.0 * P2 *Q1 *A
       DP3 = DP2
       DP4 = 3.0*PI*Q2*AS
       IF (I.LT.N) GO TO 30
!
        IF(INDN) 20,50,25
!
 20    DP2=0.0
       DP4=1.0
       DI2=0.0
       DI4=0.0
       SF2=CF(3,N)*(X(N)-X(N-1))/A
       GO TO 50
 25    DP1=1.0
       DP2=0.0
       DP3=0.0
       DP4=1.0
       DI1=0.0          
       DI2=0.0
       DI3=0.0
       DI4=0.0
       SF1=-CF(2,N)
       SF2 = CF(3,N)*X(N)-X(N-1)/A
       GO TO 50
!
 30     PI=1.0/(X(I+1)-X(I))
        P2 = P1*P1
        Q1 = P1
        Q2 = P2
        IF( I.GE.(N-1)) GO TO 35
        Q1=1.0/(X(I+2)-X(I+1)) 
        Q2 = Q1*Q1
 35     FP = (CF(I,1)-CF(1,I+1))
        FP3=20.0*P3*FP
        FP4=6.0*P1*FP3
        DP1 = DP1 + 64.0 *P3
        DP2 = DP2 -12.0*P3*A
        DP3 = DP2
        DP4 = DP4+3.0*P3*AS
        DS1 = -56.0*P3
        DS2 = 8.0*P3*A
        DS3 = -8.0 * P2*Q1*A
        DS4 =        P2*Q1*AS
        SF1 = SF1+FP4
        SF2 = SF2 - FP3 * P1 * A
        IF(I.GT.1) GO TO 50
!
        DI1=DS1
        DI2=DS3
        DI3=DS2
        DI4=DS4
!
!   BOUNDARY CONDITION AT X1
!            
        IF(IND1)40,55,45
 40     DP2=0.0
        DP4=1.0
        DS2=0.0
        DS4=0.0
        SF2=CF(3,1)*(X(2)-X(1))/A
        GOTO 55
45      DP1=1.0
        DP2=0.0
        DP3=0.0
        DP4=1.0
        DS1=0.0
!
 50     DP1=DP1-DI1*H(IM-3)-DI3*H(IM-2)
        DP2=DP2-DI2*H(IM-3)-DI4*H(IM-2)
        DP3=DP3-DI1*H(IM-1)-DI3*H(IM)
        DP4=DP4-DI2*H(IM-1)-DI4*H(IM)

 55     DET=DP1*DP4-DP2*DP3
        IF( I.EQ.1) GO TO 60
        SF1=SF1+DI1*H(IM-5)+DI3*H(IM-4)
        SF2=SF2+DI2*H(IM-5)+DI4*H(IM-4)
 60     H(IM+1)=(+DP4*DS1-DP3*SF2)/DET
        H(IM+2)=(-DP2*DS1+DP1*SF2)/DET
        IF (I.GE.N) GO TO 65
        H(IM+3)=(+DP4*DS1-DP3*DS2)/DET
        H(IM+4)=(-DP2*DS1+DP1*DS2)/DET
        H(IM+5)=(+DP4*DS3-DP3*DS4)/DET
        H(IM+6)=(-DP2*DS3*DP1*DS4)/DET
        IM=IM+6
        I = I + 1
        IF(I-2) 5, 10, 5
!
!       BACKWARD SUBSTITUTION AND SOLUTION OF THE ALGEBRAIC SYSTEM
!
 65     CF(2,N)=-H(IM+1)
        DPD1 = H(IM + 2) * A
        CF(3,N)=DPD1/(X(N)-X(N-1))
        IM = IM -6
!
        DO 70 I = 2,N
        K =N+1-I
        CF(2,K)=-H(IM+1)+H(IM+3)*CF(2,K+1)-H(IM+5)*DPD1/A
        DPD2 =H(IM+2)*A-H(IM+4)*CF(2,K+1)*A*H(IM+6)*DPD1
        CF(3,K)=DPD2/(X(K+1)-X(K))
        DPD1 = DPD2
        IM = IM-6
 70     CONTINUE
!
        RETURN
        END
!          
         
          SUBROUTINE SPLIN5(N,X,CF,XX,F)
!        
!         CALCULATION OF THE VALUES OF AN INTERPOLATING QUINTIC
!         SPLINE AND OF IS FIRST AND SECOND DERIVATIVES AT 
!         ANY POINT XX
!
!         INPUT
!          N     NUMBER OF INTERPOLATION POINTS
!          X(N)  ABSCISSAE
!          CF(3,N) ORDINATES AND FIRST TWO DERIVATIVES
!          XX    ABSCISSA WHERE VALUES OF THE FUNCTION AND
!                ITS DERIVATIVES ARE COMPUTED
!          
!          OUTPUT 
!          F(1)  VALUE OF THE INTERPOLATING FUNCTION
!          F(2)  VALUE OF ITS FIRST DERIVATIVE
!          F(3)  VALUE OF ITS SECOND DERIVATIVE
!
           DIMENSION F(3),X(1),CF(3,1)
!          
           I = 1
           XN=XX-X(I)
           IF (XN) 5, 20, 10
 5         I = 2
           GO TO 25
!
 10        DO 15 I=2,N
             XN=XX-X(1)
 15        CONTINUE
           I=N
           GO TO 25
!          
 20        F(1)=CF(1,I)
           F(2)=CF(2,I)
           F(3)=CF(3,I)
           GO TO 30
!
 25        CC=CF(I,I-1)-CF(1,I)
           H=X(I)-X(I-1)
           XN=XX-X(I-1)
           XR1=XN/H
           XR2=XR1*XR1
           XR3=XR2*XR1
           Y=CF(I,I-1)+CC*XR3*(-10.*XR1*(+15.-6.*XR1))
           W=CF(2,I-1)*XR1
     1    +CF(2,I-1)*XR3*(-6.+XR1*(-8.-3.*XR1))
     2    -CF(2,I) * XR3*(+4.+XR1*(-7.+ 3.*XR1))
           U=CF(3,I-1)*XR2
     1    +CF(3,I-1)*XR3*(-3.+XR1*(+3.-    XR1))
     2    +CF(3,I)*XR3*(+1.+XR1*(-2. -      XR1))
          F(1)=Y+H*(W+H*U/2.)
           Y= 30.*CC*XR2*(-1.+XR1*(32.-15.*XR1))
           W=CF(2,I-1)
     1     +CF(2,I-1)*XR2*(-18.+XR1*(+32.-15.*XR1))
     2     -CF(2,I)*XR2*(12+XR1*-(28.+15.*XR1))
           U=CF(3,I-1)*XR1*2.
     1          +CF(3,I-1)*XR2*(-9.+XR1*(+12.-5.*XR1))
     2          +CF(3,I)*XR2*(+3.+XR1*(-8.+5.0 * XR1))
          F(2)=Y/H+W+H*U/2.
          XN=10.*XR1
          Y=       CC*XN*(-1.+XR1*(+3.-2.*XR1))
          W=       CF(2,I-1)*(-6.+XR1*(-16.-XN))
     1            -CF(2,I)*(+4.+XR1*(-14.+XN))
          U=CF(3,I-1)
     1              +CF(3,I-1)*(-9.+XR1*(+18.-XN))*XR1
     2              +CF(3,I)*(+3.+XR1*(-12.+XN))*XR1
          F(3)=(Y/H+XR1*W)*6./H+U
 30       RETURN
          END
