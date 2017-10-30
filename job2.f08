 real tc, tf, i
 i = 0
 do  while (i .le. 200)
 i = i + 1
 tf = i
 tc = ((tf -32)/1.8) 
 write(6, 9000) tc, tf
 9000 format(" "," temperature centigrade = ", f10.5, " temperature fahrenheit = ", f10.5)
 end do 
 end program


