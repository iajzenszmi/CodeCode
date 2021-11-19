#! /bin/sh
# This is a shell archive, meaning:
# 1. Remove everything above the #! /bin/sh line.
# 2. Save the resulting text in a file.
# 3. Execute the file with /bin/sh (not csh) to create the files:
#	C
#	Fortran
# This archive created: Sun Jul 20 19:55:01 1997
export PATH; PATH=/bin:$PATH
if test ! -d 'C'
then
	mkdir 'C'
fi
cd 'C'
if test -f '280.c'
then
	echo shar: will not over-write existing file "'280.c'"
else
cat << \SHAR_EOF > '280.c'
/* CACM Alg 280 */
#include <stdio.h>
#include <math.h>
#define nmax 100
double pown(a,n)
  double a; int n;
{
  double x; int i;
  if(n == 0) return(1);
  if(n>0)
     {
       x=a;
       for(i=1;i<n;i++) x=x*a;
     }
  return(x);
}
void gregory(n,r,t,w)
  int n,r;
  double w[],t[];
/* 

  Computes the abscissas and weights of the Gregory quadrature rule with r
  differences:
  
    \int_{t_0}^{t_n} f(t) dt  \approx
  	  h \left( \frac{1}{2} f_0 + f_1 + \cdots +
            f_{n-1} + \frac{1}{2} f_n \right ) -
  	  \frac{h}{12}( \nabla f_n - \delta f_0) -
  	  \frac{h}{24}( \nabla^2 f_n + \delta^2 f_0) - \cdots -
  	  h c_{r+1}^{*} (\nabla^r f_n + \delta^r f_0)
  = \sum_{j=0}^{n} w_j f(t_j),
  
  where h = (t_n - t_0)/n, and the c_j^* are given in Henrici (1964). The
  number r must be an integer from 0 to n, the number of subdivisions. The
  left and right endpoints must be in t(0) and t(n) respectively. The
  abscissas are returned in t(0) to t(n) and the corresponding weights in
  w(0) to w(n).
  
  If r=0 the Gregory rule is the same as the repeated trapezoid rule, and if
  r=n the same as the Newton-Cotes rule (closed type). The order p of the
  quadrature rule is p = r+1 for r odd and p = r+2 for r even. For n >= 9
  and large r some of the weights can be negative.
  
  For n<= 32 and r<= 24, the numerical integration of powers (less than r)
  of x on the interval [0,1] gave 9 significant digits correct in an 11
  digit mantissa.
  
  Refs:
    Hildebrand, F. B. Introduction to Numerical Analysis. McGraw-Hill, New
    York, 1956, p. 155.
  
    Henrici, Peter. Elements of Numerical Analysis. Wiley, New York, 1964,
    p. 252.

*/
{
  int i,j; double h,cj,c[nmax+1],b[nmax]; 
  b[0]=1; c[0]=1; c[1]=-0.5; b[n]=0;
  h=(t[n]-t[0])/n;
  w[0]=w[n]=0.5;
  for(i=1;i<n;i++)
    {
      w[i]=1; t[i]=i*h+t[0]; b[i]=0;
    }
  if(r>n) r=n;
  for(j=1;j<=r;j++)
  {
    cj=0.5*c[j];
    for(i=j;i>=1;i--) b[i]=b[i]-b[i-1];
    for(i=3;i<=j+2;i++) cj=cj+c[j+2-i]/i;
    c[j+1]=-cj;
    for(i=0;i<=n;i++) w[i]=w[i]-cj*(b[n-i]+b[i]);
  }
  for(i=0;i<=n;i++) w[i]=w[i]*h;
}
main()
{
  double t[nmax],w[nmax],a=-1.0,b=1.0,I,In;
  int i,n,r,p;
  n=7; r=n;
  t[0]=a; t[n]=b;    /* limits of integration */
/* Generate the weights */
  gregory(n,r,t,w);
  for(i=0;i<=n;i++) printf("%f %f\n",w[i],t[i]);
/* Check - integrate x^p */
  for(p=0;p<=r+4;p++)
  {
    I=(pown(b,p+1)-pown(a,p+1))/(p+1);
    In=0;
    for(i=0;i<=n;i++) In=In+w[i]*pown(t[i],p);
    printf("%d %d %d %f %f %e\n",n,r,p,I,In,I-In);
  }
}
SHAR_EOF
fi # end of overwriting check
if test -f 'Res'
then
	echo shar: will not over-write existing file "'Res'"
else
cat << \SHAR_EOF > 'Res'
0.086921 -1.000000
0.414005 -0.714286
0.153125 -0.428571
0.345949 -0.142857
0.345949 0.142857
0.153125 0.428571
0.414005 0.714286
0.086921 1.000000
7 7 0 2.000000 2.000000 4.440892e-16
7 7 1 0.000000 -0.000000 1.110223e-16
7 7 2 0.666667 0.666667 2.220446e-16
7 7 3 0.000000 -0.000000 8.326673e-17
7 7 4 0.400000 0.400000 1.665335e-16
7 7 5 0.000000 -0.000000 8.326673e-17
7 7 6 0.285714 0.285714 0.000000e+00
7 7 7 0.000000 -0.000000 4.163336e-17
7 7 8 0.222222 0.230297 -8.075245e-03
7 7 9 0.000000 -0.000000 2.775558e-17
7 7 10 0.181818 0.202532 -2.071405e-02
7 7 11 0.000000 -0.000000 1.387779e-17
SHAR_EOF
fi # end of overwriting check
cd ..
if test ! -d 'Fortran'
then
	mkdir 'Fortran'
fi
cd 'Fortran'
if test ! -d 'Driver'
then
	mkdir 'Driver'
fi
cd 'Driver'
if test -f 'driver.f'
then
	echo shar: will not over-write existing file "'driver.f'"
else
cat << \SHAR_EOF > 'driver.f'
      PROGRAM DRIVER
C      ALGORITHM 280, COLLECTED ALGORITHMS FROM ACM.
C      THIS WORK PUBLISHED IN COMMUNICATIONS OF THE ACM,
C      VOL. 9, NO. 4, April, 1966, P.  271
C

C     .. Parameters ..
      INTEGER NMAX
      PARAMETER (NMAX=100)
      DOUBLE PRECISION ONE
      PARAMETER (ONE=1.0)
C     ..
C     .. Local Scalars ..
      DOUBLE PRECISION A,B,IN,IVAL
      INTEGER I,N,P,R
C     ..
C     .. Local Arrays ..
      DOUBLE PRECISION C(0:NMAX+1),T(0:NMAX),W(0:NMAX),WSP(0:NMAX)
C     ..
C     .. External Subroutines ..
      EXTERNAL GREGORY
C     ..
      A = -ONE
      B = ONE
      N = 7
      R = N
C
C limits of integration
C
      T(0) = A
      T(N) = B
C
C Generate the weights
C
      CALL GREGORY(N,R,T,W,WSP,C)
      DO I = 0,N
          WRITE (*,FMT='(2e14.6)') W(I),T(I)
      END DO
C
C Check - integrate x^p */
C
      DO P = 0,R + 4
          IVAL = (B** (P+1)-A** (P+1))/ (P+1)
          IN = 0
          DO I = 0,N
              IN = IN + W(I)*T(I)**P
          END DO
          WRITE (*,FMT='(3i4, 2e14.6, e12.4)') N,R,P,IVAL,IN,IVAL - IN
      END DO
      END
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
cat << \SHAR_EOF > 'src.f'
      SUBROUTINE GREGORY(N,R,T,W,B,C)
C
C
C  Computes the abscissas and weights of the Gregory quadrature rule with r
C  differences:
C  
C    \int_{t_0}^{t_n} f(t) dt  \approx
C  	  h \left( \frac{1}{2} f_0 + f_1 + \cdots +
C            f_{n-1} + \frac{1}{2} f_n \right ) -
C  	  \frac{h}{12}( \nabla f_n - \delta f_0) -
C  	  \frac{h}{24}( \nabla^2 f_n + \delta^2 f_0) - \cdots -
C  	  h c_{r+1}^{*} (\nabla^r f_n + \delta^r f_0)
C  = \sum_{j=0}^{n} w_j f(t_j),
C  
C  where h = (t_n - t_0)/n, and the c_j^* are given in Henrici (1964). The
C  number r must be an integer from 0 to n, the number of subdivisions. The
C  left and right endpoints must be in t(0) and t(n) respectively. The
C  abscissas are returned in t(0) to t(n) and the corresponding weights in
C  w(0) to w(n).
C  
C  If r=0 the Gregory rule is the same as the repeated trapezoid rule, and if
C  r=n the same as the Newton-Cotes rule (closed type). The order p of the
C  quadrature rule is p = r+1 for r odd and p = r+2 for r even. For n >= 9
C  and large r some of the weights can be negative.
C  
C  For n<= 32 and r<= 24, the numerical integration of powers (less than r)
C  of x on the interval [0,1] gave 9 significant digits correct in an 11
C  digit mantissa.
C  
C  Refs:
C    Hildebrand, F. B. Introduction to Numerical Analysis. McGraw-Hill, New
C    York, 1956, p. 155.
C  
C    Henrici, Peter. Elements of Numerical Analysis. Wiley, New York, 1964,
C    p. 252.
C
C
C     .. Parameters ..
      DOUBLE PRECISION HALF,ONE,ZERO
      PARAMETER (HALF=0.5D0,ONE=1.0D0,ZERO=0.0D0)
C     ..
C     .. Scalar Arguments ..
      INTEGER N,R
C     ..
C     .. Array Arguments ..
      DOUBLE PRECISION B(0:N), C(0:N+1),T(0:N),W(0:N)
C     ..
C     .. Local Scalars ..
      DOUBLE PRECISION CJ,H
      INTEGER I,J
C     ..
C     .. Intrinsic Functions ..
      INTRINSIC DBLE,REAL
C     ..
      B(0) = ONE
      C(0) = ONE
      C(1) = -HALF
      B(N) = ZERO
      H = (T(N)-T(0))/N
      W(0) = HALF
      W(N) = HALF
      DO I = 1,N - 1
          W(I) = ONE
          T(I) = DBLE(REAL(I))*H + T(0)
          B(I) = ZERO
      END DO
      IF (R.GT.N) THEN
          R = N
      END IF

      DO J = 1,R
          CJ = HALF*C(J)
          DO I = J,1,-1
              B(I) = B(I) - B(I-1)
          END DO
          DO I = 3,J + 2
              CJ = CJ + C(J+2-I)/I
          END DO
          C(J+1) = -CJ
          DO I = 0,N
              W(I) = W(I) - CJ* (B(N-I)+B(I))
          END DO
      END DO
      DO I = 0,N
          W(I) = W(I)*H
      END DO
      END
SHAR_EOF
fi # end of overwriting check
if test -f 'Res'
then
	echo shar: will not over-write existing file "'Res'"
else
cat << \SHAR_EOF > 'Res'
  0.869213E-01 -0.100000E+01
  0.414005E+00 -0.714286E+00
  0.153125E+00 -0.428571E+00
  0.345949E+00 -0.142857E+00
  0.345949E+00  0.142857E+00
  0.153125E+00  0.428571E+00
  0.414005E+00  0.714286E+00
  0.869213E-01  0.100000E+01
   7   7   0  0.200000E+01  0.200000E+01  0.4441E-15
   7   7   1  0.000000E+00 -0.111022E-15  0.1110E-15
   7   7   2  0.666667E+00  0.666667E+00  0.2220E-15
   7   7   3  0.000000E+00 -0.832667E-16  0.8327E-16
   7   7   4  0.400000E+00  0.400000E+00  0.1110E-15
   7   7   5  0.000000E+00 -0.693889E-16  0.6939E-16
   7   7   6  0.285714E+00  0.285714E+00  0.0000E+00
   7   7   7  0.000000E+00 -0.416334E-16  0.4163E-16
   7   7   8  0.222222E+00  0.230297E+00 -0.8075E-02
   7   7   9  0.000000E+00 -0.277556E-16  0.2776E-16
   7   7  10  0.181818E+00  0.202532E+00 -0.2071E-01
   7   7  11  0.000000E+00 -0.138778E-16  0.1388E-16
SHAR_EOF
fi # end of overwriting check
cd ..
cd ..
#	End of shell archive
exit 0
