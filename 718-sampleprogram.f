        PROGRAM SAMPLE

        PARAMETER (ISL = 25, JSL = ISL*ISL+2*ISL)
        DOUBLE PRECISION A(ISL,ISL),AA(ISL,ISL),B(ISL),BB(ISL)
        DOUBLE PRECISION F(ISL),RST(4,JSL),CST(JSL)
        INTEGER IST(JSL),N,IEAL
        COMPLEX*16 EIG(ISL)
        DOUBLE PRECISION L(2,ISL), RMU
        LOGICAL FORM
        CHARACTER*20 FNAME



C
C.......read matrix A, vector b, and eigenvalue matrix L
C
        WRITE(*,*)
        WRITE(*,*) '*****************************'
        WRITE(*,*) '     DSEVAS TEST PROGRAM'
        WRITE(*,*) '*****************************'
        WRITE(*,*)
        WRITE(*,4000) 
4000    FORMAT(1X,'DATA FILE: ',/)
        READ(*,7000) FNAME
7000    FORMAT(A)
        OPEN(5, FILE=FNAME, STATUS='OLD')
        READ(5,*) N

        IF(N .GT. ISL) THEN
                WRITE(*,*) 'INPUT SYSTEM TOO LARGE.'
                STOP
        ENDIF
        READ(5,*) FORM
        READ(5,*) RMU
        DO 100 I=1,N    
            DO 100 J=1,N
                        READ(5,*) A(I,J) 
                        AA(I,J) = A(I,J)
100     CONTINUE

        DO 110 I=1,N
                READ(5,*) B(I)
                BB(I) = B(I)
110     CONTINUE

        DO 120 I=1,N
                READ(5,*) L(1,I), L(2,I)
120     CONTINUE

        CLOSE(5)

C
C.......Echo input
C
        WRITE(*,*)
        WRITE(*,*)
        WRITE(*,*) 'SYSTEM MATRIX (b,A):'
        WRITE(*,*)
        DO 130 I=1,N
                WRITE(*,5000) B(I),(A(I,J),J=1,N)
130     CONTINUE

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES TO BE ALLOCATED:'
        WRITE(*,*)
        DO 135 I=1,N
                WRITE(*,5000) L(1,I),L(2,I)
135     CONTINUE

C
C.......call DSEVAS routine
C

        CALL DSEVAS(A,N,ISL,B,L,RST,IST,CST,FORM,RMU,IEAL,F)

C
C.......create (A - b*f)
C
        WRITE(*,*)
        WRITE(*,*) 'RESULT VECTOR F:'
        WRITE(*,*)
        DO 140 I=1,N
                WRITE(*,*) F(I)
                AA(1,I) = AA(1,I) - BB(1)*F(I)
140     CONTINUE




C
C.......find eigenvalues of (A - b*f)
C
        CALL DEIGVL(N,AA,ISL,EIG)

        WRITE(*,*)
        WRITE(*,*) 'EIGENVALUES OF (A - B*F): '
        WRITE(*,*)
        DO 150 I=1,N
                WRITE(*,*) EIG(I)
150     CONTINUE



5000    FORMAT(1X,10E15.6)


        STOP
        END

CXXXXXXXXXXXXXXXXXXXXX START OF FILE: DSEVAS.F XXXXXXXXXXXXXXXXXXXXX

C*********************************************************************
C*********************************************************************
C*********************************************************************
C
C       Title:          DSEVAS
C
C       Authors:        G. Miminis and M. Reid
C
C       Purpose:        Calculates f such that (A - b*f) has 
C                       eigenvalues  eigvl.  A  and  b  may be
C                       general, or in "controllability" form,
C                       where  A  is unreduced upper hessenberg 
C                       and  b  has one non-zero element in  b(1).
C                       The eigenvalues stored in  eigvl  may be
C                       real or complex conjugate pairs.
C
C
C       Algorithm:
C       ----------
C
C       This subroutine implements an algorithm by G. Miminis and 
C       C. Paige, submitted to the SIAM Journal on Matrix Analysis 
C       and Applications. For details please see the paper.
C
C
C       Input Arguments:
C       ----------------
C
C       [ (+) means argument is altered by the subroutine. ]
C
C (+)   A       real*8(lda,n)           Matrix  A
C                                               
C       n       integer                 Order of matrix A
C
C       lda     integer                 First dimension of matrix A as
C                                       defined in the calling program
C
C (+)   binp    real*8(n)               Input vector  b.
C
C       eigvl   real*8(2,n)             Desired eigenvalues. EIGVL(1,*)
C                                       holds the real part; EIGVL(2,*)
C                                       holds the imaginary.
C               
C (+)   rstor   real*8(4,*)             Working storage for reflectors.
C                                       Must be dimensioned as 
C                                       RSTOR(4,k), where: 
C
C                                       k >= (n**2 - 2*n + 1)/4 
C
C
C (+)   irpos   integer(*)              Position of reflectors. Must
C                                       be dimensioned as IRPOS(k),
C                                       where k is defined as for
C                                       RSTOR.
C
C (+)   cstor   real*8(*)               Working storage for
C                                       conversion to controllability
C                                       form. Must be dimensioned as
C                                       CSTOR(w), where:
C
C                                       w >= (n**2 + 3*n - 4)/2
C
C
C       iform   logical                 Input form.
C                                           .TRUE. = controllability
C                                                       form
C                                           .FALSE. = general
C
C
C (+)   rmu     real*8                  The machine unit.
C                                       If positive, the subroutine
C                                       will use the given value
C                                       as the machine unit.  
C                                       If the given value of rmu is
C                                       zero or negative the subroutine
C                                       will automatically calculate the
C                                       machine unit.  (See note 3
C                                       below.)  The calculated
C                                       machine unit is returned via
C                                       this parameter.
C                                    
C                                       The tolerance used in testing
C                                       for controllability is:
C          
C                                       tol = ||(b,A)|| * u ,
C
C                                       where  u  is the machine unit
C                                       and ||.|| is the 1-norm.
C
C
C       Output Arguments:
C       --------------
C
C (+)   f       real*8(n)               Solution vector
C
C (+)   ieigal  integer                 Number of eigenvalues actually
C                                       allocated.
C
C       Local Variables:
C       ----------------
C
C       isize   integer                 Current size of matrix A.
C       
C       le      integer                 Position of leading edge of
C                                       matrix A in array A.
C
C       irefc   integer                 Index of last elementary
C                                       reflector stored in rstor.
C
C       eps     real*8                  Tolerance used in testing
C                                       for controllability.
C
C
C       
C       Subroutines Used:
C       -----------------
C
C       APPSH, CRH, PREM, GETEPS, EIGCHK, CONTMK, POST, DSTORE
C
C
C       Notes on Usage:
C       ---------------
C
C       1) DSEVAS only takes eigenvalues that are real or in
C               complex conjugate pairs.  These are passed to the
C               subroutine via EIGVL, dimensioned as EIGVL(2,N).
C               EIGVL(1,x) holds the real part, while EIGVL(2,x) holds
C               the imaginary part.  Real valued eigenvalues can be in
C               any order.  Conjugate pairs of eigenvalues must be 
C               stored contiguously, with the first of the pair on an 
C               odd-numbered index in the array EIGVL. For example,
C               the eigenvalues 1,2,3, and 1 +/- 4 can be stored:
C
C                       [1.0,0.0]
C                       [2.0,0.0]
C                       [1.0,+4.0]
C                       [1.0,-4.0]
C                       [3.0,0.0]
C
C               but the following would generate an error:
C
C                       [1.0,0.0]
C                       [1.0,+4.0]
C                       [1.0,-4.0]
C                       [2.0,0.0]
C                       [3.0,0.0]
C
C               since the subroutine working with two eigenvalues
C               at a time, will work with eigenvalues  1.0  and
C               1.0 + i*4.0 , which is not allowed. An easy way
C               to list the eigenvalues could be to first list
C               all the complex eigenvalues, followed by the real
C               eigenvalues.
C
C       2) Before allocating a pair of eigenvalues, the subroutine
C               checks to see if the current matrix is controllable.
C               If this is not the case, no further allocations will
C               take place, and the subroutine will print a warning
C               indicating the number of successful allocations.
C               The resulting matrix (A-b*f) will have those 
C               eigenvalues allocated; the remainder will be undefined.
C
C       3) The DSEVAS routine uses the machine unit as part of the
C               tolerance for controllability determination.  If
C               the input parameter RMU is zero or negative, the
C               internal routine GETEPS automatically calculates
C               the machine unit.  The user should note, however,
C               that such a calculation can fail and give the
C               double precision machine unit, even in the single
C               precision version.  (See Gentleman and Marovich
C               [CACM 17, p. 276, 1974]).  For this reason, the
C               user has the option of supplying the machine unit,
C               possibly from the PORTS machine constants sub-
C               routines. (See TOMS 4 (1978), p. 177).  The
C               parameter RMU returns the machine unit actually
C               used in the calculations.
C
C       4) This subroutine makes extensive use of the level-1 BLAS
C               (Basic Linear Algebra Subroutines) package.  The
C               BLAS-1 subroutines used are:
C
C               DASUM, DAXPY, DCOPY, DDOT, DNRM2, DSCAL, IDAMAX
C
C               These routines are available from various sources,
C               such as the IMSL subroutine library.  
C
C       5) A named common block (MACEPS) is used in this subroutine.
C       
C*********************************************************************
C*********************************************************************
C*********************************************************************

        SUBROUTINE DSEVAS(A,N,LDA,BINP,EIGVL,RSTOR,IRPOS,
     +                          CSTOR,IFORM,RMU,IEIGAL,F)

C
C........input arguments
C
        INTEGER N,LDA,IRPOS(*),IEIGAL
        DOUBLE PRECISION A(LDA,*),BINP(N),F(N),RSTOR(4,*),CSTOR(*)
        DOUBLE PRECISION EIGVL(2,N),RMU
        LOGICAL IFORM
C
C.......local variables
C
        INTEGER ISIZE,LE,IREFC,IOLDRF
        DOUBLE PRECISION S1,S2,LM,EPS,GETEPS
        LOGICAL EIGCHK 

C
C.......convert general form to controllability form
C

        IF(.NOT. IFORM) CALL CONTMK(A,N,LDA,BINP,CSTOR)


C
C.......calculate epsilon for controllability determination
C

        EPS = GETEPS(A,N,LDA,BINP,RMU)

C
C.......clear zero elements of system
C
        DO 50 J=1,N-2
            F(J) = 0.0
            DO 50 I=J+2,N
                A(I,J) = 0.0
50      CONTINUE
        F(N-1) = 0.0
        F(N) = 0.0
            


C
C.......start deflation: continue by double-step until problem is
C               smaller than size 3
C

        IEIGAL = 0
        IREFC = 0
        ISIZE = N
100     IF ( ISIZE .LE. 2) GOTO 200
        
        LE = N - ISIZE + 1
        IOLDRF = IREFC


C
C.......check eigenvalues for complex conjugates
C
        IF(.NOT. EIGCHK(EIGVL,LE,EPS)) THEN
                WRITE(*,5010) 
                WRITE(*,5005) N-ISIZE
                GOTO 900
        ENDIF



C
C.......apply reflector containing eigenvalues to be allocated.
C

        CALL APPSH(A,LE,N,LDA,EIGVL,RSTOR,IRPOS,IREFC)


C
C.......transform A to block upper hessenberg.
C

        CALL CRH(A,LE,N,LDA,RSTOR,IRPOS,IREFC)

        

C
C.......apply latest reflector to binp (vector of inputs)
C
        BINP(LE+1) = 0.0
        BINP(LE+2) = 0.0
        CALL PREM(BINP,LDA,LE,1,1,RSTOR(1,IREFC),3)


C
C......check system for controllability
C
        IF(DABS(BINP(LE+2)) .LT. EPS) THEN
                WRITE(*,5000)
                WRITE(*,5002) EPS
                WRITE(*,5005) LE-1
                IREFC = IOLDRF
                F(LE) = 0.0
                F(LE+1) = 0.0
                GOTO 900

C
C.......specify le,le+1 elements of f
C
        ELSE
                F(LE) = A(LE+2,LE) / BINP(LE+2)
                F(LE+1) = A(LE+2,LE+1) / BINP(LE+2)
        ENDIF


C
C.......reduce problem size for next step
C
        ISIZE  = ISIZE - 2
        IEIGAL = IEIGAL + 2

        GOTO 100


200     CONTINUE

C
C.......allocate eigenvalues for matrices of size one or two.
C
        IF (ISIZE .EQ. 1) THEN
C
C...........check for controllability
C
            IF(DABS(BINP(N)) .LT. EPS) THEN
                WRITE(*,5000)
                WRITE(*,5002) EPS
                WRITE(*,5005) N-1
                F(N) = 0.0
                GOTO 900
            ELSE
                F(N) = (A(N,N) - EIGVL(1,N))/BINP(N)
                IEIGAL = IEIGAL + 1
            ENDIF

        ELSE

C
C...........check for controllability  and conjugate 
C           eigenvalues (size 2)
C
            IF(.NOT. EIGCHK(EIGVL,LE,EPS) .OR.
     +                  DABS(BINP(N-1)) .LT. EPS .OR.
     +                  DABS(A(N,N-1)) .LT. EPS) THEN
                IF(DABS(BINP(N-1)) .LT. EPS .OR.
     +                  DABS(A(N,N-1)) .LT. EPS) THEN
                    WRITE(*,5000)
                    WRITE(*,5002) EPS
                ELSE
                    WRITE(*,5010) 
                ENDIF
                WRITE(*,5005) N-2
                F(N-1) = 0.0
                F(N) = 0.0
                GOTO 900
            ELSE
                LM = EIGVL(1,N-1)*EIGVL(1,N) - EIGVL(2,N-1)*EIGVL(2,N)
                S1 = EIGVL(1,N-1)+EIGVL(1,N) - A(N,N)
                S2 = (S1*A(N,N) - LM)/A(N,N-1)
                F(N-1) = (A(N-1,N-1) - S1)/BINP(N-1)
                F(N) = (A(N-1,N) - S2)/BINP(N-1)
                IEIGAL = IEIGAL + 2
            ENDIF
        ENDIF


900     CONTINUE

C
C.......apply accumulated reflectors to f vector
C
                
        DO 300 K=IREFC,1,-1
                CALL PREM(F,LDA,IRPOS(K),1,1,RSTOR(1,K),3)
300     CONTINUE

C
C.......reverse transformation to controllability form for
C       vector f
C

        IF(.NOT. IFORM) THEN
                II=N*(N+1)/2 + N - 4
                DO 350 K=2,N
                        CALL POST(F,1,N-K+1,N-K+1,1,CSTOR(II),K)
                        II = II - K - 2
350             CONTINUE
        ENDIF

5000    FORMAT(1X,'SYSTEM IS CLOSE TO UNCONTROLLABLE')
5002    FORMAT(1X,'USING TOLERANCE ',E20.12)
5005    FORMAT(1X,I4,' EIGENVALUES ALLOCATED.')
5010    FORMAT(1X,'COMPLEX EIGENVALUES ARE NOT COMPLEX CONJUGATES.')


        RETURN
        END


C*********************************************************************
C
C       Title:          CONTMK
C
C       Purpose:        Converts the system (b,A) into 
C                       controllability form.
C
C
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,n)           Control matrix A
C                                               
C       n       integer                 Order of matrix A
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       binp    real*8(n)               Input vector
C
C       cstor   real*8(*)               Working storage for
C                                       conversion to controllability
C                                       form.
C
C
C
C       Local Variables:
C       ----------------
C
C       ipnt    integer                 Pointer to current reflector
C                                       in CSTOR()
C
C       
C       Subroutines Used:
C       -----------------
C
C       DCOPY, DNRM2, VHOUSE, PREM, POST
C
C*********************************************************************

        SUBROUTINE CONTMK(A,N,LDA,BINP,CSTOR)

        INTEGER N,LDA,IPNT
        DOUBLE PRECISION A(LDA,*),BINP(N),CSTOR(*),DNRM2


        IPNT = 1
        DO 100 I=N,2,-1

            IF(I .EQ. N) THEN
                CALL DCOPY(I, BINP(1), 1, CSTOR(IPNT+1), 1)
                BINP(1) = -DSIGN(DNRM2(I, BINP(1), 1),BINP(1))
                DO 150 J=2,N
                    BINP(J) = 0.0
150             CONTINUE
            ELSE
                CALL DCOPY(I, A(N-I+1,N-I), 1, CSTOR(IPNT+1), 1)
                A(N-I+1,N-I) = -DSIGN(DNRM2(I, A(N-I+1,N-I), 1),
     +                  A(N-I+1,N-I))
                DO 175 J=N-I+2,N
                    A(J,N-I) = 0.0
175             CONTINUE
            ENDIF

            CALL VHOUSE(CSTOR(IPNT), I)
            CALL PREM(A,LDA,N-I+1,N-I+1,N,CSTOR(IPNT),I)
            CALL POST(A,LDA,1,N,N-I+1,CSTOR(IPNT),I)

            IPNT = IPNT + I + 1

100     CONTINUE


        RETURN
        END



C*********************************************************************
C
C       Title:          VHOUSE
C
C       Purpose:        Given a n-element vector stored in v(2)-
C                       v(n+1),  HOUSE calculates pi and u such that
C                       I - u * uT / pi will introduce zeroes into
C                       first two elements of v.  Pi is returned in
C                       v(1), while u overwrites the input vector
C                       v(2)-v(n+1).
C                       
C       Input Arguments:
C       ----------------
C
C       v       real*8(*)       The last n elements of v contain
C                               the input vector to be zeroed.
C
C
C       Output Values:
C       --------------
C
C       v       v(1) = pi
C               v(2)-v(n+1) = u
C
C
C       Subroutines used:
C       -----------------
C
C       DSCAL, DNRM2, IDAMAX
C
C*********************************************************************

C
C.......overwrites v with u of elem. reflector; returns p
C
        SUBROUTINE VHOUSE(V,N)

        INTEGER N,I
        DOUBLE PRECISION V(*),SIGMA,ALFA,DNRM2

        I = IDAMAX( N, V(2), 1)
        ALFA = 1.0/DABS(V(I+1))
        CALL DSCAL( N, ALFA, V(2), 1)
        SIGMA = DSIGN(DNRM2(N, V(2), 1),V(2))
        V(2) = V(2) + SIGMA
        V(1) = SIGMA*V(2)


        RETURN
        END



C*********************************************************************
C
C       Title:          EIGCHK
C
C       Purpose:        Checks that complex eigenvalues are
C                       complex conjugates.  The function
C                       returns .TRUE. if the eigenvalues are
C                       real or complex conjugates, .FALSE.
C                       otherwise.
C                       
C
C
C       Input Arguments:
C       ----------------
C
C       eigvl           real*8(2,n)     Array of eigenvalues to
C                                       be allocated.
C
C       le              integer         Position of leading edge of
C                                       matrix A in array A.
C
C       eps             real*8          Epsilon value for
C                                       comparison to zero.
C
C                                       eps = ||(b,A)||u
C
C                                       where ||.|| is the
C                                       1-norm of the system,
C                                       and u is the machine unit.
C
C       Local Variables:
C       ----------------
C
C       rd1             real*8          Relative difference in real
C                                       parts.
C
C       rd2             real*8          Relative difference in complex
C                                       parts.
C
C       norm,tnorm,eps
C
C       
C       Subroutines Used:
C       -----------------
C
C       DASUM
C
C*********************************************************************

        LOGICAL FUNCTION EIGCHK(EIGVL,LE,EPS)

        DOUBLE PRECISION EIGVL(2,*),EPS,RD1,RD2
        INTEGER LE




        EIGCHK = .TRUE.

C
C.......check if complex eigenvalues are complex conjugates
C

        IF(DABS(EIGVL(2,LE)) .GT. EPS .OR. 
     +                          DABS(EIGVL(2,LE+1)) .GT. EPS) THEN
                RD1 = DABS((EIGVL(1,LE) - EIGVL(1,LE+1))/EIGVL(1,LE+1))
                RD2 = DABS((EIGVL(2,LE) + EIGVL(2,LE+1))/EIGVL(2,LE+1))
                IF(RD1 .GT. EPS .OR. RD2 .GT. EPS) THEN
                        EIGCHK = .FALSE.
                ENDIF
        ENDIF
                

        RETURN
        END


C*********************************************************************
C
C       Title:          GETEPS
C
C       Purpose:        Calculates the tolerance used in 
C                       determining the uncontrollability of
C                       a system.  To compute the tolerance, the
C                       routine computes the 1-norm of the system
C                       (b,A) and multiplies this value by the
C                       machine unit:
C                       
C                       eps = ||(b,A)||*u
C
C                       where ||.|| is the 1-norm, and u is the
C                       machine unit.
C
C                       If the input parameter RMU is positive,
C                       that value is used as the machine unit in
C                       calculating EPS.  If RMU is zero or negative,
C                       the routine calculates the machine unit.
C
C
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,n)           Control matrix A
C                                               
C       n       integer                 Order of matrix A
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       b       real*8(n)               Input vector b
C
C       rmu     real*8                  User value for machine unit
C
C       Local Variables:
C       ----------------
C
C       norm,tnorm,eps
C
C       
C       Subroutines Used:
C       -----------------
C
C       DASUM, DSTORE
C
C*********************************************************************

        DOUBLE PRECISION FUNCTION GETEPS(A,N,LDA,B,RMU)

        INTEGER N,LDA
        DOUBLE PRECISION A(LDA,*),B(N),RMU

        DOUBLE PRECISION NORM,TNORM,EEPS,EPS,DASUM

        COMMON/MACEPS/EEPS

C
C.......use user value for machine unit if non-zero
C
        IF(RMU .GT. 0.0) THEN
                EPS = RMU
        ELSE

C.......calculate machine unit

                EPS = 1.0
30              EPS = EPS / 2.0
                EEPS=EPS + 1.0
                CALL DSTORE(EEPS)
                IF(EEPS .NE. 1.0) GOTO 30
                EPS = EPS * 2.0

                RMU = EPS

        ENDIF
C
C.......calculate 1 norm of system (b,A)
C
        NORM = DASUM(N, B(1), 1)
        DO 50 I=1,N
                TNORM = DASUM(N, A(1,I), 1)
                IF(TNORM .GT. NORM) NORM = TNORM
50      CONTINUE

        GETEPS = EPS * NORM


        RETURN
        END

C
C.......This subroutine ensures that the value E is actually
C       stored in memory, with appropriate rounding errors.
C       (From Gentleman and Marovich, Communications of the ACM,
C       vol. 17, no. 5, May 1974. p. 277)
C

        SUBROUTINE DSTORE(E)

        DOUBLE PRECISION E,V

        COMMON/MACEPS/V

        V = E

        RETURN
        END


C*********************************************************************
C
C       Title:          CRH
C
C       Purpose:        Uses a series of elementary reflectors
C                       to restore the matrix A to a "near" upper
C                       Hessenberg form.
C
C
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,n)           Control matrix A
C                                               
C       le      integer                 Position of leading edge of
C                                       matrix A in array A.
C
C       n       integer                 Order of matrix A
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       rstor   real*8(4,*)             Working storage for 
C                                       reflectors
C
C       irpos   integer(*)              Position of reflectors
C
C       irefc   integer                 Index of last elementary
C                                       reflector stored in rstor.
C
C
C       Output Values:
C       --------------
C
C       A                       A is returned, transformed into near 
C                               upper Hessenberg.
C
C       rstor,irpos,irefc       Contain reflectors used to transform
C                               A to near upper Hessenberg.
C
C       Local Variables:
C       ----------------
C
C
C       
C       Subroutines Used:
C       -----------------
C
C       DCOPY, HOUSE, DNRM2, POST, PREM
C
C*********************************************************************

        SUBROUTINE CRH(A,LE,N,LDA,RSTOR,IRPOS,IREFC)

        INTEGER LE,N,LDA,I,IREFC,IRPOS(*)
        DOUBLE PRECISION A(LDA,*),P,RSTOR(4,*),DNRM2

        DO 100 I=N,LE+3,-1
                IREFC = IREFC + 1
                IRPOS(IREFC) = I-3
                CALL DCOPY(3, A(I,I-3), LDA, RSTOR(2,IREFC), 1)
                CALL HOUSE(RSTOR(1,IREFC))

                P = -DSIGN(DNRM2(3, A(I,I-3), LDA),A(I,I-1))
                CALL POST(A,LDA,LE,I-1,I-3,RSTOR(1,IREFC),3)
                A(I,I-1) = P
                A(I,I-2) = 0.0
                A(I,I-3) = 0.0

                CALL PREM(A,LDA,I-3,LE,N,RSTOR(1,IREFC),3)

100     CONTINUE

        RETURN
        END




C*********************************************************************
C
C       Title:          APPSH
C
C       Purpose:        Calculates an elementary reflector
C                       containing the implicit shift and pre-
C                       and post multiplies A.
C                       
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,n)           Control matrix A.
C
C       le      integer                 Position of leading edge of
C                                       matrix A in array A.
C
C       n       integer                 Order of matrix A
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       eigvl   real*8(2,n)             Vector of eigenvalues to be
C                                       allocated.
C
C       rstor   real*8(4,*)             Working storage for reflectors.
C
C       irpos   integer(*)              Position of reflectors.
C
C       irefc   integer                 Index of last reflector in
C                                       irpos and rstor.
C
C
C       Output Values:
C       --------------
C
C       A               Returns the original matrix A pre- and 
C                       post-multiplied by the elementary reflector.
C
C       rstor,irpos     Stores the value and position of the 
C                       elementary reflector.
C
C       la,lm
C
C       Subroutines used:
C       -----------------
C
C       HOUSE, PREM, POST
C
C*********************************************************************

        SUBROUTINE APPSH(A,LE,N,LDA,EIGVL,RSTOR,IRPOS,IREFC)

        INTEGER LE,N,LDA,IRPOS(*),IREFC
        DOUBLE PRECISION A(LDA,*),RSTOR(4,*)
        DOUBLE PRECISION EIGVL(2,*)

        DOUBLE PRECISION LA,LM

        IREFC = IREFC + 1
        IRPOS(IREFC) = N-2
C
C.......construct bottom row of A~
C
        LA = EIGVL(1,LE) + EIGVL(1,LE+1)
        LM = EIGVL(1,LE)*EIGVL(1,LE+1) - EIGVL(2,LE)*EIGVL(2,LE+1)
        RSTOR(2,IREFC) = A(N,N-1)*A(N-1,N-2)
        RSTOR(3,IREFC) = A(N,N-1)*A(N-1,N-1) + A(N,N)*A(N,N-1) - 
     +          LA*A(N,N-1)
        RSTOR(4,IREFC) = A(N,N-1)*A(N-1,N) + A(N,N)*A(N,N) -
     +          LA*A(N,N) + LM


C
C.......convert A to PtAP
C
        
        CALL HOUSE(RSTOR(1,IREFC))

        CALL POST(A,LDA,LE,N,N-2,RSTOR(1,IREFC),3)
        CALL PREM(A,LDA,N-2,LE,N,RSTOR(1,IREFC),3)


        RETURN
        END



C*********************************************************************
C
C       Title:          PREM
C
C       Purpose:        Premultiplies the matrix contained in array A
C                       by the 3-element elementary reflector stored 
C                       in vector v.
C                       
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,nv)          Control matrix A.
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       irow    integer                 First row of A affected by
C                                       the reflector. (Reflector will
C                                       be applied to rows *irow* to
C                                       *irow+nv-1*.)
C
C       j,k     integer                 Range of columns of A on
C                                       which to apply reflector.
C
C       v       real*8(4)               Contains the elementary 
C                                       reflector.  v(1) = pi and
C                                       v(2)->v(nv+1) = u, where
C                                       I - u*uT/pi is the reflector.
C
C       nv      integer                 Dimension of vector v.  
C
C
C       Output Values:
C       --------------
C
C       A               Returns the original matrix A pre-
C                       multiplied by the elementary reflector.
C
C
C
C       Subroutines used:
C       -----------------
C
C       DDOT, DAXPY
C
C*********************************************************************

        SUBROUTINE PREM(A,LDA,IROW,J,K,V,NV)

        INTEGER IROW,J,K,LDA,I,NV
        DOUBLE PRECISION A(LDA,*),V(*),ALPHA,DDOT

        DO 100 I=J,K
        
                ALPHA = DDOT(NV, A(IROW,I), 1, V(2), 1)/V(1)
                CALL DAXPY(NV, -ALPHA, V(2), 1, A(IROW,I), 1)

100     CONTINUE



        RETURN
        END


C*********************************************************************
C
C       Title:          POST
C
C       Purpose:        post-multiplies the matrix contained in 
C                       array A by the 3-element elementary reflector 
C                       stored in vector v.
C                       
C       Input Arguments:
C       ----------------
C
C       A       real*8(lda,n)           Control matrix A.
C
C       lda     integer                 First dimension of array A as
C                                       defined in the calling program
C
C       j,k     integer                 Range of rows of A on
C                                       which to apply reflector.
C
C       icol    integer                 First column of A affected by
C                                       the reflector. (Reflector will
C                                       be applied to columns *icol* 
C                                       to *icol+nv-1*.)
C
C       v       real*8(4)               Contains the elementary 
C                                       reflector.  v(1) = pi and
C                                       v(2)->v(nv+1) = u, where
C                                       I - u*uT/pi is the reflector.
C
C       nv      integer                 Dimension of vector v.
C                                       
C
C       Output Values:
C       --------------
C
C       A               Returns the original matrix A 
C                       post-multiplied by the elementary reflector.
C
C
C
C       Subroutines used:
C       -----------------
C
C       DDOT, DAXPY
C
C*********************************************************************

        SUBROUTINE POST(A,LDA,J,K,ICOL,V,NV)

        INTEGER J,K,ICOL,LDA,I,NV
        DOUBLE PRECISION A(LDA,*),V(*),ALPHA,DDOT

        DO 100 I=J,K
        
                ALPHA = DDOT(NV, A(I,ICOL), LDA, V(2), 1)/V(1)
                CALL DAXPY(NV, -ALPHA, V(2), 1, A(I,ICOL), LDA)

100     CONTINUE



        RETURN
        END


C*********************************************************************
C
C       Title:          HOUSE
C
C       Purpose:        Given a 3-element vector stored in v(2)-
C                       v(4),  HOUSE calculates pi and u such that
C                       I - u * uT / pi will introduce zeroes into
C                       first two elements of v.  Pi is returned in
C                       v(1), while u overwrites the input vector
C                       v(2)-v(4).
C                       
C       Input Arguments:
C       ----------------
C
C       v       real*8(4)       The last three elements of v contain
C                               the input vector to be zeroed.
C
C
C       Output Values:
C       --------------
C
C       v       v(1) = pi
C               v(2)-v(4) = u
C
C
C       Subroutines used:
C       -----------------
C
C       DSCAL, DNRM2, IDAMAX
C
C*********************************************************************

C
C.......overwrites v with u of elem. reflector; returns p
C
        SUBROUTINE HOUSE(V)

        INTEGER I
        DOUBLE PRECISION V(4),SIGMA,ALFA,DNRM2

        I = IDAMAX( 3, V(2), 1)
        ALFA = 1.0/DABS(V(I+1))
        CALL DSCAL( 3, ALFA, V(2), 1)
        SIGMA = DSIGN(DNRM2(3, V(2), 1),V(4))
        V(4) = V(4) + SIGMA
        V(1) = SIGMA*V(4)


        RETURN
        END
