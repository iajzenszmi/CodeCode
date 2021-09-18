# plot3.plt
set term x11 0
set title "Fortran Example Arctan"
set nokey
set nogrid
set xlabel "x"
set ylabel "y"
m="arct.txt"
plot m using 1:2 with linespoints
