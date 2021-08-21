#! /bin/sh
# This is a shell archive, meaning:
# 1. Remove everything above the #! /bin/sh line.
# 2. Save the resulting text in a file.
# 3. Execute the file with /bin/sh (not csh) to create the files:
#	Fortran/
#	Fortran/Sp/
#	Fortran/Sp/Drivers/
#	Fortran/Sp/Drivers/Makefile
#	Fortran/Sp/Drivers/driver.f
#	Fortran/Sp/Drivers/res
#	Fortran/Sp/Src/
#	Fortran/Sp/Src/src.f
# This archive created: Thu Dec 15 13:28:20 2005
export PATH; PATH=/bin:$PATH
if test ! -d 'Fortran'
then
	mkdir 'Fortran'
fi
cd 'Fortran'
if test ! -d 'Sp'
then
	mkdir 'Sp'
fi
cd 'Sp'
if test ! -d 'Drivers'
then
	mkdir 'Drivers'
fi
cd 'Drivers'
if test -f 'Makefile'
then
	echo shar: will not over-write existing file "'Makefile'"
else
cat << "SHAR_EOF" > 'Makefile'
all: Res

src.o: src.f
	$(F77) $(F77OPTS) -c src.f

driver.o: driver.f
	$(F77) $(F77OPTS) -c driver.f

DRIVERS= driver
RESULTS= Res

Objs1= driver.o src.o
driver: $(Objs1)
	$(F77) $(F77OPTS) -o driver $(Objs1) $(SRCLIBS)
Res: driver 
	./driver >Res

diffres:Res res
	echo "Differences in results from driver"
	$(DIFF) Res res

clean: 
	rm -rf *.o $(DRIVERS) $(CLEANUP) $(RESULTS)
SHAR_EOF
fi # end of overwriting check
if test -f 'driver.f'
then
	echo shar: will not over-write existing file "'driver.f'"
else
cat << "SHAR_EOF" > 'driver.f'
      program main

c***********************************************************************
c
cc TOMS467_PRB tests XPOSE.
c
      implicit none

      integer a_max
      integer moved_max

      parameter ( a_max = 3000 )
      parameter ( moved_max = 100 )

      real a(a_max)
      logical moved(moved_max)
      integer n1
      integer n12
      integer n2
      integer nwork

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TOMS467_PRB'
      write ( *, '(a)' ) '  Test TOMS algorithm 467, in place'
      write ( *, '(a)' ) '  matrix transposition.'

      n1 = 10
      n2 = 10
      n12 = n1 * n2
      nwork = ( n1 + n2 ) / 2

      write ( *, '(a)' ) ' '
      write ( *, '(a,i6)' ) '  Row dimension N1 =    ', n1
      write ( *, '(a,i6)' ) '  Column dimension N2 = ', n2
      write ( *, '(a,i6)' ) '  Total size N12 =      ', n12 
      write ( *, '(a,i6)' ) '  Workspace NWORK =     ', nwork

      call set_a ( n1, n2, a )

      call print_a ( n1, n2, a, 1, 5, 1, 5 )

      call xpose ( a, n1, n2, n12, moved, nwork )

      call print_a ( n2, n1, a, 1, 5, 1, 5 )

      n1 = 7
      n2 = 30
      n12 = n1 * n2
      nwork = ( n1 + n2 ) / 2

      write ( *, '(a)' ) ' '
      write ( *, '(a,i6)' ) '  Row dimension N1 =    ', n1
      write ( *, '(a,i6)' ) '  Column dimension N2 = ', n2
      write ( *, '(a,i6)' ) '  Total size N12 =      ', n12 
      write ( *, '(a,i6)' ) '  Workspace NWORK =     ', nwork

      call set_a ( n1, n2, a )

      call print_a ( n1, n2, a, 1, 5, 1, 5 )

      call xpose ( a, n1, n2, n12, moved, nwork )

      call print_a ( n2, n1, a, 1, 5, 1, 5 )

      n1 = 24
      n2 = 8
      n12 = n1 * n2
      nwork = ( n1 + n2 ) / 2

      write ( *, '(a)' ) ' '
      write ( *, '(a,i6)' ) '  Row dimension N1 =    ', n1
      write ( *, '(a,i6)' ) '  Column dimension N2 = ', n2
      write ( *, '(a,i6)' ) '  Total size N12 =      ', n12 
      write ( *, '(a,i6)' ) '  Workspace NWORK =     ', nwork

      call set_a ( n1, n2, a )

      call print_a ( n1, n2, a, 1, 5, 1, 5 )

      call xpose ( a, n1, n2, n12, moved, nwork )

      call print_a ( n2, n1, a, 1, 5, 1, 5 )

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TOMS467_PRB'
      write ( *, '(a)' ) '  Normal end of execution.'

      stop
      end
      subroutine set_a ( n1, n2, a )

c***********************************************************************
c
cc SET_A sets the matrix A.
c
      implicit none

      integer n1
      integer n2

      real a(n1,n2)
      integer i
      integer j

      do i = 1, n1
        do j = 1, n2
          a(i,j) = 1000 * i + j
        end do
      end do

      return
      end
      subroutine print_a ( m, n, a, i_lo, i_hi, j_lo, j_hi )

c***********************************************************************
c
cc PRINT_A prints the matrix A.
c
      implicit none

      integer m
      integer n

      real a(m,n)
      integer i
      integer i_hi
      integer i_lo
      integer j
      integer j_hi
      integer j_lo

      write ( *, '(a)' ) ' '

      do i = i_lo, i_hi
        write ( *, '(2x,5f8.0)' ) ( a(i,j), j = j_lo, j_hi )
      end do

      return
      end

SHAR_EOF
fi # end of overwriting check
if test -f 'res'
then
	echo shar: will not over-write existing file "'res'"
else
cat << "SHAR_EOF" > 'res'
 
TOMS467_PRB
  Test TOMS algorithm 467, in place
  matrix transposition.
 
  Row dimension N1 =        10
  Column dimension N2 =     10
  Total size N12 =         100
  Workspace NWORK =         10
 
     1001.   1002.   1003.   1004.   1005.
     2001.   2002.   2003.   2004.   2005.
     3001.   3002.   3003.   3004.   3005.
     4001.   4002.   4003.   4004.   4005.
     5001.   5002.   5003.   5004.   5005.
 
     1001.   2001.   3001.   4001.   5001.
     1002.   2002.   3002.   4002.   5002.
     1003.   2003.   3003.   4003.   5003.
     1004.   2004.   3004.   4004.   5004.
     1005.   2005.   3005.   4005.   5005.
 
  Row dimension N1 =         7
  Column dimension N2 =     30
  Total size N12 =         210
  Workspace NWORK =         18
 
     1001.   1002.   1003.   1004.   1005.
     2001.   2002.   2003.   2004.   2005.
     3001.   3002.   3003.   3004.   3005.
     4001.   4002.   4003.   4004.   4005.
     5001.   5002.   5003.   5004.   5005.
 
     1001.   2001.   3001.   4001.   5001.
     1002.   2002.   3002.   4002.   5002.
     1003.   2003.   3003.   4003.   5003.
     1004.   2004.   3004.   4004.   5004.
     1005.   2005.   3005.   4005.   5005.
 
  Row dimension N1 =        24
  Column dimension N2 =      8
  Total size N12 =         192
  Workspace NWORK =         16
 
     1001.   1002.   1003.   1004.   1005.
     2001.   2002.   2003.   2004.   2005.
     3001.   3002.   3003.   3004.   3005.
     4001.   4002.   4003.   4004.   4005.
     5001.   5002.   5003.   5004.   5005.
 
     1001.   2001.   3001.   4001.   5001.
     1002.   2002.   3002.   4002.   5002.
     1003.   2003.   3003.   4003.   5003.
     1004.   2004.   3004.   4004.   5004.
     1005.   2005.   3005.   4005.   5005.
 
TOMS467_PRB
  Normal end of execution.
SHAR_EOF
fi # end of overwriting check
cd ..
if test ! -d 'Src'
then
	mkdir 'Src'
fi
cd 'Src'
if test -f 'src.f'
then
	echo shar: will not over-write existing file "'src.f'"
else
cat << "SHAR_EOF" > 'src.f'
      SUBROUTINE XPOSE ( A, N1, N2, N12, MOVED, NWORK )
C  TRANSPOSITION OF A RECTANGULAR MATRIX IN SITU.
C  BY NORMAN BRENNER, MIT, 1/72.  CF. ALG. 380, CACM, 5/70.
C  TRANPOSITION OF THE N1 BY N2 MATRIX A AMOUNTS TO
C  REPLACING THE ELEMENT AT VECTOR POSITION I (O-ORIGIN)
C  WITH THE ELEMENT AT POSITION N1*I (MOD N1*N2-1).
C  EACH SUBCYCLE OF THIS PERMUTATION IS COMPLETED IN ORDER.
C  MOVED IS A LOGICAL WORK ARRAY OF LENGTH NWORK.
C  REALLY A(N1,N2), BUT N12 = N1 * N2
C     .. Scalar Arguments ..
      INTEGER N1,N12,N2,NWORK
C     ..
C     .. Array Arguments ..
      REAL A(N12)
      LOGICAL MOVED(NWORK)
C     ..
C     .. Local Scalars ..
      REAL ATEMP,BTEMP
      INTEGER I,I1,I1MAX,I1MIN,I2,IA1,IA2,IDIV,IP,ISOID,ISTART,ITEST,M,
     +        MMIA1,MMIA2,MMIST,N,NCOUNT,NPOWER
C     ..
C     .. Local Arrays ..
      INTEGER IEXP(8),IFACT(8),IPOWER(8),NEXP(8)
C     ..
C     .. External Subroutines ..
      EXTERNAL FACTOR
C     ..
C     .. Intrinsic Functions ..
      INTRINSIC MOD
      IF ( N1 .LT. 2 .OR. N2 .LT. 2 ) RETURN
      N = N1
      M = N1 * N2 - 1
      IF ( N1 .NE. N2 ) GO TO 30
C  SQUARE MATRICES ARE DONE SEPARATELY FOR SPEED.
      I1MIN = 2
      DO 20 I1MAX = N, M, N
        I2 = I1MIN + N - 1
        DO 10 I1 = I1MIN, I1MAX
          ATEMP = A(I1)
          A(I1) = A(I2)
          A(I2) = ATEMP
          I2 = I2 + N
10      CONTINUE
        I1MIN = I1MIN + N + 1
20    CONTINUE
      RETURN
C  MODULUS M IS FACTORED INTO PRIME POWERS.  EIGHT FACTORS
C  SUFFICE UP TO M = 2*3*5*7*11*13*17*19 = 9,767,520.
30    CALL FACTOR ( M, IFACT, IPOWER, NEXP, NPOWER )
      DO 40 IP = 1, NPOWER
        IEXP(IP) = 0
40    CONTINUE
C  GENERATE EVERY DIVISOR OF M LESS THAN M/2.
      IDIV = 1
50    IF ( IDIV .GE. M / 2 ) GO TO 190
C  THE NUMBER OF ELEMENTS WHOSE INDEX IS DIVISIBLE BY IDIV
C  AND BY NO OTHER DIVISOR OF m IS THE EULER TOTIENT
C  FUNCTION, PHI(M/IDIV).
      NCOUNT = M / IDIV
      DO 60 IP = 1, NPOWER
        IF ( IEXP(IP) .EQ. NEXP(IP) ) GO TO 60
        NCOUNT = ( NCOUNT / IFACT(IP) ) * ( IFACT(IP) - 1 )
60    CONTINUE
      DO 70 I = 1, NWORK
        MOVED(I) = .FALSE.
70    CONTINUE
C  THE STARTING POINT OF A SUBCYCLE IS DIVISIBLE ONLY BY IDIV
C  AND MUST NOT APPEAR IN ANY OTHER SUBCYCLE.
      ISTART = IDIV
80    MMIST = M - ISTART
      IF ( ISTART .EQ. IDIV ) GO TO 120
      IF ( ISTART .GT. NWORK ) GO TO 90
      IF ( MOVED(ISTART) ) GO TO 160
90    ISOID = ISTART / IDIV
      DO 100 IP = 1, NPOWER
        IF ( IEXP(IP) .EQ. NEXP(IP) ) GO TO 100
        IF ( MOD ( ISOID, IFACT(IP) ) .EQ. 0 ) GO TO 160
100   CONTINUE
      IF ( ISTART .LE. NWORK ) GO TO 120
      ITEST = ISTART
110   ITEST = MOD ( N * ITEST, M )
      IF ( ITEST .LT. ISTART .OR. ITEST .GT. MMIST ) GO TO 160
      IF ( ITEST .GT. ISTART .AND. ITEST .LT. MMIST ) GO TO 110
120   ATEMP = A(ISTART+1)
      BTEMP = A(MMIST+1)
      IA1 = ISTART
130   IA2 = MOD ( N * IA1, M )
      MMIA1 = M - IA1
      MMIA2 = M - IA2
      IF ( IA1 .LE. NWORK ) MOVED(IA1) = .TRUE.
      IF ( MMIA1 .LE. NWORK ) MOVED(MMIA1) = .TRUE.
      NCOUNT = NCOUNT - 2
C  MOVE TWO ELEMENTS, THE SECOND FROM THE NEGATIVE
C  SUBCYCLE.  CHECK FIRST FOR SUBCYCLE CLOSURE.
      IF ( IA2 .EQ. ISTART ) GO TO 140
      IF ( MMIA2 .EQ. ISTART ) GO TO 150
      A(IA1+1) = A(IA2+1)
      A(MMIA1+1) = A(MMIA2+1)
      IA1 = IA2
      GO TO 130
140   A(IA1+1) = ATEMP
      A(MMIA1+1) = BTEMP
      GO TO 160
150   A(IA1+1) = BTEMP
      A(MMIA1+1) = ATEMP
160   ISTART = ISTART + IDIV
      IF ( NCOUNT .GT. 0 ) GO TO 80
      DO 180 IP = 1, NPOWER
        IF ( IEXP(IP) .EQ. NEXP(IP) ) GO TO 170
        IEXP(IP) = IEXP(IP) + 1
        IDIV = IDIV * IFACT(IP)
        GO TO 50
170     IEXP(IP) = 0
        IDIV = IDIV / IPOWER(IP)
180   CONTINUE
190   CONTINUE
      END
      SUBROUTINE FACTOR ( N, IFACT, IPOWER, NEXP, NPOWER )
C  FACTOR N INTO ITS PRIME POWERS, NPOWER IN NUMBER.
C  E.G., FOR N = 1960 = 2**3 * 5 * 7**2, NPOWER = 3, IFACT = 2, 5, 7,
C  IPOWER = 8, 5, 49, AND NEXP = 3, 1, 2.
C     .. Scalar Arguments ..
      INTEGER N,NPOWER
C     ..
C     .. Array Arguments ..
      INTEGER IFACT(8),IPOWER(8),NEXP(8)
C     ..
C     .. Local Scalars ..
      INTEGER IDIV,IFCUR,IP,IQUOT,NPART
      IP = 0
      IFCUR = 0
      NPART = N
      IDIV = 2
10    IQUOT = NPART / IDIV
      IF ( NPART - IDIV * IQUOT ) 60, 20, 60
20    IF ( IDIV - IFCUR ) 40, 40, 30
30    IP = IP + 1
      IFACT(IP) = IDIV
      IPOWER(IP) = IDIV
      IFCUR = IDIV
      NEXP(IP) = 1
      GO TO 50
40    IPOWER(IP) = IDIV * IPOWER(IP)
      NEXP(IP) = NEXP(IP) + 1
50    NPART = IQUOT
      GO TO 10
60    IF ( IQUOT - IDIV ) 100, 100, 70
70    IF ( IDIV - 2 ) 80, 80, 90
80    IDIV = 3
      GO TO 10
90    IDIV = IDIV + 2
      GO TO 10
100   IF ( NPART - 1 ) 140, 140, 110
110   IF ( NPART - IFCUR ) 130, 130, 120
120   IP = IP + 1
      IFACT(IP) = NPART
      IPOWER(IP) = NPART
      NEXP(IP) = 1
      GO TO 140
130   IPOWER(IP) = NPART * IPOWER(IP)
      NEXP(IP) = NEXP(IP) + 1
140   NPOWER = IP
      RETURN
      END

SHAR_EOF
fi # end of overwriting check
cd ..
cd ..
cd ..
#       End of shell archive
exit 0
