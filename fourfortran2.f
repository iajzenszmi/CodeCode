 !         program by ian martin ajzenszmidt to find the trimmed length 
 !         of real(4),real(8),and real(16) printed strings. 09/20
          character(len=100)::buf4,buf8,buf16
          integer(kind=4) :: zerocount4,zerocount8,zerocount16
          real four 
!        real(2):: four2 = 4.0
         real(8)::four8 = 4.0
         real(16):: four16 = 4.0
!          real(32):: four32 = 4.0
!         real(64):: four64 = 4.0
          four= 4.0
          print *, four16
          write(buf16,*) four16 
          write(buf8,*) four8
          write(buf4,*)  four 
          print *,buf4
          print *,buf8
          print *,buf16
          zerocount4 = 0
          zerocount8 = 0
          zerocount16 = 0
C          do 10 i=1,100,1         
C             if (buf(i) .eq. "0" ) zerocount=zerocount+1
C  10      continue
            zerocount4 =len_trim(buf4) 
            zerocount8 = len_trim(buf8)
            zerocount16 = len_trim(buf16)
         print *,zerocount4,zerocount8, zerocount16   
         end program



