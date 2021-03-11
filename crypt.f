C Fortran 77 to exercise 13, page 155, chapter 1.3.2 d. knuth, 
C fundamental algorithms vol 1 knuth the art of computer programming
C second edition, by IAN MARTIN AJZENSZMIDT melbourne Australia march 11
C 2021
C "Cryptanalyst problem"        
        
        character table(1000)
        character buf1(14)
        integer n, n3, sc, nb,ac, bc, dc
        data table /"W","E"," ","B","A","D","*",993*" "/               
        sc = 0
        nb = 0
        n =0
        n3 = 0
        ac = 0
        bc= 0
        dc = 0
        n3 = n3 + 1
        read(table,9008)(buf1(n),n=1,7)
        print *, buf1
 9008   format(a7) 
 !       do while(x(n3).ne."*")
         do while((buf1(n3) .ne."*") .and. (n3.le.7))
        
        if (buf1(n3) .eq. "A" ) then 
        ac = ac + 1
         print *,"A"
         endif 
        if  (buf1(n3) .eq. "B") then 
        bc = bc + 1
        print *,"B"
        endif
        if (buf1(n3) .eq. "D") then
        dc = dc + 1 
        print *, "D"  
        endif
        if(buf1(n3) .ne. " ") then
        nb = nb + 1 
        
        
        endif
        
        if (n3 .lt. 14) n3 = n3 + 1
        end do
        print *,"A ",ac
        print *, "B ", bc
        print *, "D ", dc
        end program            
             
