C
      SUBROUTINE UNB3MM(LATRAD,HEIGHTM,DAYOYEAR,
     1 T, P, E, TM)
C
C---|---1|0---|---2|0---|---3|0---|---4|0---|---5|0---|---6|0---|---7|0-
C=======================================================================
C
C  Subroutine UNB3mm
C  =================
C
C     This subroutine uses UNB3m model to calculate the surface 
C     temperature, surface pressure, surface relative humidity and
C     mean temperature of water vapor for a given latitude, height 
C     and day of year (DOY).
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
C     4. Mean temperature of water vapor is computed.
C
C   General Comments:
C   -----------------
C
C     1. This subroutine was adapted from subroutine UNB3M.
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
C	DATE        WHO                WHAT
C	----        ---                ----	
C   2006/01        Rodrigo Leandro          SUBROUTINE UNB3M.f created
C   2006/06/22     Rodrigo Leandro          SUBROUTINE UNB3MM.f created 
C                                           (addapted from UNB3M.f)
C   2006/11/23     Rodrigo Leandro          Code re-formatted. Capital case
C                                           should be always used in code 
C                                           from now on.
C
C   INPUT/OUTPUT
C   ------------
C
C     PARAMETER   I/O   TYPE       DESCRIPTION
C     ---------   ---   ----       -----------
C     LATRAD      IN    DOUBLE     Station geodetic latitude (radians)
C     HEIGHTM     IN    DOUBLE     Station orthometric height (m)
C     DAYOYEAR    IN    DOUBLE     Day of year
C     T           OUT   DOUBLE     Surface temperature (k)
C     P           OUT   DOUBLE     Surface pressure (mbar)
C     E           OUT   DOUBLE     Surface water vapor pressure (mbar)
C     TM          OUT   DOUBLE     Mean temperature of water vapor (k)
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
     &, LATDEG, HEIGHTM, ELEVDEG, RTROP, DTR, TD_O_Y
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
      COSPHS = COS( ( TD_O_Y - 28.D0 ) * DOY2RAD )
C=======================================================================
C
C
C=======================================================================
C Initialize pointers to lookup table
C-----------------------------------------------------------------------
      LAT = DABS( LATDEG )
C
      IF ( LAT .GE. 75.D0 ) THEN
         P1 = 5
         P2 = 5
         M = 0
      ELSEIF ( LAT .LE. 15.D0 ) THEN
         P1 = 1
         P2 = 1
         M = 0
      ELSE
         P1 = INT( ( LAT - 15.D0 ) / 15.D0 ) + 1
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
      BETA   = BETA / 1000.D0
      LAMBDA = LAMBDAAVG - LAMBDAAMP * COSPHS
C=======================================================================
C
C
C=======================================================================
C Transform from relative humidity to WVP (IERS Conventions 2003)
C-----------------------------------------------------------------------
      ES = 0.01D0 * DEXP(1.2378847D-5 * (T0 ** 2D0) - 1.9121316D-2 * 
     & T0 + 3.393711047D1 - 6.3431645D3 * (T0 ** -1D0))
      FW = 1.00062D0 + 3.14D-6 * P0 + 5.6D-7 * 
     &((T0 - 273.15D0) ** 2D0)
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
      E = E0 * ( T / T0 ) ** ( EP * (LAMBDA+1.D0) )
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
C End of subroutine
C-----------------------------------------------------------------------
      RETURN
      END
C=======================================================================