CXXXXXXXXXXXXXXXXXXXXX START OF FILE: README XXXXXXXXXXXXXXXXXXXXX

************************
DSEVAS/SSEVAS
************************

This diskette contains the source code for SEVAS, a FORTRAN
subroutine that solves the single-input eigenvalue allocation problem.
Files beginning with 'D' are for the double precision version,
while those beginning with 'S' are for single precision.


Files used:

DSEVAS/SSEVAS   -eigenvalue allocation subroutine

DTEST/STEST     -test driver program

DFLRD/SFLRD     -test driver that reads user input from a file

DEIGVL/SEIGVL   -subroutine to find the eigenvalues of a general matrix

DBLAS/SBLAS     -Level 1 BLAS routines used by DSEVAS/SSEVAS

Makefile        -constructs DTEST/STEST/DFLRD/SFLRD

DDAT01.DAT      -sample data file for DFLRD/SFLRD

README          -this file


BUILDING PROGRAMS:
------------------
(The discussion here works for the single-precision version as well.
Replace DTEST by STEST, and so on.)

There are two top-level programs: DTEST and DFLRD.  DTEST is the
main test program that generates its own data, while DFLRD takes
user-generated data from a file. To build:

1) compile DTEST (and/or DFLRD), DSEVAS, DBLAS, DEIGVL.

2) link the above routines, using either DTEST or DFLRD as
        the main (executable).  On most machines, listing
        DTEST(DFLRD) first on the linker command line is
        necessary.

EXAMPLES:
---------

1) For UNIX systems:
====================

Type "make dtest" or "make dflrd" in the directory containing the
SEVAS subroutines.  To compile DTEST explicitly, use the following:

        f77 -c dtest.f
        f77 -c dsevas.f
        f77 -c deigvl.f
        f77 -c dblas.f
        f77 -o dtest dsevas.o deigvl.o dblas.o

(You may need to use "fc" or some other compiler name instead of "f77".)

To run, type:

        dtest


2) For VMS systems:
===================

Type the following:

        FORTRAN  DTEST.F
        FORTRAN  DSEVAS.F
        FORTRAN  DEIGVL.F
        FORTRAN  DBLAS.F
        LINK  DTEST,DSEVAS,DEIGVL,DBLAS

To run, type:

        RUN DTEST
