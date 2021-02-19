       integer k
       character dukeofperth(11) 
       data dukeofperth /"d","u","k","e","o","f","p","e","r","t","h"/
           write(6,9000) (dukeofperth(k),k=1,12)
 9000      format(" ",12a1)
           end program          
           
