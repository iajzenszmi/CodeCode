       program xsor
!      driver for routine sor
       integer JMAX,NSTEP
       REAL PI
       PARAMETER(JMAX=33,NSTEP=4,PI=3.1415926)
       INTEGER I,J,MIDL
       DOUBLE PRECISION RJAC, A(JMAX, JMAX),B(JMAX,JMAX),C(JMAX,JMAX)
       DOUBLE PRECISION D(JMAX,JMAX),E(JMAX,JMAX),F(JMAX,JMAX),U(JMAX,JMAX)
       DO 12 I=1,JMAX
          DO 11 J=1,JMAX
         A(I,J)=1.d0
         B(I,J)=1.d0
         C(I,J)=1.d0  
         D(I,J)=1.d0
         E(I,J)=-4.0     
         F(I,J)=0.d0
         U(I,J)=0.d0
 11    continue
 12    continue 
       MIDL=JMAX/2
       F(MIDL,MIDL)=2.d0/(JMAX-1)**2
       RJAC=COS(PI/JMAX)
       CALL SOR(A,B,C,D,E,F,U,JMAX,RJAC)
       WRITE(*,'(1X,A)') "SOR SOLUTION"
       DO 13 I=1,JMAX,NSTEP
          WRITE(*,"(1X,9F8.4)") (U(I,J),J=1,JMAX,NSTEP)
 13    CONTINUE
       WRITE(*,"(/1X,A)") "TEST THAT SOLUTION SATISFIES DIFFERENCE EQNS"
       DO 15 I=NSTEP+1, JMAX-1,NSTEP
          DO 14 J=NSTEP+1,JMAX-1,NSTEP
            F(I,J)=U(I+1,J)+U(I-1,J)+U(I,J+1)-4.D0*U(I,J)
 14    CONTINUE
       WRITE(*,"(7X,9F8.4)")(F(I,J),J=NSTEP+1,JMAX-1,NSTEP)
 15    CONTINUE
       END    
       SUBROUTINE sor(a,b,c,d,e,f,u,jmax,rjac)
       INTEGER jmax,MAXITS
       DOUBLE PRECISION rjac, a( jmax,jmax), b(jmax,jmax),&
     &  c(jmax, jmax), d(jmax,jmax), e(jmax,jmax),f(jmax,jmax),&
     &  u(jmax,jmax), EPS
       PARAMETER (MAXITS=1000,EPS=1.d-5)
!Successive overrelaxation solution of equatio n (19.5.25) with Chebyshev acceleration. a,
!b, c, d, e, and f are input as the coefficients of the equation, each dimensioned to the
!grid size JMAX × JMAX. u is input as the initial guess to the solution, usually zero, and
!returns with the final value. rjac is input as the spectral radius of the Jacobi iteration,
!or an estimate of it.
      INTEGER ipass,j,jsw,l,lsw,n
      DOUBLE PRECISION anorm,anormf, omega,resid 
!Double precision is a good ideafor JMAX bigger than about 25.
      anormf=0.d0 
!Compute initial norm of residual and terminate iteration when
!norm has been reduced by a factor EPS.
      do 12 j=2,jmax-1
      do 11 l=2,jmax-1
         anormf=anormf+abs(f(j,l))
! Assumes initial u is zero.
11     enddo 
12     enddo 
       omega=1.d0
       do 16 n=1,MAXITS
          anorm=0.d0
          jsw=1
       do 15 ipass=1,2
! O    odd-even ordering.
       lsw=jsw
       do 14 j=2,jmax-1
       do 13 l=lsw+1,jmax-1,2
       resid=a(j,l)*u(j+1,l)+b(j,l)*u(j-1,l)+&
      &c(j,l)*u(j,l+1)+d(j,l)*u(j,l-1)+&
      & e(j ,l)*u(j,l)-f(j,l)
       anorm=anorm+abs(resid)
       u(j,l)=u(j,l)-omega*resid/e(j,l)
   13     enddo  
       lsw=3-lsw
   14  enddo 
       jsw=3-jsw
       if(n.eq.1.and.ipass.eq.1) then
       omega=1.d0/(1.d0-.5d0*rjac**2)
       else
       omega=1.d0/(1.d0-.25d0*rjac**2*omega)
       endif
15     enddo 
       if(anorm.lt.EPS*anormf) return
16     enddo 
       pause "MAXITS exceeded in sor"
       END
       
