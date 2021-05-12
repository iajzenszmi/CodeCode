        PROGRAM SAMPLE

        PARAMETER (ISL = 25, JSL = ISL*ISL+2*ISL)
        REAL A(ISL,ISL),AA(ISL,ISL),B(ISL),BB(ISL)
        REAL F(ISL),RST(4,JSL),CST(JSL)
        INTEGER IST(JSL),N,IEAL
        COMPLEX EIG(ISL)
        REAL L(2,ISL),RMU
        LOGICAL FORM


C*********************************************************************
C
C       Example 1: system in controllability form.
C
C       This program segment computes a system in controllability
C       form and computes the vector f such that the matrix (A - b*f) 
C       has the eigenvalues (1,2,3,4,5).
C       
C*********************************************************************

C
C.......construct matrix A, vector b, and eigenvalue matrix L
C
        N = 5
        DO 100 I=1,N    
        L(1,I) = REAL(I)
        L(2,I) = 0.0
        B(I) = 0.0
        BB(I) = 0.0
            DO 100 J=I-1,N
                IF(J .GT. 0) THEN
                        A(I,J) = REAL(I)/REAL(J)
                        AA(I,J) = A(I,J)
                ENDIF
100     CONTINUE

        B(1) = 1.0
        BB(1) = 1.0

        WRITE(*,*)
        WRITE(*,*) '*********'
        WRITE(*,*) 'EXAMPLE 1' 
        WRITE(*,*) '*********'
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX A:'
        WRITE(*,*)
        DO 110 I=1,N
                WRITE(*,5000) (A(I,J),J=1,N)
110     CONTINUE


C
C.......call SSEVAS routine
C
        FORM = .TRUE.
        RMU = 0.0

        CALL SSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 120 I=1,N
                WRITE(*,*) F(I)
                AA(1,I) = AA(1,I) - BB(1)*F(I)
120     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL SEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F): '
        WRITE(*,*)
        DO 140 I=1,N
                WRITE(*,*) EIG(I)
140     CONTINUE

        WRITE(*,*) 
        WRITE(*,*) '   (THE MATRIX (A - B*F) SHOULD HAVE EIGENVALUES'
        WRITE(*,*) '   1.0, 2.0, 3.0, 4.0 and 5.0, BUT NOT NECESSARILY'
        WRITE(*,*) '   IN THIS ORDER. THIS EXAMPLE USES A SYSTEM IN'
        WRITE(*,*) '   CONTROLLABILITY FORM.)'
        WRITE(*,*)


C*********************************************************************
C
C       Example 2: near-uncontrollable system in controllability 
C                       form.
C
C       This program segment computes a system in controllability
C       form and attempts to compute the vector f such that the 
C       matrix (A - b*f) has the eigenvalues (1,2,3,4,5).
C       The subroutine will detect that the system is near to
C       an uncontrollable one, and stop allocations.
C       
C*********************************************************************


C
C.......create system (in controllability form)
C
        N = 5
        DO 200 I=1,N    
        L(1,I) = REAL(I)
        L(2,I) = 0.0
        B(I) = 0.0
        BB(I) = 0.0
        F(I) = 0.0
            DO 200 J=1,N
                IF(J .GE. I-1) THEN
                        A(I,J) = REAL(I)/REAL(J)
                        AA(I,J) = A(I,J)
                ELSE
                        A(I,J) = 0.0
                        AA(I,J) = 0.0
                ENDIF
200     CONTINUE

        B(1) = 1.0
        BB(1) = 1.0

C
C.......make sub-diagonal element zero.
C
        A(3,2) = 0.0
        AA(3,2) = A(4,3)


        WRITE(*,*)
        WRITE(*,*) '*********'
        WRITE(*,*) 'EXAMPLE 2'
        WRITE(*,*) '*********'
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX A:'
        WRITE(*,*)
        DO 210 I=1,N
                WRITE(*,5000) (A(I,J),J=1,N)
210     CONTINUE


C
C.......call SSEVAS routine
C
        FORM = .TRUE.
        RMU = 0.0

        CALL SSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 220 I=1,N
                WRITE(*,*) F(I)
                AA(1,I) = AA(1,I) - BB(1)*F(I)
220     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL SEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F):'
        WRITE(*,*)
        DO 240 I=1,N
                WRITE(*,*) EIG(I)
240     CONTINUE


        WRITE(*,*)
        WRITE(*,*) '   (SINCE THE SYSTEM (b,A) IS UNCONTROLLABLE,'
        WRITE(*,*) '   NO EIGENVALUES ARE ALLOCATED.  THE VECTOR F'
        WRITE(*,*) '   SHOULD BE ZERO,  AND THE EIGENVALUES OF'
        WRITE(*,*) '   (A - B*F) SHOULD BE THOSE OF THE MATRIX A)'
        WRITE(*,*)


C*********************************************************************
C
C       Example 3: near-uncontrollable system in general form.
C
C       This program segment computes a system in general
C       form and attempts to compute the vector f such that the 
C       matrix (A - b*f) has the eigenvalues (1,2,3,4,5).
C       The subroutine will detect that the system is near to
C       an uncontrollable one after allocating two eigenvalues,
C       and stop further allocations.  The resulting matrix (A - b*f)
C       will thus have eigenvalues 1, 2, and three other undetermined
C       values.
C       
C*********************************************************************

C
C.......create general system 
C
        N = 5
        DO 300 I=1,N    
        L(1,I) = REAL(I)
        L(2,I) = 0.0
        B(I) = 1.0/REAL(I)
        BB(I) = B(I)
        F(I) = 0.0
            DO 300 J=1,N
                        A(I,J) = (REAL(I) - 3.0) / REAL(J) 
                        IF(I .EQ. J+1 .AND. J .LT. 3) 
     +                          A(I,J) = A(I,J)*20.0
                        AA(I,J) = A(I,J)
300     CONTINUE



        WRITE(*,*)
        WRITE(*,*) '*********'
        WRITE(*,*) 'EXAMPLE 3 '
        WRITE(*,*) '*********'
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX A:'
        WRITE(*,*)
        DO 310 I=1,N
                WRITE(*,5000) (A(I,J),J=1,N)
310     CONTINUE


C
C.......call SSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL SSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 320 I=1,N
            WRITE(*,*) F(I)
            DO 320 J=1,N
                AA(I,J) = AA(I,J) - BB(I)*F(J)
320     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL SEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F):'
        WRITE(*,*)
        DO 340 I=1,N
                WRITE(*,*) EIG(I)
340     CONTINUE


        WRITE(*,*)
        WRITE(*,*) 'MACHINE UNIT: ',RMU
        WRITE(*,*)
        WRITE(*,*) '  (THE SUBROUTINE SHOULD ALLOCATE TWO'
        WRITE(*,*) '  EIGENVALUES AND THEN IF THE CORRECT MACHINE'
        WRITE(*,*) '  UNIT IS COMPUTED THE SUBROUTINE SHOULD'
        WRITE(*,*) '  DETECT AN UNCONTROLLABLE SYSTEM.'
        WRITE(*,*) '  NOTE THAT SOME MACHINES/COMPILERS MAY NOT COMPUTE'
        WRITE(*,*) '  THE CORRECT MACHINE UNIT. INSTEAD THEY MAY'
        WRITE(*,*) '  COMPUTE A MACHINE UNIT AFFECTED BY THE LENGTH OF'
        WRITE(*,*) '  THE REGISTER. IN SUCH A CASE THE SUBROUTINE MAY'
        WRITE(*,*) '  NOT DETECT UNCONTROLLABILITY AND IT MAY CONTINUE'
        WRITE(*,*) '  THE ALLOCATIONS WITH AN ILL-CONDITIONED'
        WRITE(*,*) '  EIGENVALUE ALLOCATION PROBLEM. THIS WILL RESULT'
        WRITE(*,*) '  TO AN INACCURATE  F  AND THUS TO INACCURATE'
        WRITE(*,*) '  EIGENVALUES FOR  (A - B*F).'
        WRITE(*,*) '  FOR MORE DETAILS SEE REFERENCES IN THE PAPER.'
        WRITE(*,*) '  IF UNCONTROLLABILITY IS DETECTED THE MATRIX'
        WRITE(*,*) '  (A - B*F)  SHOULD HAVE EIGENVALUES 1.0, 2.0,'
        WRITE(*,*) '  AND THREE OTHER UNSPECIFIED EIGENVALUES.)'
        WRITE(*,*)


C*********************************************************************
C
C       Example 4: general system 
C
C       This program segment computes a general system 
C       and computes the vector f such that the matrix (A - b*f) 
C       has the eigenvalues 7.0 +- 28.0i, -15.0 +- 20.0, 63.0, and
C       -24.0
C       
C*********************************************************************

C
C.......construct matrix A, vector b, and eigenvalue matrix L
C
        N = 6
        DO 400 I=1,N    
        B(I) = 1.0/REAL(I)
        BB(I) = B(I)
            DO 400 J=1,N
                A(I,J) = REAL(I) + 1.0/REAL(J)
                IF(J .EQ. I+1) A(I,J) = A(I,J)*15.0
                AA(I,J) = A(I,J)
400     CONTINUE

        L(1,1) = 7.0
        L(2,1) = 28.0
        L(1,2) = 7.0
        L(2,2) = -28.0
        L(1,3) = -15.0
        L(2,3) = 20.0
        L(1,4) = -15.0
        L(2,4) = -20.0
        L(1,5) = 63.0
        L(2,5) = 0.0
        L(1,6) = -24.0
        L(2,6) = 0.0

        WRITE(*,*)
        WRITE(*,*) '*********'
        WRITE(*,*) 'EXAMPLE 4 '
        WRITE(*,*) '*********'
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX A:'
        WRITE(*,*)
        DO 410 I=1,N
                WRITE(*,5000) (A(I,J),J=1,N)
410     CONTINUE


C
C.......call SSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL SSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 420 I=1,N
            WRITE(*,*) F(I)
            DO 420 J=1,N
                AA(I,J) = AA(I,J) - BB(I)*F(J)
420     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL SEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F): '
        WRITE(*,*)
        DO 440 I=1,N
                WRITE(*,*) EIG(I)
440     CONTINUE


        WRITE(*,*)
        WRITE(*,*) '   (THE MATRIX (A - B*F) SHOULD HAVE'
        WRITE(*,*) '   EIGENVALUES 63.0, -24.0, 7.0 + 28.0i,'
        WRITE(*,*) '   7.0 - 28.0i, -15.0 + 20.0i, and -15.0 - 20.0i,'
        WRITE(*,*) '   IN ANY ORDER.)  THIS EXAMPLE ALLOCATES'
        WRITE(*,*) '   EIGENVALUES TO A GENERAL SYSTEM.'
        WRITE(*,*)

C*********************************************************************
C
C       Example 5: general system with 
C                  ill-conditioned eigenvalue problem
C
C       This program segment creates a general system of order 10
C       but then attempts to allocate 7 identical eigenvalues.
C       The resulting F vector is accurate. (This can be seen by
C       comparing the single-precision output of this test driver
C       to the double-precision version.)  The eigenvalue problem
C       for the matrix (A - f*b) is ill-conditioned, however,
C       because of the identical eigenvalues. This results
C       in extremely inaccurate results from the SEIGVL subroutine.
C            The example produces a an upper-Hessenberg matrix 
C       with non-zero subdiagonal elements and multiple 
C       eigenvalues.  This matrix is defective, and
C       has a Jordan canonical form with a Jordan block of the
C       order of the multiplicity of the eigenvalues. (In this case,
C       seven).  A Jordan block of this size indicates a matrix
C       that is ill-conditioned with respect to the eigenvalue
C       problem.  
C       
C*********************************************************************

C
C.......construct matrix A, vector b, and eigenvalue matrix L
C
        N = 8
        DO 500 I=1,N    
        IF(N-I+1 .LE. 7) THEN
                L(1,I) = 8.0
        ELSE
                L(1,I) = REAL(I)
        ENDIF
        L(2,I) = 0.0
        B(I) = 1.0/REAL(I)
        BB(I) = B(I)
            DO 500 J=1,N
                A(I,J) = REAL(I) + 1.0/REAL(J)
                IF(J .EQ. I+1) A(I,J) = A(I,J)*15.0
                AA(I,J) = A(I,J)
500     CONTINUE


        WRITE(*,*)
        WRITE(*,*) '*********'
        WRITE(*,*) 'EXAMPLE 5 '
        WRITE(*,*) '*********'
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX A:'
        WRITE(*,*)
        DO 510 I=1,N
                WRITE(*,5000) (A(I,J),J=1,N)
510     CONTINUE


C
C.......call SSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL SSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 520 I=1,N
            WRITE(*,*) F(I)
            DO 520 J=1,N
                AA(I,J) = AA(I,J) - BB(I)*F(J)
520     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL SEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F): '
        WRITE(*,*)
        DO 540 I=1,N
                WRITE(*,*) EIG(I)
540     CONTINUE


        WRITE(*,*) 
        WRITE(*,*) '  (THIS EXAMPLE ALLOCATES THE EIGENVALUE 8.0'
        WRITE(*,*) '  SEVEN TIMES. HOWEVER, THE COMPUTED MULTIPLE'
        WRITE(*,*) '  EIGENVALUE IS NOT ACCURATE TO MACHINE PRECISION.'
        WRITE(*,*) '  THIS IS DUE TO THE FACT THAT UPPER HESSENBERG'
        WRITE(*,*) '  MATRICES WITH NON-ZERO SUBDIAGONAL ELEMENTS ARE'
        WRITE(*,*) '  DEFECTIVE IF THEY HAVE MULTIPLE EIGENVALUES. THIS'
        WRITE(*,*) '  RESULTS IN A JORDAN CANONICAL FORM WITH'
        WRITE(*,*) '  JORDAN BLOCKS AS LARGE AS THE MULTIPLICITY'
        WRITE(*,*) '  OF THE EIGENVALUES, INDICATING A MATRIX THAT'
        WRITE(*,*) '  IS ILL-CONDITIONED WITH RESPECT TO THE'
        WRITE(*,*) '  EIGENVALUE PROBLEM. THE VECTOR  F  IS ACCURATE,'
        WRITE(*,*) '  BUT THE COMPUTED EIGENVALUES FROM  DEIGVL  ARE' 
        WRITE(*,*) '  NOT. THIS IS A RESULT OF THE EIGENPROBLEM'
        WRITE(*,*) '  OF  (A - B*F), AND NOT THE POLE PLACEMENT'
        WRITE(*,*) '  ALGORITHM ITSELF.  A COMPARISON OF THE SINGLE '
        WRITE(*,*) '  AND DOUBLE PRECISION VERSIONS OF THIS PROGRAM '
        WRITE(*,*) '  WILL DEMONSTRATE THIS DISTINCTION.)'
        WRITE(*,*)



5000    FORMAT(1X,8E15.6)


        STOP
        END

CXXXXXXXXXXXXXXXXXXXXX START OF FILE: SBLAS.F XXXXXXXXXXXXXXXXXXXXX

C********************************************************
C
C       Level 1 BLAS routines used in SSEVAS
C
C********************************************************

      INTEGER FUNCTION ISAMAX(N,SX,INCX)
C
C     finds the index of element having max. absolute value.
C     jack dongarra, linpack, 3/11/78.
C     modified to correct problem with negative increments, 9/29/88.  
C
      REAL SX(1),SMAX
      INTEGER I,INCX,IX,N
C
      ISAMAX = 0
      IF( N .LT. 1 ) RETURN
      ISAMAX = 1
      IF(N.EQ.1)RETURN
      IF(INCX.EQ.1)GO TO 20
C
C        code for increment not equal to 1
C
      IX = 1
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1
      SMAX = ABS(SX(IX))
      IX = IX + INCX
      DO 10 I = 2,N
         IF(ABS(SX(IX)).LE.SMAX) GO TO 5
         ISAMAX = I
         SMAX = ABS(SX(IX))
    5    IX = IX + INCX
   10 CONTINUE
      RETURN
C
C        code for increment equal to 1
C
   20 SMAX = ABS(SX(1))
      DO 30 I = 2,N
         IF(ABS(SX(I)).LE.SMAX) GO TO 30
         ISAMAX = I
         SMAX = ABS(SX(I))
   30 CONTINUE
      RETURN
      END


      REAL FUNCTION SASUM(N,SX,INCX)
C
C     takes the sum of the absolute values.
C     uses unrolled loops for increment equal to one.
C     jack dongarra, linpack, 3/11/78.
C     modified to correct problem with negative increments, 9/29/88. 
C
      REAL SX(1),STEMP
      INTEGER I,IX,INCX,M,MP1,N
C
      SASUM = 0.0E0
      STEMP = 0.0E0
      IF(N.LE.0)RETURN
      IF(INCX.EQ.1)GO TO 20
C
C        code for increment not equal to 1
C
      IX = 1
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1
      DO 10 I = 1,N
        STEMP = STEMP + ABS(SX(IX))
        IX = IX + INCX
   10 CONTINUE
      SASUM = STEMP
      RETURN
C
C        code for increment equal to 1
C
C
C        clean-up loop
C
   20 M = MOD(N,6)
      IF( M .EQ. 0 ) GO TO 40
      DO 30 I = 1,M
        STEMP = STEMP + ABS(SX(I))
   30 CONTINUE
      IF( N .LT. 6 ) GO TO 60
   40 MP1 = M + 1
      DO 50 I = MP1,N,6
        STEMP = STEMP + ABS(SX(I)) + ABS(SX(I + 1)) + ABS(SX(I + 2))
     *  + ABS(SX(I + 3)) + ABS(SX(I + 4)) + ABS(SX(I + 5))
   50 CONTINUE
   60 SASUM = STEMP
      RETURN
      END


      SUBROUTINE SAXPY(N,SA,SX,INCX,SY,INCY)
C
C     constant times a vector plus a vector.
C     uses unrolled loop for increments equal to one.
C     jack dongarra, linpack, 3/11/78.
C
      REAL SX(1),SY(1),SA
      INTEGER I,INCX,INCY,IX,IY,M,MP1,N
C
      IF(N.LE.0)RETURN
      IF (SA .EQ. 0.0) RETURN
      IF(INCX.EQ.1.AND.INCY.EQ.1)GO TO 20
C
C        code for unequal increments or equal increments
C          not equal to 1
C
      IX = 1
      IY = 1
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1
      IF(INCY.LT.0)IY = (-N+1)*INCY + 1
      DO 10 I = 1,N
        SY(IY) = SY(IY) + SA*SX(IX)
        IX = IX + INCX
        IY = IY + INCY
   10 CONTINUE
      RETURN
C
C        code for both increments equal to 1
C
C
C        clean-up loop
C
   20 M = MOD(N,4)
      IF( M .EQ. 0 ) GO TO 40
      DO 30 I = 1,M
        SY(I) = SY(I) + SA*SX(I)
   30 CONTINUE
      IF( N .LT. 4 ) RETURN
   40 MP1 = M + 1
      DO 50 I = MP1,N,4
        SY(I) = SY(I) + SA*SX(I)
        SY(I + 1) = SY(I + 1) + SA*SX(I + 1)
        SY(I + 2) = SY(I + 2) + SA*SX(I + 2)
        SY(I + 3) = SY(I + 3) + SA*SX(I + 3)
   50 CONTINUE
      RETURN
      END


      SUBROUTINE SCOPY(N,SX,INCX,SY,INCY)
C
C     copies a vector, x, to a vector, y.
C     uses unrolled loops for increments equal to 1.
C     jack dongarra, linpack, 3/11/78.
C
      REAL SX(1),SY(1)
      INTEGER I,INCX,INCY,IX,IY,M,MP1,N
C
      IF(N.LE.0)RETURN
      IF(INCX.EQ.1.AND.INCY.EQ.1)GO TO 20
C
C        code for unequal increments or equal increments
C          not equal to 1
C
      IX = 1
      IY = 1
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1
      IF(INCY.LT.0)IY = (-N+1)*INCY + 1
      DO 10 I = 1,N
        SY(IY) = SX(IX)
        IX = IX + INCX
        IY = IY + INCY
   10 CONTINUE
      RETURN
C
C        code for both increments equal to 1
C
C
C        clean-up loop
C
   20 M = MOD(N,7)
      IF( M .EQ. 0 ) GO TO 40
      DO 30 I = 1,M
        SY(I) = SX(I)
   30 CONTINUE
      IF( N .LT. 7 ) RETURN
   40 MP1 = M + 1
      DO 50 I = MP1,N,7
        SY(I) = SX(I)
        SY(I + 1) = SX(I + 1)
        SY(I + 2) = SX(I + 2)
        SY(I + 3) = SX(I + 3)
        SY(I + 4) = SX(I + 4)
        SY(I + 5) = SX(I + 5)
        SY(I + 6) = SX(I + 6)
   50 CONTINUE
      RETURN
      END


      REAL FUNCTION SDOT(N,SX,INCX,SY,INCY)
C
C     forms the dot product of two vectors.
C     uses unrolled loops for increments equal to one.
C     jack dongarra, linpack, 3/11/78.
C
      REAL SX(1),SY(1),STEMP
      INTEGER I,INCX,INCY,IX,IY,M,MP1,N
C
      STEMP = 0.0E0
      SDOT = 0.0E0
      IF(N.LE.0)RETURN
      IF(INCX.EQ.1.AND.INCY.EQ.1)GO TO 20
C
C        code for unequal increments or equal increments
C          not equal to 1
C
      IX = 1
      IY = 1
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1
      IF(INCY.LT.0)IY = (-N+1)*INCY + 1
      DO 10 I = 1,N
        STEMP = STEMP + SX(IX)*SY(IY)
        IX = IX + INCX
        IY = IY + INCY
   10 CONTINUE
      SDOT = STEMP
      RETURN
C
C        code for both increments equal to 1
C
C
C        clean-up loop
C
   20 M = MOD(N,5)
      IF( M .EQ. 0 ) GO TO 40
      DO 30 I = 1,M
        STEMP = STEMP + SX(I)*SY(I)
   30 CONTINUE
      IF( N .LT. 5 ) GO TO 60
   40 MP1 = M + 1
      DO 50 I = MP1,N,5
        STEMP = STEMP + SX(I)*SY(I) + SX(I + 1)*SY(I + 1) +
     *   SX(I+2)*SY(I+2) + SX(I + 3)*SY(I + 3) + SX(I + 4)*SY(I + 4)
   50 CONTINUE
   60 SDOT = STEMP
      RETURN
      END


      REAL FUNCTION SNRM2 ( N, SX, INCX)
      INTEGER          NEXT
      REAL   SX(1),  CUTLO, CUTHI, HITEST, SUM, XMAX, ZERO, ONE
      DATA   ZERO, ONE /0.0E0, 1.0E0/
C
C     euclidean norm of the n-vector stored in sx() with storage
C     increment incx .
C     if    n .le. 0 return with result = 0.
C     if n .ge. 1 then incx must be .ge. 1
C
C           c.l.lawson, 1978 jan 08
C
C     four phase method     using two built-in constants that are
C     hopefully applicable to all machines.
C         cutlo = maximum of  sqrt(u/eps)  over all known machines.
C         cuthi = minimum of  sqrt(v)      over all known machines.
C     where
C         eps = smallest no. such that eps + 1. .gt. 1.
C         u   = smallest positive no.   (underflow limit)
C         v   = largest  no.            (overflow  limit)
C
C     brief outline of algorithm..
C
C     phase 1    scans zero components.
C     move to phase 2 when a component is nonzero and .le. cutlo
C     move to phase 3 when a component is .gt. cutlo
C     move to phase 4 when a component is .ge. cuthi/m
C     where m = n for x() real and m = 2*n for complex.
C
C     values for cutlo and cuthi..
C     from the environmental parameters listed in the imsl converter
C     document the limiting values are as follows..
C     cutlo, s.p.   u/eps = 2**(-102) for  honeywell.close seconds are
C                   univac and dec at 2**(-103)
C                   thus cutlo = 2**(-51) = 4.44089e-16
C     cuthi, s.p.   v = 2**127 for univac, honeywell, and dec.
C                   thus cuthi = 2**(63.5) = 1.30438e19
C     cutlo, d.p.   u/eps = 2**(-67) for honeywell and dec.
C                   thus cutlo = 2**(-33.5) = 8.23181d-11
C     cuthi, d.p.   same as s.p.  cuthi = 1.30438d19
C     data cutlo, cuthi / 8.232d-11,  1.304d19 /
C     data cutlo, cuthi / 4.441e-16,  1.304e19 /
      DATA CUTLO, CUTHI / 4.441E-16,  1.304E19 /
C
      IF(N .GT. 0) GO TO 10
         SNRM2  = ZERO
         GO TO 300
C
   10 ASSIGN 30 TO NEXT
      SUM = ZERO
      NN = N * INCX
C                                                 begin main loop
      I = 1
   20    GO TO NEXT,(30, 50, 70, 110)
   30 IF( ABS(SX(I)) .GT. CUTLO) GO TO 85
      ASSIGN 50 TO NEXT
      XMAX = ZERO
C
C                        phase 1.  sum is zero
C
   50 IF( SX(I) .EQ. ZERO) GO TO 200
      IF( ABS(SX(I)) .GT. CUTLO) GO TO 85
C
C                                prepare for phase 2.
      ASSIGN 70 TO NEXT
      GO TO 105
C
C                                prepare for phase 4.
C
  100 I = J
      ASSIGN 110 TO NEXT
      SUM = (SUM / SX(I)) / SX(I)
  105 XMAX = ABS(SX(I))
      GO TO 115
C
C                   phase 2.  sum is small.
C                             scale to avoid destructive underflow.
C
   70 IF( ABS(SX(I)) .GT. CUTLO ) GO TO 75
C
C                     common code for phases 2 and 4.
C                     in phase 4 sum is large. scale to avoid overflow.
C
  110 IF( ABS(SX(I)) .LE. XMAX ) GO TO 115
         SUM = ONE + SUM * (XMAX / SX(I))**2
         XMAX = ABS(SX(I))
         GO TO 200
C
  115 SUM = SUM + (SX(I)/XMAX)**2
      GO TO 200
C
C
C                  prepare for phase 3.
C
   75 SUM = (SUM * XMAX) * XMAX
C
C
C     for real or d.p. set hitest = cuthi/n
C     for complex      set hitest = cuthi/(2*n)
C
   85 HITEST = CUTHI/FLOAT( N )
C
C                   phase 3.  sum is mid-range.  no scaling.
C
      DO 95 J =I,NN,INCX
      IF(ABS(SX(J)) .GE. HITEST) GO TO 100
   95    SUM = SUM + SX(J)**2
      SNRM2 = SQRT( SUM )
      GO TO 300
C
  200 CONTINUE
      I = I + INCX
      IF ( I .LE. NN ) GO TO 20
C
C              end of main loop.
C
C              compute square root and adjust for scaling.
C
      SNRM2 = XMAX * SQRT(SUM)
  300 CONTINUE
      RETURN
      END


      SUBROUTINE SSCAL(N,SA,SX,INCX)
C
C     scales a vector by a constant.
C     uses unrolled loops for increment equal to 1.
C     jack dongarra, linpack, 3/11/78.
C     modified to correct problem with negative increments, 9/29/88.
C
      REAL SA,SX(1)
      INTEGER I,IX,INCX,M,MP1,N
C
      IF(N.LE.0)RETURN
      IF(INCX.EQ.1)GO TO 20
C
C        code for increment not equal to 1
C
      IX = 1 
      IF(INCX.LT.0)IX = (-N+1)*INCX + 1 
      DO 10 I = 1,N 
        SX(IX) = SA*SX(IX)
        IX = IX + INCX 
   10 CONTINUE
      RETURN
C
C        code for increment equal to 1
C
C
C        clean-up loop
C
   20 M = MOD(N,5)
      IF( M .EQ. 0 ) GO TO 40
      DO 30 I = 1,M
        SX(I) = SA*SX(I)
   30 CONTINUE
      IF( N .LT. 5 ) RETURN
   40 MP1 = M + 1
      DO 50 I = MP1,N,5
        SX(I) = SA*SX(I)
        SX(I + 1) = SA*SX(I + 1)
        SX(I + 2) = SA*SX(I + 2)
        SX(I + 3) = SA*SX(I + 3)
        SX(I + 4) = SA*SX(I + 4)
   50 CONTINUE
      RETURN
      END
CXXXXXXXXXXXXXXXXXXXXX START OF FILE: SEIGVL.F XXXXXXXXXXXXXXXXXXXXX

C*********************************************************************
C*********************************************************************
C*********************************************************************
C
C       Title:          SEIGVL
C
C       Purpose:        Finds the eigenvalues of a real-valued
C                       matrix AA.  Uses BALANC, HQR and ELMHES, from
C                       the EISPACK subroutine library. (These 
C                       routines are included in this file.)
C
C
C       Input Arguments:
C       ----------------
C
C       n       integer                 Row dimension of matrix AA
C
C       AA      real*4(adim,n)          Input matrix AA
C                                               
C       llda    integer                 Row dimension of array AA
C
C
C
C       Output Arguments:
C       --------------
C
C       eig     complex(n)              Desired eigenvalues
C
C
C       
C       Subroutines Used:
C       -----------------
C
C       BALANC, HQR, ELMHES
C
C*********************************************************************
C*********************************************************************
C*********************************************************************

        SUBROUTINE SEIGVL(N,AA,LLDA,EIG)

        PARAMETER (MAXN = 25)
C
C........input arguments
C
        INTEGER N,LLDA
        REAL AA(LLDA,*)
        COMPLEX EIG(MAXN)
C
C.......local variables
C
        REAL A(MAXN,MAXN)
        REAL REIG(MAXN), IMEIG(MAXN), SCALE(MAXN)
        INTEGER INT(MAXN), LOW, IGH, IERR


C
C.......check size of input system
C
        IF(N .GT. MAXN) THEN
                WRITE(*,*) 'SEIGVL: INPUT SYSTEM TOO LARGE.'
                STOP
        ENDIF

C
C.......copy input matrix to working matrix
C
        DO 40 I=1,N
            DO 40 J=1,N
                A(I,J) = AA(I,J)
40      CONTINUE

        LDA = MAXN

C
C.......convert general form to Upper Hessenberg form
C       and find eigenvalues.
C
        CALL BALANC( LDA, N, A, LOW, IGH, SCALE)
        CALL ELMHES( LDA, N, LOW, IGH, A, INT)
        CALL HQR( LDA, N, LOW, IGH, A, REIG, IMEIG, IERR)


        DO 100 I=1,N
                EIG(I) = CMPLX(REIG(I),IMEIG(I))
100     CONTINUE
                
        RETURN
        END


C  The following subroutines from EISPACK
C
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
C
C Careful! Anything free comes with no guarantee.
C *** from netlib, Mon Apr  1 12:47:07 EST 1991 ***
C
      SUBROUTINE BALANC(NM,N,A,LOW,IGH,SCALE)
C
      INTEGER I,J,K,L,M,N,JJ,NM,IGH,LOW,IEXC
      REAL A(NM,N),SCALE(N)
      REAL C,F,G,R,S,B2,RADIX
      LOGICAL NOCONV
C
C     this subroutine is a translation of the algol procedure balance,
C     num. math. 13, 293-304(1969) by parlett and reinsch.
C     handbook for auto. comp., vol.ii-linear algebra, 315-326(1971).
C
C     this subroutine balances a real matrix and isolates
C     eigenvalues whenever possible.
C
C     on input
C
C        nm must be set to the row dimension of two-dimensional
C          array parameters as declared in the calling program
C          dimension statement.
C
C        n is the order of the matrix.
C
C        a contains the input matrix to be balanced.
C
C     on output
C
C        a contains the balanced matrix.
C
C        low and igh are two integers such that a(i,j)
C          is equal to zero if
C           (1) i is greater than j and
C           (2) j=1,...,low-1 or i=igh+1,...,n.
C
C        scale contains information determining the
C           permutations and scaling factors used.
C
C     suppose that the principal submatrix in rows low through igh
C     has been balanced, that p(j) denotes the index interchanged
C     with j during the permutation step, and that the elements
C     of the diagonal matrix used are denoted by d(i,j).  then
C        scale(j) = p(j),    for j = 1,...,low-1
C                 = d(j,j),      j = low,...,igh
C                 = p(j)         j = igh+1,...,n.
C     the order in which the interchanges are made is n to igh+1,
C     then 1 to low-1.
C
C     note that 1 is returned for igh if igh is zero formally.
C
C     the algol procedure exc contained in balance appears in
C     balanc  in line.  (note that the algol roles of identifiers
C     k,l have been reversed.)
C
C     questions and comments should be directed to burton s. garbow,
C     mathematics and computer science div, argonne national laboratory
C
C     this version dated august 1983.
C
C     ------------------------------------------------------------------
C
      RADIX = 16.0E0
C
      B2 = RADIX * RADIX
      K = 1
      L = N
      GO TO 100
C     .......... in-line procedure for row and
C                column exchange ..........
   20 SCALE(M) = J
      IF (J .EQ. M) GO TO 50
C
      DO 30 I = 1, L
         F = A(I,J)
         A(I,J) = A(I,M)
         A(I,M) = F
   30 CONTINUE
C
      DO 40 I = K, N
         F = A(J,I)
         A(J,I) = A(M,I)
         A(M,I) = F
   40 CONTINUE
C
   50 GO TO (80,130), IEXC
C     .......... search for rows isolating an eigenvalue
C                and push them down ..........
   80 IF (L .EQ. 1) GO TO 280
      L = L - 1
C     .......... for j=l step -1 until 1 do -- ..........
  100 DO 120 JJ = 1, L
         J = L + 1 - JJ
C
         DO 110 I = 1, L
            IF (I .EQ. J) GO TO 110
            IF (A(J,I) .NE. 0.0E0) GO TO 120
  110    CONTINUE
C
         M = L
         IEXC = 1
         GO TO 20
  120 CONTINUE
C
      GO TO 140
C     .......... search for columns isolating an eigenvalue
C                and push them left ..........
  130 K = K + 1
C
  140 DO 170 J = K, L
C
         DO 150 I = K, L
            IF (I .EQ. J) GO TO 150
            IF (A(I,J) .NE. 0.0E0) GO TO 170
  150    CONTINUE
C
         M = K
         IEXC = 2
         GO TO 20
  170 CONTINUE
C     .......... now balance the submatrix in rows k to l ..........
      DO 180 I = K, L
  180 SCALE(I) = 1.0E0
C     .......... iterative loop for norm reduction ..........
  190 NOCONV = .FALSE.
C
      DO 270 I = K, L
         C = 0.0E0
         R = 0.0E0
C
         DO 200 J = K, L
            IF (J .EQ. I) GO TO 200
            C = C + ABS(A(J,I))
            R = R + ABS(A(I,J))
  200    CONTINUE
C     .......... guard against zero c or r due to underflow ..........
         IF (C .EQ. 0.0E0 .OR. R .EQ. 0.0E0) GO TO 270
         G = R / RADIX
         F = 1.0E0
         S = C + R
  210    IF (C .GE. G) GO TO 220
         F = F * RADIX
         C = C * B2
         GO TO 210
  220    G = R * RADIX
  230    IF (C .LT. G) GO TO 240
         F = F / RADIX
         C = C / B2
         GO TO 230
C     .......... now balance ..........
  240    IF ((C + R) / F .GE. 0.95E0 * S) GO TO 270
         G = 1.0E0 / F
         SCALE(I) = SCALE(I) * F
         NOCONV = .TRUE.
C
         DO 250 J = K, N
  250    A(I,J) = A(I,J) * G
C
         DO 260 J = 1, L
  260    A(J,I) = A(J,I) * F
C
  270 CONTINUE
C
      IF (NOCONV) GO TO 190
C
  280 LOW = K
      IGH = L
      RETURN
      END

C
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
C
C Careful! Anything free comes with no guarantee.
C *** from netlib, Mon Apr  1 12:47:08 EST 1991 ***
C
      SUBROUTINE ELMHES(NM,N,LOW,IGH,A,INT)
C
      INTEGER I,J,M,N,LA,NM,IGH,KP1,LOW,MM1,MP1
      REAL A(NM,N)
      REAL X,Y
      INTEGER INT(IGH)
C
C     this subroutine is a translation of the algol procedure elmhes,
C     num. math. 12, 349-368(1968) by martin and wilkinson.
C     handbook for auto. comp., vol.ii-linear algebra, 339-358(1971).
C
C     given a real general matrix, this subroutine
C     reduces a submatrix situated in rows and columns
C     low through igh to upper hessenberg form by
C     stabilized elementary similarity transformations.
C
C     on input
C
C        nm must be set to the row dimension of two-dimensional
C          array parameters as declared in the calling program
C          dimension statement.
C
C        n is the order of the matrix.
C
C        low and igh are integers determined by the balancing
C          subroutine  balanc.  if  balanc  has not been used,
C          set low=1, igh=n.
C
C        a contains the input matrix.
C
C     on output
C
C        a contains the hessenberg matrix.  the multipliers
C          which were used in the reduction are stored in the
C          remaining triangle under the hessenberg matrix.
C
C        int contains information on the rows and columns
C          interchanged in the reduction.
C          only elements low through igh are used.
C
C     questions and comments should be directed to burton s. garbow,
C     mathematics and computer science div, argonne national laboratory
C
C     this version dated august 1983.
C
C     ------------------------------------------------------------------
C
      LA = IGH - 1
      KP1 = LOW + 1
      IF (LA .LT. KP1) GO TO 200
C
      DO 180 M = KP1, LA
         MM1 = M - 1
         X = 0.0E0
         I = M
C
         DO 100 J = M, IGH
            IF (ABS(A(J,MM1)) .LE. ABS(X)) GO TO 100
            X = A(J,MM1)
            I = J
  100    CONTINUE
C
         INT(M) = I
         IF (I .EQ. M) GO TO 130
C     .......... interchange rows and columns of a ..........
         DO 110 J = MM1, N
            Y = A(I,J)
            A(I,J) = A(M,J)
            A(M,J) = Y
  110    CONTINUE
C
         DO 120 J = 1, IGH
            Y = A(J,I)
            A(J,I) = A(J,M)
            A(J,M) = Y
  120    CONTINUE
C     .......... end interchange ..........
  130    IF (X .EQ. 0.0E0) GO TO 180
         MP1 = M + 1
C
         DO 160 I = MP1, IGH
            Y = A(I,MM1)
            IF (Y .EQ. 0.0E0) GO TO 160
            Y = Y / X
            A(I,MM1) = Y
C
            DO 140 J = M, N
  140       A(I,J) = A(I,J) - Y * A(M,J)
C
            DO 150 J = 1, IGH
  150       A(J,M) = A(J,M) + Y * A(J,I)
C
  160    CONTINUE
C
  180 CONTINUE
C
  200 RETURN
      END

C
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
Ccccccccccccccccccccccccccccccccccccccccccccccccccc
C
C Careful! Anything free comes with no guarantee.
C *** from netlib, Mon Apr  1 12:47:10 EST 1991 ***
C
      SUBROUTINE HQR(NM,N,LOW,IGH,H,WR,WI,IERR)
C  RESTORED CORRECT INDICES OF LOOPS (200,210,230,240). (9/29/89 BSG)
C
      INTEGER I,J,K,L,M,N,EN,LL,MM,NA,NM,IGH,ITN,ITS,LOW,MP2,ENM2,IERR
      REAL H(NM,N),WR(N),WI(N)
      REAL P,Q,R,S,T,W,X,Y,ZZ,NORM,TST1,TST2
      LOGICAL NOTLAS
C
C     this subroutine is a translation of the algol procedure hqr,
C     num. math. 14, 219-231(1970) by martin, peters, and wilkinson.
C     handbook for auto. comp., vol.ii-linear algebra, 359-371(1971).
C
C     this subroutine finds the eigenvalues of a real
C     upper hessenberg matrix by the qr method.
C
C     on input
C
C        nm must be set to the row dimension of two-dimensional
C          array parameters as declared in the calling program
C          dimension statement.
C
C        n is the order of the matrix.
C
C        low and igh are integers determined by the balancing
C          subroutine  balanc.  if  balanc  has not been used,
C          set low=1, igh=n.
C
C        h contains the upper hessenberg matrix.  information about
C          the transformations used in the reduction to hessenberg
C          form by  elmhes  or  orthes, if performed, is stored
C          in the remaining triangle under the hessenberg matrix.
C
C     on output
C
C        h has been destroyed.  therefore, it must be saved
C          before calling  hqr  if subsequent calculation and
C          back transformation of eigenvectors is to be performed.
C
C        wr and wi contain the real and imaginary parts,
C          respectively, of the eigenvalues.  the eigenvalues
C          are unordered except that complex conjugate pairs
C          of values appear consecutively with the eigenvalue
C          having the positive imaginary part first.  if an
C          error exit is made, the eigenvalues should be correct
C          for indices ierr+1,...,n.
C
C        ierr is set to
C          zero       for normal return,
C          j          if the limit of 30*n iterations is exhausted
C                     while the j-th eigenvalue is being sought.
C
C     questions and comments should be directed to burton s. garbow,
C     mathematics and computer science div, argonne national laboratory
C
C     this version dated september 1989.
C
C     ------------------------------------------------------------------
C
      IERR = 0
      NORM = 0.0E0
      K = 1
C     .......... store roots isolated by balanc
C                and compute matrix norm ..........
      DO 50 I = 1, N
C
         DO 40 J = K, N
   40    NORM = NORM + ABS(H(I,J))
C
         K = I
         IF (I .GE. LOW .AND. I .LE. IGH) GO TO 50
         WR(I) = H(I,I)
         WI(I) = 0.0E0
   50 CONTINUE
C
      EN = IGH
      T = 0.0E0
      ITN = 30*N
C     .......... search for next eigenvalues ..........
   60 IF (EN .LT. LOW) GO TO 1001
      ITS = 0
      NA = EN - 1
      ENM2 = NA - 1
C     .......... look for single small sub-diagonal element
C                for l=en step -1 until low do -- ..........
   70 DO 80 LL = LOW, EN
         L = EN + LOW - LL
         IF (L .EQ. LOW) GO TO 100
         S = ABS(H(L-1,L-1)) + ABS(H(L,L))
         IF (S .EQ. 0.0E0) S = NORM
         TST1 = S
         TST2 = TST1 + ABS(H(L,L-1))
         IF (TST2 .EQ. TST1) GO TO 100
   80 CONTINUE
C     .......... form shift ..........
  100 X = H(EN,EN)
      IF (L .EQ. EN) GO TO 270
      Y = H(NA,NA)
      W = H(EN,NA) * H(NA,EN)
      IF (L .EQ. NA) GO TO 280
      IF (ITN .EQ. 0) GO TO 1000
      IF (ITS .NE. 10 .AND. ITS .NE. 20) GO TO 130
C     .......... form exceptional shift ..........
      T = T + X
C
      DO 120 I = LOW, EN
  120 H(I,I) = H(I,I) - X
C
      S = ABS(H(EN,NA)) + ABS(H(NA,ENM2))
      X = 0.75E0 * S
      Y = X
      W = -0.4375E0 * S * S
  130 ITS = ITS + 1
      ITN = ITN - 1
C     .......... look for two consecutive small
C                sub-diagonal elements.
C                for m=en-2 step -1 until l do -- ..........
      DO 140 MM = L, ENM2
         M = ENM2 + L - MM
         ZZ = H(M,M)
         R = X - ZZ
         S = Y - ZZ
         P = (R * S - W) / H(M+1,M) + H(M,M+1)
         Q = H(M+1,M+1) - ZZ - R - S
         R = H(M+2,M+1)
         S = ABS(P) + ABS(Q) + ABS(R)
         P = P / S
         Q = Q / S
         R = R / S
         IF (M .EQ. L) GO TO 150
         TST1 = ABS(P)*(ABS(H(M-1,M-1)) + ABS(ZZ) + ABS(H(M+1,M+1)))
         TST2 = TST1 + ABS(H(M,M-1))*(ABS(Q) + ABS(R))
         IF (TST2 .EQ. TST1) GO TO 150
  140 CONTINUE
C
  150 MP2 = M + 2
C
      DO 160 I = MP2, EN
         H(I,I-2) = 0.0E0
         IF (I .EQ. MP2) GO TO 160
         H(I,I-3) = 0.0E0
  160 CONTINUE
C     .......... double qr step involving rows l to en and
C                columns m to en ..........
      DO 260 K = M, NA
         NOTLAS = K .NE. NA
         IF (K .EQ. M) GO TO 170
         P = H(K,K-1)
         Q = H(K+1,K-1)
         R = 0.0E0
         IF (NOTLAS) R = H(K+2,K-1)
         X = ABS(P) + ABS(Q) + ABS(R)
         IF (X .EQ. 0.0E0) GO TO 260
         P = P / X
         Q = Q / X
         R = R / X
  170    S = SIGN(SQRT(P*P+Q*Q+R*R),P)
         IF (K .EQ. M) GO TO 180
         H(K,K-1) = -S * X
         GO TO 190
  180    IF (L .NE. M) H(K,K-1) = -H(K,K-1)
  190    P = P + S
         X = P / S
         Y = Q / S
         ZZ = R / S
         Q = Q / P
         R = R / P
         IF (NOTLAS) GO TO 225
C     .......... row modification ..........
         DO 200 J = K, EN
            P = H(K,J) + Q * H(K+1,J)
            H(K,J) = H(K,J) - P * X
            H(K+1,J) = H(K+1,J) - P * Y
  200    CONTINUE
C
         J = MIN0(EN,K+3)
C     .......... column modification ..........
         DO 210 I = L, J
            P = X * H(I,K) + Y * H(I,K+1)
            H(I,K) = H(I,K) - P
            H(I,K+1) = H(I,K+1) - P * Q
  210    CONTINUE
         GO TO 255
  225    CONTINUE
C     .......... row modification ..........
         DO 230 J = K, EN
            P = H(K,J) + Q * H(K+1,J) + R * H(K+2,J)
            H(K,J) = H(K,J) - P * X
            H(K+1,J) = H(K+1,J) - P * Y
            H(K+2,J) = H(K+2,J) - P * ZZ
  230    CONTINUE
C
         J = MIN0(EN,K+3)
C     .......... column modification ..........
         DO 240 I = L, J
            P = X * H(I,K) + Y * H(I,K+1) + ZZ * H(I,K+2)
            H(I,K) = H(I,K) - P
            H(I,K+1) = H(I,K+1) - P * Q
            H(I,K+2) = H(I,K+2) - P * R
  240    CONTINUE
  255    CONTINUE
C
  260 CONTINUE
C
      GO TO 70
C     .......... one root found ..........
  270 WR(EN) = X + T
      WI(EN) = 0.0E0
      EN = NA
      GO TO 60
C     .......... two roots found ..........
  280 P = (Y - X) / 2.0E0
      Q = P * P + W
      ZZ = SQRT(ABS(Q))
      X = X + T
      IF (Q .LT. 0.0E0) GO TO 320
C     .......... real pair ..........
      ZZ = P + SIGN(ZZ,P)
      WR(NA) = X + ZZ
      WR(EN) = WR(NA)
      IF (ZZ .NE. 0.0E0) WR(EN) = X - W / ZZ
      WI(NA) = 0.0E0
      WI(EN) = 0.0E0
      GO TO 330
C     .......... complex pair ..........
  320 WR(NA) = X + P
      WR(EN) = X + P
      WI(NA) = ZZ
      WI(EN) = -ZZ
  330 EN = ENM2
      GO TO 60
C     .......... set error -- all eigenvalues have not
C                converged after 30*n iterations ..........
 1000 IERR = EN
 1001 RETURN
      END


CXXXXXXXXXXXXXXXXXXXXX START OF FILE: SFLRD.F XXXXXXXXXXXXXXXXXXXXX

C*********************************************************************
C*********************************************************************
C
C                    DRIVER PROGRAM FOR  SSEVAS
C
C       This program prompts the user for a file name that
C       contains the input, reads the file, allocates the desired
C       eigenvalues, and finds the eigenvalues of the 
C       matrix (A - b*f).  The input values, output vector f,
C       and the resulting eigenvalues are printed.
C
C       INPUT FORMAT:
C       -------------
C
C       1) Line 1 of the file contains an integer in free format
C               showing the size of the system.
C
C       2) Line 2 of the file contains a logical value in free format
C               showing the form of the system.  A value of  "T"
C               indicates a system in controllability form, whereas
C               a value of  "F"  indicates a system in general form.
C
C       3) Line 3 of the file contains a real value in free format
C               giving the machine unit used for testing for
C               controllability. If the value  0.0  is given
C               the subroutine calculates the machine unit.
C
C       4) The matrix A is read next, one element per line,
C               in free format.  The matrix is read by row.
C
C       5) The vector b is read next, one element per line,
C               in free format.
C
C       6) The desired eigenvalues are read next.  Each line
C               contains an ordered pair of two real, free format 
C               values which represent the real and the 
C               imaginary part of a complex eigenvalue.
C               Real eigenvalues should obviously be represented
C               by an ordered pair with a zero imaginary part.
C               Complex conjugates should appear both, and 
C               contiguously. Real eigenvalues should appear in 
C               groups of even numbers, unless they are at the end 
C               of the list. A good way to list the eigenvalues 
C               would be, to first list all the complex eigenvalues 
C               followed be the real eigenvalues.
C
C   A typical example could be the following:
C
C   4
C   T
C   0.0
C   1     For     A= 1 2 3 4
C   2                5 6 7 8
C   3                0 9 1 2
C   4                0 0 3 4
C   5             
C   6
C   7
C   8
C   0
C   9
C   1
C   2
C   0
C   0
C   3
C   4
C   10    For     b= 10
C   0                 0
C   0                 0
C   0                 0
C   1  2
C   1 -2
C   3  0
C   4  0
C       
C       Note that in this test driver program we have set a limit
C       of  25  for the size of the matrix  A. This obviously
C       can be altered by the user.
C       
C
C*********************************************************************
C*********************************************************************

