!gauss-seidel iteration of simultaneous equations
        real a(30,30),y(30)
        real x(30)
        integer n, itlast,i,j,it
 1      read(5,999) n,itlast,((a(i,j),j=1,n),y(i),i=1,n)
        write(6,996)n,((a(i,j),j=1,n),i=1,n)
        write(6,995) (y(i),i=1,n)     
        do 10 i = 1, n
        x(i) = 0.
 10     continue
        it = 1
 20     write(6,994) it
        do 60 i=1,n
        p=y(i)
        do 50 j= 1, n
        if(i-j) 40, 50, 40
 40     p = p - a(i,j)*x(j)
 50     continue
        x(i) = p / a(i, i)
 60     write(6,998) i, x(i)
        it = it + 1
        if (it - itlast) 20, 20, 1
 994    format(" ",24x, 9hiteration i2)
 995    format(" ",22x,15hconstant vector/(3e18.7)//22x,&
     &   15hsolution vector)
 996    format(//21x,15hmatrix of order i2 // (3e18.7))
 998     format(20x, i2, e16.7)
 999    format(2i5,/(8f10.0))
        end program
