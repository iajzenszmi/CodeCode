          program xzbrent
c         driver for routine zbrent
          integer n, nbmax
          real x1, x2
          parameter(n=100,nbmax=20,x1=1.0,x2=50.0)
          integer i,nb
          real bessj0,zbrent,root,tol,xb1(nbmax),xb2(nbmax)
          external  bessj0
          nb=nbmax
          call zbrak(bessj0,x1,x2,n,,xb1,xb2,nb)
          write(*,"(/ix,a)") "Roots of bessj0"
          write(*,"(/ix,t19,a,t31,a/)")
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
         if(nbb.eq.b)return
 11      continue
         return
         end            
