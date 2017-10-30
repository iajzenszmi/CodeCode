real  tf, tc
write(6, 9067)
9067 format(" "," Please enter degrees fahrenheit in format **.**")
read(5, 9000) tf
9000 format(f10.5)
tc = (tf - 32)/1.8
write(6,9002) tf, tc
9002 format(" "," tf = ", f10.5,  " tc = ", f10.5)
end program




