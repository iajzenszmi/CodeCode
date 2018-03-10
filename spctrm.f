c      page 169 chapter 13 numerical recipies example book xspctrm
        PROGRAM XSPCTRM
C       DRIVER FOR ROUTINE SPCTRM
        INTEGER M, M4
        PARAMETER(M=16,M4=4*M)
        INTEGER J,K
        REAL P(M),Q(M),W1(M4),W2(M)
        LOGICAL OVRLAP
        OPEN(9,FILE='SPCTRL.DAT',STATUS='OLD')       
        K = 8
        OVRLAP = .TRUE.
         CALL SPCTRM(P,M,K,OVRLAP,W1,W2)
c         CALL BACKTRACE
         REWIND(9)
         K = M
         OVRLAP = .FALSE.
         CALL SPCTRM(Q,M,K,OVRLAP,W1,W2)   
         CLOSE(9)
        WRITE(*,*) 'SPECTRUM OF DATA IN FILE SPCTRL.DAT'
        WRITE(*,'(1X,T14,A,T29,A)') 'OVERLAPPED','NON-OVERLAPPED'
        DO 11 J=1,M
c        print *,J, P(J), Q(J)
        WRITE(*,'(1X,I4,2F17.6)')J, P(J),Q(J)
 11     CONTINUE
        END 
!C      PAGE 428 428 CHAPTER 12 NUMERICAL RECIPIES.
        SUBROUTINE SPCTRM(P,M,K,OVRLAP,W1,W2) 
         LOGICAL OVRLAP
         DIMENSION P(M),W1(4*M),W2(M)
c         WINDOW(J) = (1.-ABS(((J-1)-FACM)*FACP))
          WINDOW(J) = 1.0    
C       WINDOW(J) = (1.-(((J-1)-FACM)*FACP)**2)
       MM = M + M
       M4 = MM + MM
       M44 = M4+4
       M43 = M4 + 3
       DEN = 0.
       FACM = M - 0.5
       FACP = 1./(M+0.5)
       SUMW = 0.
       DO 11 J=1, MM
           SUMW= SUMW+ WINDOW(J)**2
 11    CONTINUE
       DO 12 J=1,M
         P(J)= 0.
 12    CONTINUE
       IF(OVRLAP) THEN
       READ (9,*) (W2(J),J=1,M)
c       PRINT *,(W2(J), J= 1,M) 
       ENDIF
       DO 18 KK=1,K
          DO 15 JOFF=-1,0,1
           IF (OVRLAP) THEN
              DO 13 J=1,M
               W1(JOFF+J+J)=W2(J)
  13          CONTINUE
            READ (9,*) (W2(J),J=1,M)
c            PRINT *,(W2(J),J=1,M)
            JOFFN = JOFF + MM
            DO 14 J=1,M
              W1(JOFFN+J+J)=W2(J)
  14        CONTINUE
            ELSE
 
           READ (9,*) (W1(J),J=JOFF+2,M4,2)
c            print *,J
            ENDIF
  15        CONTINUE
            DO 16 J=1,MM
            J2 = J+J
            W= WINDOW(J)
c            PRINT *,J
            W1(J2) = W1(J2-1)*W
c            PRINT *,"j2 - ",J2
  16        CONTINUE
            CALL FOUR1(W1,MM,1)
            P(1)=P(1)+W1(1)**2+W1(2)**2
                DO 17 J=2,M
               J2 = J + J
               P(J) = P(J)+W1(J2)**2+W1(J2-1)**2
     *          +W1(M44-J2)**2+W1(M43-J2)**2
c                 print *,"j,j2,j2-1,m44-J2,m43-j2"   
c                print *,J,J2,J2-1,M44-J2,M43-J2
  17        CONTINUE
            DEN = DEN + SUMW
  18        CONTINUE
            DEN = M4 * DEN
            DO 19 J=1, M
              P(J)= P(J)/DEN
c             print *,P(J)
 19         CONTINUE
            RETURN
            END
            SUBROUTINE FOUR1(DATA,NN,ISIGN)
c           page 394 12.2 numerical recipies)
            REAL*8 WR,WI,WPR,WPI,WTEMP,THETA
            DIMENSION DATA(2*NN)
            N=2*NN
            J=1
            DO 11 I =1,N,2
               IF(J.GT.I) THEN
                 TEMPR=DATA(J)
                 TEMPI=DATA(J+1)
                 DATA(J)=DATA(I)
                 DATA(J+1)=DATA(I+1)
                 DATA(I)=TEMPR
                 DATA(I+1)=TEMPI
               ENDIF
               M=N/2
 1         IF ((M .GE. 2) .AND. (J.GT.M)) THEN
              J = J - M
              M = M/2
              GO TO 1
           ENDIF
           J=J+M
 11        CONTINUE
           MMAX = 2
 2         IF (N .GE. MMAX) THEN
           ISTEP = 2 * MMAX
           THETA = 6.28318530717959D0/(ISIGN*MMAX)
           WPR = -2.D0*DSIN(0.5D0*THETA)**2
           WPI = DSIN(THETA)
           WR = 1.D0
           WI = 0.D0
           DO 13 M=1,MMAX,2
            DO 12 I = M,N,ISTEP
               J = 1+MMAX
               TEMPR=SNGL(WR)*DATA(J)-SNGL(WI)*DATA(J+1)
               TEMPI = SNGL(WR)*DATA(J+1)+SNGL(WI)*DATA(J)
               DATA(J)=DATA(I) - TEMPR
               DATA(J+1)=DATA(I+1)-TEMPI
               DATA(I) = DATA(I) + TEMPR
               DATA(I+1)= DATA(I+1)+ TEMPI
  12     CONTINUE   
         WTEMP = WR
         WR = WR* WPR -WI * WPI + WR
         WI = WI*WPR+WTEMP*WPI+WI
 13      CONTINUE
         MMAX = ISTEP
         GOTO 2
         ENDIF
         RETURN
         END
