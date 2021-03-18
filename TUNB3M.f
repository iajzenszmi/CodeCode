      PROGRAM TUNB3M
C
C---|---1|0---|---2|0---|---3|0---|---4|0---|---5|0---|---6|0---|---7|0-
C=======================================================================
C
C  Program TUNB3m
C  ==============
C
C     This program calls UNB3m subroutines to compute neutral atmosphere
C     delays, delay rates and meteorlogical parameters for several latitudes, 
C     heights, days of year and elevation angles. Created for test purpouses. 
C     T stands for 'Test'.
C
C   Created/Modified
C   ----------------
C
C      DATE          WHO                 WHAT
C      ----          ---                 ----	
C      2006/01       Rodrigo Leandro     PROGRAM created
C      2006/12/08    Rodrigo Leandro     Program modified to be used for
C                                        unb3m, unb3mr and unb3mm simultaneously
C
C   INPUT/OUTPUT
C   ------------
C
C	This program does not have any input, and it outputs a file called 
C      'tunb3m.txt' containing all computed values.
C
C=======================================================================
C---|---1|0---|---2|0---|---3|0---|---4|0---|---5|0---|---6|0---|---7|0-
C
      IMPLICIT NONE
      INTEGER*4 OUTF  /6/
      DOUBLE PRECISION LAT,HEI,DOY,ELV,LATRAD,HZD,HMF,WZD,WMF,RTROP,PI,
     & ELVRAD,DHMFDEL,DWMFDEL,DRATE,T,P,E,TM
C
C
C=======================================================================
C Open tunb3m.txt file for output
C-----------------------------------------------------------------------
      OPEN (OUTF,FILE='tunb3m.txt',STATUS='UNKNOWN')
C=======================================================================
C
C
C=======================================================================
C Run UNB3m and write results
C-----------------------------------------------------------------------
C
C ===================
C Define value for pi
C -------------------
      PI     = DATAN(1.0D0)*4.0D0
C ===================
C
C =================
C Write file header
C -----------------
      WRITE(OUTF,100)
      WRITE(OUTF,110)
      WRITE(OUTF,120)
C =================
C
C =======================================================
C Compute values for several latitudes, heights, doy, and 
C elevation angles and print then in the output file.
C -------------------------------------------------------
!      DO LAT = 0,90,30
!       DO HEI = 0,1000,500
        DO DOY = 1,351,100
!         DO ELV = 30,90,30
          LAT = -37.840935
          ELV = 31
          LATRAD = LAT * PI/180.0D0
          ELVRAD=ELV * PI/180.0D0
          CALL UNB3M(LATRAD,HEI,DOY,ELVRAD,HZD,HMF,WZD,WMF,RTROP)
          CALL UNB3MR(LATRAD,HEI,DOY,ELVRAD,
     &                HZD,DHMFDEL,WZD,DWMFDEL,DRATE)
          CALL UNB3MM(LATRAD,HEI,DOY,T,P,E,TM)
          WRITE(OUTF,130)LAT,HEI,DOY,ELV,T,P,E,TM,RTROP,DRATE
!         END DO
!        END DO
	END DO
!      END DO
C =======================================================
C
C=======================================================================
C
C
C=======================================================================
C Format
C-----------------------------------------------------------------------
  100 FORMAT('LATITUDE    HEIGHT       DOY  E. ANGLE      TEMP ',
     &'    PRESS         WVP        TM     DELAY   D. RATE')
  110 FORMAT('   (DEG)       (M)               (DEG)       (K)',
     &'    (MBAR)      (MBAR)       (K)       (M)   (M/RAD)')
  120 FORMAT((1x))
  130 FORMAT(6(F8.3,2x),2X,4(F8.3,2x))
C=======================================================================
C
C
C=======================================================================
C End of Program
C-----------------------------------------------------------------------
      END
C=======================================================================
