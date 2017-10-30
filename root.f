       FUNCTION ROOT(WORK)
C      EXTERNAL ABS
       REAL WORK, ARG
       INTEGER IDX
       ARG = ABS(WORK)
       ROOT = ARG/ 2.0
       DO 6 IDX = 1, 1000000
       PRINT *, IDX  
       ROOT = (ROOT + ARG/ ROOT )/ 2.0
       IF ( ABS((ROOT ** 2 - ARG) /ARG)-0.000001) 7,7,6
       PRINT *, ROOT, WORK, ARG
6      CONTINUE
       PRINT *,  ROOT, WORK, ARG
7      RETURN
       END 
        
      
