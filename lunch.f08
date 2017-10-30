        character (len = 20) :: Melbourne = "Swanston Street"
        character (len = 20) :: Sydney = "Castlereigh St"
        character (len = 20) :: Brisbane = "Margaret St"
character (len = 20) :: Adelaide = "Brisbane Street"
write(6,9000) Melbourne
9000 format(" ", a20 )
write(6,9020) Sydney
9020 format(" ", a20 )
write(6,9030) Brisbane
9030 format(" ", a20 )
write(6,9040) Adelaide
9040 format(" ", a20 )
end program

