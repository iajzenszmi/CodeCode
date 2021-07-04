C      driver for routine spline
       integer n
C      real pi /3.141593/
       parameter(n=20,pi=3.141593)
       integer i, i2
       real yp1, ypn, x1(20),y1(20),y2(20)
       write(*,*) " second derivatives for sin(x) from 0 to PI"
C      generate array for interpolation
       do 11 i=1,20 
       i2=i    
       x1(i2) =i2*pi/n
       print *,x1(i2)
       y1(i2)=sin(x1(i2)) 
 11    continue
C      calculate 2nd derivative with SPLINE
       yp1= cos(x1(1))
       ypn=cos(x1(n))
       call spline1(x1,y1,n,yp1,ypn,y2)            
C      test results
       write(*,"(t19,a,t35,a)") "spline", " actual"
       write(*,"(t6,a,t17,a,t33,a)") "angle","2nd deriv","2nd deriv"
       do 12  i=1,n
       write(*,"(1x,f8.2,2f16.6)") x1(i),y1(i), sin(x1(i))
 12    continue
        end 
        
       subroutine spline1(x,y,n,b,c,d)      
       integer n, i   
       real x(20), y(20), b(20), c(20), d(20)  
c
c  the coefficients b(i), c(i), and d(i), i=1,2,...,n are computed
c  for a cubic interpolating spline
c
c    s(x) = y(i) + b(i)*(x-x(i)) + c(i)*(x-x(i))**2 + d(i)*(x-x(i))**3
c
c    for  x(i) .le. x .le. x(i+1)
c
c  input..
c
c    n = the number of data points or knots (n.ge.2)
c    x = the abscissas of the knots in strictly increasing order
c    y = the ordinates of the knots
c
c  output..
c
c    b, c, d  = arrays of spline coefficients as defined above.
c
c  using  p  to denote differentiation,
c    
C
C     y(i) = s(x(i))
C     b(i) = sp(x(i))
C     c(i) = spp(x(i))/2
C     d(i) = sppp(x(i))/6 
C   (derivative from the right)
c
c  the accompanying function subprogram  seval  can be used
c  to evaluate the spline.
c
c
       integer nm1, ib 
       real t
c
       nm1 = n-1
       if ( n .lt. 2 ) return
       if ( n .lt. 3 ) go to 50
c
c  set up tridiagonal system
c
c  b = diagonal, d = offdiagonal, c = right hand side.
c
       d(1) = x(2) - x(1)
       c(2) = (y(2) - y(1))/d(1)
       do 10 i = 2, nm1
         d(i) = x(i+1) - x(i)
         b(i) = 2.*(d(i-1) + d(i))
         c(i+1) = (y(i+1) - y(i))/d(i)
         c(i) = c(i+1) - c(i)
 10      continue
c
c  end conditions.  third derivatives at  x(1)  and  x(n)
c  obtained from divided differences
c
      b(1) = -d(1)
      b(n) = -d(n-1)
      c(1) = 0.
      c(n) = 0.
      if ( n .eq. 3 ) go to 15
      c(1) = c(3)/(x(4)-x(2)) - c(2)/(x(3)-x(1))
      c(n) = c(n-1)/(x(n)-x(n-2)) - c(n-2)/(x(n-1)-x(n-3))
      c(1) = c(1)*d(1)**2/(x(4)-x(1))
      c(n) = -c(n)*d(n-1)**2/(x(n)-x(n-3))
c
c  forward elimination
c
   15 do 20 i = 2, n
         t = d(i-1)/b(i-1)
         b(i) = b(i) - t*d(i-1)
         c(i) = c(i) - t*c(i-1)
   20 continue
c
c  back substitution
c
      c(n) = c(n)/b(n)
      do 30 ib = 1, nm1
         i = n-ib
         c(i) = (c(i) - d(i)*c(i+1))/b(i)
   30 continue
c
c  c(i) is now the sigma(i) of the text
c
c  compute polynomial coefficients
c
      b(n) = (y(n) - y(nm1))/d(nm1) + d(nm1)*(c(nm1) + 2.*c(n))
      do 40 i = 1, nm1
         b(i) = (y(i+1) - y(i))/d(i) - d(i)*(c(i+1) + 2.*c(i))
         d(i) = (c(i+1) - c(i))/d(i)
         c(i) = 3.*c(i)
   40 continue
      c(n) = 3.*c(n)
      d(n) = d(n-1)
      return
c
   50 b(1) = (y(2)-y(1))/(x(2)-x(1))
      c(1) = 0.
      d(1) = 0.
      b(2) = b(1)
      c(2) = 0.
      d(2) = 0.
      return
      end subroutine
