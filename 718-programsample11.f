        PROGRAM SAMPLE

        PARAMETER (ISL = 25, JSL = ISL*ISL+2*ISL)
        DOUBLE PRECISION A(ISL,ISL),AA(ISL,ISL),B(ISL),BB(ISL)
        DOUBLE PRECISION F(ISL),RST(4,JSL),CST(JSL)
        INTEGER IST(JSL),N,IEAL
        COMPLEX*16 EIG(ISL)
        DOUBLE PRECISION L(2,ISL),RMU
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
        L(1,I) = DBLE(I)
        L(2,I) = 0.0
        B(I) = 0.0
        BB(I) = 0.0
            DO 100 J=I-1,N
                IF(J .GT. 0) THEN
                        A(I,J) = DBLE(I)/DBLE(J)
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
C.......call DSEVAS routine
C
        FORM = .TRUE.
        RMU = 0.0

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

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
        CALL DEIGVL(N,AA,ISL,EIG)

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
        L(1,I) = DBLE(I)
        L(2,I) = 0.0
        B(I) = 0.0
        BB(I) = 0.0
        F(I) = 0.0
            DO 200 J=1,N
                IF(J .GE. I-1) THEN
                        A(I,J) = DBLE(I)/DBLE(J)
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
C.......call DSEVAS routine
C
        FORM = .TRUE.
        RMU = 0.0

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

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
        CALL DEIGVL(N,AA,ISL,EIG)

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
        L(1,I) = DBLE(I)
        L(2,I) = 0.0
        B(I) = 1.0/DBLE(I)
        BB(I) = B(I)
        F(I) = 0.0
            DO 300 J=1,N
                        A(I,J) = (DBLE(I) - 3.0) / DBLE(J) 
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
C.......call DSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

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
        CALL DEIGVL(N,AA,ISL,EIG)

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
        B(I) = 1.0/DBLE(I)
        BB(I) = B(I)
            DO 400 J=1,N
                A(I,J) = DBLE(I) + 1.0/DBLE(J)
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
C.......call DSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

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
        CALL DEIGVL(N,AA,ISL,EIG)

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
C       This program segment creates a general system of order 8
C       but then attempts to allocate 7 identical eigenvalues.
C       The resulting F vector is accurate. (This can be seen by
C       comparing the single-precision output of this test driver
C       to the double-precision version.)  The eigenvalue problem
C       for the matrix (A - f*b) is ill-conditioned, however,
C       because of the identical eigenvalues. This results
C       in extremely inaccurate results from the DEIGVL subroutine.
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
                L(1,I) = DBLE(I)
        ENDIF
        L(2,I) = 0.0
        B(I) = 1.0/DBLE(I)
        BB(I) = B(I)
            DO 500 J=1,N
                A(I,J) = DBLE(I) + 1.0/DBLE(J)
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
C.......call DSEVAS routine
C
        FORM = .FALSE.
        RMU = 0.0

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

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
        CALL DEIGVL(N,AA,ISL,EIG)

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

