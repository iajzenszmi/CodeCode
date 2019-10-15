                        read(5,1)x
1                       format(f10.5)
                        a = x/2
2                       b=(x/a+a)/2
                        c=b-a
                        if(c.lt.0)c=-c
                        if(c.lt.10.e-6)go to 3
                        a = b
                        goto 2
3                       write(6,1)b
                        stop
                        end                                                                       
