program test_rand
  integer,parameter :: seed = 86456
  
  call srand(seed)
  print *, rand(), rand(), rand(), rand()
  print *, rand(seed), rand(), rand(), rand()
end program 
