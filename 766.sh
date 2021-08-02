#! /bin/sh
# This is a shell archive, meaning:
# 1. Remove everything above the #! /bin/sh line.
# 2. Save the resulting text in a file.
# 3. Execute the file with /bin/sh (not csh) to create the files:
#	Doc
#	Drivers
#	Src
# This archive created: Sat Apr 19 22:33:37 1997
export PATH; PATH=/bin:$PATH
if test ! -d 'Doc'
then
	mkdir 'Doc'
fi
cd 'Doc'
if test -f 'readme'
then
	echo shar: will not over-write existing file "'readme'"
else
cat << \SHAR_EOF > 'readme'
This directory contains FORTRAN 90 code for computing Pade'-Hermite and 
simultaneous Pade' approximants, plus two driver programs. To obtain a run,
first compile the code in the files 
            driver1.f, vector_pade.f and linpack.f
or, in the files 
            driver2.f, vector_pade.f and linpack.f.

driver1.f:      
First driver program for vector_pade.f. It also gives code for computing 
the inverse of a Striped Sylvester matrix using the formula derived in 
sylvester_inverses.ps.Z. No input data is required by this driver.
Contains the programs:
        main
        invert_sylv
        solve_sylv
        divide_series:

driver2.f:      
Second driver program for vector_pade.f. It also gives code for computing 
the errors in the order conditions for the Pade'-Hermite and
simultaneous Pade' systems computed by VECTOR_PADE. This driver does require
input data, a sample of which is given in the file data_for_driver2.
Contains the programs:
        main
        build_delta_t
        build_delta_t_star

vector_pade.f: 
Based on the algorithm given in stable_pade_alg.ps.Z and used for the 
experiments described in experiments_pade_alg.ps.Z: Contains the subroutines:
        vector_pade:
        build_t:
        build_t_star:
        build_s:
        build_s_star:
        scale_s:
        scale_s_star:
        mult_s
        mult_s_star
        norm:
        gen_next_vector:

linpack.f:
Collection of LINPACK subroutines used by vector_pade.f. Contains the 
subroutines:
        sgefa:
        sgesl:
        saxpy:
        isamax:
        sscal:
        sswap:
        sdot:


SHAR_EOF
fi # end of overwriting check
cd ..
if test ! -d 'Drivers'
then
	mkdir 'Drivers'
fi
cd 'Drivers'
if test ! -d 'Sp'
then
	mkdir 'Sp'
fi
cd 'Sp'
if test -f 'driver1.f90'
then
	echo shar: will not over-write existing file "'driver1.f90'"
else
cat << \SHAR_EOF > 'driver1.f90'
!***********************************************************************
!     This is a test driver for the subroutines VECTOR_PADE,           *
!     invert_Sylv and solve_Sylv. The driver requires no input data.B  *
!***********************************************************************

      module working_area_main
!        Local variables for main.
         real, dimension (:,:,:), allocatable :: S_n, S_star_n
!        Assumed shape dummy arguments for VECTOR_PADE.
         integer, dimension (:),  allocatable :: n
         real, dimension (:),     allocatable :: gamma, gamma_star, kappa
         real, dimension (:,:),   allocatable :: A
         real, dimension (:,:,:), allocatable :: S, S_star
!        Assumed shape dummy arguments for solve_Sylv.
         real, dimension (:),     allocatable :: b, x
!        Assumed shape dummy arguments for invert_Sylv.
         real, dimension (:,:),   allocatable :: M, M_inv
      end module working_area_main

      module working_area_VECTOR_PADE
!        Automatic arrays for VECTOR_PADE.
!        Variables used to compute NPHS.
         real, dimension(:,:,:),  allocatable :: S_hat, New_S
         real, dimension(:,:),    allocatable :: T
!        Variables used to compute NSPS.
         real, dimension(:,:,:),  allocatable :: S_star_hat, New_S_star
         real, dimension(:,:,:),  allocatable :: T_star
      end module working_area_VECTOR_PADE

      module working_area_invert_Sylv
         real, dimension (:),     allocatable :: gamma, gamma_star,    &
                                                 gammap, kappa,        &
                                                 a0, a_norm, b, c
         real, dimension (:,:,:), allocatable :: S, S_star
      end module working_area_invert_Sylv

      module working_area_solve_Sylv
         real, dimension (:),     allocatable :: gamma, gamma_star,    &
                                                 gammap, kappa,        &
                                                 a_norm, c, d
         real, dimension (:,:,:), allocatable :: S, S_star
      end module working_area_solve_Sylv

      program main

      use working_area_main
      implicit none

      interface
         subroutine VECTOR_PADE(k, n, A, tau,                          &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: n
            real,    dimension (:,:),   intent (in)    :: A
            real,                       intent (in)    :: tau
            real,    dimension (:,:,:), intent (out)   :: S, S_star
            real,    dimension (:),     intent (out)   :: gamma,   &
                                                          gamma_star, kappa
            integer,                    intent (out)   :: num_of_kappas
            integer,                    intent (inout) :: flag
         end subroutine VECTOR_PADE
         subroutine invert_Sylv(k, n, A, tau, Sylvinv, cond_number, flag)
            integer,                    intent(in)    :: k
            integer, dimension (:),     intent(in)    :: n
            real,    dimension (:,:),   intent(inout) :: A
            real,                       intent(in)    :: tau
            real,    dimension (:,:),   intent(out)   :: Sylvinv
            real,                       intent(out)   :: cond_number
            integer,                    intent(out)   :: flag
         end subroutine invert_Sylv
         subroutine solve_Sylv(k, n, A, b, tau, x, cond_number, flag)
            integer,                    intent(in)    :: k
            integer, dimension (:),     intent(in)    :: n
            real,    dimension (:,:),   intent(inout) :: A
            real,    dimension (:),     intent(in)    :: b
            real,                       intent(in)    :: tau
            real,    dimension (:),     intent(out)   :: x
            real,                       intent(out)   :: cond_number
            integer,                    intent(out)   :: flag
         end subroutine solve_Sylv
      end interface

      integer alpha, beta, i, j, k, l, offset, norm_n, num_of_kappas, &
              flag, S_deg, S_star_deg
      real tau, cond_number

!***********************************************************************
!                            Test Example                              *
!     Source: S. Cabay and A. Jones and G. Labahn, "Experiments with   *  
!     a weakly stable algorithm for computing Pade'-Hermite and        *   
!     simultaneous Pade' approximants", submitted to ACM Transactions  *
!     on mathematical software.                                        *   
!***********************************************************************

      k = 2
      allocate (n(0:k))
      n(0) = 2
      n(1) = 3
      n(2) = 1
      write(*,983) (n(beta),beta=0,k)

!     The norm of n is norm_n = n(0) + ... + n(k).
      norm_n = 6

!     S_deg = max{n(0), ..., n(k)} + 1, the largest degree of the 
!     polynomials in S.
      S_deg = 4

!     S_star_deg = norm_n - max{n(0), ..., n(k)} + 1, the largest degree 
!     of the polynomials in S_star.
      S_star_deg = 6

      allocate (A(0:norm_n, 0:k),                                     &
                S(0:S_deg,0:k,0:k), S_n(0:S_deg,0:k,0:k),             &
                S_star(0:norm_n,0:k,0:k), S_star_n(0:norm_n,0:k,0:k), &
                gamma(0:k), gamma_star(0:k), kappa(0:norm_n),         &
                b(0:norm_n), x(0:norm_n),                             &
                M(norm_n,norm_n), M_inv(norm_n,norm_n))

!     A is a vector of power series A = (A(0), ..., A(k)), where
!     A(beta) = A(0,beta) + A(1,beta)*z + ... + A(k,beta)*z**k.
      A(0,0) = 1
      A(1,0) = -1
      A(2,0) = 2
      A(3,0) = -2
      A(4,0) = 3
      A(5,0) = -3
      A(6,0) = 4

      A(0,1) = 0
      A(1,1) = 2
      A(2,1) = 0
      A(3,1) = 3
      A(4,1) = 0
      A(5,1) = 4
      A(6,1) = 0

      A(0,2) = -1
      A(1,2) = 1
      A(2,2) = 5
      A(3,2) = 3
      A(4,2) = 2
      A(5,2) = -2
      A(6,2) = -6

!     tau is the stability parameter described in subroutine VECTOR_PADE.
      tau = 100000.0

!     Print A.
      l = 0
      write(*,988) 
      write(*,986) (A(0,beta), beta=0, k), l
      do l=1, norm_n
         write(*,987) (A(l,beta), beta=0, k), l
      end do

!***********************************************************************
!     Obtain the scaled Pade'-Hermite system S and the scaled          *
!     simultaneous system S_star of types n for the vector of power    *  
!     series associated with A.                                        *   
!***********************************************************************
!     Since the sizes of the components of A affect the condition
!     numbers of the associated Sylvester matrices, and therefore the
!     choice of tau, it is usually advisable to scale the columns of A
!     (i.e., the power series associated with each column) before 
!     calling VECTOR_PADE.

      call VECTOR_PADE(k, n, A, tau,                                   &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)

!     S_n is the normalized Pade'-Hermite system.
      do l=0, S_deg
         do beta=0, k
            do alpha=0, k
               if ((beta .eq. 0 .and. l .gt. n(alpha)+1) .or. &
                   (beta .gt. 0 .and. l .gt. n(alpha)  )) then
!                 Pad with zeroes to make the polynomial of degree 
!                 S_deg.
                  S_n(l,alpha,beta) = 0.0
               else
                  S_n(l,alpha,beta) = S(l,alpha,beta)/gamma(beta)
               endif
            end do
         end do
      end do
        
!     S_star_n is the normalized simultaneous Pade' system.
      do l=0, S_star_deg
         do beta=0, k
            do alpha=0, k
               if ((alpha .eq. 0 .and. l .gt. norm_n - n(beta)  ) .or. &
                   (alpha .gt. 0 .and. l .gt. norm_n - n(beta)+1)) then
!                 Pad with zeroes to make the polynomial of degree 
!                 S_star_deg.
                  S_star_n(l,alpha,beta) = 0.0
               else
                  S_star_n(l,alpha,beta) = S_star(l,alpha,beta)/ &
                                           gamma_star(alpha)
               endif
            end do
         end do
      end do

      write(*,990) 
      do l=0, S_deg
         write(*,991) l
         do alpha=0,k
!           Multiplication by 37 makes S_n integral.
            write(*,992) (37*S_n(l,alpha,beta), beta=0, k)
         end do
      end do

      write(*,984) 
      write(*,985) (kappa(i), i=0, num_of_kappas)

      write(*,993) 
      do l=0, S_star_deg
         write(*,995) l
         do alpha=0,k
!           Multiplication by 37 makes S_star_n integral.
            write(*,994) (37*S_star_n(l,alpha,beta), beta=0, k)
         end do
      end do


!***********************************************************************
!     Obtain the inverse of the striped Sylvester matrix M associated  *
!     with A.                                                          *  
!***********************************************************************

      call invert_Sylv(k, n, A, tau, M_inv, cond_number, flag)

!     Compute M (required for output purposes only).
      offset = 0
      do l=0, k
         do j=1, n(l)
            do i = 1, j-1
               M(i,offset+j) = 0
             end do
            do i=j, norm_n
               M(i,offset+j) = A(i-j,l)
             end do
          end do
         offset = offset + n(l)
        end do

!     Print M.
      write(*,996)
      do i = 1, norm_n
         write(*,997) (M(i,j),j=1,norm_n)
       end do

!     Print the inverse of M.
      write(*,998)
      do i = 1, norm_n
         write(*,980) (37*37*M_inv(i,j),j=1,norm_n)
       end do

!***********************************************************************
!     Solve the system Mx = b, using the subroutine solve_Sylv. The    *
!     vector b is the sum of the columns of M.                         *  
!***********************************************************************
      b(0) = 0
      b(1) = 3
      b(2) = 8
      b(3) = 8
      b(4) = 6
      b(5) = 5

      call solve_Sylv(k, n, A, b, tau, x, cond_number, flag)

!     Print b and x.
      write(*,999)
      write(*,981) (b(l),l=0,norm_n-1)
      write(*,982)
      write(*,981) (x(l),l=0,norm_n-1)

 980  format(2x,6f7.0)
 981  format(3x, 6f4.0)
 982  format(//6x, 'Solution x of Mx = b'/)
 983  format(//12x, 'n = (',i1,',',i1,',',i1,')'/)
 984  format(//3x,'Stability of points along the piecewise diagonal'/, &
             3x,'through n. Rough estimates of condition numbers'/,    &
             3x,'of the Sylvester matrices associated with these'/,    &
             3x,'points.')
 985  format(/5x, 8e9.2)
 986  format(2x,'   [', 3F4.0, ' ]  *  z**',I1)
 987  format(2x,'+  [', 3F4.0, ' ]  *  z**',I1)
 988  format(" Input vector of power series A")
 990  format(// "     Pade'-Hermite System S"/ &
      ' Normalized and multiplied by 37'/)
 991  format(" Coefficient matrix of z**",I1)
 992  format(2x, 3F7.0)
 993  format(//" Simultaneous Pade' System S_star"/ & 
             ' Normalized and multiplied by 37'/)
 994  format(5x, 3F7.0)
 995  format("    Coefficient matrix of z**",I1)
 996  format(//'  Striped Sylvester matrix M'/)
 997  format(3x, 6F4.0)
 998  format(//8x, 'Inverse of M multiplied by 37**2'/)
 999  format(//6x, 'Right-hand vector b'/)
         
      deallocate (n, A, S, S_n, S_star, S_star_n, gamma, gamma_star, & 
                                                kappa, b, x, M, M_inv)
      stop
      end program main

      subroutine invert_Sylv(k, n, A, tau, Sylvinv, cond_number, flag)

!***********************************************************************
!                                                                      *
!     For the vector of integers                                       *
!                                                                      *
!                      n = [n(0),...,n(k)],                            *
!                                                                      *
!     let                                                              *
!                                                                      *
!                  ||n|| = n(0)+...+n(k).                              *
!                                                                      *
!     Define the order ||n|| striped Sylvester matrix M to be          *
!                                                                      *
!                                                                      *
!                                                                      *
!  |   A(0,0)                     |   |   A(0,k)                     | *
!  |          .                   |   |          .                   | *
!  |              .               |   |              .               | *
!  |     .            .           |   |     .            .           | *
!  |     .              A(0,0)    |...|     .              A(0,k)    |.*
!  |     .                .       |   |     .                .       | *
!  |                      .       |   |                      .       | *
!  |                      .       |   |                      .       | *
!  |A(||n||-1,0)...A(||n||-n(0),0)|   |A(||n||-1,k)...A(||n||-n(k),k)| *
!                                                                      *
!     This subroutine computes the inverse, Sylvinv, of M and gives    *
!     a rough estimate, cond_number, of the algorithm.                 *
!                                                                      *
!     The inverse is obtained by using the formula derived in          *
!     S. Cabay and A. Jones and G. Labahn, "Computation of Numerical   *
!     Pade'-Hermite and Simultaneous Pade' Systems I: Near Inversion   *
!     of Generalized Sylvester Matrices", SIAM journal on matrix       *
!     analysis and applications, 17 (1996), 248-267.                   *
!                                                                      *
!     The formula expresses the inverse in terms of Pade'-Hermite and  *
!     Simultaneous Pade' Systems of type n for the vector of power     *
!     series that can be associated with A. These systems are computed *
!     by the subroutine VECTOR_PADE.                                   *
!                                                                      *
!***********************************************************************
!                                                                      *
!    on entry                                                          *
!       k            integer                                           *
!                    There are k+1 stripes in M.                       *
!                                                                      *
!       n            integer (0:k)                                     *
!                    The beta'th strip in M has n(beta) columns.       *
!                                                                      *
!       A            real (0:sum(n), 0:k)                              *
!                    Each column of this matrix gives one stripe in    *
!                    the striped Sylvester matrix M.                   *
!                                                                      *
!       tau          real                                              *
!                    Stability parameter required by the subroutine    *
!                    VECTOR_PADE. Very roughly speaking, the residual  *
!                    error, b - M*x, will look like                    *
!                               tau * unit-error * ||A||.              *
!                    For most efficient computation, tau should be     *
!                    chosen as large as the lack of accuracy will      *
!                    permit.                                           *
!                                                                      *
!    on exit                                                           *
!       Sylvinv      real (sum(n), sum(n))                             *
!                    The inverse  of M.                                *
!                                                                      *
!       cond_number  real                                              *
!                    Very rough estimate of the condition number of    *
!                    this algorithm.                                   *
!                                                                      *
!       flag       integer                                             *
!                    Error parameter.                                  *
!                    flag = 0, no errors                               *
!                    flag = 1, the Sylvester matrix at the point n     *
!                              is ill-conditioned; i.e.,               *
!                              cond_number >= tau.                     *
!                    flag = 2, the Sylvester matrix at the point n     *
!                              is numerically singular.                *
!                    flag = 3, input variables are incorrect.          *
!                                                                      *
!                                                                      *
!    functions and subroutines                                         *
!       divide_series     Divides one power series by another.         *
!       VECTOR_PADE       Computes scaled Pade'-Hermite and            *
!                         simultaneous Pade' systems for the power     *
!                         series associated with A.                    *
!                                                                      *
!***********************************************************************
 
      use working_area_invert_Sylv
      implicit none

      interface
         subroutine VECTOR_PADE(k, n, A, tau,                          &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: n
            real,    dimension (:,:),   intent (in)    :: A
            real,                       intent (in)    :: tau
            real,    dimension (:,:,:), intent (out)   :: S, S_star
            real,    dimension (:),     intent (out)   :: gamma,   &
                                                          gamma_star, kappa
            integer,                    intent (out)   :: num_of_kappas
            integer,                    intent (inout) :: flag
         end subroutine VECTOR_PADE
      end interface

!     invert_Sylv subroutine parameters.
      integer,                    intent(in)    :: k
      integer, dimension (0:),    intent(in)    :: n
      real,    dimension (0:,0:), intent(inout) :: A
      real,                       intent(in)    :: tau
      real,    dimension (1:,1:), intent(out)   :: Sylvinv
      real,                       intent(out)   :: cond_number
      integer,                    intent(out)   :: flag
      
!     Local variables.
      integer alpha, beta, i, j, l,  offset, norm_n, num_of_kappas 
      real norm_a0_inv
      allocate (gamma(0:k), gamma_star(0:k), gammap(0:k), a_norm(0:k), &
                kappa(0:sum(n)), a0(0:sum(n)), b(0:sum(n)),c(0:sum(n)),&
                S(0:maxval(n)+1, 0:k, 0:k), S_star(0:sum(n), 0:k, 0:k))

      norm_n = sum(n)
        
!     Check the validity of input parameters.
      if (     k .lt. 1                    .or. &
               k .gt. size(n) - 1          .or. &
               0 .gt. minval(n)            .or. &
          norm_n .gt. size(A(:,0)) - 1     .or. &
               k .gt. size(A(0,:)) - 1     .or. &
             0.0 .eq. A(0,0)               .or. &
          norm_n .gt. size(Sylvinv(:,1))   .or. &
          norm_n .gt. size(Sylvinv(1,:)))  then
         flag = 3
         return
      else
         flag = 0
      endif

!     Compute the Pade'-Hermite system S and simultaneous Pade' system
!     S_star of type n for the vector of power series associated with A.
!     VECTOR_PADE requires values for the coefficients of z**norm_n in A, 
!     so temporarily assign some.
      do beta=0, k
         a_norm(beta) = A(norm_n,beta)
         A(norm_n,beta) = 0
      end do
      call VECTOR_PADE(k, n, A, tau,                                   &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)
      do beta=0, k
         A(norm_n,beta) = a_norm(beta) 
      end do

      if (flag .eq. 0 .or. flag .eq. 1) then
!     VECTOR_PADE successfully computed systems of type n.

!        Some initializations.
         do j = 0, norm_n-1
            a0(j) = A(j,0)/A(0,0)
         end do
         do i = 1, norm_n
            do j = 1, norm_n
               Sylvinv(i,j) = 0.0
            end do
         end do

!        A rough estimate of the condition number of this algorithm is 
!        given in the last entry in kappa multiplied by the norm of the 
!        inverse of a0.
         b(0) = 1
         do l=1, norm_n-1
            b(l) = 0
         end do
         call divide_series(a0, b, c, norm_n-1, flag)
         norm_a0_inv = abs(c(0))
         do l=1, norm_n-1
            norm_a0_inv = norm_a0_inv + abs(c(l))
         end do
         cond_number = kappa(num_of_kappas) * norm_a0_inv

!        Now, evaluate the inverse formula.

         do beta=0, k
            gammap(beta) = gamma(beta) * gamma_star(beta)
         end do

         do beta = 0, k
!           If beta = 0, b corresponds with the power series v_star(z); 
!           otherwise, b corresponds with the power series 
!           z*q_star(beta).
            if (beta .eq. 0) then
               do l = 0, norm_n-1
                  if (l .le. norm_n-n(0)) then
                     b(l) = S_star(l,0,0)
                  else 
                     b(l) = 0.0
                  endif
               end do
            else
               do l = 0, norm_n-1
                  if (l .le. norm_n-n(0)) then
                     b(l) = S_star(l+1,beta,0)
                  else 
                     b(l) = 0.0
                  endif
               end do
            endif

!           c corresponds with the power series obtained by dividing b 
!           with the inverse of the power series associated with the 
!           first column of A.
            call divide_series(a0, b, c, norm_n-1, flag)
 
!           Multiply c on the left by the coefficients of the 
!           polynomials of the beta'th column of S.
            offset = 0
            do alpha = 0, k
               do i = 0, n(alpha)-1
                  if (beta .eq. 0) then 
                     j=i-1 
                  else 
                     j=i 
                  endif
                  do l = 0, norm_n - 1
                     Sylvinv(offset+n(alpha)-i,norm_n-l)              &
                      = Sylvinv(offset+n(alpha)-i, norm_n-l)          &
                      + S(n(alpha)-j,alpha,beta) * c(l) / gammap(beta)
                  end do
               end do
               offset = offset + n(alpha)
            end do
         end do

!        Sum over the coefficients of the polynomials in S. 
         offset = 0
         do alpha = 0, k
            do i = 1, n(alpha)-1
               do l = 1, norm_n-1
                  Sylvinv(offset+n(alpha)-i,norm_n-l)                  &
                               = Sylvinv(offset+n(alpha)-i,norm_n-l)   &
                               + Sylvinv(offset+n(alpha)+1-i,norm_n-l+1) 
               end do
            end do
            offset = offset + n(alpha)
         end do

      endif
      deallocate (gamma, gamma_star, gammap, a_norm, kappa, a0, b, c, &
                                                             S, S_star)
      return
      end subroutine invert_Sylv


      subroutine solve_Sylv(k, n, A, b, tau, x, cond_number, flag)
      
!***********************************************************************
!                                                                      *
!     For the vector of integers                                       *
!                                                                      *
!                      n = [n(0),...,n(k)],                            *
!                                                                      *
!     let                                                              *
!                                                                      *
!                  ||n|| = n(0)+...+n(k).                              *
!                                                                      *
!     Define the order ||n|| striped Sylvester matrix M to be          *
!                                                                      *
!                                                                      *
!                                                                      *
!  |   A(0,0)                     |   |   A(0,k)                     | *
!  |          .                   |   |          .                   | *
!  |              .               |   |              .               | *
!  |     .            .           |   |     .            .           | *
!  |     .              A(0,0)    |...|     .              A(0,k)    |.*
!  |     .                .       |   |     .                .       | *
!  |                      .       |   |                      .       | *
!  |                      .       |   |                      .       | *
!  |A(||n||-1,0)...A(||n||-n(0),0)|   |A(||n||-1,k)...A(||n||-n(k),k)| * 
!                                                                      *
!     Given the vector b, solve_Sylv determines the solution x of the  *
!     linear system of equations                                       *
!                                                                      *
!                  M * x = b.                                          *
!                                                                      *
!     The solution is obtained by using the inverse formula for M      *
!     derived in S. Cabay and A. Jones and G. Labahn, "Computation of  *
!     Numerical Pade'-Hermite and Simultaneous Pade' Systems I: Near   *
!     Inversion of Generalized Sylvester Matrices", SIAM journal on    *
!     matrix analysis and applications, 17 (1996), 248-267.            *
!                                                                      *
!     The formula expresses the inverse in terms of Pade'-Hermite and  *
!     Simultaneous Pade' Systems of type n for the vector of power     *
!     series that can be associated with A. These systems are computed *
!     by the subroutine VECTOR_PADE.                                   *
!                                                                      *
!***********************************************************************
!                                                                      *
!    on entry                                                          *
!       k            integer                                           *
!                    There are k+1 stripes in M.                       *
!                                                                      *
!       n            integer (0:k)                                     *
!                    The beta'th strip in M has n(beta) columns.       *
!                                                                      *
!       A            real (0:sum(n), 0:k)                              *
!                    Each column of this matrix gives one stripe in    *
!                    the striped Sylvester matrix M.                   *
!                                                                      *
!       b            real (0:sum(n))                                   *
!                    The right-hand vector.                            *
!                                                                      *
!       tau          real                                              *
!                    Stability parameter required by the subroutine    *
!                    VECTOR_PADE. Very roughly speaking, the residual  *
!                    error, b - M*x, will look like                    *
!                               tau * unit-error * ||A||.              *
!                    For most efficient computation, tau should be     *
!                    chosen as large as the lack of accuracy will      *
!                    permit.                                           *
!                                                                      *
!    on exit                                                           *
!       x            real (0:sum(n))                                   *
!                    The solution vector.                              *
!                                                                      *
!       cond_number  real                                              *
!                    Very rough estimate of the condition number of    *
!                    this algorithm.                                   *
!                                                                      *
!       flag       integer                                             *
!                    Error parameter.                                  *
!                    flag = 0, no errors                               *
!                    flag = 1, the Sylvester matrix at the point n     *
!                              is ill-conditioned; i.e.,               *
!                              cond_number >= tau.                     *
!                    flag = 2, the Sylvester matrix at the point n     *
!                              is numerically singular.                *
!                    flag = 3, input variables are incorrect.          *
!                                                                      *
!    functions and subroutines                                         *
!       divide_series     Divides one power series by another.         *
!       VECTOR_PADE       Computes scaled Pade'-Hermite and            *
!                         simultaneous Pade' systems for the power     *
!                         series associated with A.                    *
!                                                                      *
!***********************************************************************
 
      use working_area_solve_Sylv
      implicit none

      interface
         subroutine VECTOR_PADE(k, n, A, tau,                          &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: n
            real,    dimension (:,:),   intent (in)    :: A
            real,                       intent (in)    :: tau
            real,    dimension (:,:,:), intent (out)   :: S, S_star
            real,    dimension (:),     intent (out)   :: gamma,   &
                                                          gamma_star, kappa
            integer,                    intent (out)   :: num_of_kappas
            integer,                    intent (inout) :: flag
         end subroutine VECTOR_PADE
      end interface

!     solve_Sylv subroutine parameters.
      integer,                    intent(in)    :: k
      integer, dimension (0:),    intent(in)    :: n
      real,    dimension (0:,0:), intent(inout) :: A
      real,    dimension (0:),    intent(in)    :: b
      real,                       intent(in)    :: tau
      real,    dimension (0:),    intent(out)   :: x
      real,                       intent(out)   :: cond_number
      integer,                    intent(out)   :: flag

!     Local variables.
      integer i, l, num_of_kappas, offset, alpha, beta, norm_n, maxn, ni
      real    temp, norm_c
      allocate (gamma(0:k), gamma_star(0:k), gammap(0:k), a_norm(0:k), &
                kappa(0:sum(n)), c(0:sum(n)), d(0:sum(n)),             &
                S(0:maxval(n)+1, 0:k, 0:k), S_star(0:sum(n), 0:k, 0:k))

      norm_n = sum(n)

!     Check the validity of input parameters.
      if (     k .lt. 1                    .or. &
               k .gt. size(n) - 1          .or. &
               0 .gt. minval(n)            .or. &
          norm_n .gt. size(b)              .or. &
          norm_n .gt. size(x)              .or. &
          norm_n .gt. size(A(:,0)) - 1     .or. &
               k .gt. size(A(0,:)) - 1     .or. &
             0.0 .eq. A(0,0))              then
         flag = 3
         return
      else
         flag = 0
      endif

      maxn = maxval(n)
 
!     Compute the Pade'-Hermite system S and simultaneous Pade' system
!     S_star of type n for the vector of power series associated with A.
!     VECTOR_PADE requires values for the coefficients of z**norm_n in A,
!     so temporarily assign some.
      do beta=0, k
         a_norm(beta) = A(norm_n,beta)
         A(norm_n,beta) = 0
      end do
      call VECTOR_PADE(k, n, A, tau,                                   &
               S, gamma, S_star, gamma_star, kappa, num_of_kappas, flag)
      do beta=0, k
         A(norm_n,beta) = a_norm(beta) 
      end do

      if (flag .eq. 0  .or. flag .eq. 1) then
!     VECTOR_PADE has computed systems of type n.

         do l = 0, norm_n-1
            c(l) = A(l,0)/A(0,0)
         end do
!        A rough estimate of the condition number of the algorithm is 
!        given in the last entry in kappa multiplied by the norm of 
!        the inverse of c.
         d(0) = 1
         do l=1, norm_n-1
            d(l) = 0
         end do
         call divide_series(c, d, x, norm_n-1, flag)
         norm_c = abs(x(0))
         do l=1, norm_n-1
            norm_c = norm_c + abs(x(l))
         end do
         cond_number = kappa(num_of_kappas) * norm_c

         do beta=0, k
            gammap(beta) = gamma(beta) * gamma_star(beta)
         end do
 
!        Divide the power series associated with b by the inverse of 
!        the power series associated with the first column of A 
!        to get the power series d.                                
         call divide_series(c, b, d, norm_n-1, flag)

!        Apply the inverse formula.
         do i=0, norm_n-1
            x(i) = 0.0
         end do
         do beta=0, k
            do i = 1, maxn
               temp = 0.0
               ni = max(n(0),i)
               do l = 0, norm_n - ni 
                  if (beta .eq. 0) then
                     temp = temp + S_star(l,beta,0)*d(norm_n-i-l)
                  else
                     temp = temp + S_star(l+1,beta,0)*d(norm_n-i-l)
                  endif
               end do
               c(i-1) = temp/gammap(beta)
            end do
            offset = 0
            do alpha = 0, k
               do i = 1, n(alpha)
                  temp = 0.0
                  do l = 0, n(alpha)-i
                  if (beta .eq. 0) then
                     temp = temp + S(i+l+1,alpha,beta) * c(l)
                  else
                     temp = temp + S(i+l,alpha,beta) * c(l)
                  endif
                  end do
                  x(offset+i-1) = x(offset+i-1) + temp
               end do
               offset = offset + n(alpha)
            end do
         end do

      endif
      deallocate (gamma, gamma_star, gammap, a_norm, kappa, c, d, S, &
                                                               S_star)
      return
      end subroutine solve_Sylv

      subroutine divide_series(a, b, c, N, flag)

      implicit none
      integer N, flag
      real a(0:N), b(0:N), c(0:N)

!***********************************************************************
!     For the two power represented by a and b, with a(0) nonzero,     *
!     this subroutine divides b by a (modulo N) and stores the result  *
!     in c.                                                            *
!***********************************************************************

!     Local variables.
      integer i, j
      real temp

!     Check validity of input parameters.
      if (N .lt. 0 .or. a(0) .eq. 0) then
         flag = 1
         return
      else
         flag = 0
      endif

!     Solve a triangular system of equations.
      c(0) = b(0)/a(0)
      do i=1, N
         temp = b(i)
         do j=0, i-1
            temp = temp - c(j)*a(i-j)
         end do
         c(i) = temp/a(0)
         end do
      return
      end subroutine divide_series


SHAR_EOF
fi # end of overwriting check
if test -f 'driver2.f90'
then
	echo shar: will not over-write existing file "'driver2.f90'"
else
cat << \SHAR_EOF > 'driver2.f90'
!***********************************************************************
!     This is a test driver for the subroutines VECTOR_PADE,           *
!     build_delta_T and build_delta_T_star. The driver requires input  *
!     data.                                                            *
!***********************************************************************

      module working_area_main
!        Assummed shape dummy arguments for build_delta_T.
         real, dimension (:,:),   allocatable :: delta_T
!        Assummed shape dummy arguments for build_delta_T_star.
         real, dimension (:,:,:), allocatable :: delta_T_star
!        Assumed shape dummy arguments for VECTOR_PADE.
         integer, dimension (:),  allocatable :: n
         real, dimension (:),     allocatable :: gamma, gamma_star, kappa
         real, dimension (:,:),   allocatable :: A
         real, dimension (:,:,:), allocatable :: S, S_star
      end module working_area_main

      module working_area_VECTOR_PADE
!        Automatic arrays for VECTOR_PADE.
!        Variables used to compute NPHS.
         real, dimension(:,:,:),  allocatable :: S_hat, New_S
         real, dimension(:,:),    allocatable :: T
!        Variables used to compute NSPS.
         real, dimension(:,:,:),  allocatable :: S_star_hat, New_S_star
         real, dimension(:,:,:),  allocatable :: T_star
      end module working_area_VECTOR_PADE

      program main

      use working_area_main
      implicit none

      interface
         subroutine VECTOR_PADE(k, n, A, tau,                          &
                   S, gamma, S_star, gamma_star, kappa, num_steps, flag)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: n
            real,    dimension (:,:),   intent (in)    :: A
            real,                       intent (in)    :: tau
            real,    dimension (:,:,:), intent (out)   :: S, S_star
            real,    dimension (:),     intent (out)   :: gamma,   &
                                                          gamma_star, kappa
            integer,                    intent (out)   :: num_steps
            integer,                    intent (inout) :: flag
         end subroutine VECTOR_PADE
         subroutine build_delta_T(k, n, A, S, delta_T, delta_T_norm)
            integer,                    intent (in)  :: k
            integer, dimension (:),     intent (in)  :: n
            real,    dimension (:,:),   intent (in)  :: A
            real,    dimension (:,:,:), intent (in)  :: S
            real,                       intent (out) :: delta_T_norm
            real,    dimension (:,:),   intent (out) :: delta_T
         end subroutine build_delta_T
         subroutine build_delta_T_star(k, n, A, S_star,               &
                                       delta_T_star, delta_T_star_norm)
            integer,                    intent (in)  :: k
            integer, dimension (:),     intent (in)  :: n
            real,    dimension (:,:),   intent (in)  :: A
            real,    dimension (:,:,:), intent (in)  :: S_star
            real,                       intent (out) :: delta_T_star_norm
            real,    dimension (:,:,:), intent (out) :: delta_T_star
         end subroutine build_delta_T_star
      end interface

!     Local variables.
      integer k, flag, num_steps, S_deg, S_star_deg, alpha, beta, l
      integer norm_n
      real tau, delta_T_norm, delta_T_star_norm 

!     Input the tolerance tau and the dimension of the problem, k.
      read *, tau
      read *, k
      allocate (n(0:k))

!     Input n.
      do beta=0, k
         read *, n(beta)
      end do
      norm_n = sum(n)

      allocate (A(0:norm_n, 0:k),                                     &
                S(0:maxval(n)+1,0:k,0:k), gamma(0:k),                 &
                S_star(0:norm_n,0:k,0:k), gamma_star(0:k),            &
                kappa(0:norm_n),                                      &
                delta_T(0:norm_n, 0:k), delta_T_star(0:norm_n, 0:k, k))

!     Input the power series A.
      do beta=0, k
         do l=0, norm_n
            read *, A(l,beta)
         end do
      end do

!     Compute the Pade'-Hermite system S of type n and the
!     simultaneous Pade' system S_star of type n.
      call VECTOR_PADE(k, n, A, tau,                                   &
                   S, gamma, S_star, gamma_star, kappa, num_steps, flag)

!     Compute the errors in the order conditions.
      call build_delta_T(k, n, A, S, delta_T, delta_T_norm)
      call build_delta_T_star(k, n, A, S_star,               &
                              delta_T_star, delta_T_star_norm)

      print 190, flag
      if (flag .lt. 3) then
         print 191, tau
         print 192
         do l=0, num_steps
            print 193, l, kappa(l)
         end do
         print 194, delta_T_norm
         print 195, delta_T_star_norm
         do alpha=0, k
            do beta=0, k
               if (beta .eq. 0) then
                  S_deg = n(alpha) + 1
               else
                  S_deg = n(alpha)
               endif
               print 196, alpha, beta
               do l=0, S_deg
                  print 197, l, S(l,alpha,beta)
              end do
            end do
         end do

         do alpha=0, k
            do beta=0, k
               if (alpha.eq. 0) then
                  S_star_deg = norm_n - n(beta)
               else
                  S_star_deg = norm_n - n(beta) + 1
               endif
               print 198, alpha, beta
               do l=0, S_star_deg
                  print 199, l, S_star(l,alpha,beta)
               end do
            end do
         end do

      endif
      deallocate (n, A, S, gamma, S_star, gamma_star, kappa, delta_T, &
                                                          delta_T_star)
      stop

 190  format(' flag = ',I1)
 191  format(' Stability tolerance = ',D9.2)
 192  format(' Step   kappa')
 193  format(I4, D11.2)
 194  format(' Norm of error in NPHS order condition = ',D9.2)
 195  format(' Norm of error in NSPS order condition = ',D9.2)
 196  format(/'        S(',I3,',',I3,')')
 197  format('   z**',I3,':  ',D15.8)
 198  format(/'   S_star(',I3,',',I3,')')
 199  format('   z**',I3,':  ',D15.8)

      end program main

  
      subroutine build_delta_T(k, n, A, S, delta_T, delta_T_norm)

!***********************************************************************
!                                                                      *
!     Computes the error in the residual given the vector of           *
!     power series A and the NPHS S of type n. That is,                *
!                                                                      *
!               delta_T = A * S (mod z**(||n||+1)).                    *
!                                                                      *
!                                                                      *
!     On entry:                                                        *
!        A      real (0:sum(n),0:k)                                    *
!               Vector of power series.                                *
!                                                                      *
!        k      integer                                                *
!               There are k+1 power series in A.                       *
!                                                                      *
!        S      real (0:maxval(n)+1, 0:k, 0:k)                         *
!               Pade Hermite system for A of type n.                   *
!                                                                      *
!        n      integer (0:k)                                          *
!               The type specification of S.                           *
!                                                                      *
!     on exit                                                          *
!       delta_T real (0:sum(n), 0:k)                                   *
!               Error in the residual.                                 *
!                                                                      *
!       delta_T_norm  real                                             *
!               1-norm of the row vector delta_T.                      *
!                                                                      *
!***********************************************************************

      implicit none

!     build_delta_T subroutine parameters.
      integer,                       intent (in)  :: k
      integer, dimension (0:),       intent (in)  :: n
      real,    dimension (0:,0:),    intent (in)  :: A
      real,    dimension (0:,0:,0:), intent (in)  :: S
      real,                          intent (out) :: delta_T_norm
      real,    dimension (0:,0:),    intent (out) :: delta_T

!     Local variables.
      integer alpha, beta, l, i, start, finish, S_deg, norm_n
      real colsum 

      norm_n = sum(n)
      delta_T = 0

!     Multiply the vector A by the matrix S.
      do alpha=0, k
         do beta=0, k
            do l=0, norm_n
               if (beta .eq. 0) then
                  S_deg = n(alpha) + 1
               else
                  S_deg = n(alpha)
               endif
               start = max(0, l-S_deg)
               finish = min(l, norm_n)
               do i=start, finish
                  delta_T(l, beta) = delta_T(l, beta)              & 
                                   + A(i,alpha)  * S(l-i,alpha,beta)
               end do
            end do
         end do
      end do

!     Compute the 1-norm of delta_T.
      delta_T_norm = 0.0
      do beta=0, k
         colsum = 0.0
         do l=0, norm_n
            colsum = colsum + abs(delta_T(l,beta))
         end do
            delta_T_norm = max(colsum, delta_T_norm)
      end do

      return
      end subroutine build_delta_T


      subroutine build_delta_T_star(k, n, A, S_star,               &
                                    delta_T_star, delta_T_star_norm)

!***********************************************************************
!                                                                      *
!     Computes the error in the residual given the vector of           *
!     power series A and the NSPS S_star of type n. That is,           *
!                                                                      *
!            delta_T_star = S_star * A_star (mod z**(||n||+1)),        *
!                                                                      *
!     where                                                            *
!                                                                      *
!                            |-A(1) -A(2) ... -A(k)|                   * 
!                            | A(0)                |                   *
!                  A_star *  |       A(0)          |.                  * 
!                            |            ...      |                   *    
!                            |                 A(0)|                   *
!                                                                      *
!                                                                      *
!                                                                      *
!     On entry:                                                        *
!        A      real (0:sum(n),0:k)                                    *
!               Vector of power series.                                *
!                                                                      *
!        k      integer                                                *
!               There are k+1 power series in A.                       *
!                                                                      *
!        S_star real (0:sum(n), 0:k, 0:k)                              *
!               Simultaneous Pade' system corresponding to A of type n.*
!                                                                      *
!        n      integer (0:k)                                          *
!               The type specification of S_star.                      *
!                                                                      *
!     on exit                                                          *
!       delta_T_star     real (0:sum(n), 0:k, k)                       *
!                        Error in the residual.                        *
!                                                                      *
!       delta_T_star_norm  real                                        *
!                          1-norm of delta_T_star.                     *
!                                                                      *
!***********************************************************************

      implicit none

!     build_delta_T_star subroutine parameters.
      integer,                       intent (in)  :: k
      integer, dimension (0:),       intent (in)  :: n
      real,    dimension (0:,0:),    intent (in)  :: A
      real,    dimension (0:,0:,0:), intent (in)  :: S_star
      real,                          intent (out) :: delta_T_star_norm
      real,    dimension (0:,0:,1:), intent (out) :: delta_T_star
!     Local variables.

!     Local variables.
      integer alpha, beta, l, i, finish, S_star_deg, norm_n
      real series_norm, colsum

      norm_n = sum(n)
      delta_T_star = 0

!     Multiply the matrix S_star by the matrix A_star.
      do alpha=0, k
         do beta=1, k
            do l=0, norm_n
               if (alpha .eq. 0) then
                  S_star_deg = norm_n - n(beta)
               else
                  S_star_deg = norm_n - n(beta) + 1
               endif
               finish = min(l, S_star_deg)
               do i=0, finish
                  delta_T_star(l, alpha, beta)                   &
                                = delta_T_star(l, alpha, beta)   &
                                + S_star(i,alpha,beta) * A(l-i,0)
               end do
               if (alpha .eq. 0) then
                  S_star_deg = norm_n - n(0)
               else
                  S_star_deg = norm_n - n(0) + 1
               endif
               finish = min(l, S_star_deg)
               do i=0, finish
               delta_T_star(l, alpha, beta)                          &
                                    = delta_T_star(l, alpha, beta)   &
                                    - S_star(i,alpha,0) * A(l-i,beta)
               end do
            end do
         end do
      end do

!     Compute the 1_norm of delta_T_star.

      delta_T_star_norm = 0.0
      do beta=1, k
         colsum = 0
         do alpha=0, k
            series_norm = 0
            do l=0, norm_n
               series_norm = series_norm                   & 
                           + abs(delta_T_star(l,alpha,beta))
            end do
            colsum = colsum + series_norm 
         end do
         delta_T_star_norm = max(delta_T_star_norm, colsum)
      end do

      return
      end subroutine build_delta_T_star


SHAR_EOF
fi # end of overwriting check
if test -f 'RES1'
then
	echo shar: will not over-write existing file "'RES1'"
else
cat << \SHAR_EOF > 'RES1'


            n = (2,3,1)

 Input vector of power series A
     [  1.  0. -1. ]  *  z**0
  +  [ -1.  2.  1. ]  *  z**1
  +  [  2.  0.  5. ]  *  z**2
  +  [ -2.  3.  3. ]  *  z**3
  +  [  3.  0.  2. ]  *  z**4
  +  [ -3.  4. -2. ]  *  z**5
  +  [  4.  0. -6. ]  *  z**6


     Pade'-Hermite System S
 Normalized and multiplied by 37

 Coefficient matrix of z**0
       0.     0.    37.
       0.    37.     0.
       0.     0.    37.
 Coefficient matrix of z**1
       0.   -73.   -44.
       0.   -13.  -131.
       0.     1.   -44.
 Coefficient matrix of z**2
      -4.   -48.     3.
     -22.    -9.   137.
      -4.     0.     0.
 Coefficient matrix of z**3
      44.     0.     0.
      36.    -7.   123.
       0.     0.     0.
 Coefficient matrix of z**4
       0.     0.     0.
      -9.     0.     0.
       0.     0.     0.


   Stability of points along the piecewise diagonal
   through n. Rough estimates of condition numbers
   of the Sylvester matrices associated with these
   points.

      0.10E+01 0.34E+39 0.18E+02 0.25E+03


 Simultaneous Pade' System S_star
 Normalized and multiplied by 37

    Coefficient matrix of z**0
         37.     0.   -37.
          0.     0.     0.
          0.     0.     0.
    Coefficient matrix of z**1
        -57.    74.    57.
          0.     0.     0.
          0.     0.     0.
    Coefficient matrix of z**2
         10.   -40.   249.
         22.     0.   -22.
          4.     0.    -4.
    Coefficient matrix of z**3
          0.   -57.  -103.
        -48.    44.    48.
         -2.     8.     2.
    Coefficient matrix of z**4
          5.     0.  -428.
         37.   -52.   117.
          0.     4.    28.
    Coefficient matrix of z**5
          0.     0.  -159.
        -24.     0.  -136.
         -1.     0.    19.
    Coefficient matrix of z**6
          0.     0.     0.
          0.     0.  -147.
          0.     0.   -20.


  Striped Sylvester matrix M

     1.  0.  0.  0.  0. -1.
    -1.  1.  2.  0.  0.  1.
     2. -1.  0.  2.  0.  5.
    -2.  2.  3.  0.  2.  3.
     3. -2.  0.  3.  0.  2.
    -3.  3.  4.  0.  3. -2.


        Inverse of M multiplied by 37**2

    1332.   -37.   111.   222.   -74.  -148.
     407.   407.  2886. -2442. -1924.  1628.
     481.   481. -1443.  1221.   962.  -814.
   -1036.   333.  1739. -1998.  -703.  1332.
     259. -1110.  -777.  1184.   518.  -333.
     -37.   -37.   111.   222.   -74.  -148.


      Right-hand vector b

     0.  3.  8.  8.  6.  5.


      Solution x of Mx = b

     1.  1.  1.  1.  1.  1.
SHAR_EOF
fi # end of overwriting check
if test -f 'data2'
then
	echo shar: will not over-write existing file "'data2'"
else
cat << \SHAR_EOF > 'data2'
1.0E3
2  
3  
4 
2   
1
-1
2
-2    
3
-3
4    
-4
5
-5
0   
2
0
3  
0
4
0 
5
0
6
-1 
1
5
3 
2
-2
-6  
1
-8
5


SHAR_EOF
fi # end of overwriting check
if test -f 'RES2'
then
	echo shar: will not over-write existing file "'RES2'"
else
cat << \SHAR_EOF > 'RES2'
 flag = 1
 Stability tolerance =  0.10D+04
 Step   kappa
   0   0.10D+01
   1   0.34D+39
   2   0.18D+02
   3   0.25D+03
   4   0.26D+04
 Norm of error in NPHS order condition =  0.12D-05
 Norm of error in NSPS order condition =  0.52D-06

        S(  0,  0)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.19127774D-02
   z**  3:  -0.39173678D+00
   z**  4:  -0.25592968D+00

        S(  0,  1)
   z**  0:   0.00000000D+00
   z**  1:  -0.39999884D+00
   z**  2:   0.10817607D-05
   z**  3:   0.20000023D+00

        S(  0,  2)
   z**  0:   0.10725696D-01
   z**  1:  -0.60474654D-02
   z**  2:   0.37403008D+00
   z**  3:   0.62642664D-01

        S(  1,  0)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.19739860D+00
   z**  3:  -0.76128505D-01
   z**  4:  -0.40933479D-01
   z**  5:  -0.30986968D-01

        S(  1,  1)
   z**  0:   0.19999942D+00
   z**  1:  -0.19999997D+00
   z**  2:   0.13628483D-06
   z**  3:   0.19874869D-06
   z**  4:   0.90856545D-07

        S(  1,  2)
   z**  0:   0.00000000D+00
   z**  1:  -0.22295757D+00
   z**  2:   0.16989957D+00
   z**  3:  -0.40050197D-01
   z**  4:   0.93678676D-01

        S(  2,  0)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.19127774D-02
   z**  3:   0.30604484D-02

        S(  2,  1)
   z**  0:   0.00000000D+00
   z**  1:   0.42589008D-08
   z**  2:  -0.17982025D-07

        S(  2,  2)
   z**  0:   0.10725696D-01
   z**  1:  -0.60474654D-02
   z**  2:   0.31948842D-02

   S_star(  0,  0)
   z**  0:   0.24365066D-01
   z**  1:  -0.38102511D-01
   z**  2:   0.20995198D-01
   z**  3:  -0.72575314D-02
   z**  4:  -0.10951400D-06
   z**  5:   0.64040173D-08
   z**  6:  -0.71667252D-07

   S_star(  0,  1)
   z**  0:   0.00000000D+00
   z**  1:   0.48730124D-01
   z**  2:  -0.27474910D-01
   z**  3:  -0.98495474D-02
   z**  4:   0.13737912D-01
   z**  5:  -0.72575505D-02

   S_star(  0,  2)
   z**  0:  -0.24365066D-01
   z**  1:   0.38102511D-01
   z**  2:   0.14956024D+00
   z**  3:  -0.64539552D-01
   z**  4:  -0.18221866D+00
   z**  5:  -0.39659090D-01
   z**  6:  -0.90981901D-01
   z**  7:   0.21280237D+00

   S_star(  1,  0)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:  -0.26688738D-01
   z**  3:   0.19964833D-01
   z**  4:  -0.12723709D-01
   z**  5:   0.97238170D-02
   z**  6:  -0.10436967D-07
   z**  7:   0.48619043D-02

   S_star(  1,  1)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.00000000D+00
   z**  3:  -0.53377464D-01
   z**  4:  -0.13447784D-01
   z**  5:  -0.12206477D-01
   z**  6:  -0.12723702D-01

   S_star(  1,  2)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.26688738D-01
   z**  3:  -0.19964833D-01
   z**  4:  -0.17409743D+00
   z**  5:  -0.83479844D-01
   z**  6:   0.97341470D-01
   z**  7:   0.15496019D+00
   z**  8:   0.27774906D+00

   S_star(  2,  0)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:  -0.12755025D-01
   z**  3:  -0.76531838D-02
   z**  4:   0.20408295D-01
   z**  5:  -0.33945902D-07
   z**  6:   0.40289967D-08
   z**  7:  -0.37072496D-07

   S_star(  2,  1)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.00000000D+00
   z**  3:  -0.25510047D-01
   z**  4:  -0.40816400D-01
   z**  5:   0.12755211D-01
   z**  6:   0.20408291D-01

   S_star(  2,  2)
   z**  0:   0.00000000D+00
   z**  1:   0.00000000D+00
   z**  2:   0.12755025D-01
   z**  3:   0.76531838D-02
   z**  4:  -0.10969346D+00
   z**  5:  -0.15561241D+00
   z**  6:   0.94387643D-01
   z**  7:   0.27295950D+00
   z**  8:   0.20663220D+00
SHAR_EOF
fi # end of overwriting check
cd ..
cd ..
if test ! -d 'Src'
then
	mkdir 'Src'
fi
cd 'Src'
if test ! -d 'Sp'
then
	mkdir 'Sp'
fi
cd 'Sp'
if test -f 'blas1.f'
then
	echo shar: will not over-write existing file "'blas1.f'"
else
cat << \SHAR_EOF > 'blas1.f'
      subroutine saxpy(n,sa,sx,incx,sy,incy)
!
!     constant times a vector plus a vector.
!     uses unrolled loop for increments equal to one.
!     jack dongarra, linpack, 3/11/78.
!
      real sx(1),sy(1),sa
      integer i,incx,incy,ix,iy,m,mp1,n
!
      if(n.le.0)return
      if (sa .eq. 0.0) return
      if(incx.eq.1.and.incy.eq.1)go to 20
!
!        code for unequal increments or equal increments
!          not equal to 1
!
      ix = 1
      iy = 1
      if(incx.lt.0)ix = (-n+1)*incx + 1
      if(incy.lt.0)iy = (-n+1)*incy + 1
      do 10 i = 1,n
        sy(iy) = sy(iy) + sa*sx(ix)
        ix = ix + incx
        iy = iy + incy
   10 continue
      return
!
!        code for both increments equal to 1
!
!
!        clean-up loop
!
   20 m = mod(n,4)
      if( m .eq. 0 ) go to 40
      do 30 i = 1,m
        sy(i) = sy(i) + sa*sx(i)
   30 continue
      if( n .lt. 4 ) return
   40 mp1 = m + 1
      do 50 i = mp1,n,4
        sy(i) = sy(i) + sa*sx(i)
        sy(i + 1) = sy(i + 1) + sa*sx(i + 1)
        sy(i + 2) = sy(i + 2) + sa*sx(i + 2)
        sy(i + 3) = sy(i + 3) + sa*sx(i + 3)
   50 continue
      return
      end
      integer function isamax(n,sx,incx)
!
!     finds the index of element having max. absolute value.
!     jack dongarra, linpack, 3/11/78.
!     modified to correct problem with negative increments, 9/29/88.  
!
      real sx(1),smax
      integer i,incx,ix,n
!
      isamax = 0
      if( n .lt. 1 ) return
      isamax = 1
      if(n.eq.1)return
      if(incx.eq.1)go to 20
!
!        code for increment not equal to 1
!
      ix = 1
      if(incx.lt.0)ix = (-n+1)*incx + 1
      smax = abs(sx(ix))
      ix = ix + incx
      do 10 i = 2,n
         if(abs(sx(ix)).le.smax) go to 5
         isamax = i
         smax = abs(sx(ix))
    5    ix = ix + incx
   10 continue
      return
!
!        code for increment equal to 1
!
   20 smax = abs(sx(1))
      do 30 i = 2,n
         if(abs(sx(i)).le.smax) go to 30
         isamax = i
         smax = abs(sx(i))
   30 continue
      return
      end
      subroutine sscal(n,sa,sx,incx)
!
!     scales a vector by a constant.
!     uses unrolled loops for increment equal to 1.
!     jack dongarra, linpack, 3/11/78.
!
      real sa,sx(1)
      integer i,incx,m,mp1,n,nincx
!
      if(n.le.0)return
      if(incx.eq.1)go to 20
!
!        code for increment not equal to 1
!
      nincx = n*incx
      do 10 i = 1,nincx,incx
        sx(i) = sa*sx(i)
   10 continue
      return
!
!        code for increment equal to 1
!
!
!        clean-up loop
!
   20 m = mod(n,5)
      if( m .eq. 0 ) go to 40
      do 30 i = 1,m
        sx(i) = sa*sx(i)
   30 continue
      if( n .lt. 5 ) return
   40 mp1 = m + 1
      do 50 i = mp1,n,5
        sx(i) = sa*sx(i)
        sx(i + 1) = sa*sx(i + 1)
        sx(i + 2) = sa*sx(i + 2)
        sx(i + 3) = sa*sx(i + 3)
        sx(i + 4) = sa*sx(i + 4)
   50 continue
      return
      end
      subroutine sswap (n,sx,incx,sy,incy)
!
!     interchanges two vectors.
!     uses unrolled loops for increments equal to 1.
!     jack dongarra, linpack, 3/11/78.
!
      real sx(1),sy(1),stemp
      integer i,incx,incy,ix,iy,m,mp1,n
!
      if(n.le.0)return
      if(incx.eq.1.and.incy.eq.1)go to 20
!
!       code for unequal increments or equal increments not equal
!         to 1
!
      ix = 1
      iy = 1
      if(incx.lt.0)ix = (-n+1)*incx + 1
      if(incy.lt.0)iy = (-n+1)*incy + 1
      do 10 i = 1,n
        stemp = sx(ix)
        sx(ix) = sy(iy)
        sy(iy) = stemp
        ix = ix + incx
        iy = iy + incy
   10 continue
      return
!
!       code for both increments equal to 1
!
!
!       clean-up loop
!
   20 m = mod(n,3)
      if( m .eq. 0 ) go to 40
      do 30 i = 1,m
        stemp = sx(i)
        sx(i) = sy(i)
        sy(i) = stemp
   30 continue
      if( n .lt. 3 ) return
   40 mp1 = m + 1
      do 50 i = mp1,n,3
        stemp = sx(i)
        sx(i) = sy(i)
        sy(i) = stemp
        stemp = sx(i + 1)
        sx(i + 1) = sy(i + 1)
        sy(i + 1) = stemp
        stemp = sx(i + 2)
        sx(i + 2) = sy(i + 2)
        sy(i + 2) = stemp
   50 continue
      return
      end
      real function sdot(n,sx,incx,sy,incy)
!
!     forms the dot product of two vectors.
!     uses unrolled loops for increments equal to one.
!     jack dongarra, linpack, 3/11/78.
!
      real sx(1),sy(1),stemp
      integer i,incx,incy,ix,iy,m,mp1,n
!
      stemp = 0.0e0
      sdot = 0.0e0
      if(n.le.0)return
      if(incx.eq.1.and.incy.eq.1)go to 20
!
!        code for unequal increments or equal increments
!          not equal to 1
!
      ix = 1
      iy = 1
      if(incx.lt.0)ix = (-n+1)*incx + 1
      if(incy.lt.0)iy = (-n+1)*incy + 1
      do 10 i = 1,n
        stemp = stemp + sx(ix)*sy(iy)
        ix = ix + incx
        iy = iy + incy
   10 continue
      sdot = stemp
      return
!
!        code for both increments equal to 1
!
!
!        clean-up loop
!
   20 m = mod(n,5)
      if( m .eq. 0 ) go to 40
      do 30 i = 1,m
        stemp = stemp + sx(i)*sy(i)
   30 continue
      if( n .lt. 5 ) go to 60
   40 mp1 = m + 1
      do 50 i = mp1,n,5
        stemp = stemp + sx(i)*sy(i) + sx(i + 1)*sy(i + 1) +            &
         sx(i + 2)*sy(i + 2) + sx(i + 3)*sy(i + 3) + sx(i + 4)*sy(i + 4)
   50 continue
   60 sdot = stemp
      return
      end
SHAR_EOF
fi # end of overwriting check
if test -f 'linpack.f'
then
	echo shar: will not over-write existing file "'linpack.f'"
else
cat << \SHAR_EOF > 'linpack.f'
      subroutine sgefa(a,lda,n,ipvt,info)
      integer lda,n,ipvt(1),info
      real a(lda,1)
!
!     sgefa factors a real matrix by gaussian elimination.
!
!     sgefa is usually called by sgeco, but it can be called
!     directly with a saving in time if  rcond  is not needed.
!     (time for sgeco) = (1 + 9/n)*(time for sgefa) .
!
!     on entry
!
!        a       real(lda, n)
!                the matrix to be factored.
!
!        lda     integer
!                the leading dimension of the array  a .
!
!        n       integer
!                the order of the matrix  a .
!
!     on return
!
!        a       an upper triangular matrix and the multipliers
!                which were used to obtain it.
!                the factorization can be written  a = l*u  where
!                l  is a product of permutation and unit lower
!                triangular matrices and  u  is upper triangular.
!
!        ipvt    integer(n)
!                an integer vector of pivot indices.
!
!        info    integer
!                = 0  normal value.
!                = k  if  u(k,k) .eq. 0.0 .  this is not an error
!                     condition for this subroutine, but it does
!                     indicate that sgesl or sgedi will divide by zero
!                     if called.  use  rcond  in sgeco for a reliable
!                     indication of singularity.
!
!     linpack. this version dated 08/14/78 .
!     cleve moler, university of new mexico, argonne national lab.
!
!     subroutines and functions
!
!     blas saxpy,sscal,isamax
!
!     internal variables
!
      real t
      integer isamax,j,k,kp1,l,nm1
!
!
!     gaussian elimination with partial pivoting
!
      info = 0
      nm1 = n - 1
      if (nm1 .lt. 1) go to 70
      do 60 k = 1, nm1
         kp1 = k + 1
!
!        find l = pivot index
!
         l = isamax(n-k+1,a(k,k),1) + k - 1
         ipvt(k) = l
!
!        zero pivot implies this column already triangularized
!
         if (a(l,k) .eq. 0.0e0) go to 40
!
!           interchange if necessary
!
            if (l .eq. k) go to 10
               t = a(l,k)
               a(l,k) = a(k,k)
               a(k,k) = t
   10       continue
!
!           compute multipliers
!
            t = -1.0e0/a(k,k)
            call sscal(n-k,t,a(k+1,k),1)
!
!           row elimination with column indexing
!
            do 30 j = kp1, n
               t = a(l,j)
               if (l .eq. k) go to 20
                  a(l,j) = a(k,j)
                  a(k,j) = t
   20          continue
               call saxpy(n-k,t,a(k+1,k),1,a(k+1,j),1)
   30       continue
         go to 50
   40    continue
         info = k
   50    continue
   60 continue
   70 continue
      ipvt(n) = n
      if (a(n,n) .eq. 0.0e0) info = n
      return
      end
      subroutine sgesl(a,lda,n,ipvt,b,job)
      integer lda,n,ipvt(1),job
      real a(lda,1),b(1)
!
!     sgesl solves the real system
!     a * x = b  or  trans(a) * x = b
!     using the factors computed by sgeco or sgefa.
!
!     on entry
!
!        a       real(lda, n)
!                the output from sgeco or sgefa.
!
!        lda     integer
!                the leading dimension of the array  a .
!
!        n       integer
!                the order of the matrix  a .
!
!        ipvt    integer(n)
!                the pivot vector from sgeco or sgefa.
!
!        b       real(n)
!                the right hand side vector.
!
!        job     integer
!                = 0         to solve  a*x = b ,
!                = nonzero   to solve  trans(a)*x = b  where
!                            trans(a)  is the transpose.
!
!     on return
!
!        b       the solution vector  x .
!
!     error condition
!
!        a division by zero will occur if the input factor contains a
!        zero on the diagonal.  technically this indicates singularity
!        but it is often caused by improper arguments or improper
!        setting of lda .  it will not occur if the subroutines are
!        called correctly and if sgeco has set rcond .gt. 0.0
!        or sgefa has set info .eq. 0 .
!
!     to compute  inverse(a) * c  where  c  is a matrix
!     with  p  columns
!           call sgeco(a,lda,n,ipvt,rcond,z)
!           if (rcond is too small) go to ...
!           do 10 j = 1, p
!              call sgesl(a,lda,n,ipvt,c(1,j),0)
!        10 continue
!
!     linpack. this version dated 08/14/78 .
!     cleve moler, university of new mexico, argonne national lab.
!     (But, note minor modification below by stan cabay dated 10/06/96.)
!
!     subroutines and functions
!
!     blas saxpy,sdot
!
!     internal variables
!
      real sdot,t
      integer k,kb,l,nm1
!
      nm1 = n - 1
      if (job .ne. 0) go to 50
!
!        job = 0 , solve  a * x = b
!        first solve  l*y = b
!
         if (nm1 .lt. 1) go to 30
         do 20 k = 1, nm1
            l = ipvt(k)
            t = b(l)
            if (l .eq. k) go to 10
               b(l) = b(k)
               b(k) = t
   10       continue
            call saxpy(n-k,t,a(k+1,k),1,b(k+1),1)
   20    continue
   30    continue
!
!        now solve  u*x = y
!
         do 40 kb = 1, n
            k = n + 1 - kb
!        ***************************************************************
!        *  When a is singular, this modification provides one         *
!        *  particular solution to a*x = 0.                            *
!        *                                                             *
!        *  This modification to cleve moler's code is made by         *
!        *  stan cabay, dated 10/06/96.                                *
!        *                                                             *
            if (a(k,k) .ne. 0.0e0) goto 35
               do 33 l=1,k-1
                  b(l) = -a(l,k)
   33          continue
               b(l) = 1.0
               do 34 l=k+1, n
                  b(l) = 0.0e0
   34          continue
               goto 40
!        *                                                             *
!        ***************************************************************
   35       b(k) = b(k)/a(k,k)
            t = -b(k)
            call saxpy(k-1,t,a(1,k),1,b(1),1)
   40    continue
      go to 100
   50 continue
!
!        job = nonzero, solve  trans(a) * x = b
!        first solve  trans(u)*y = b
!
         do 60 k = 1, n
            t = sdot(k-1,a(1,k),1,b(1),1)
            b(k) = (b(k) - t)/a(k,k)
   60    continue
!
!        now solve trans(l)*x = y
!
         if (nm1 .lt. 1) go to 90
         do 80 kb = 1, nm1
            k = n - kb
            b(k) = b(k) + sdot(n-k,a(k+1,k),1,b(k+1),1)
            l = ipvt(k)
            if (l .eq. k) go to 70
               t = b(l)
               b(l) = b(k)
               b(k) = t
   70       continue
   80    continue
   90    continue
  100 continue
      return
      end
SHAR_EOF
fi # end of overwriting check
if test -f 'vector_pade.f90'
then
	echo shar: will not over-write existing file "'vector_pade.f90'"
else
cat << \SHAR_EOF > 'vector_pade.f90'

      subroutine VECTOR_PADE(k, n, A, tau,                             &
                      S, gamma, S_star, gamma_star, kappa, last_i, flag)

!***********************************************************************
!                                                                      *
!     For the vector of integers                                       *
!                                                                      * 
!                      n = [n(0),...,n(k)],                            * 
!                                                                      *  
!     define                                                           * 
!                                                                      * 
!                  ||n|| = n(0)+...+n(k).                              *  
!                                                                      * 
!     Let A be the vector of k+1 power series                          *      
!                                                                      *      
!                      A = [A(0),...,A(k)],                            *
!                                                                      *     
!     where, for j=0,...,k, the first ||n||+1 terms of A(j) are given  *
!     on entry by                                                      *
!                                                                      *
!          A(j) = A(0,j) + A(1,j) * z + ... + A(||n||,j) * z**||n||.   * 
!                                                                      *
!     This subroutine VECTOR_PADE computes the scaled Pade'-Hermite    * 
!     system S of type n satisfying                                    *   
!                                                                      *
!                 A * S = T * z**(||n||+1) + delta_T                   *
!                                                                      *
!     and the scaled simultaneous Pade' system S_star of type n        *
!     satisfying                                                       *    
!                                                                      *
!               |-A(1) -A(2) ... -A(k)|                                * 
!               | A(0)                |                                *
!     S_star *  |       A(0)          | = T_star * z**(||n||+1)        * 
!               |            ...      |          + delta_T_star.       *    
!               |                 A(0)|                                *
!                                                                      *
!     The system S is a (k+1) x (k+1) matrix of polynomials            * 
!                                                                      *
!                             |S(0,0) ... S(0,k)|                      * 
!                        S =  |       ...       |,                     *       
!                             |S(k,0) ... S(k,k)|                      * 
!                                                                      *
!     where, for i=0,...,k and j=1,...,k,                              * 
!                                                                      *
!       S(i,j) = S(0,i,j) + S(1,i,j) * z + ... + S(n(i),i,j) * z**n(i) * 
!                                                                      *
!     and, for i=0,...,k,                                              * 
!                                                                      *
!       S(i,0) = S(0,i,0) + S(1,i,0) * z + ...                         * 
!                    ...  + S(n(i)+1,i,0) * z**(n(i)+1)                *
!     with S(0,i,0) = S(1,i,0) = 0.                                    *   
!                                                                      *
!     The system S_star is a (k+1) x (k+1) matrix of polynomials       * 
!                                                                      *
!                             |S_star(0,0) ... S_star(0,k)|            *   
!                   S_star =  |            ...            |,           *   
!                             |S_star(k,0) ... S_star(k,k)|            *      
!                                                                      *
!     where, for j=0,...,k,                                            *
!                                                                      *
!          S_star(0,j) = S_star(0,0,j)                                 * 
!                      + S_star(1,0,j) * z                             * 
!                      +                                               *   
!                      .                                               *    
!                      .                                               *    
!                      .                                               *  
!                      +                                               *     
!                      + S_star(||n||-n(j),0,j) * z**(||n||-n(j)),     *     
!                                                                      *
!     and, for i=1,...,k and j=0,...,k,                                * 
!                                                                      *
!          S_star(i,j) = S_star(0,i,j)                                 * 
!                      + S_star(1,i,j) * z                             * 
!                      +                                               *     
!                      .                                               *    
!                      .                                               *    
!                      .                                               *  
!                      +                                               *     
!                      + S_star(||n||-n(j)+1,i,j) * z**(||n||-n(j)+1), * 
!                                                                      *
!     with S_star(0,i,j) = S_star(1,i,j) = 0.                          * 
!                                                                      *
!     On exit, the residual errors very roughly satisfy                *
!                                                                      *
!         ||delta_T||, ||delta_T_star|| = tau * unit_error * ||A||,    * 
!                                                                      *
!     whereas, the relative errors in S and S_star are very roughly    * 
!     of size                                                          *
!                                                                      *
!       kappa(last_i) * tau * unit_error * ||A|| * ||A(0)^{-1}||,      *
!                                                                      *
!     where kappa(last_i) is a crude estimate of the condition         *
!     number of the associated striped Sylvester matrix at the point n.*
!                                                                      *
!     The above is to serve as a rough guide in selecting the tolerance* 
!     "tau". But, there is a trade-off between the accuracy of the     * 
!     results and the speed of the algorithm; the smaller the value of * 
!     tau, the costlier the computations can become. For most efficient*  
!     computation, tau should be chosen to be as large as the lack of  * 
!     accuracy will permit. For some problems, the best strategy for   * 
!     selecting tau may be first to run a trial in order to examine the* 
!     estimates kappa(i), i = 1, ..., last_i, of the condition numbers *
!     of the striped Sylvester matrices associated with intermediate   *
!     points along the diagonal through n. The algorithm accepts the   *
!     i'th point as "stable" if                                        *
!                                                                      *
!                           kappa(i) < tau.                            *
!                                                                      *
!     Note that the first column of S always yields a Pade'-Hermite    *
!     approximant of type (n(0)-1, ..., n(k)-1) for A, with a "small"  *
!     residual error delta_T. This is so even when the Sylvester matrix*
!     at the point n is ill-conditioned or singular (when singular,    *
!     however, the remaining columns of S may be meaningless).         *
!     Similarly, the first row of S_star always gives a simultaneous   *
!     Pade' approximant of type n with a "small" residual error        *
!     delta_T_star.                                                    *
!                                                                      *
!***********************************************************************
!                                                                      *
!    on entry                                                          *
!       A            real (0:sum(n), 0:k)                              *
!                    Vector of power series with A(0,0) nonzero.       *
!                                                                      *
!       k            integer                                           *
!                    There are k+1 power series in A.                  *
!                                                                      *
!       n            integer (0:k)                                     *
!                    Vector of degrees defining the type of S & S_star.*
!                                                                      *
!       tau          real                                              *
!                    Stability parameter. An intermediate solution is  *
!                    accepted if at that point kappa(i) < tau.         *
!                                                                      *
!    on exit                                                           *
!       S            real (0:maxval(n)+1, 0:k, 0:k),                   *
!                    Scaled Pade'-Hermite system of type n.            *
!                                                                      *
!       gamma        real (0:k)                                        *
!                    Scaling factors. To obtain the normalised NPHS    *
!                    divide the j'th column of S by gamma(j).          *
!                                                                      *
!       S_star       real (0:sum(n), 0:k, 0:k),                        *
!                    Scaled simultaneous Pade' system of type n.       *
!                                                                      *
!       gamma_star   real (0:k)                                        *
!                    Scaling factors. To obtain the normalised NSPS    *
!                    divide the i'th row of S_star by gamma_star(i).   *
!                                                                      *
!       kappa        real (0:sum(n)),                                  *
!                    kappa(i) is the estimate of condition number of   *
!                    the associated Sylvester submatrix at the i'th    *
!                    step.                                             *
!                                                                      *
!       last_i       integer                                           *
!                    The last step, corresponding to the point n.      *
!                                                                      *
!       flag       integer                                             *
!                    Error parameter.                                  *
!                    flag = 0, no errors                               *
!                    flag = 1, the Sylvester matrix at the point n     *
!                              is ill-conditioned; i.e.,               *
!                              kappa(last_i) >= tau.                   *
!                    flag = 2, the Sylvester matrix at the point n     *
!                              is numerically singular. The first      *
!                              column of S still yields a Pade'-Hermite*
!                              approximant of type (n(0)-1,...,n(k)-1) *
!                              and the first row of S_star still yields*
!                              a simultaneous Pade' approximant of     *
!                              type n. The remaining rows and columns  *
!                              are meaningless.                        *
!                    flag = 3, input variables are incorrect.          *
!                                                                      *
!    Note that the storage allocated to the subroutine array parameters*
!    can be larger than limits designated above, but never smaller.    *
!                                                                      *
!    functions and subroutines                                         *
!       build_T           Finds the residual for the NPHS.             *
!       build_T_star      Finds the residual for the NSPS.             *
!       build_S           Builds the NPHS by solving Sylvester systems.* 
!       build_S_star      Builds the NSPS by solving Sylvester systems.*
!       mult_S            Multiples two NPHS's.                        *
!       mult_S_star       Multiples two NSPS's.                        *
!       scale_S           Scales the NPHS and determines gamma.        *
!       scale_S_star      Scales the NSPS and determines gamma_star.   *
!       gen_next_vector   Generates the next point along a diagonal.   *
!                                                                      *
!     Note also that build_S and build_S_star call                     *
!       sgefa             Linpack routine to triangulate a matrix.     *
!       sgesi             Linpack routine to solve linear equations.   *
!                                                                      *
!                                                                      *
!***********************************************************************
!     The algorithm VECTOR_PADE is shown to be weakly stable in        *
!     S. Cabay and A. Jones and G. Labahn, "Computation of Numerical   *
!     Pade'-Hermite and Simultaneous Pade' Systems II: A Weakly Stable *
!     Algorithm", SIAM journal on matrix analysis and applications,    *
!     17 (1996), 268-297.                                              *
!***********************************************************************

      use working_area_VECTOR_PADE
      implicit none

      interface
         subroutine build_T(A, S, k, m, prevnorm_nus, norm_nus, T)
            integer,                    intent (in)    :: k, norm_nus, &
                                                          prevnorm_nus 
            integer, dimension (:),     intent (in)    :: m
            real,    dimension (:,:),   intent (in)    :: A
            real,    dimension (:,:,:), intent (in)    :: S
            real,    dimension (:,:),   intent (inout) :: T
         end subroutine build_T
         subroutine build_T_star(A, S_star, k, m, prevnorm_nus, &
                                 norm_nus, T_star)
            integer,                    intent (in)    :: k, norm_nus, &
                                                          prevnorm_nus 
            integer, dimension (:),     intent (in)    :: m
            real,    dimension (:,:),   intent (in)    :: A
            real,    dimension (:,:,:), intent (in)    :: S_star
            real,    dimension (:,:,:), intent (inout) :: T_star
         end subroutine build_T_star
         subroutine build_S(A, k, n, norm_n, S, singular)
            integer,                    intent (in)  :: k, norm_n
            integer, dimension (:),     intent (in)  :: n
            real,    dimension (:,:),   intent (in)  :: A
            real,    dimension (:,:,:), intent (out) :: S
            logical,                    intent (out) :: singular
         end subroutine build_S
         subroutine build_S_star(A_star, k, n, knorm_n, S_star,singular)
            integer,                    intent (in)  :: k, knorm_n
            integer, dimension (:),     intent (in)  :: n
            real,    dimension (:,:,:), intent (in)  :: A_star
            real,    dimension (:,:,:), intent (out) :: S_star
            logical,                    intent (out) :: singular
         end subroutine build_S_star
         subroutine mult_S(S, m, S_hat, nus, New_S, new_m, k)
            integer,                    intent (in)  :: k
            integer, dimension (:),     intent (in)  :: m, nus, new_m
            real,    dimension (:,:,:), intent (in)  :: S, S_hat
            real,    dimension (:,:,:), intent (out) :: New_S
         end subroutine mult_S
         subroutine mult_S_star(S_star, m, S_star_hat, nus, &
                                        New_S_star, new_m, k)
            integer,                    intent (in)  :: k
            integer, dimension (:),     intent (in)  :: m, nus, new_m
            real,    dimension (:,:,:), intent (in)  :: S_star, S_star_hat
            real,    dimension (:,:,:), intent (out) :: New_S_star
         end subroutine mult_S_star
         subroutine scale_S(S, m, k, gamma)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: m
            real,    dimension (:,:,:), intent (inout) :: S
            real,    dimension (:),     intent (out)   :: gamma
         end subroutine scale_S
         subroutine scale_S_star(S_star, m, k, gamma_star)
            integer,                    intent (in)    :: k
            integer, dimension (:),     intent (in)    :: m
            real,    dimension (:,:,:), intent (inout) :: S_star
            real,    dimension (:),     intent (out)   :: gamma_star
         end subroutine scale_S_star
      end interface

!     VECTOR_PADE subroutine parameters.
      integer,                       intent (in)    :: k
      integer, dimension (0:),       intent (in)    :: n
      real,    dimension (0:,0:),    intent (in)    :: A
      real,                          intent (in)    :: tau
      real,    dimension (0:,0:,0:), intent (out)   :: S, S_star
      real,    dimension (0:),       intent (out)   :: gamma,   &
                                                       gamma_star, kappa
      integer,                       intent (out)   :: last_i
      integer,                       intent (inout) :: flag

!     Local Variables.
      logical singular
      integer alpha, beta, i, l, step, norm_n, knorm_nus,         &
              m(0:k), norm_m, new_m(0:k), norm_new_m, nu(0:k),    &
              nus(0:k), norm_nus, prevnorm_nus, S_deg, S_star_deg
!     Variables used to compute NPHS.
      allocate (S_hat(0:maxval(n)+1, 0:k, 0:k), &
                New_S(0:maxval(n)+1, 0:k, 0:k), &
                T(0:sum(n), 0:k))
!     Variables used to compute NSPS.
      allocate (S_star_hat(0:sum(n), 0:k, 0:k), &
                New_S_star(0:sum(n), 0:k, 0:k), &
                T_star(0:sum(n), 0:k, 1:k))

      norm_n = sum(n)

!     Check the validity of input parameters.
      flag = 0
         
      if (     k .lt. 1                       .or. &
               k .gt. size(n) - 1             .or. &
          norm_n .gt. size(A(:,0)) - 1        .or. &
               k .gt. size(A(0,:)) - 1        .or. &
             0.0 .eq. A(0,0)                  .or. &
       maxval(n) .gt. size(S(:,0,0)) - 2      .or. &
               k .gt. size(S(0,:,0)) - 1      .or. &
               k .gt. size(S(0,0,:)) - 1      .or. &
          norm_n .gt. size(S_star(:,0,0)) - 1 .or. &
               k .gt. size(S_star(0,:,0)) - 1 .or. &
               k .gt. size(S_star(0,0,:)) - 1) flag = 3

      if (flag .ne. 0) then
         return
      else

!        The initial stable point is m = (-1,0,...,0).

         step = 1
         m(0) = -1
         do beta=1, k
            m(beta) = 0
         end do
         kappa(0) = 1.0

!        At the initial point m, set S and S_star to be identity matrices.
         do alpha=0, k
            do beta=0, k
               if (alpha .eq. beta) then
                  S(0,alpha,beta) = 1.0
                  S_star(0,alpha,beta) = 1.0
               else
                  S(0,alpha,beta) = 0.0
                  S_star(0,alpha,beta) = 0.0
               endif
            end do
               S(1,alpha,0) = 0.0
               S_star(1,alpha,0) = 0.0
         end do

!        The index i references the i'th point along the path from the 
!        initial point (-1,0,...,0) with index i=0 to the final point 
!        n with index i=last_i. 
         i = 0
         last_i = 0
         do beta=1,k
            last_i = max(last_i, n(beta))
         end do
         last_i = min(n(0), last_i) + 1


         do while (i.lt.last_i .and. flag.eq.0)
!        Main loop 
!        ***************************************************************
!        * The iteration moves from one stable point m with index i to * 
!        * the next stable point until the last point n with index     * 
!        * last_i has been reached.                                    * 
!        ***************************************************************

            norm_m = sum(m)

!           nu is the difference between the last point n and the 
!           current stable point m.
            nu(0) = n(0) - m(0) - 1
            do beta=1, k
               nu(beta) = n(beta) - m(beta)
            end do

            step = 0
            flag = 1
            prevnorm_nus = -1

            do while (i+step.lt.last_i .and. flag.gt.0)
!           Inner loop
!           ************************************************************
!           * Given a stable point m with index i, examine successive  *
!           * points along the diagonal with indices i+step, step=1,...*
!           * until a stable one is found or until the last point n has*
!           * been examined.                                           *
!           ************************************************************

               step = step + 1
               flag = 1

!              *********************************************************
!              * Compute nus. The objective is to obtain the NPHS,     * 
!              * S_hat, of type nus for the residual T corresponding to*
!              * S and the NSPS, S_star_hat, of type nus for the       * 
!              * residual T_star corresponding to S_star. Then the     * 
!              * multiplications S*S_hat and S_star_hat*S_star yield   * 
!              * the NPHS and NSPS of types m + nus + (1,0,...,0) for A* 
!              * and A_star with index i+step. Exit from the inner loop* 
!              * takes place only if it  is determined that this point *
!              * m + nus + (1,0,...,0) is stable or if it is the last  * 
!              * point n.                                              *
!              *********************************************************


               call gen_next_vector(nu, nus, last_i, i+step, k)
               norm_nus = sum(nus)
               knorm_nus = k*norm_nus

!              Compute the residuals. 
               call build_T(A, S, k, m, prevnorm_nus, norm_nus, T)
               call build_T_star(A, S_star, k, m, prevnorm_nus, &
                                 norm_nus, T_star)
               prevnorm_nus = norm_nus

!              Determine S_hat of type nus for the residual T by solving 
!              striped Sylvester systems of equations.
               call build_S(T, k, nus, norm_nus, S_hat, singular)
               if (singular) flag = 2

!              Determine S_star_hat of type nus for the residual 
!              T_star by solving mosaic Sylvester systems of equations
               call build_S_star(T_star, k, nus, knorm_nus, &
                                        S_star_hat, singular)
               if (singular) flag = 2

!              The coordinates of the point with index i+step are 
!              stored temporarily in new_m.
               call gen_next_vector(n, new_m, last_i, i+step, k)
               norm_new_m = sum(new_m)

!              Obtain the NPHS and store in New_S
               call mult_S(S, m, S_hat, nus, New_S, new_m, k)

!              Obtain the NSPS and store in New_S_star
               call mult_S_star(S_star, m, S_star_hat, nus, &
                                        New_S_star, new_m, k)

!              Scale the NPHS and NSPS.
               call scale_S(New_S, new_m, k, gamma)
               call scale_S_star(New_S_star, new_m, k, gamma_star)

!              Compute the stability parameter.
               if (flag .eq. 2) then
                  kappa(i+step) = huge(0.0)
               else
                  kappa(i+step) = 0
                  do beta=0, k
                     kappa(i+step) = kappa(i+step)                    &
                                   + 1.0/(gamma(beta)*gamma_star(beta))
                  end do
                  if (kappa(i+step) .lt. tau) flag = 0
               endif

!           *  End of inner loop.                                      *
!           ************************************************************
            enddo


!           ************************************************************
!           * The point new_m with index i+step is either a stable     *
!           * point  or the last point n (or, both). So copy new_m to  *
!           * m, New_S to S and New_S_star to S_star.                  *
!           ************************************************************

            i = i+step
            m = new_m
            norm_m = norm_new_m

            do alpha=0, k
               do beta=0, k
                  if (beta .eq. 0) then
                     S_deg = m(alpha) + 1
                  else
                     S_deg = m(alpha)
                  endif
                  do l=0, S_deg
                     S(l,alpha,beta) = New_S(l,alpha,beta)
                  end do
               end do
            end do

            do alpha=0, k
               do beta=0, k
                  if (alpha .eq. 0) then
                     S_star_deg = norm_m -  m(beta)
                  else
                     S_star_deg = norm_m -  m(beta) + 1
                  endif
                  do l=0, S_star_deg
                     S_star(l,alpha,beta) = New_S_star(l,alpha,beta)
                  end do
              end do
           end do

!        * End of main loop.                                           *
!        ***************************************************************
         enddo

      endif
      deallocate (S_hat, New_S, T, S_star_hat, New_S_star, T_star)

      return
      end subroutine VECTOR_PADE


      subroutine build_T(A, S, k, m, prevnorm_nus, norm_nus, T)

!***********************************************************************
!                                                                      *
!     Given the vector of power series A and the Pade'-Hermite system  * 
!     S of type m, build_T returns the first norm_nus+1 terms of the   * 
!     residual power series T. It is assumed that prevnorm_nus+1 terms *
!     of T are already available and need not be computed.             *
!                                                                      *
!***********************************************************************
!                                                                      *
!     on entry                                                         *
!       A            real (0:sum(n), 0:k)                              *
!                    Vector of power series with A(0,0) nonzero.       *
!                                                                      *
!       k            integer                                           *
!                    There are k+1 power series in A.                  *
!                                                                      *
!       S            real (0:maxval(n)+1, 0:k, 0:k)                    *
!                    Normalized NPHS of type m.                        *
!                                                                      *
!       m            integer(0:k)                                      *
!                    The type specification of S.                      *
!                                                                      *
!       T            real (0:sum(n), 0:k)                              *
!                    The residual power series.                        *
!                    The first prevnorm_nus+1 terms are available on   *
!                    entry.                                            *
!                                                                      *
!       prevnorm_nus integer                                           *
!                    The first prevnorm_nus+1 terms of T are available *
!                    on entry.                                         *
!                                                                      *
!       norm_nus     integer                                           *
!                    This routine is required to compute the first     *
!                    norm_nus +1 terms of T (norm_nus > prevnorm_nus). *
!                                                                      *
!     on exit                                                          *
!       T            real (0:sum(n), 0:k)                              *
!                    The first norm_nus+1 terms of the residual power  *
!                    series.                                           *
!                                                                      *
!***********************************************************************

      implicit none

!     build_T subroutine parameters.
      integer,                       intent (in)    :: k, prevnorm_nus, &
                                                       norm_nus
      integer, dimension (0:),       intent (in)    :: m
      real,    dimension (0:,0:),    intent (in)    :: A
      real,    dimension (0:,0:,0:), intent (in)    :: S
      real,    dimension (0:,0:),    intent (inout) :: T

!     Local variables.
      integer alpha, beta, i, l, ll, start, finish, norm_m

      norm_m = sum(m)

!     The first prevnormus+1 terms of T are already available. For the
!     remaining terms of T, first initialize new residual terms to 0.
      do beta=0, k
         do i=prevnorm_nus+1, norm_nus
            T(i,beta) = 0
         end do
      end do

      do alpha=0, k
         do beta=0, k
            do l=prevnorm_nus+norm_m+2, norm_nus+norm_m+1
               if (beta .eq. 0) then
                  start = max(0, l-m(alpha)-1)
               else
                  start = max(0, l-m(alpha))
               endif
               finish = min(l, norm_nus+norm_m+1)
               do ll=start, finish
                  T(l-norm_m-1, beta) = T(l-norm_m-1, beta) &
                                      + A(ll,alpha)         &
                                      * S(l-ll,alpha,beta)
               end do
            end do
         end do
      end do

      return
      end subroutine build_T


      subroutine build_T_star(A, S_star, k, m, prevnorm_nus, norm_nus, &
                              T_star)
     
!***********************************************************************
!                                                                      *
!     Given the vector of power series A and the simultaneous Pade'    *
!     system S_star of type m, build_T_star returns the first          *
!     norm_nus+1 terms of the residual power series T_star. It is      *
!     assumed that prevnorm_nus+1 terms of T_star are already          *
!     available and need not be computed.                              *
!***********************************************************************
!                                                                      *
!     on entry                                                         *
!       A            real (0:sum(n), 0:k)                              *
!                    Vector of power series with A(0,0) nonzero.       *
!                                                                      *
!       k            integer                                           *
!                    There are k+1 power series in A.                  *
!                                                                      *
!       S_star       real (0:maxval(n)+1, 0:k, 0:k)                    *
!                    Normalized NSPS of type m.                        *
!                                                                      *
!       m            integer (0:k)                                     *
!                    The type specification of S_star.                 *
!                                                                      *
!       T_star       real (0:sum(n), 0:k, k)                           *
!                    The residual power series.                        *
!                    The first prevnorm_nus+1 terms are available on   *
!                    entry.                                            *
!                                                                      *
!       prevnorm_nus integer                                           *
!                    The first prevnorm_nus+1 terms of T_star are      *
!                    available on entry.                               *
!                                                                      *
!       norm_nus     integer                                           *
!                    This routine is required to compute the first     *
!                    norm_nus+1 terms of T_star                        *
!                    (norm_nus > prevnorm_nus).                        *
!                                                                      *
!     on exit                                                          *
!       T_star       real (0:sum(n), 0:k, k)                           *
!                    The first norm_nus+1 terms of the residual power  *
!                    series.                                           *
!                                                                      *
!***********************************************************************

      implicit none

!     build_T_star subroutine parameters.
      integer,                       intent (in)    :: k, prevnorm_nus, &
                                                       norm_nus
      integer, dimension (0:),       intent (in)    :: m
      real,    dimension (0:,0:),    intent (in)    :: A
      real,    dimension (0:,0:,0:), intent (in)    :: S_star
      real,    dimension (0:,0:,1:), intent (inout) :: T_star

!     local variables.
      integer alpha, beta, i, l, finish, norm_m

      norm_m = sum(m)
 
!     Multiply the vector A by the NSPS matrix S_star.
!     The first prevnormus+1 terms of T_star are already available, so
!     compute only the remaining terms.
      do alpha=0, k
         do beta=1, k
            do i=prevnorm_nus+1, norm_nus
               T_star(i,alpha,beta) = 0.0
               if (alpha .eq. 0) then
                  finish = min(i+norm_m+1, norm_m-m(0))
               else
                  finish = min(i+norm_m+1, norm_m-m(0) + 1)
               endif
               do l=0, finish
                  T_star(i, alpha, beta) = T_star(i, alpha, beta) &
                        - S_star(l,alpha,0) * A(norm_m+i-l+1,beta)
               end do
               if (alpha .eq. 0) then
                  finish = min(i+norm_m+1, norm_m-m(beta))
               else
                  finish = min(i+norm_m+1, norm_m-m(beta) + 1)
               endif
               do l=0, finish
                  T_star(i, alpha, beta) = T_star(i, alpha, beta) &
                        + S_star(l,alpha,beta) * A(norm_m+i-l+1,0)
               end do
            end do
         end do
      end do

      return
      end subroutine build_T_star


      subroutine build_S(A, k, n, norm_n, S, singular)

!***********************************************************************
!                                                                      *
!     For the vector of integers n = [n(0),...,n(k)], build_S computes * 
!     the Pade'-Hermite system S of type n for A by solving directly   * 
!     the striped Sylvester systems of linear equations associated     *
!     with A.                                                          *
!                                                                      *
!***********************************************************************
!                                                                      *
!     on entry                                                         *
!       A            real (0:sum(n), 0:k)                              *
!                    A vector of power series with A(0,0) nonzero.     *
!                                                                      *
!       k            integer                                           *
!                    There are k+1 power series in A.                  *
!                                                                      *
!       n            integer (0:k)                                     *
!                    The type specification of the NPHS.               *
!                                                                      *
!       norm_n       integer                                           *
!                    norm_n = n(0) + ... + n(k).                       *
!                                                                      *
!     on exit                                                          *
!       S            real (0:maxval(n)+1, 0:k, 0:k)                    *
!                    Normalized Pade'-Hermite system of type n.        *
!                                                                      *
!       singular     logical                                           *
!                    "true" if the associated striped Sylvester matrix *
!                    is singular and "false" otherwise.                *
!                                                                      *
!     functions and subroutines                                        *
!       sgefa             Linpack routine to triangulate a matrix.     *
!       sgesi             Linpack routine to solve linear equations.   *
!                                                                      *
!***********************************************************************

      implicit none

!     build_S subroutine parameters.
      integer,                       intent (in)  :: k, norm_n
      integer, dimension (0:),       intent (in)  :: n
      real,    dimension (0:,0:),    intent (in)  :: A
      real,    dimension (0:,0:,0:), intent (out) :: S
      logical,                       intent (out) :: singular

!     Local variables.
      integer alpha, beta, i, l, blockoffset, info

!     work areas - required by the subroutines sgefa and sgesi.
!     M is the striped Sylvester matrix associated with A.
      integer ipvt(norm_n)
      real M(norm_n, norm_n), B(norm_n)

!     Initialize S(z).
      do alpha=0, k
         S(0,alpha,0) = 0.0
         S(1,alpha,0) = 0.0
      end do
      do alpha=1, k
         do beta=1, k
            if (alpha .eq. beta) then
               S(0,alpha,beta) = 1.0
            else
               S(0,alpha,beta) = 0
            endif
         end do
      end do
      do beta=1, k
         S(0,0,beta) = -A(0,beta) / A(0,0)
      end do

      if (norm_n .eq. 0) then

!        Special case.
!        S is a diagonal matrix with modified first row.
         S(1,0,0) = 1 / A(0,0)
         singular = .false.

      else

!        Build the striped Sylvester matrix M.
         blockoffset = 0
         do beta=0, k
            do i=0, norm_n-1
               do l=0, n(beta)-1
                  if (l .le. i) then
                     M(i+1, blockoffset+l+1) = A(i-l, beta)
                  else
                     M(i+1, blockoffset+l+1) = 0
                  endif
               end do
             end do
             blockoffset = blockoffset + n(beta)
         end do

!        Reduce the system to triangular form.
         call sgefa(M, norm_n, norm_n, ipvt, info)

!        Compute the first column of S.
         do i=1, norm_n-1
            B(i) = 0
         end do
         B(norm_n) = 1
         call sgesl(M, norm_n, norm_n, ipvt, B, 0)
         blockoffset = 0
         do alpha=0, k
            do l=1, n(alpha)
               S(l+1,alpha,0) = B(blockoffset+l)
            end do
            blockoffset = blockoffset + n(alpha)
         end do

!        Compute the last k columns of S.
         if (info .gt. 0) then
            singular = .true.
            do beta=1, k
               do alpha=0, k
                  do l=0, n(alpha)
                     S(l,alpha,beta) = 0
                  end do
               end do
            end do
         else
            singular = .false.
            do beta=1, k
               do i=1, norm_n
                  B(i) = -A(i,beta)+(A(i,0) * A(0,beta)/A(0,0))
               end do
               call sgesl(M, norm_n, norm_n, ipvt, B, 0)
               blockoffset = 0
               do alpha=0, k
                  do l=1, n(alpha)
                     S(l,alpha,beta) = B(blockoffset+l)
                  end do
                  blockoffset = blockoffset + n(alpha)
               end do
            end do
         endif
      endif

      return
      end subroutine build_S


      subroutine build_S_star(A_star, k, n, knorm_n, S_star, singular)

!***********************************************************************
!                                                                      *
!     For the vector of integers n = [n(0),...,n(k)], build_S_star     *
!     computes the simultaneous Pade' system S_star of type n for      *
!     A_star by solving directly the mosaic Sylvester systems of       *
!     linear equations associated with A_star.                         *
!                                                                      *
!***********************************************************************
!                                                                      *
!    on entry                                                          *
!       A_star       real(0:sum(n), 0:k,1:k)                           *
!                    k+1 x k matrix of power series.                   *
!                                                                      *
!       k            integer                                           *
!                    Dimension parameter.                              *
!                                                                      *
!       n            integer(0:k)                                      *
!                    The type specification of the NSPS.               *
!                                                                      *
!       knorm_n      integer                                           *
!                    knorm_n = k * (n(0) + ... + n(k)).                *
!                                                                      *
!    on exit                                                           *
!       S_star       real(0:sum(n), 0:k, 0:k)                          *
!                    Normalized Pade'-Hermite system of type n.        *
!                                                                      *
!       singular     logical                                           *
!                    "true" if the associated mosaic Sylvester matrix  *
!                    is singular and "false" otherwise.                *
!                                                                      *
!    functions and subroutines                                         *
!       sgefa             Linpack routine to triangulate a matrix.     *
!       sgesi             Linpack routine to solve linear equations.   *
!                                                                      *
!***********************************************************************

      implicit none

!     build_S_star subroutine parameters.
      integer,                       intent (in)  :: k, knorm_n
      integer, dimension (0:),       intent (in)  :: n
      real,    dimension (0:,0:,1:), intent (in)  :: A_star
      real,    dimension (0:,0:,0:), intent (out) :: S_star
      logical,                       intent (out) :: singular

!     Local variables.
      integer alpha, beta, l, i, j, info, norm_n,                   &
               blockoffset, cblockoffset, rblockoffset

!     work areas - required by the subroutines sgefa and sgesi.
!     M_star is the mosaic Sylvester matrix associated with A_star.
      integer ipvt(knorm_n)
      real M_star(knorm_n,knorm_n), B_star(knorm_n)

      norm_n = sum(n)
      
!     Initialize S_star to zero.
      do alpha=1, k
         do beta=0, k
            do l=0, 1
               S_star(l,alpha,beta) = 0
            end do
         end do
      end do

!     Set the constant terms of the first row of S_star.
      S_star(0,0,0) = 1.0
      do beta=1, k
         S_star(0,0,beta) = - A_star(0,0,beta) / A_star(0,beta,beta)
      end do
         
      if (norm_n .eq. 0) then

!        Special case.
!        S_star is a diagonal matrix with modified first row.
         do alpha=1, k
            S_star(1, alpha, alpha) = 1 / A_star(0,alpha,alpha)
         end do

      else

!        Build the mosaic matrix M_star of order knorm_n.
         rblockoffset = 0
         do beta=1, k
            cblockoffset = 0
            do alpha=0, k
               do i=1, norm_n
                  do j=1, norm_n - n(alpha)
                     If (i .lt. j) then
                        M_star(rblockoffset+i,cblockoffset+j) = 0
                     else
                        M_star(rblockoffset+i,cblockoffset+j)         &
                                             = A_star(i-j, alpha, beta)
                     endif
                  end do
               end do
               cblockoffset = cblockoffset + norm_n - n(alpha)
            end do
            rblockoffset = rblockoffset + norm_n
         end do

!        Reduce M_star into triangular form.
         call sgefa(M_star,knorm_n,knorm_n,ipvt,info)

!        Compute the first row of S_star.
         blockoffset = 0
         do beta=1, k
            do i=1, norm_n
               B_star(blockoffset+i) = -A_star(i,0,beta)
               do j=1, k
                  B_star(blockoffset+i) = B_star(blockoffset+i) &
                             - A_star(i,j,beta)*S_star(0,0,j) 
               end do
            end do
            blockoffset = blockoffset + norm_n
         end do
         call sgesl(M_star, knorm_n, knorm_n, ipvt, B_star, 0)
         blockoffset = 0
         do beta=0, k
            do l=1, norm_n-n(beta)
               S_star(l,0,beta) = B_star(blockoffset + l)
            end do
            blockoffset = blockoffset + norm_n - n(beta)
         end do

         if (info .gt. 0) then
!           M_star is singular
            singular = .true.
            do alpha=1, k
               do beta=0, k
                  do l=0, norm_n-n(beta)+1
                     S_star(l,alpha,beta) = 0.0
                  end do
               end do
            end do
         else
            singular = .false.
            do alpha=1, k
               do i=1, knorm_n
                  B_star(i) = 0
               end do
               B_star(alpha*norm_n) = 1
               call sgesl(M_star, knorm_n, knorm_n, ipvt, B_star, 0)
               blockoffset = 0
               do beta=0, k
                  do l=1, norm_n-n(beta)
                     S_star(l+1,alpha,beta)                      &
                                         = B_star(blockoffset + l)
                  end do
                  blockoffset = blockoffset + norm_n - n(beta)
               end do
            end do

         endif
      endif

      return
      end subroutine build_S_star


      subroutine mult_S(S, m, S_hat, nus, New_S, new_m, k)

!***********************************************************************
!                                                                      *
!     mult_S multiplies the k+1 x k+1 matrix of polynomials S and      *
!     S_hat, where S is a NPHS of type m and S_hat is a NPHS of type   *
!     nus. The product New_S = S * S_hat is a NPHS of type new_m,      *
!     where new_m = m + nus + (1,0,...0).                              *
!                                                                      *
!     on entry                                                         *
!        S         real (0:maxval(n)+1,0:k,0:k)                        *
!                  NPHS of type m.                                     *
!                                                                      *
!        m         integer (0:k)                                       *
!                  The type specification of S.                        *
!                                                                      *
!        S_hat     real (0:maxval(n)+1,0:k,0:k)                        *
!                  NPHS of type nus.                                   *
!                                                                      *
!        nus       integer (0:k)                                       *
!                  The type specification of S_hat.                    *
!                                                                      *
!        new_m     integer (0:k)                                       *
!                  The type specification of New_S.                    *
!                  Must satisfy new_m = m + nus + (1,0,...0).          *
!                                                                      *
!        k         integer                                             *
!                  Dimension parameter.                                *
!                                                                      *
!     on exit                                                          *
!      New_S  real (0:maxval(n)+1,0:k,0:k)                             *
!                  The result of S * S_hat. This is the NPHS of type   * 
!                  new_m.                                              *
!                                                                      *
!***********************************************************************

      implicit none

!     mult_S subroutine parameters.
      integer,                       intent (in)  :: k
      integer, dimension (0:),       intent (in)  :: m, nus, new_m
      real,    dimension (0:,0:,0:), intent (in)  :: S, S_hat
      real,    dimension (0:,0:,0:), intent (out) :: New_S

!     Local variables.
      integer alpha, beta, i, j, l, S_deg, start, finish
 
      do alpha=0, k
         do beta=0, k
            if (beta .eq. 0) then
               S_deg = new_m(alpha) + 1
            else 
               S_deg = new_m(alpha)
            endif
            do l=0, S_deg 
               New_S(l,alpha,beta) = 0
               do j=0, k
                  if (beta .eq. 0) then 
                     start = max(0, l - nus(j) -1)
                  else
                     start = max(0, l - nus(j))
                  endif
                  if (j .eq. 0) then 
                     finish = min(l, m(alpha) + 1)
                  else
                     finish = min(l, m(alpha))
                  endif
                  do i=start, finish
                     New_S(l,alpha,beta) = New_S(l,alpha,beta)      &
                                   + S(i,alpha,j) * S_hat(l-i,j,beta)
                  end do
               end do
            end do
         end do
      end do

      return
      end subroutine mult_S


      subroutine mult_S_star(S_star, m, S_star_hat, nus, &
                                     New_S_star, new_m, k)

!***********************************************************************
!                                                                      *
!     mult_S_star multiplies the k+1 x k+1 matrix of polynomials       *
!     S_star and S_star_hat, where S_star is a NSPS of type m and      *
!     S_star_hat is a NSPS of type nus. The product                    *
!     New_S_star = S_star_hat * S_star is a NSPS of type new_m where   *
!     new_m = m + nus + (1,0,...0).                                    *
!                                                                      *
!     on entry                                                         *
!        S_star    real (0:sum(n),0:k,0:k)                             *
!                  NSPS of type m.                                     *
!                                                                      *
!        m         integer (0:k)                                       *
!                  The type specification of S_star.                   *
!                                                                      *
!      S_star_hat  real (0:sum(n),0:k,0:k)                             *
!                  NSPS of type nus.                                   *
!                                                                      *
!        nus       integer (0:k)                                       *
!                  The type specification of S_star_hat.               *
!                                                                      *
!        new_m     integer (0:k)                                       *
!                  The type specification of New_S_star.               *
!                  Must satisfy new_m = m + nus + (1,0,...0).          *
!                                                                      *
!        k         integer                                             *
!                  Dimension parameter.                                *
!                                                                      *
!     on exit                                                          *
!      New_S_star  real (0:sum(n),0:k,0:k)                             *
!                  The result of S_star_hat * S_star. This is the NSPS *
!                  of type m_new.                                      *
!                                                                      *
!***********************************************************************

      implicit none

!     mult_S_star subroutine parameters.
      integer,                       intent (in)  :: k
      integer, dimension (0:),       intent (in)  :: m, nus, new_m
      real,    dimension (0:,0:,0:), intent (in)  :: S_star, S_star_hat
      real,    dimension (0:,0:,0:), intent (out) :: New_S_star

!     Local variables.
      integer alpha, beta, i, j, l, S_star_deg, start, finish, &
              norm_m, norm_nus, norm_new_m
 
      norm_m = sum(m)
      norm_nus = sum(nus)
      norm_new_m = sum(new_m)

      do alpha=0, k
         do beta=0, k
            if (alpha .eq. 0) then
               S_star_deg = norm_new_m - new_m(beta) 
            else 
               S_star_deg = norm_new_m - new_m(beta) + 1
            endif
            do l=0, S_star_deg 
               New_S_star(l,alpha,beta) = 0.0
               do j=0, k
                  if (j .eq. 0) then 
                     start = max(0, l - norm_m + m(beta))
                  else
                     start = max(0, l - norm_m + m(beta) - 1)
                  endif
                  if (alpha .eq. 0) then 
                     finish = min(l, norm_nus - nus(j))
                  else
                     finish = min(l, norm_nus - nus(j) + 1)
                  endif
                  do i=start, finish
                     New_S_star(l,alpha,beta) = New_S_star(l,alpha,beta) &
                            + S_star_hat(i,alpha,j) * S_star(l-i,j,beta)
                  end do
               end do
            end do
         end do
      end do

      return
      end subroutine mult_S_star


      subroutine scale_S(S, m, k, gamma)

!***********************************************************************
!                                                                      *
!     Scale the NPHS so that the 1-norm of each column is equal to 1.  *
!                                                                      *
!***********************************************************************
!                                                                      *
!     on entry                                                         *
!       S            real (0:maxval(n)+1, 0:k, 0:k)                    *
!                    NPHS with r(0) = 1.                               *
!                                                                      *
!       k            integer                                           *
!                    S is a k+1 x k+1 matrix of polynomials.           *
!                                                                      *
!     on exit                                                          *
!       S            real (0:maxval(n)+1, 0:k, 0:k)                    *
!                    The scaled NPHS.                                  *
!                                                                      *
!       gamma        real(0:k)                                         *   
!                    The vector of scaling factors. The normalized NPHS*
!                    can be obtained from the scaled one by dividing   *
!                    the beta'th column by gamma(beta).                *
!                                                                      *
!***********************************************************************

      implicit none

!     scale_S subroutine parameters.
      integer,                       intent (in)    :: k
      integer, dimension (0:),       intent (in)    :: m
      real,    dimension (0:,0:,0:), intent (inout) :: S
      real,    dimension (0:),       intent (out)   :: gamma

!     Local variables.
      integer alpha, beta, S_deg, l

!     Initially, determine gamma(beta) to be the 1-norm of the beta'th 
!     column of S.
      do beta=0, k
         gamma(beta) = 0
         do alpha=0, k
            if (beta .eq. 0) then
               S_deg = m(alpha) + 1
            else
               S_deg = m(alpha) 
            endif
            do l=0, S_deg
               gamma(beta) = gamma(beta) + abs(S(l,alpha,beta))
            end do
          end do
      end do


!     Scale each column of S.
      do beta=0, k
         if (gamma(beta) .ne. 0.0) then
            do alpha=0, k
               if (beta .eq. 0) then
                  S_deg = m(alpha) + 1
               else
                  S_deg = m(alpha) 
               endif
               do l=0, S_deg
                  S(l,alpha,beta) = S(l,alpha,beta) / gamma(beta)
               end do
            end do
         endif
      end do

!     It is assumed on entry that r(0)=1, so gamma(0) is simply the 
!     inverse of the norm of the first column of S prior to scaling.
!     The remaining scaling factors are determined from the diagonal
!     of V(0).
      gamma(0) = 1/gamma(0)
      do beta=1, k
         gamma(beta) = abs(S(0,beta,beta))
      end do

      return
      end subroutine scale_S


      subroutine scale_S_star(S_star, m, k, gamma_star)

!***********************************************************************
!                                                                      *
!     Scale the NSPS so that the norm of each row is equal to 1.       *
!                                                                      *
!***********************************************************************
!                                                                      *
!     on entry                                                         *
!       S_star       real (0:sum(n), 0:k, 0:k)                         *
!                    NSPS with R_star(0) = I.                          *
!                                                                      *
!       k            integer                                           *
!                    S_star is a k+1 x k+1 matrix of polynomials.      *
!                                                                      *
!     on exit                                                          *
!       S_star       real (0:sum(n), 0:k, 0:k)                         *
!                    The scaled NPHS.                                  *
!                                                                      *
!       gamma_star   real(0:k)                                         *
!                    The vector of scaling factors. The normalized NSPS*
!                    can be obtained from the scaled one by dividing   *
!                    the alpha'th row by gamma(alpha).                 *
!                                                                      *
!***********************************************************************

      implicit none

!     scale_S_star subroutine parameters.
      integer,                       intent (in)    :: k
      integer, dimension (0:),       intent (in)    :: m
      real,    dimension (0:,0:,0:), intent (inout) :: S_star
      real,    dimension (0:),       intent (out)   :: gamma_star

!     Local variables.
      integer norm_m, alpha, beta, S_star_deg, l

      norm_m = sum(m)

!     Initially, determine gamma(alpha) to be the 1-norm of the alpha'th
!     row of S_star.
      do alpha=0, k
         gamma_star(alpha) = 0
         do beta=0, k
            if (alpha .eq. 0) then
               S_star_deg = norm_m - m(beta)
            else
               S_star_deg = norm_m - m(beta)+1
            endif
            do l=0, S_star_deg
               gamma_star(alpha) = gamma_star(alpha)       &
                                 + abs(S_star(l,alpha,beta))
            end do
         end do
      end do

!     Scale each row of S_star.
      do alpha=0, k
         if (gamma_star(alpha) .ne. 0.0) then
            do beta=0, k
               if (alpha .eq. 0) then
                  S_star_deg = norm_m - m(beta)
               else
                  S_star_deg = norm_m - m(beta)+1
               endif
               do l=0, S_star_deg
                  S_star(l,alpha,beta) = S_star(l,alpha,beta) &
                                       / gamma_star(alpha)
               end do
            end do
         endif
      end do
      
!     It is assumed on entry that R_star(0) = I, so that, 
!     for alpha=1,...,k, gamma_star(alpha) is simply the inverse 
!     of the norm of the first row of S_star prior to scaling.
      gamma_star(0) = abs(S_star(0,0,0))
      do alpha=1, k
         if (gamma_star(alpha) .ne. 0.0) then
            gamma_star(alpha) = 1.0/gamma_star(alpha) 
          endif
      end do

      return
      end subroutine scale_S_star


      subroutine gen_next_vector(n, m, last_i, i, k)

!***********************************************************************
!                                                                      *
!     gen_next_point generates the next point m beyond the point with  * 
!     index i along the diagonal of the Pade' table passing through    *
!     the point n.                                                     *
!                                                                      *
!     on entry                                                         *
!        n      integer (0:k)                                          *
!               The final point in the Pade' table.                    *
!                                                                      *
!        last_i integer                                                *
!               The index of the point n.                              *
!                                                                      *
!        i      integer                                                *
!               The current index.                                     *
!                                                                      *
!        k      integer                                                *
!               The index of the last entry in n.                      *
!                                                                      *
!     on exit                                                          *
!        m      integer (0:k)                                          *
!               The next point along the diagonal through n.           *
!                                                                      *
!***********************************************************************

      implicit none
      integer k
      integer  n(0:k), m(0:k), i, last_i

!     Local variable.
      integer beta

      do beta=0, k
         m(beta) = max(0, n(beta) - last_i + i)
      end do
      return
      end subroutine gen_next_vector


SHAR_EOF
fi # end of overwriting check
cd ..
cd ..
#	End of shell archive
exit 0
