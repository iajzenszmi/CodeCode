#include <stdio.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_eigen.h>
int main (void)
{
double data[] = { 1.0  , 1/2.0, 1/3.0, 1/4.0,
1/2.0, 1/3.0, 1/4.0, 1/5.0,
1/3.0, 1/4.0, 1/5.0, 1/6.0,
1/4.0, 1/5.0, 1/6.0, 1/7.0 };
gsl_matrix_view m = gsl_matrix_view_array (data, 4, 4);
gsl_vector *eval = gsl_vector_alloc (4);
gsl_matrix *evec = gsl_matrix_alloc (4, 4);
gsl_eigen_symmv_workspace * w =
gsl_eigen_symmv_alloc (4);
gsl_eigen_symmv (&m.matrix, eval, evec, w);
gsl_eigen_symmv_free (w);
gsl_eigen_symmv_sort (eval, evec,
GSL_EIGEN_SORT_ABS_ASC);
{
int i;
for (i = 0; i < 4; i++)
{
double eval_i
= gsl_vector_get (eval, i);
gsl_vector_view evec_i
= gsl_matrix_column (evec, i);
printf ("eigenvalue = %g\n", eval_i);
printf ("eigenvector = \n");
gsl_vector_fprintf (stdout,
&evec_i.vector, "%g");
}
}
gsl_vector_free (eval);
gsl_matrix_free (evec);
//Chapter 15: Eigensystems
//170
return 0;
}
/*Here is the beginning of the output from the program,*/
/* $ ./a.out*/
//eigenvalue = 9.67023e-05
//eigenvector =
//-0.0291933
//0.328712
//-0.791411
//0.514553
//...
//This can be compared with the corresponding output from
//gnu octave
//,
//octave> [v,d] = eig(hilb(4));
//octave> diag(d)
//ans =
//9.6702e-05
//6.7383e-03
//1.6914e-01
//1.5002e+00
//octave> v
//v =
//0.029193   0.179186  -0.582076   0.792608
//-0.328712  -0.741918   0.370502   0.451923
//0.791411   0.100228   0.509579   0.322416
//-0.514553   0.638283   0.514048   0.252161
//Note that the eigenvectors can differ by a change of sign, since
//the sign of an eigenvector is
//arbitrary.
//The following program illustrates the use of the nonsymmetr
//ic eigensolver, by computing
//the eigenvalues and eigenvectors of the Vandermonde matrix
//V
//(
//x
//;
//i,j
//) =
//x
//n
//−
//j
//i
//with
//x
//=
//(
//−
//1
//,
//−
//2
//,
//3
//,
//4).
//#include <stdio.h>
//#include <gsl/gsl_math.h>
//#include <gsl/gsl_eigen.h>
//int
//main (void)
//{
//double data[] = { -1.0, 1.0, -1.0, 1.0,
//-8.0, 4.0, -2.0, 1.0,
//27.0, 9.0, 3.0, 1.0,
//64.0, 16.0, 4.0, 1.0 };
//Chapter 15: Eigensystems
//171
//gsl_matrix_view m
//= gsl_matrix_view_array (data, 4, 4);
//gsl_vector_complex *eval = gsl_vector_complex_alloc (4)
//;
//gsl_matrix_complex *evec = gsl_matrix_complex_alloc (4,
//4);
//gsl_eigen_nonsymmv_workspace * w =
//gsl_eigen_nonsymmv_alloc (4);
//gsl_eigen_nonsymmv (&m.matrix, eval, evec, w);
//gsl_eigen_nonsymmv_free (w);
//gsl_eigen_nonsymmv_sort (eval, evec,
//GSL_EIGEN_SORT_ABS_DESC);
//{
//int i, j;
//for (i = 0; i < 4; i++)
//{
//gsl_complex eval_i
//= gsl_vector_complex_get (eval, i);
//gsl_vector_complex_view evec_i
//= gsl_matrix_complex_column (evec, i);
//printf ("eigenvalue = %g + %gi\n",
//GSL_REAL(eval_i), GSL_IMAG(eval_i));
//'printf ("eigenvector = \n");
//for (j = 0; j < 4; ++j)
//{
//gsl_complex z =
//gsl_vector_complex_get(&evec_i.vector, j);
//printf("%g + %gi\n", GSL_REAL(z), GSL_IMAG(z));
//}
//}
//}
//gsl_vector_complex_free(eval);
//gsl_matrix_complex_free(evec);
//return 0;
//}
//Here is the beginning of the output from the program,
//$ ./a.out
//././
//
