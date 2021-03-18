C
      SUBROUTINE UNB3M(LATRAD,HEIGHTM,DAYOYEAR,ELEVRAD,
     1 HZD, HMF, WZD, WMF, RTROP)
C
C---|---1|0---|---2|0---|---3|0---|---4|0---|---5|0---|---6|0---|---7|0-
C=======================================================================
C
C  Subroutine UNB3m
C  ================
C
C     This subroutine uses UNB3m model to calculate the slant
C     neutral atmospheric delay for a given latitude, height, 
C     day of year (DOY) and elevation angle. 
C
C   How this function works:
C   ------------------------
C
C     1. A look-up table is used to calculate mean sea level (MSL)
C        values for pressure, temperature, relative humidity (RH) 
C        and lapse rate parameters (for given latitude and DOY).
C
C     2. MSL water vapor pressure (WVP) is computed according to
C        IERS Conventions 2003.
C
C     3. Pressure, temperature and WVP values are computed for 
C        station height.
C
C     4. Zenith hydrostatic and non-hydrostatic delays are 
C        computed using Saastamoinen formulas as modified by
C        Davis et. al (1985).
C
C     5. Computation of Hydrostatic and Non-hydrostatic Niell 
C        mapping functions. 
C
C     6. Total slant delay is determined using (4) and (5).
C
C   General Comments:
C   -----------------
C
C     1. This subroutine was adapted from subroutine UNB3,
C        originally coded by Paul Collins.
C
C     2. The internal variables for RH are called E0, EAVG and EAMP.
C
C   References: 
C   ----------
C
C     Leandro R.F., Santos, M.C. and Langley R.B., (2006). 
C     UNB Neutral Atmosphere Models: Development and Performance. 
C     Proceedings of ION NTM 2006, Monterey, California, January,
C     2006.
C
C     Davis, J.L., T.A. Herring, I.I. Shapiro, A.E.E. Rogers, 
C     and G. Elgered (1985). Geodesy by Radio Interfereometry: 
C     Effects of Atmospheric Modeling Errors on Estimates of 
C     Baseline Length. Radio Science, Vol. 20, No. 6, pp. 1593-1607.
C
C     IERS (2004). IERS Conventions (2003), eds. D.D. McCarthy and 
C     G. Petit, IERS Technical Note No. 32, International Earth Rotation 
C     and Reference Systems Service, Verlag des Bundesmates für Kartographie 
C     und Geodäsie, Frankfurt am Main.
C
C   Created/Modified
C   ----------------
C
C   DATE           WHO                      WHAT
C   ----           ---                      ----	
C   2006/01        Rodrigo Leandro          SUBROUTINE created
C   2006/11/23     Rodrigo Leandro          Code re-formatted. Capital case
C                                           should be always used in code 
C                                           from now on.
C
C
C   Input/Output
C   ------------
C
C     PARAMETER   I/O   TYPE       DESCRIPTION
C     ---------   ---   ----       -----------
C     LATRAD      IN    DOUBLE     Station geodetic latitude (radians)
C     HEIGHTM     IN    DOUBLE     Station orthometric height (m)
C     DAYOYEAR    IN    DOUBLE     Day of year
C     ELEVRAD     IN    DOUBLE     Elevation angle (radians)
C     HZD         OUT   DOUBLE     Hydrostatic zenith delay (m)
C     HMF         OUT   DOUBLE     Hydrostatic Niell mapping function
C     WZD         OUT   DOUBLE     Non-hyd. zenith delay (m)
C     WMF         OUT   DOUBLE     Non-hyd. Niell mapping function
C     RTROP       OUT   DOUBLE     Total slant delay (m)
C
C=======================================================================
C
C
      IMPLICIT NONE
C
      INTEGER P1, P2, I, J
      DOUBLE PRECISION AVG(5,6), AMP(5,6), P, T, E, BETA, LAMBDA
     &, M, DOY2RAD, PAVG, TAVG, EAVG, BETAAVG, LAMBDAAVG, LAT
     &, PAMP, TAMP, EAMP, BETAAMP, LAMBDAAMP, DAYOYEAR, COSPHS
     &, LATDEG, HEIGHTM, ELEVRAD, RTROP, DTR, TD_O_Y
     &, HMF, WMF, P0, T0, E0, EP, HZD, WZD, LATRAD, PI
     &, ES, FW
      PARAMETER (DTR = 1.745329251994329D-02)
      PARAMETER (DOY2RAD=0.31415926535897935601D+01*2.D0/365.25D0)
C
C
C=======================================================================
C Initialize UNB3m look-up table
C-----------------------------------------------------------------------
      DATA (( AVG(I,J), J=1,6), I=1,5) /
     * 15.0D0, 1013.25D0, 299.65D0, 75.00D0, 6.30D0, 2.77D0,
     * 30.0D0, 1017.25D0, 294.15D0, 80.00D0, 6.05D0, 3.15D0,
     * 45.0D0, 1015.75D0, 283.15D0, 76.00D0, 5.58D0, 2.57D0,
     * 60.0D0, 1011.75D0, 272.15D0, 77.50D0, 5.39D0, 1.81D0,
     * 75.0D0, 1013.00D0, 263.65D0, 82.50D0, 4.53D0, 1.55D0 /
C       lat        P         T       RH      beta    lambda
C
      DATA (( AMP(I,J), J=1,6), I=1,5) /
     * 15.0D0,  0.00D0,  0.00D0,  0.00D0, 0.00D0, 0.00D0,
     * 30.0D0, -3.75D0,  7.00D0,  0.00D0, 0.25D0, 0.33D0,
     * 45.0D0, -2.25D0, 11.00D0, -1.00D0, 0.32D0, 0.46D0,
     * 60.0D0, -1.75D0, 15.00D0, -2.50D0, 0.81D0, 0.74D0,
     * 75.0D0, -0.50D0, 14.50D0,  2.50D0, 0.62D0, 0.30D0 /
C       lat      P        T       RH      beta    lambda
C=======================================================================
C
C
      DOUBLE PRECISION MD, MW, K1, K2, K3, K2PRIM, DGREF, GM
     &, DEN, RD
     &, TM, C1, R
     
      DOUBLE PRECISION EXCEN2, GEOLAT

      PARAMETER (EXCEN2 = 6.6943799901413D-03)
      PARAMETER (MD     = 28.9644D0)
      PARAMETER (MW     = 18.0152D0)
      PARAMETER (K1     = 77.604D0)
      PARAMETER (K2     = 64.79D0)
      PARAMETER (K3     = 3.776D5)
      PARAMETER (R      = 8314.34D0)
      PARAMETER (C1     = 2.2768D-03)
      PARAMETER (K2PRIM = K2 - K1*(MW/MD))
      PARAMETER (RD     = R / MD)

C---|---1|0---|---2|0---|---3|0---|---4|0---|---5|0---|---6|0---|---7|0-

      DOUBLE PRECISION ALPHA, GAMMA, SINE, TOPCON, HT_CORR,
     * HT_CORR_COEF, ABC_AVG(5,4), ABC_AMP(5,4), A_HT, B_HT, C_HT,
     * HT_TOPCON, ABC_W2P0(5,4), A_AVG, B_AVG, C_AVG, A, B, C,
     * A_AMP, B_AMP, C_AMP

C=======================================================================
C Initialize NMF tables
C-----------------------------------------------------------------------
      DATA (( ABC_AVG(I,J), J=1,4), I=1,5) /
     * 15.0D0, 1.2769934D-3, 2.9153695D-3, 62.610505D-3,
     * 30.0D0, 1.2683230D-3, 2.9152299D-3, 62.837393D-3,
     * 45.0D0, 1.2465397D-3, 2.9288445D-3, 63.721774D-3,
     * 60.0D0, 1.2196049D-3, 2.9022565D-3, 63.824265D-3,
     * 75.0D0, 1.2045996D-3, 2.9024912D-3, 64.258455D-3 /
     
      DATA (( ABC_AMP(I,J), J=1,4), I=1,5) / 
     * 15.0D0, 0.0D0,          0.0D0,          0.0D0,   
     * 30.0D0, 1.2709626D-5, 2.1414979D-5, 9.0128400D-5, 
     * 45.0D0, 2.6523662D-5, 3.0160779D-5, 4.3497037D-5, 
     * 60.0D0, 3.4000452D-5, 7.2562722D-5, 84.795348D-5, 
     * 75.0D0, 4.1202191D-5, 11.723375D-5, 170.37206D-5 /

      PARAMETER ( A_HT = 2.53D-5 )
      PARAMETER ( B_HT = 5.49D-3 )
      PARAMETER ( C_HT = 1.14D-3 )
      PARAMETER ( HT_TOPCON = (1.0D0 + A_HT/(1.0D0 + 
     &B_HT/(1.0D0 + C_HT))))

      DATA (( ABC_W2P0(I,J), J=1,4), I=1,5) / 
     * 15.0D0, 5.8021897D-4, 1.4275268D-3, 4.3472961D-2,
     * 30.0D0, 5.6794847D-4, 1.5138625D-3, 4.6729510D-2,
     * 45.0D0, 5.8118019D-4, 1.4572752D-3, 4.3908931D-2,
     * 60.0D0, 5.9727542D-4, 1.5007428D-3, 4.4626982D-2,
     * 75.0D0, 6.1641693D-4, 1.7599082D-3, 5.4736038D-2 /
C=======================================================================
C
C
C=======================================================================
C Transform latitude from radians to decimal degrees
C-----------------------------------------------------------------------
      PI     = DATAN(1.0D0)*4.0D0
      LATDEG = LATRAD * 180.0D0 / PI
C=======================================================================
C
C
C=======================================================================
C Deal with southern hemisphere and yearly variation
C-----------------------------------------------------------------------
      TD_O_Y = DAYOYEAR
      IF ( LATDEG .LT. 0 ) TD_O_Y = TD_O_Y + 182.625D0
      COSPHS = DCOS( ( TD_O_Y - 28.0D0 ) * DOY2RAD )
C=======================================================================
C
C
C=======================================================================
C Initialize pointers to lookup table
C-----------------------------------------------------------------------
      LAT = DABS( LATDEG )
C
      IF ( LAT .GE. 75.0D0 ) THEN
         P1 = 5
         P2 = 5
         M = 0.0D0
      ELSEIF ( LAT .LE. 15.0D0 ) THEN
         P1 = 1
         P2 = 1
         M = 0.0D0
      ELSE
         P1 = INT( ( LAT - 15.0D0 ) / 15.0D0 ) + 1
         P2 = P1 + 1
         M = ( LAT - AVG(P1,1) ) / ( AVG(P2,1) - AVG(P1,1) )
      ENDIF
C=======================================================================
C
C
C=======================================================================
C Compute average surface tropo values by interpolation
C-----------------------------------------------------------------------
      PAVG = M * ( AVG(P2,2) - AVG(P1,2) ) + AVG(P1,2)
      TAVG = M * ( AVG(P2,3) - AVG(P1,3) ) + AVG(P1,3)
      EAVG = M * ( AVG(P2,4) - AVG(P1,4) ) + AVG(P1,4)
      BETAAVG   = M * ( AVG(P2,5) - AVG(P1,5) ) + AVG(P1,5)
      LAMBDAAVG = M * ( AVG(P2,6) - AVG(P1,6) ) + AVG(P1,6)
C=======================================================================
C
C
C=======================================================================
C Compute variation of average surface tropo values
C-----------------------------------------------------------------------
      PAMP = M * ( AMP(P2,2) - AMP(P1,2) ) + AMP(P1,2)
      TAMP = M * ( AMP(P2,3) - AMP(P1,3) ) + AMP(P1,3)
      EAMP = M * ( AMP(P2,4) - AMP(P1,4) ) + AMP(P1,4)
      BETAAMP   = M * ( AMP(P2,5) - AMP(P1,5) ) + AMP(P1,5)
      LAMBDAAMP = M * ( AMP(P2,6) - AMP(P1,6) ) + AMP(P1,6)
C=======================================================================
C
C
C=======================================================================
C Compute surface tropo values
C-----------------------------------------------------------------------
      P0 = PAVG - PAMP * COSPHS
      T0 = TAVG - TAMP * COSPHS
      E0 = EAVG - EAMP * COSPHS
      BETA = BETAAVG - BETAAMP * COSPHS
      BETA   = BETA / 1000.0D0
      LAMBDA = LAMBDAAVG - LAMBDAAMP * COSPHS
C=======================================================================
C
C
C=======================================================================
C Transform from relative humidity to WVP (IERS Conventions 2003)
C-----------------------------------------------------------------------
      ES = 0.01D0 * DEXP(1.2378847D-5 * (T0 ** 2.0D0) - 1.9121316D-2 * 
     & T0 + 3.393711047D1 - 6.3431645D3 * (T0 ** -1.0D0))
      FW = 1.00062D0 + 3.14D-6 * P0 + 5.6D-7 * 
     &((T0 - 273.15D0) ** 2.0D0)
      E0 = (E0 / 1.00D2) * ES * FW
C=======================================================================
C
C
C=======================================================================
C Compute power value for pressure & water vapour
C-----------------------------------------------------------------------
      EP = 9.80665D0 / 287.054D0 / BETA
C=======================================================================
C
C
C=======================================================================
C Scale surface values to required height
C-----------------------------------------------------------------------
      T = T0 - BETA * HEIGHTM
      P = P0 * ( T / T0 ) ** EP
      E = E0 * ( T / T0 ) ** ( EP * (LAMBDA+1.0D0) )
C=======================================================================
C
C
C=======================================================================
C Compute the acceleration at the mass center
C of a vertical column of the atmosphere
C-----------------------------------------------------------------------
      GEOLAT = DATAN( (1.0D0-EXCEN2)*DTAN(LATRAD) )
      DGREF = 1.0D0 - 2.66D-03*DCOS(2.0D0*GEOLAT) - 2.8D-07*HEIGHTM
      GM    = 9.784D0 * DGREF
      DEN   = ( LAMBDA + 1.0D0 ) * GM
C=======================================================================
C
C
C=======================================================================
C Compute mean temperature of the water vapor
C-----------------------------------------------------------------------
      TM  = T * (1.0D0 - BETA * RD / DEN)
C=======================================================================
C
C
C=======================================================================
C Compute zenith hydrostatic delay
C-----------------------------------------------------------------------
      HZD = C1 / DGREF * P
C=======================================================================
C
C
C=======================================================================
C Compute zenith wet delay
C-----------------------------------------------------------------------
      WZD = 1.0D-6 * ( K2PRIM + K3/TM) * RD * E/DEN
C=======================================================================
C
C
C=======================================================================
C Compute average NMF(H) coefficient values by interpolation
C-----------------------------------------------------------------------
      A_AVG = M * ( ABC_AVG(P2,2) - ABC_AVG(P1,2) ) + ABC_AVG(P1,2)
      B_AVG = M * ( ABC_AVG(P2,3) - ABC_AVG(P1,3) ) + ABC_AVG(P1,3)
      C_AVG = M * ( ABC_AVG(P2,4) - ABC_AVG(P1,4) ) + ABC_AVG(P1,4)
C=======================================================================
C
C
C=======================================================================
C Compute variation of average NMF(H) coefficient values
C-----------------------------------------------------------------------
      A_AMP = M * ( ABC_AMP(P2,2) - ABC_AMP(P1,2) ) + ABC_AMP(P1,2)
      B_AMP = M * ( ABC_AMP(P2,3) - ABC_AMP(P1,3) ) + ABC_AMP(P1,3)
      C_AMP = M * ( ABC_AMP(P2,4) - ABC_AMP(P1,4) ) + ABC_AMP(P1,4)
C=======================================================================
C
C
C=======================================================================
C Compute NMF(H) coefficient values
C-----------------------------------------------------------------------
      A = A_AVG - A_AMP * COSPHS
      B = B_AVG - B_AMP * COSPHS
      C = C_AVG - C_AMP * COSPHS
C=======================================================================
C
C
C=======================================================================
C Compute sine of elevation angle
C-----------------------------------------------------------------------
      SINE = DSIN(ELEVRAD)
C=======================================================================
C
C
C=======================================================================
C Compute NMF(H) value
C-----------------------------------------------------------------------
      ALPHA  = B/(SINE + C)
      GAMMA  = A/(SINE + ALPHA)
      TOPCON = (1.D0 + A/(1.D0 + B/(1.D0 + C)))
      HMF    = TOPCON / (SINE + GAMMA)
C=======================================================================
C
C
C=======================================================================
C Compute and apply height correction
C-----------------------------------------------------------------------
      ALPHA  = B_HT/( SINE + C_HT )
      GAMMA  = A_HT/( SINE + ALPHA)
      HT_CORR_COEF = 1/SINE - HT_TOPCON/(SINE + GAMMA)
      HT_CORR      = HT_CORR_COEF * HEIGHTM / 1000.0D0
      HMF          = HMF + HT_CORR
C=======================================================================
C
C
C=======================================================================
C Comput average NMF(W) coefficient values by interpolation
C-----------------------------------------------------------------------
      A = M * ( ABC_W2P0(P2,2) - ABC_W2P0(P1,2) ) + ABC_W2P0(P1,2)
      B = M * ( ABC_W2P0(P2,3) - ABC_W2P0(P1,3) ) + ABC_W2P0(P1,3)
      C = M * ( ABC_W2P0(P2,4) - ABC_W2P0(P1,4) ) + ABC_W2P0(P1,4)
C=======================================================================
C
C
C=======================================================================
C Compute NMF(W) value
C-----------------------------------------------------------------------
      ALPHA = B/( SINE + C )
      GAMMA = A/( SINE + ALPHA)
      TOPCON = (1.0D0 + A/(1.0D0 + B/(1.0D0 + C)))
      WMF    = TOPCON / ( SINE + GAMMA )
C=======================================================================
C
C
C=======================================================================
C Compute total slant delay
C-----------------------------------------------------------------------
      RTROP=HZD*HMF+WZD*WMF
C=======================================================================
C
C
C=======================================================================
C End of subroutine
C-----------------------------------------------------------------------
      RETURN
      END
C=======================================================================