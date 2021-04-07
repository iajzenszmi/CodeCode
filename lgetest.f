         character(len=22) name1 /"Ian Martin Ajzenszmidt"/
         character(len=22) name2  /"Ian Martin Ajzenszmidt"/
         logical result1 /.false./
         result1 = lge(name1,name2)
         if (result1 .eqv. .true.) write(6,9070) 
 9070    format(" ","both names match")
         end program         
