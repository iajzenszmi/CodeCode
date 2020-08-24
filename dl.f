        CHARACTER LINE(3)*14
        integer m1, ni,m2,n2, m3,n3 
	DATA LINE(1) / ' 81 81 ' / 
	DATA LINE(2) / ' 82 82 ' / 
	DATA LINE(3) / ' 83 83 ' / 
	READ ( LINE, FMT='(2I4)'  ) m1, n1 
        read(line(2), fmt='(2i4)')m2, n2
        read(line(3), fmt='(2i4)')m3,n3
	PRINT *, m1,n1,m2,n2,m3,n3 
	END 
