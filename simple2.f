      PROGRAM SIMPLE
      INTEGER I, IER, PGBEG
      REAL XR(180), YR(180) 
      REAL XS(5), YS(5)
      REAL IR
      DATA XS/1.,2.,3.,4.,5./ 
      DATA YS/1.,4.,9.,16.,25./
      IER = PGBEG(0,'?',1,1)      
      IF (IER.NE.1) STOP   
      CALL PGENV(0.,10.,0.,20.,0,1)
      CALL PGLAB('(x)', '(y)', 'A Sine Graph')
      CALL PGPT(5,YS,XS,9)
      DO 10 I=1,180
      IR=REAL(I)
      YR(I)= SIN(IR)


 10     CONTINUE      
      
       CALL PGLINE(180,XR,YR)
      !
        CALL PGEND    
        END PROGRAM SIMPLE
