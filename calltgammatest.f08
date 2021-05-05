     
       real  n, tgamma(10),v
       read(5,9000) tgamma(0)
       do  v=1,10,1
       read(5, 9000) tgamma(v)
 9000  format(f10.2)
       end do
       print *," n ", "gamman "," tgamma(n)"
       do n = 1, 10, 1
       print *,n,gamma(n),tgamma(n)
       end do
       end program
