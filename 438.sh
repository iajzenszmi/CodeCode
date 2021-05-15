:#! /bin/sh
# This is a shell archive, meaning:
# 1. Remove everything above the #! /bin/sh line.
# 2. Save the resulting text in a file.
# 3. Execute the file with /bin/sh (not csh) to create the files:
#	Fortran/
#	Fortran/Dp/
#	Fortran/Dp/Drivers/
#	Fortran/Dp/Drivers/Makefile
#	Fortran/Dp/Drivers/driver.f
#	Fortran/Dp/Drivers/res
#	Fortran/Dp/Src/
#	Fortran/Dp/Src/src.f
# This archive created: Thu Dec 15 13:28:17 2005
export PATH; PATH=/bin:$PATH
if test ! -d 'Fortran'
then
	mkdir 'Fortran'
fi
cd 'Fortran'
if test ! -d 'Dp'
then
	mkdir 'Dp'
fi
cd 'Dp'
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
cc TOMS438_PRB tests TOMS438.
c
      implicit none

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TOMS438_PRB'
      write ( *, '(a)' ) '  Test TOMS algorithm 438, product-type'
      write ( *, '(a)' ) '  two point Gauss-Legendre Simpson'
      write ( *, '(a)' ) '  integration.'

      call test01
      call test02

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TOMS438_PRB'
      write ( *, '(a)' ) '  Normal end of execution.'

      stop
      end
      subroutine test01

c***********************************************************************
c
cc TEST01 tests the rule with one factor equal to 1.
c
      implicit none

      double precision a
      double precision b
      double precision exact
      double precision fn00, gn00
      external fn00
      external gn00
      integer n
      double precision vint

      a = -4.0D+00
      b =  4.0D+00
      exact = 2.0D+00 * atan ( 4.0D+00 )

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TEST01'
      write ( *, '(a)' ) '  Integral of F(X) * G(X) from -1 to 1,'
      write ( *, '(a)' ) '  with F(X) = 1, G(X) = 1/(1+x**2 )'
      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) '       N    VINT'
      write ( *, '(a)' ) ' '

      do n = 1, 10
        call p2pgs ( a, b, n, fn00, gn00, vint )
        write ( *, '(2x,i6,2x,g14.6)' ) n, vint
      end do

      write ( *, '(a)' ) ' '
      write ( *, '(a,g14.6)' ) '  Exact:  ', exact

      return
      end
      subroutine test02

c***********************************************************************
c
cc TEST02 tests the rule with factors exp(-x) and cos(x).
c
      implicit none

      double precision a
      double precision b
      double precision exact
      double precision gn01, gn02
      external gn01
      external gn02
      integer n
      double precision vint

      a =  0.0D+00
      b =  3.141592653589793D+00

      exact = 0.5 * exp ( -b ) * ( sin ( b ) - cos ( b ) )
     &      - ( 0.5 * exp ( -a ) * ( sin ( a ) - cos ( a ) ) )

      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) 'TEST02'
      write ( *, '(a)' ) '  Integral of F(X) * G(X) from 0 to PI,'
      write ( *, '(a)' ) '  with F(X) = EXP(-X), G(X) = COS(X)'
      write ( *, '(a)' ) ' '
      write ( *, '(a)' ) '       N    VINT'
      write ( *, '(a)' ) ' '

      do n = 1, 10
        call p2pgs ( a, b, n, gn01, gn02, vint )
        write ( *, '(2x,i6,2x,g14.6)' ) n, vint
      end do

      write ( *, '(a)' ) ' '
      write ( *, '(a,g14.6)' ) '  Exact:  ', exact

      return
      end
      function fn00 ( x )

c***********************************************************************
c
cc FN00 evaluates the function 1.
c
      implicit none

      double precision fn00
      double precision x

      fn00 = 1.0D+00

      return
      end
      function fn01 ( x )

c***********************************************************************
c
cc FN01 evaluates the function X.
c
      implicit none

      double precision fn01
      double precision x

      fn01 = x

      return
      end
      function gn00 ( x )

c***********************************************************************
c
cc GN00 evaluates the function 1/(1+X**2).
c
      implicit none

      double precision gn00
      double precision x

      gn00 = 1.0D+00 / ( 1.0D+00 + x * x )

      return
      end
      function gn01 ( x )

c***********************************************************************
c
cc GN01 evaluates the function exp(-x).
c
      implicit none

      double precision gn01
      double precision x

      gn01 = exp ( - x )

      return
      end
      function gn02 ( x )

c***********************************************************************
c
cc GN02 evaluates the function cos(x).
c
      implicit none

      double precision gn02
      double precision x

      gn02 = cos ( x )

      return
      end
SHAR_EOF
fi # end of overwriting check
if test -f 'res'
then
	echo shar: will not over-write existing file "'res'"
else
cat << "SHAR_EOF" > 'res'
 
TOMS438_PRB
  Test TOMS algorithm 438, product-type
  two point Gauss-Legendre Simpson
  integration.
 
TEST01
  Integral of F(X) * G(X) from -1 to 1,
  with F(X) = 1, G(X) = 1/(1+x**2 )
 
       N    VINT
 
       1     5.49020    
       2     2.47843    
       3     2.90842    
       4     2.57255    
       5     2.69529    
       6     2.63329    
       7     2.66030    
       8     2.64773    
       9     2.65342    
      10     2.65082    
 
  Exact:     2.65164    
 
TEST02
  Integral of F(X) * G(X) from 0 to PI,
  with F(X) = EXP(-X), G(X) = COS(X)
 
       N    VINT
 
       1    0.390787    
       2    0.516996    
       3    0.520913    
       4    0.521413    
       5    0.521532    
       6    0.521572    
       7    0.521589    
       8    0.521596    
       9    0.521600    
      10    0.521603    
 
  Exact:    0.521607    
 
TOMS438_PRB
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
      SUBROUTINE P2PGS ( A, B, N, FN, GN, VINT )
C
C  THIS SUBROUTINE USES THE PRODUCT TYPE TWO-POINT GAUSS-
C  LEGENDRE-SIMPSON RULE COMPOUNDED N TIMES TO APPROXIMATE
C  THE INTEGRAL FROM A TO B OF THE FUNCTION FN(X) * GN(X).
C  FN AND GN ARE FUNCTION SUBPROGRAMS WHICH MUST BE SUPPLIED
C  BY THE USER.  THE RESULT IS STORED IN VINT.
C
      INTEGER I, N, J, K
      DOUBLE PRECISION A, AG, AM(2,3), B, F(2), FN, G(3),
     &  GN, H, VINT, X(2), Y(2)
      DATA AM(1,1), AM(2,3) / 2 * 2.732050807568877D0 /,
     &  AM(1,2), AM(2,2) / 2 * 4.D0 /, AM(1,3), AM(2,1)
     &  / 2 * -.7320508075688773D0 /
      H = ( B - A ) / DBLE ( FLOAT ( N ) )
      X(1) = A + .2113248654051871D0 * H
      X(2) = A + .7886751345948129D0 * H
      Y(1) = A + H / 2.D0
      Y(2) = A + H
      VINT = 0.D0
      G(3) = GN ( A )
      DO 4 I  =  1, N
        G(1) = G(3)
        DO 1 J = 1, 2
          F(J) = FN ( X(J) )
          G(J+1) = GN ( Y(J) )
          X(J) = X(J) + H
          Y(J) = Y(J) + H
1     CONTINUE
        DO 3 J = 1, 2
          AG = 0.D0
          DO 2 K = 1, 3
            AG = AG + AM(J,K) * G(K)
2     CONTINUE
          VINT = VINT + F(J) * AG
3     CONTINUE
4     CONTINUE
      VINT = H * VINT / 12.D0
      RETURN
      END
SHAR_EOF
fi # end of overwriting check
cd ..
cd ..
cd ..
#       End of shell archive
exit 0
