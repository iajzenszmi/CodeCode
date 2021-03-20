\ :Ian Martin Ajzenszmidts forth fun. 
\ Date: 3/20/21
\ Name: Eric Zounes
\ Date: 1\22\12
\ 1. printf("Hello World \n")

." 1." cr
." Hello World from  Ian Ajzenszmidt." cr
." 2." cr
\ 2. 10 + 7 - 3 * 5 / 12 
.s 10 7 + 3 5 * 12 / -
\ 221. 4 + 8 - 2 * 4 / 8
.s  4 8 +  2 4 * 8 / -
\ Result: 16 11
clearstacks
." 3." cr
\ 3. 10.0 + 7.0 - 3.0 * 5.0 / 12.0
f.s 10e 7e f+ 3e 5e f* 12e f/ f-
\ 321. 12.0 + 7.0 - 4.0 * 6.0 / 10.0
f.s 12e 7e f+ 4e 6e f* 10e f/ f-
2 set-precision f.s
\ Result:
clearstacks

