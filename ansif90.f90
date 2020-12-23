        program ansif90
        use ansi_colors
        implicit none

         character(len=*), parameter :: endl = new_line('a')

       print '(a)', &
       color('Red',     c_red)     // endl // &
       color('Green',   c_green)   // endl // &
       color('Yellow',  c_yellow)  // endl // &
       color('Blue',    c_blue)    // endl // &
       color('Magenta', c_magenta) // endl // &
       color('Cyan',    c_cyan)    // endl // &
       color('White',   c_white)
       end program 
