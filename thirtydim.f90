                 program testcall
                 integer arcnt1
!            integer
!            p11,p12,p21,p22,p31,p32,p41,p42,p51,p52,p61,p62,p71,p72&
!                 p82,p92
                 integer p1, p2, p3, p4, p5, p6, p7,p8,p9
!                 integer recnt
!                 integer a6
!                 integer a2
!                 integer i
!                integer j
!                 integer a3
!                 integer a4
!                 integer a5
!                 integer a7
!                integer h
!                 integer a1
!                 integer hcube(9,9,9,9,9,9,9,9,9)
!                 integer iz, izy
                  
                 arcnt1 = 25
                 p1 = 9
                 p2 = 9
                 p3 = 9
                 p4 = 9
                 p5 = 9
                 p6 = 9
                 p7 = 9
                 p8 = 9
                 p9 = 9
       read(5,9590) arcnt1, p1, p2, p3, p4, p5, p6, p7,p8,p9
9590   format(i1,i1,i1,i1,i1,i1,i1,i1,i1,i1)      
                 call testgen(arcnt1, p1, p2, p3, p4, p5, p6, p7,p8,p9)
                 end program 
                   
      subroutine testgen(arcnt, p121, p221, p321, p421, p521, p621,&
                 p721,p821,p921)
      integer&
        p11,p12,p21,p22,p31,p32,p41,p42,p51,p52,p61,p62,p71,p72,p82,p92
                 integer a1, a2, a3, a4, a5, a6, a7,a8,a9
!                 integer arcnt, p12, p22, p21, p22, p31, p32, p41
!                 integer p42, p51, p52, p61, p62, p71, p72
                 integer p121, p221, p321, p421, p521,&
                        p621,p721,p821,p921
!                 real :: START, FINISH
                 integer h(9, 9, 9, 9, 9, 9, 9,9,9)
                 integer arcnt, recnt, iz, izy
!                 CALL CPU_TIME(START)
                
                 do 100 iz = 1, arcnt
                 p11=1
                 p12= p121
                 p21= 1
                 p22= p221
                 p31= 1
                 p32= p321
                 p41= 1
                 p42= p421
                 p51=1
                 p52= p521
                 p61=1
                 p62 = p621
                 p71=1
                 p72= p721
                 p81 = 1
                 p82 =p821
                 p91 = 1
                 p92 = p921              
                 recnt=1
                 izy =iz
!            write(6, 9800) izy
!9800        format(" "," no of arrays",i10)
                 do 90 a9 = p91,p92
                 do 80 a8 = p81, p82  
               do 70 a1 = p11, p12 
               do 60 a2 = p21, p22
                do 50 a3 = p31, p32
                  do 40 a4 = p41, p42
                   do 30 a5 = p51, p52
                    do 20 a6  = p61, p62
                     do 10 a7 = p71, p72
      h(a1,a2,a3,a4,a5,a6,a7,a8,a9)=2*a1+4*a2+8*a3+16*a4+32*a5+64*a6&
       +128*a7+256*a8+512*a9
          write(6,1000)  izy, recnt, h(a1,a2,a3,a4,a5,a6,a7,a8,a9)
          write(6,1010) a1,a2,a3,a4,a5,a6,a7,a8,a9
          
1000        format (" ",i10,i10,i10)
1010        format('+',i10,i10,i10,i10,i10,i10,i10,i10,i10)
                            recnt = recnt + 1
10                          continue
20                     continue
30                    continue
40                   continue
50                  continue
60                 continue
70               continue
80               continue
90               continue                            
            write(6, 9800) izy
9800        format(" "," no of arrays",i10)
100           continue
!             CALL CPU_TIME(FINISH)
!             write(6,2000)  FINISH - START
! 2000          format("Time = ",F6.2, " ", "seconds")
          return
          end subroutine
