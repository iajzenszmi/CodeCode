# Ian Martin Ajzenszmidt, Melbourne Australia, 31 Jan 2018
# You need to install python-scipy. to run $: python sina.py
# This program plots sine curve page down.
import scipy  
c = 3.14159 / 180.0
a = 0
while a <= 360:
       a = a + 15
       r = c * a
       k = (40.0 + 25 * scipy.math.sin(r))
       k1 = int(k) 
       print a, "deg", k1 * " ","*"

