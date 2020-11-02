       REAL I
       open(9,FILE = "SPCTRL.DAT",STATUS="OLD")
       DO 10 I=1,1200
       WRITE(9,9000) SIN(I)
       PRINT *,SIN(I) 
 9000  FORMAT(F12.9)      
 10    CONTINUE
       CLOSE(9)
       END PROGRAM
