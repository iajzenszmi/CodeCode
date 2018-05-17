/* sevdim88test.f -- translated by f2c (version 20100827).
   You must link the resulting object file with libf2c:
	on Microsoft Windows system, link with libf2c.lib;
	on Linux or Unix systems, link with .../path/to/libf2c.a -lm
	or, if you install libf2c.a in a standard place, with -lf2c -lm
	-- in that order, at the end of the command line, as in
		cc *.o -lf2c -lm
	Source for libf2c is in /netlib/f2c/libf2c.zip, e.g.,

		http://www.netlib.org/f2c/libf2c.zip
*/

#include "f2c.h"

/* Table of constant values */

static integer c__1 = 1;

/* Main program */ int MAIN__(void)
{
    /* Format strings */
    static char fmt_9590[] = "(i1,i1,i1,i1,i1,i1,i1,i1)";

    /* Builtin functions */
    integer s_rsfe(cilist *), do_fio(integer *, char *, ftnlen), e_rsfe(void);

    /* Local variables */
    static integer p1, p2, p3, p4, p5, p6, p7, arcnt1;
    extern /* Subroutine */ int testgen_(integer *, integer *, integer *, 
	    integer *, integer *, integer *, integer *, integer *);

    /* Fortran I/O blocks */
    static cilist io___9 = { 0, 5, 0, fmt_9590, 0 };


/*                integer p11,p12,p21,p22,p31,p32,p41,p42,p51,p52,p61,p62,p71,p72 */
/*                 integer recnt */
/*                 integer a6 */
/*                 integer a2 */
/*                 integer i */
/*                integer j */
/*                 integer a3 */
/*                 integer a4 */
/*                 integer a5 */
/*                 integer a7 */
/*                integer h */
/*                 integer a1 */
/*                 integer hcube(7, 7, 7, 7, 7, 7, 7) */
/*                 integer iz, izy */
    arcnt1 = 25;
    p1 = 7;
    p2 = 7;
    p3 = 7;
    p4 = 7;
    p5 = 7;
    p6 = 7;
    p7 = 7;
    s_rsfe(&io___9);
    do_fio(&c__1, (char *)&arcnt1, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p1, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p2, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p3, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p4, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p5, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p6, (ftnlen)sizeof(integer));
    do_fio(&c__1, (char *)&p7, (ftnlen)sizeof(integer));
    e_rsfe();
    testgen_(&arcnt1, &p1, &p2, &p3, &p4, &p5, &p6, &p7);
    return 0;
} /* MAIN__ */

/* Subroutine */ int testgen_(integer *arcnt, integer *p121, integer *p221, 
	integer *p321, integer *p421, integer *p521, integer *p621, integer *
	p73)
{
    /* Format strings */
    static char fmt_1000[] = "(\002 \002,i10,i10,i10)";
    static char fmt_1010[] = "(\002+\002,i10,i10,i10,i10,i10,i10,i10)";
    static char fmt_9800[] = "(\002 \002,\002 no of arrays\002,i10)";

    /* System generated locals */
    integer i__1, i__2, i__3, i__4, i__5, i__6, i__7, i__8;

    /* Builtin functions */
    integer s_wsfe(cilist *), do_fio(integer *, char *, ftnlen), e_wsfe(void);

    /* Local variables */
    static integer h__[823543]	/* was [7][7][7][7][7][7][7] */, a1, a2, a3, 
	    a4, a5, a6, a7, p11, p12, p21, p22, p31, p32, p41, p42, p51, p52, 
	    p61, p62, p71;
    static real p72;
    static integer iz, izy, recnt;

    /* Fortran I/O blocks */
    static cilist io___35 = { 0, 6, 0, fmt_1000, 0 };
    static cilist io___36 = { 0, 6, 0, fmt_1010, 0 };
    static cilist io___37 = { 0, 6, 0, fmt_9800, 0 };


/*                 integer arcnt, p12, p22, p21, p22, p31, p32, p41 */
/*                 integer p42, p51, p52, p61, p62, p71, p72 */
/*                 real :: START, FINISH */
/*                 CALL CPU_TIME(START) */
    i__1 = *arcnt;
    for (iz = 1; iz <= i__1; ++iz) {
	p11 = 1;
	p12 = *p121;
	p21 = 1;
	p22 = *p221;
	p31 = 1;
	p32 = *p321;
	p41 = 1;
	p42 = *p421;
	p51 = 1;
	p52 = *p521;
	p61 = 1;
	p62 = *p621;
	p71 = 1;
	p72 = (real) (*p73);
	recnt = 1;
	izy = iz;
/*            write(6, 9800) izy */
/* 9800        format(" "," no of arrays",i10) */
	i__2 = p12;
	for (a1 = p11; a1 <= i__2; ++a1) {
	    i__3 = p22;
	    for (a2 = p21; a2 <= i__3; ++a2) {
		i__4 = p32;
		for (a3 = p31; a3 <= i__4; ++a3) {
		    i__5 = p42;
		    for (a4 = p41; a4 <= i__5; ++a4) {
			i__6 = p52;
			for (a5 = p51; a5 <= i__6; ++a5) {
			    i__7 = p62;
			    for (a6 = p61; a6 <= i__7; ++a6) {
				i__8 = *p73;
				for (a7 = p71; a7 <= i__8; ++a7) {
				    h__[a1 + (a2 + (a3 + (a4 + (a5 + (a6 + a7 
					    * 7) * 7) * 7) * 7) * 7) * 7 - 
					    137257] = (a1 << 1) + (a2 << 2) + 
					    (a3 << 3) + (a4 << 4) + (a5 << 5) 
					    + (a6 << 6) + (a7 << 7);
				    s_wsfe(&io___35);
				    do_fio(&c__1, (char *)&izy, (ftnlen)
					    sizeof(integer));
				    do_fio(&c__1, (char *)&recnt, (ftnlen)
					    sizeof(integer));
				    do_fio(&c__1, (char *)&h__[a1 + (a2 + (a3 
					    + (a4 + (a5 + (a6 + a7 * 7) * 7) *
					     7) * 7) * 7) * 7 - 137257], (
					    ftnlen)sizeof(integer));
				    e_wsfe();
				    s_wsfe(&io___36);
				    do_fio(&c__1, (char *)&a1, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a2, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a3, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a4, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a5, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a6, (ftnlen)sizeof(
					    integer));
				    do_fio(&c__1, (char *)&a7, (ftnlen)sizeof(
					    integer));
				    e_wsfe();
				    ++recnt;
/* L10: */
				}
/* L20: */
			    }
/* L30: */
			}
/* L40: */
		    }
/* L50: */
		}
/* L60: */
	    }
/* L70: */
	}
	s_wsfe(&io___37);
	do_fio(&c__1, (char *)&izy, (ftnlen)sizeof(integer));
	e_wsfe();
/* L100: */
    }
/*             CALL CPU_TIME(FINISH) */
/*             write(6,2000)  FINISH - START */
/* 2000          format("Time = ",F6.2, " ", "seconds") */
    return 0;
} /* testgen_ */

/* Main program alias */ int testcall_ () { MAIN__ (); return 0; }
