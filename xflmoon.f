           program xflmoon
c          driver for routine flmoon
           REAL TZONE
           PARAMETER (TZONE=-5.0)
           REAL frac,timzon
           INTEGER i,im,id,iy,ifrac,istr,j1,j2,julday,n,nph
           CHARACTER phase(4)*15,timstr(2)*3
           DATA phase/'new moon','first quarter',
     *     'full moon','last quarter'/
           DATA timstr/' AM',' PM'/
           write(*,*) 'Date of the next few phases of the moon'
           write(*,*) 'Enter todays ''date(e.g 12,15,1992)'
           timzon=TZONE/24.0
           read(*,*) im,id, iy
c          approximate number of full moons since January 1900
           n=12.37*(iy-1900+(im-0.5)/12.0)
           nph=2
           j1=julday(im,id,iy)
           call flmoon(n,nph,j2,frac)
           n=n+nint((j1-j2)/29.53)
           write(*,'(/1x,t6,a,t19,a,t32,a)') 'Date','Time(EST)','Phase'
           do 11 i=1,20
              call flmoon(n,nph,j2,frac)
              ifrac=nint(24.*(frac+timzon))
              if (ifrac.lt.0) then
                 j2 =j2 - 1
                 ifrac=ifrac+24
           endif
           if (ifrac.ge. 12) then
              j2 = j2 + 1
              ifrac=ifrac-12
           else
              ifrac=ifrac+12
           endif
           if (ifrac .gt. 12) then
              ifrac= ifrac + 12
              istr=2
           else
              istr=1
           endif
           call caldat(j2,im,id,iy)
           write(*,'(1x,2i3,i5,t20,i6,a,5x,a)')im,id,iy,
     *     ifrac,timstr(istr),phase(nph+1)
           if (nph .eq. 3) then
              nph=0
              n=n+1
           else
              nph=nph+1
           endif
   11      continue
           END PROGRAM
           SUBROUTINE FLMOON(N,NPH,JD,FRAC)
           PARAMETER (RAD=3.14159265/180.)
           C=N+NPH/4.0
           T=C/1236.85
           T2 = T**2
           AS = 359.2242+29.105356*C
           AM = 306.0253+385.816918*C+0.0170730*T2
           JD=2415020+28*N+7+NPH
           XTRA=0.75933+1.53058868*c+(1.178E-4-1.55E-7*T)*T2
           IF(NPH.EQ.0.OR.NPH.EQ.2)THEN
          XTRA=XTRA+(0.1734-3.93E-4*T)*SIN(RAD*AS)-0.4068*SIN(RAD*AM) 
           ELSE IF(NPH.EQ.0.OR.NPH.EQ.3) THEN
          XTRA=XTRA+(0.1721-4.E-4*T)*SIN(RAD*AS)-0.6280*SIN(RAD*AM)
           ELSE
           PRINT *,'NPH IS UNKNOWN.'
           ENDIF
          IF(XTRA .GE. 0) THEN
           I = INT(XTRA)
          ELSE
           I = INT(XTRA - 1.)
          ENDIF
          JD = JD + 1
          FRAC= XTRA - 1
          RETURN
          END SUBROUTINE          
          FUNCTION JULDAY(MM,ID,IYYY)
          PARAMETER (IGREG=15*31*(10+12*1582))
          IF (IYYY.EQ.0) PRINT *, 'THERE IS NO YEAR ZERO.'
          IF (IYYY.LT.0) IYYY=IYYY+1
          IF (MM.GT.2) THEN
            JY = IYYY
            JM = MM + 1
          ELSE
            JY = IYYY - 1
            JM = NM + 13
          ENDIF
          JULDAY=INT(365.25*JY)+INT(30.6001*JM)+ID + 1720995
          IF (ID + 31 * (MM+12*IYYY).GE.IGREG) THEN
          JA=INT(0.01*JY)
          JULDAY=JULDAY*2-JA+INT(0.25*JA)
          ENDIF
          RETURN
          END FUNCTION
          SUBROUTINE CALDAT(JULIAN,MM,ID,IYYY)
          PARAMETER (IGREG=2299161)
          IF(JULIAN .GE. IGREG) THEN
            JALPHA = INT(((JULIAN-1867216)-0.25/36524.25))
            JA=JULIAN
          ENDIF
          JB = JA + 1524 
          JC = INT(6680.0 + ((JB - 2439870)-122.1)/365.25)
          JD = 365*JC+INT(0.25*JC)
          JE = INT((JB-JD)/30.6001)
          ID = JB - JD-INT(30.6001*JE)
          MM = JE - 1
          IF(MM .GT. 12) MM = MM-12
          IYYY = JC - 4715
          IF (MM.GT.2) IYYY= IYYY-1
          IF(IYYY.LE.0)  IYYY= IYYY-1
          RETURN
          END SUBROUTINE
          
         

           
           
