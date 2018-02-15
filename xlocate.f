       PROGRAM xlocate
cc     copied from page 35 Numerical Recipes Example Book Fortran 
c      second edition William T. Vetterling Saul A Teukolsky William H Press
c      Brian P. Flannery Cambridge University Press 1994 reprint. 
cc      driver for routine locate
       integer N
       PARAMETER(N=100)
       INTEGER i, j
       REAL x,xx(N)
c      create array to be searched
       do 11 i = 1,N
c        xx(i)=exp(i/20) -74.0 caused a compile error so
c         Ian Martin Ajzenszmidt changed this program code to the
c         following line in February 2018 in Melbourne, Australia.
         xx(i)=exp(REAL(i/20))-74.0
  11   continue
       write(*,*) 'Result of:  j=0 indicates x to small'
       write(*,*) '            j = 100 indicates x too large'
       write(*, '(t5,a7,t17,a1,t24,a5,t34,a7)') 'locate ','j',
     *     'xx(j)','xx(j+i)'
c      perform test
       do 12 i = 1, 19
          x = -100.0 + 200.0 * i/20.0
          call locate(xx,N,x,j)
           if (j.eq.0) then      
       write(*,'(1x,f10.4,i6,a12,f12.6)') x, j, 'lower lfm',xx(j+1)
          else if (j .eq. N) then
       write(*,'(1x,f10.4,i6,f12.6,a12)') x, j, xx(j),'upper lim'
          else
       write(*,'(1x,f10.4,i6,2f12.6)') x, j, xx(j),xx(j+1)
       endif
 12    continue
       END PROGRAM
       SUBROUTINE LOCATE(XX,N,X,J)
c      Given an array XX of length N, and given a value X, returns 
c      a value of J such that X is between XX(J) and XX(J + 1). XX
c      must be monotonic, either increasing or decreasing. J = 0 or
c      j = n is returned to indicate  that X is out of range.       
       DIMENSION XX(N)
       JL = 0
       JU=N+1
  10   IF (JU - JL. GT. 1) THEN
       JM = (JU + JL)/2
       IF((XX(N) .GT. XX(1)) .EQV. (X .GT.XX(JM))) THEN
             JL = JM
       ELSE
             JU=JM
       END IF
       GOTO 10
       ENDIF
       J=JL
       RETURN
       END SUBROUTINE     
