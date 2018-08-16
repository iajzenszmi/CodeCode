             REAL CF1(99,99),H1(99)
             CF1(1,1)=1.0
             CF1(1,2)=2.0
             CF1(2,1)=3.0
             CF1(2,2)=4.0
             H1(1)=1.0
             H1(2)=2.0
            CALL INSPLS(6,99,1000,CF1,H1)
            PRINT *,CF1,H1
            END 
            SUBROUTINE INSPLS(N,IND1,INDN,CF,H) 
! CALCULATION OF THE PARAMEWTEWRS OF AN INTERPOLATING 
! QUINTIC SPLIME
!
!  
!    INPUT 
!     N             NUMBER OF INTERPOLATIONS
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
       DIMENSION  X(99),CF(99,99),H(99)
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
       DI4 = DS4
 10     SF1 = FP4
       SF2 = FP3*Q1*A
 15     DP1 = +64.0 *P3
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
