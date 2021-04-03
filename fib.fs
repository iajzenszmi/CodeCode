: fib-iter
  0 1 rot 0 ?do over + swap loop drop ;
 
: lp
  1 do
    i dup fib-iter . ." , "
  loop drop ;
 
17 lp
." ..."

