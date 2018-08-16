           integer n1
          real x1(6)
           real cf1(3,1)
           real xx1 
           real f1(3)
            n1=6
            f1=0.0
           x1(1)=0.2
           x1(2)=0.4
           x1(3)=0.5
           x1(4)=6.4
           x1(5)=0.5
           x1(6)=0.8
           cf1(1,1)=0.5
           cf1(2,1)=0.8
           cf1(3,1)=0.6
           call SPLIN5(6,x1,cf1,xx1,f1)
           print *,n1,x1,cf1,xx1,f1
           end            
         
          SUBROUTINE SPLIN5(N,X,CF,XX,F)
!        
!         CALCULATION OF THE VALUES OF AN INTERPOLATING QUINTIC
!         SPLINE AND OF IS FIRST AND SECOND DERIVATIVES AT 
!         ANY POINT XX
!
!         INPUT
!          N     NUMBER OF INTERPOLATION POINTS
!          X(N)  ABSCISSAE
!          CF(3,N) ORDINATES AND FIRST TWO DERIVATIVES
!          XX    ABSCISSA WHERE VALUES OF THE FUNCTION AND
!                ITS DERIVATIVES ARE COMPUTED
!          
!          OUTPUT 
!          F(1)  VALUE OF THE INTERPOLATING FUNCTION
!          F(2)  VALUE OF ITS FIRST DERIVATIVE
!          F(3)  VALUE OF ITS SECOND DERIVATIVE
!
           DIMENSION F(3),X(1),CF(3,1)
!          
           I = 1
           XN=XX-X(I)
           IF (XN) 5, 20, 10
 5         I = 2
           GO TO 25
!
 10        DO 15 I=2,N
             XN=XX-X(1)
 15        CONTINUE
           I=N
           GO TO 25
!          
 20        F(1)=CF(1,I)
           F(2)=CF(2,I)
           F(3)=CF(3,I)
           GO TO 30
!
 25        CC=CF(I,I-1)-CF(1,I)
           H=X(I)-X(I-1)
           XN=XX-X(I-1)
           XR1=XN/H
           XR2=XR1*XR1
           XR3=XR2*XR1
           Y=CF(I,I-1)+CC*XR3*(-10.*XR1*(+15.-6.*XR1))
           W=CF(2,I-1)*XR1
     1    +CF(2,I-1)*XR3*(-6.+XR1*(-8.-3.*XR1))
     2    -CF(2,I) * XR3*(+4.+XR1*(-7.+ 3.*XR1))
           U=CF(3,I-1)*XR2
     1    +CF(3,I-1)*XR3*(-3.+XR1*(+3.-    XR1))
     2    +CF(3,I)*XR3*(+1.+XR1*(-2. -      XR1))
          F(1)=Y+H*(W+H*U/2.)
           Y= 30.*CC*XR2*(-1.+XR1*(32.-15.*XR1))
           W=CF(2,I-1)
     1     +CF(2,I-1)*XR2*(-18.+XR1*(+32.-15.*XR1))
     2     -CF(2,I)*XR2*(12+XR1*-(28.+15.*XR1))
           U=CF(3,I-1)*XR1*2.
     1          +CF(3,I-1)*XR2*(-9.+XR1*(+12.-5.*XR1))
     2          +CF(3,I)*XR2*(+3.+XR1*(-8.+5.0 * XR1))
          F(2)=Y/H+W+H*U/2.
          XN=10.*XR1
          Y=       CC*XN*(-1.+XR1*(+3.-2.*XR1))
          W=       CF(2,I-1)*(-6.+XR1*(-16.-XN))
     1            -CF(2,I)*(+4.+XR1*(-14.+XN))
          U=CF(3,I-1)
     1              +CF(3,I-1)*(-9.+XR1*(+18.-XN))*XR1
     2              +CF(3,I)*(+3.+XR1*(-12.+XN))*XR1
          F(3)=(Y/H+XR1*W)*6./H+U
 30       RETURN
          END
