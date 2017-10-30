integer i 
i = 0
do while (i .le. 8000)
     i = i + 1
     write(6,9000) i
9000 format("","count = ",i10)
enddo
end program


