! example.f90
program main
    implicit none
    character(len=*), parameter :: FILE_NAME = 'data.txt'   ! File name.
    integer,          parameter :: N         = 10           ! Number of values.

    real, dimension(N) :: x, y
    integer            :: i, fu

    x(1) = 0.0
    y(1) = 0.0

    do i = 2, N
        x(i) = 0.1 * i
        y(i) = x(i)**2
    end do

    open (action='write', file=FILE_NAME, newunit=fu, status='replace')

    do i = 1, N
        write (fu, *) x(i), y(i)
    end do

    close (fu)

    call execute_command_line('gnuplot -p plot.plt')
end program main
