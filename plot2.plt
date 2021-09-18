# plot2.plt
set term x11 0
set title "Fortran Example Parabola"
set nokey
set nogrid
set xlabel "x"
set ylabel "y"
m="para.txt"
plot m using 1:2 with linespoints
