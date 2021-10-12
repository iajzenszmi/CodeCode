ian@ian-HP-Stream-Laptop-11-y0XX:~/CodeCode$ gfortran binsearch2.f -o binsearch2
ian@ian-HP-Stream-Laptop-11-y0XX:~/CodeCode$ ./binsearch2
 Please enter the number to search for: 
5
 Now searching element:            5
 Now searching element:            8
 Now searching element:            6
 Now searching element:            7
 Goal found at index:            7
 The goal is present            1  times in the array.
ian@ian-HP-Stream-Laptop-11-y0XX:~/CodeCode$ cat binsearch2.f
        INTEGER, PARAMETER :: SIZE = 10
        INTEGER :: i
        INTEGER :: k = 0
        INTEGER :: x(SIZE) = (/ 1, 2, 3, 3, 3, 4, 5, 9, 9, 10/)
        INTEGER :: low = 1
        INTEGER :: high = SIZE
        INTEGER :: middle
        INTEGER :: goal
        INTEGER :: goal_found = 0


        WRITE(*,*)"Please enter the number to search for: "
        READ(*,*) goal

        DO WHILE(low <= high .AND. goal_found == 0)
                middle = (low + high)/2

                WRITE(*,*)"Now searching element: ", middle

                IF (goal == x(middle)) THEN
                        WRITE(*,*)"Goal found at index: ", middle
                        goal_found = 1
                        k = k + 1
                        i = middle - 1
                        DO WHILE(x(i) == goal)
                                k = k + 1
                                i = i - 1
                        END DO
                        i = middle + 1
                        DO WHILE(x(i) == goal)
                                k = k + 1
                                i = i + 1
                        END DO
                ELSE IF (goal < x(middle)) THEN
                        high = middle - 1
                ELSE
                        low = middle + 1
                END IF
        END DO

        IF (goal_found == 0) THEN
                WRITE(*,*)"The number is not present in the array."
        ELSE
             WRITE(*,*)"The goal is present ", k, " times in the array."
        END IF
        end program
ian@ian-HP-Stream-Laptop-11-y0XX:~/CodeCode$ sloccount binsearch2.f
Have a non-directory at the top, so creating directory top_dir
Adding /home/ian/CodeCode/binsearch2.f to top_dir
Categorizing files.
Finding a working MD5 command....
Found a working MD5 command.
Computing results.


SLOC	Directory	SLOC-by-Language (Sorted)
40      top_dir         fortran=40


Totals grouped by language (dominant language first):
fortran:         40 (100.00%)




Total Physical Source Lines of Code (SLOC)                = 40
Development Effort Estimate, Person-Years (Person-Months) = 0.01 (0.08)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.08 (0.97)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 0.08
Total Estimated Cost to Develop                           = $ 920
 (average salary = $56,286/year, overhead = 2.40).
SLOCCount, Copyright (C) 2001-2004 David A. Wheeler
SLOCCount is Open Source Software/Free Software, licensed under the GNU GPL.
SLOCCount comes with ABSOLUTELY NO WARRANTY, and you are welcome to
redistribute it under certain conditions as specified by the GNU GPL license;
see the documentation for details.
Please credit this data as "generated using David A. Wheeler's 'SLOCCount'."
ian@ian-HP-Stream-Laptop-11-y0XX:~/CodeCode$ 
