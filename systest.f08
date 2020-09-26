character(1000) command
character(3000)filenames
integer results
command="free > filenames.txt"

CALL system(command, results)
 
OPEN(unit=5,file="filenames.txt")
READ(5,*) filenames
call system("cat filenames.txt")
print *,filenames, results
end program
