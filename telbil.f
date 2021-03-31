        integer  numcus, msgs,totbil, arrear
         character name1(12)
        character blank1
         blank1 = " "
 5      read(5,9011) name1, numcus, msgs, arrear
 9011   format(12a1,i7, 2x,i5, 7x, i6)
C       if first column is blank, endprogram
         if(name1(1) .eq. blank1) goto 25
C       10 cents per message unit plus arrears
         totbil = 10 * msgs + arrear
C        Discount for msg over 75
         if(msgs .gt. 75) totbil = totbil - 8* (msgs - 75)
         write(6, 9102) name1, numcus, msgs, arrear, totbil
 9102    format(1x,12a1,2x,i7/i7,"msg units",3x, i6,
     &  "cents arrears"/"amount due",i7, "cents"/)
         go to 5
 25      continue
         stop
         end              
         
                            
