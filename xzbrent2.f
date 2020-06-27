          program xzbrent
!         driver for routine zbrent
          integer n, nbmax
          double precision x1, x2
          double precision bessj0, zbrent             
          integer i,nb
          double precision xb1(9999999),xb2(9999999),tol3,root              
!          external  bessj0
          parameter(n=2000,nbmax=2000,x1=1.0,x2=50.0)
          call zbrak(bessj0,x1,x2,n,xb1,xb2,nb)
          write(*,"(/1x,a)") "Roots of bessj0"
          write(*,"(/1x,t19,a/)")
          do 11 i=1,nb
             tol3 = (1.0e-6)*(xb1(i)+xb2(i))/2.0
         root = zbrent(bessj0,xb1(i),xb2(i),tol3)
         write(*,"(5x,a,i2,2x,d12.6,d16.4)")"Root ",i,root,bessj0(root)
 011      continue
         end
          double precision FUNCTION zbrent(func,x1,x2,tol)
          INTEGER ITMAX
          double precision  tol1,x1,x2,func,EPS,tol
 !         EXTERNAL func
          PARAMETER (ITMAX=200,EPS=3.e-8)
! Using Brent’s method, find the root of a function func known to lie between x1 and x2 .
!The root, returned as zbrent , will be refined until its accuracy is tol .
!Parameters: Maximum allowed number of iterations, and machine floating-point precision.
          INTEGER iter
          double precision a,b,c,d,e,fa,fb,fc,p,q,r,s,xm
          a=x1
          b=x2
          fa=func(a)
          fb=func(b)
      if ((fa.gt.0. .and. fb.gt.0.) .or. (fa .lt. 0. .and. fb .lt. 0.))&
          &print *, " root must be bracketed for zbrent"
          c=b
          fc=fb
          do 11 iter=1,ITMAX
          if((fb.gt.0..and.fc.gt.0.).or.(fb.lt.0..and.fc.lt.0.))then
          c=a
!Rename a, b, c and adjust bounding interval d.
          fc=fa
          d=b-a
          e=d
          endif
          if(abs(fc).lt.abs(fb)) then
              a=b
              b=c
              c=a
              fa=fb
              fb=fc
              fc=fa
           endif
             tol1=2.*EPS*abs(b)+0.5*tol
!Convergence check.
             xm=.5*(c-b)
             if(abs(xm).le.tol1 .or. fb.eq.0.)then
               zbrent=b
               return
             endif
      if(abs(e).ge.tol1 .and. abs(fa).gt.abs(fb)) then
        s=fb/fa
!Attempt inverse quadratic interpolation.
       if(a.eq.c) then
          p=2.*xm*s
          q=1.-s
       else
          q=fa/fc
          r=fb/fc
          p=s*(2.*xm*q*(q-r)-(b-a)*(r-1.))
          q=(q-1.)*(r-1.)*(s-1.)
       endif
       if(p.gt.0.) q=-q
       !Check whether in bounds.
        p=abs(p)
        if(2.*p .lt. min(3.*xm*q-abs(tol1*q),abs(e*q))) then
              e=d
!Accept interpolation.
              d=p/q
        else
               d=xm
!Interpolation failed, use bisection.
               e=d
         endif
         else
!Bounds decreasing too slowly, use bisection.
         d=xm
         e=d
         endif
         a=b
!Move last best guess to a.
         fa=fb
         if(abs(d) .gt. tol1) then
!Evaluate new trial root.
          b=b+d
         else
         b=b+sign(tol1,xm)
         endif
         fb=func(b)
11        continue 
         print *,"zbrent exceeding maximum iterations"
         zbrent=b
         return
         END
       SUBROUTINE zbrak(fx,x1,x2,n,xb1,xb2,nb)
       INTEGER n,nb
       double precision x1,x2,xb1(20),xb2(20)
       double precision fx
!       EXTERNAL fx
!Given a function fx defined on the interval from x1-x2 subdivide the interval into n equally
!spaced segments, and search for zero crossings of the function. nb is input as the 
!maximum number of roots sought, and is reset to the number of bracketing pairs xb1(1:nb) ,
!xb2(1:nb) that are found.
      INTEGER i,nbb
      double precision dx,fc,fp,x
      nbb=0
      x=x1
      dx=(x2-x1)/n
     !Determine the spacing appropriate to the mesh.
      fp=fx(x)
      do 11 i=1,n
      !Loop over all intervals
      x=x+dx
      fc=fx(x)
      if(fc*fp.le.0.) then
!If a sign change occurs then record values for the bounds.
      nbb=nbb+1
      xb1(nbb)=x-dx
      xb2(nbb)=x
      if(nbb.eq.nb)goto 11
      endif
      fp=fc
 11   enddo
      continue           
      nb=nbb
      return
      END
      double precision FUNCTION bessj0(x)
!      REAL x
!     Returns the Bessel function J 0 ( x ) for any real x .
!      REAL ax,xx,z
      DOUBLE PRECISION p1,p2,p3,p4,p5,q1,q2,q3,q4,q5,r1,r2,r3,r4,r5,r6,&
      s1,s2,s3,s4,s5,s6,ax,xx,z,x,y
!      We’ll accumulate polynomials in double precision.
      SAVE p1,p2,p3,p4,p5,q1,q2,q3,q4,q5,r1,r2,r3,r4,r5,r6,s1,s2,s3,s4,&
      s5,s6
      DATA p1,p2,p3,p4,p5/1.d0,-.1098628627d-2,.2734510407d-4,&
      .2073370639d-5,.2093887211d-6/
      DATA q1,q2,q3,q4,q5/-.1562499995d-1,.1430488765d-3,&
      -.6911147651d-5,.7621095161d-6,-.934945152d-7/
      DATA r1,r2,r3,r4,r5,r6/57568490574.d0,-13362590354.d0,&
      6516196.7d0,-11214424.18d0,77392.33017d0,-184.9052456d0/
      DATA s1,s2,s3,s4,s5,s6/57568490411.d0,1029532985.d0,&
      9494680.718d0,59272.64853d0,267.8532712d0,1.d0/
       if(abs(x).lt.8.)then
! Direct rational function fit.
       y=x**2
       bessj0=(r1+y*(r2+y*(r3+y*(r4+y*(r5+y*r6)))))/ &
       (s1+y*(s2+y*(s3+y*(s4+y*(s5+y*s6)))))
      else
!       Fitting function (6.5.9).
       ax=abs(x)
        z=8./ax
        y=z**2
        xx=ax-.785398164
        bessj0 = sqrt(.636619772/ax)*(cos(xx)*(p1+y*(p2+y*(p3+y*&
        (p4+y**p5))))-z*sin(xx)*(q1+y*(q2+y*(q3+y*(q4+y*q5)))))
        endif
          return
        END

