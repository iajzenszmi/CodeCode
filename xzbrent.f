          program xzbrent
c         driver for routine zbrent
          integer n, nbmax
          real x1, x2
          parameter(n=100,nbmax=20,x1=1.0,x2=50.0)
          integer i,nb
          real bessj0,xb1(nbmax),xb2(nbmax)
          external  bessj0
          nb=nbmax
          call zbrak(bessj0,x1,x2,n,xb1,xb2,nb)
          write(*,"(/1x,a)") "Roots of bessj0"
          write(*,"(/1x,t19,a,t31,a/)")
          do 11 i=1,nb
             to1 = (1.0e-6)*(xb1(i)+xb2(i))/2.0
             root = zbrent(bessj0,xb1(i),xb2(i),to1)
         write(*,"(1x,a,i2,2x,f12.6,e16.4)")"Root ",i,root,bessj0(root)
 11      continue
         end
         subroutine zbrak(fx,x1,x2,n,xb1,xb2,nb)
         dimension xb1(1), xb2(2)
         nbb = nb
         nb=0
         x=x1
         dx=(x2-x1)/n
         fp=fx(x)
         do 11 i=1,n
         x=x+dx
         fc=fx(x)
         if (fc*fp.lt.0) then
             nb = nb+1
             xb1(nb)=x-dx
             xb2(nb)=x
         endif
         fp=fc
         if(nbb.eq.nb) return
 11      continue
         return
         end            
         function zbrent(func,x1,x2,tol)
         parameter(itmax=100,eps=3.e-8)
         a=x1
         b=x2
         fa=func(a)
         fb=func(b)
          if(fb*fa.gt.0.) pause "Root must be bracketed for zbrent"
          fc=fb
          do 11 iter=1,itmax
               if(fb*fc.gt.0) then
               c = a
               fc = fa
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
                  tol1=2. *eps*abs(b)+0.5*tol
                  xm=.5*(c-b)
                  if(abs(xm).le.tol1 .or. fb .eq. 0 ) then
                  zbrent=0
                  return
                  endif
                  if(abs(e) .ge. tol1 .and.abs(fa) .gt. abs(fb)) then
                  s = fb / fa
                  if(a .eq. c) then
                   p=2. *xm*s
                   q=1.-s
                   else
                   q=fa/fc
                   r=fb/fc
                   p=s*(2.*xm*q*(q-r)-(b-a)*(r-1.))
                   q=(q-1.)*(r-1.)*(s-1.)
                   endif
                   if(p.gt.0.) q=-q
                   p=abs(p)
                   if(2.*p .lt. min(3.*xm*q-abs(tol1*q),abs(e*q))) then
                   e=d
                   d=p/q
                   else
                   d=xm
                    e=f
                   endif
                   else
                   d=xm
                   e=d
                   endif
                   a=b
                   fa=fb
                   if(abs(d) .gt. tol1) then
                   b=b +d
                   else
                   b=b+sign(tol1,xm)
                   endif
                   fb = func(b)
  11            continue
                 pause "zbrent exceeding maximum uterations"
                 zbrent=b
                 return
                 end 
                 function bessj0(x)
       real*8 y,p1,p2,p3,p4,p5,q1,q2,q3,q4,q5,r1,r2,r3,r4,r5,r6,&
      *s1,s2,s3,s4,s5,s6
