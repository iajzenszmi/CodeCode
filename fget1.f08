!run only from terminal, not ide/editor.
                 
                 CHARACTER  C
                 INTEGER Status1
                 CALL Fget(C, Status1)
                 CALL Fput(C, Status1)
                 !write(6,9000)C, Status1
                 !9000 format(" ",a4,i4)
                 !print *,C
                 !PRINT *,Status1
                 end program
                  
