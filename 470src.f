      SUBROUTINE FAKUB ( N, S, D, H, B, M, NN, MM, JPROM, ALFA, EPS )

      IMPLICIT NONE

      INTEGER MM
      INTEGER N
      INTEGER NN

      REAL A(20,20)
      REAL ALFA
      REAL B(NN,MM)
      REAL D(N)
      REAL EPS
      REAL H(N)
      INTEGER I
      INTEGER I1
      INTEGER J
      INTEGER JUMP
      INTEGER KPR
      INTEGER M
      INTEGER M1
      INTEGER M2
      INTEGER N1
      INTEGER JPROM(M-1)
      REAL P
      REAL P1
      REAL S(N)
      REAL W(20)
C
C  SOLUTION OF SYSTEM OF LINEAR EQUATIONS WITH MATRIX OF SPECIAL
C  (ALMOST TRIDIAGONAL) TYPE.
C  N = NUMBER OF EQUATIONS.
C  S(2),S(3),... = LOWER DIAGONAL ELEMENTS.
C  D(1),D(2),... = MAIN DIAGONAL ELEMENTS.
C  H(1),H(2),... = UPPER DIAGONAL ELEMENTS.
C  B(1,1),B(2,1),... = RIGHT HAND SIDES.
C  JPROM(1),JPROM(2),...,JPROM(M-1) = INDICES OF UNKNOWNS FOR WHICH
C  NON-ZERO NONDIAGONAL COEFFICIENTS EXIST.
C  (B(I,J+1),I=1,N) = COLUMN OF COEFFICIENTS
C  (WITHOUT DIAGONAL ELEMENTS), WHICH CORRESPONDS
C  TO UNKNOWN WITH INDEX JPROM(J).
C  M-1 = NUMBER OF TRANSFERRED UNKNOWNS.
C  ALFA = NONZERO PARAMETER USED FOR REARRANGEMENTS.
C  EPS = SCALE OF ZERO DIAGONAL ELEMENT, DEPENDENT ON THE COMPUTER
C  TYPE.
C  M.EQ.0 AFTER RETURN: MATRIX WAS SINGULAR.
C  M.EQ.-1 AFTER RETURN: MANY REARRANGEMENTS, SMALL VALUE OF MM.
C  M.EQ.-2 AFTER RETURN: LOW DIMENSION SPECIFICATION IN FAKUB.
C  WE WISH TO SOLVE G*X=C, WHERE G IS AN N BY N MATRIX AND C IS A
C  VECTOR.
C  G = T * R, R = R1 * R2T, R1 AND R2 ARE N BY M1 MATRICES OF RANK
C  M1.
C  (R2T---R2 TRANSPOSE) THE METHOD OF MODIFIED MATRICES IS USED.
C  T IS A TRIDIAGONAL MATRIX GIVEN BY INPUT VECTORS S, D AND H.
C  B = (C,R) IS AN N BY M MATRIX.  R1 IS A SET OF M1 COLUMNS OF G - T.
C  R2 IS A SET OF M1 UNIT VECTORS SPECIFIED BY JPROM.
C  FOR EFFICIENCY, RANK M1 IS MUCH LESS THAN N.
C  KPR IS PRINTER DEVICE NUMBER.
C
      DATA KPR / 6 /
99999 FORMAT ( //" FAKUB SINGULAR MATRIX OF SYSTEM,END OF FAKUB"// )
99998 FORMAT ( //" FAKUB INFORMATION ON ZERO ON LINE",I5// )
99997 FORMAT ( //" FAKUB MANY REARRANGEMENTS,END OF FAKUB"// )
99996 FORMAT ( //" FAKUB LOW DIMENSION,END OF FAKUB"// )
      N1 = N - 1
      M1 = M - 1
      JUMP = 1
C
C  FORM L, U AND L**(-1)*B.  NOTE L*U = T.
C
      I = 1
10    P = D(I)
      IF ( ABS ( P ) .LE. EPS ) GO TO 40
20    H(I) = H(I) / P
      P1 = S(I+1)

      DO 30 J = 1, M
        IF ( B(I,J) .EQ. 0.0E+00 ) GO TO 30
        B(I,J) = B(I,J) / P
        B(I+1,J) = B(I+1,J) - P1 * B(I,J)
30    CONTINUE

      D(I+1) = D(I+1) - P1 * H(I)
      I = I + 1
      IF ( I .LE. N1 ) GO TO 10
C
C  MATRICES L, U AND L**(-1)*B ARE DETERMINED HERE.
C
      GO TO 100
40    WRITE ( KPR, 99998 ) I
C
C  PIVOT D(I) NEARLY ZERO.  ADJUST MATRICES T AND R1 SO THAT
C  C REMAINS EQUAL TO T + R.  NEW T HAS PIVOT D(I) NEAR TO ALFA.
C
      IF ( M1 .EQ. 0 ) GO TO 60

      DO 50 J = 1, M1
        IF ( JPROM(J) .EQ. I ) GO TO 80
50    CONTINUE

60    M = M + 1
      M1 = M1 + 1
      IF ( M .GT. MM ) GO TO 200

      DO 70 J = 1, N
        B(J,M) = 0.0E+00
70    CONTINUE

      B(I,M) = -ALFA
      JPROM(M1) = I
      GO TO 90
80    B(I,J+1) = B(I,J+1) - ALFA
90    D(I) = D(I) + ALFA
      P = D(I)
      GO TO ( 20, 110 ) JUMP
100   IF ( ABS ( D(N) ) .GT. EPS ) GO TO 110
      I = N
      JUMP = 2
      GO TO 40

110   DO 120 J = 1, M
        B(N,J) = B(N,J) / D(N)
120   CONTINUE
C
C  FORM U**(-1)*L**(-1)*B * T**(-1)*B.  T**(-1)*B * (Y,V)
C
      DO 140 I1 = 1, N1
        I = N - I1
        DO 130 J = 1, M
          B(I,J) = B(I,J) - H(I) * B(I+1,J)
130     CONTINUE
140   CONTINUE

      IF ( M1 .EQ. 0 ) RETURN
C
C  THE NEXT STATEMENT NECESSARY AS A AND W HAVE DIMENSION OF 20.
C
      IF ( M1 .GT. 20 ) GO TO 210
C
C  FORM M1 BY M1 MATRIX A = I + R2T * V AND M1 VECTOR W = R2T * Y.
C
      DO 160 I = 1, M1
        I1 = JPROM(I)
        DO 150 J = 1, M1
          A(I,J) = B(I1,J+1)
150     CONTINUE
        W(I) = B(I1,1)
        A(I,I) = A(I,I) + 1.0E+00
160   CONTINUE
C
C  SOLVE A*Z = W FOR Z USING SUBROUTINE GAUSD.
C
      CALL GAUSD ( M1, A, W, M2, 20 )
      IF ( M2 .EQ. 0 ) GO TO 190
C
C  FORM SOLUTION VECTOR X = Y - V * Z.
C
      DO 180 I = 1, N
        DO 170 J = 2, M
          B(I,1) = B(I,1) - B(I,J) * W(J-1)
170     CONTINUE
180   CONTINUE
      RETURN

190   WRITE ( KPR, 99999 )
      M = 0
      RETURN
200   WRITE ( KPR, 99997 )
      M = -1
      RETURN
210   WRITE ( KPR, 99996 )
      M = -2
      RETURN
      END
      SUBROUTINE GAUSD ( N, A, B, M, NN )

      IMPLICIT NONE

      INTEGER NN

      REAL A(NN,NN)
      REAL AMAX
      REAL B(NN)
      INTEGER I
      INTEGER ID
      INTEGER IR
      INTEGER IRR(20)
      INTEGER IS
      INTEGER J
      INTEGER M
      INTEGER N
      REAL P
      REAL X(20)
C
C  SOLUTION OF SYSTEM OF LINEAR EQUATIONS.
C  N = NUMBER OF EQUATIONS (N.LE.20)
C  A = MATRIX OF SYSTEM.
C  B = RIGHT HAND SIDES.
C  M = IF M.EQ.0 AFTER RETURN, THEN MATRIX A WAS SINGULAR.
C
      M = 1
      ID = 1

      DO 10 I = 1, N
        IRR(I) = 0
10    CONTINUE

20    IR = 1
      IS = 1

      AMAX = 0.0
      DO 60 I = 1, N
        IF ( IRR(I) ) 60, 30, 60
30      DO 50 J = 1, N
          P = ABS ( A(I,J) )
          IF ( P - AMAX ) 50, 50, 40
40        IR = I
          IS = J
          AMAX = P
50      CONTINUE
60    CONTINUE

      IF ( AMAX .NE. 0.0E+00 ) GO TO 70
C
C  THIS CONDITION MUST BE SPECIFIED MORE EXACTLY
C  WITH RESPECT TO COMPUTER ACTUALLY USED.
C
      M = 0
      GO TO 120

70    IRR(IR) = IS

      DO 90 I = 1, N
        IF ( I .EQ. IR .OR. A(I,IS) .EQ. 0.0E+00 ) GO TO 90
        P = A(I,IS) / A(IR,IS)
        DO 80 J = 1, N
          IF ( A(IR,J) .NE. 0.0 ) A(I,J) = A(I,J) - P * A(IR,J)
80      CONTINUE
        A(I,IS) = 0.0E+00
        B(I) = B(I) - P * B(IR)
90    CONTINUE

      ID = ID + 1
      IF ( ID .LE. N ) GO TO 20

      DO 100 I = 1, N
        IR = IRR(I)
        X(IR) = B(I) / A(I,IR)
100   CONTINUE

      DO 110 I = 1, N
        B(I) = X(I)
110   CONTINUE

120   RETURN
      END