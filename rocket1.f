c simulate the vertical ascent of an 
c uncontrollable rocket for 15 minutes 
c at 30-second intervals
        ve  = 2.0
        rmo = 5000
        rmu = 20000
        do vme = .1,9, .1
        do rmo = .1, 9 ,.1
        do rmu = .1, 9, .1
        y = 0.0
        g = 9.80616
        write(6,100)
 100    format(1x,"time",5x,"height")
        do i = 1,30
           t =0.5 * float(i)
           y = -0.5*g*(t**2) + ve*(t+(rmo-(rmo-(rmu*
     1     t))/rmu)*log((rmo - rmu) *t /rmo))
           write(6,101) t,y,vme,rmo,rmu
 101    format(2x, f5.2,4x,f12.4,2x,f12.4,2x,f6.3,2x, f6.3)
           end do
           end do
           end do
           end do
           stop
           end
