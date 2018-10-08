character Chek(9999)
character chekc
integer count1

  OPEN(UNIT=05, FILE="chekdat.txt", STATUS="OLD",  ACCESS="STREAM", FORM="FORMATTED" )
  read(05,9000) (Chek(count1),count1=1,9999)
do 10 count1 =1,9999,1
9000 format((9999(a)))
  read(Chek(count1),9010) chekc
9010 format(a)
! print *, "Hello chek"
!print *,chekc
if (chekc .eq. "B") then
    print *,"Bishop moved"
endif
If (chekc .eq. "N" ) then
    print *,"Knight moved"
endif
if (chekc .eq. "R" ) then
    print *,"Rook moved"
endif
if (chekc  .eq. "Q") then
    print *,"Queen moved"
endif
if (chekc .eq. "K") then
    print *,"King moved"
endif 
if (chekc  .eq. "C") then
    print *, "Castle moved"
endif
10 continue
end program
