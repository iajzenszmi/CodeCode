# ian martin ajzenszmidt from melbourne australia says run with  python3, not python2.
# coding: utf-8

# In[48]:

import numpy as np
import matplotlib.pyplot as plt
#The next library contains the zeta(), zetazero(), and siegelz() functions
# change by Ian Martin Ajzenszmidt , Melbourne, Australia insert 'import mpmath'
import mpmath
from mpmath import *
mp.dps = 25; mp.pretty = True
# IAN MARTIN AJZENSZMIDT , MELBOURNE, AUSTRALIA INSERTED NEXT LINE 02/2019
xrange=[1,2,3,4,5,6,7,8,9,10,11,12,13]
def graph_zeta(real, image_name):
    A,B,C, D = [], [], [], []

    fig = plt.figure()
    ax = fig.add_subplot(111)

    for i in np.arange(0.1, 60.0, 0.1):
        function = zeta(real + 1j*i)
        function2 = zeta((real+((0.5-real)*2))+1j*i)
        function1 = siegelz(i)
        A.append(abs(function))
        B.append(function1)
        C.append(i)
        D.append(abs(function2))

    ax.grid(True)
    ax.plot(C,A, label='modulus of Riemann zeta function along re(s) as sated in title', lw=0.8)
    ax.plot(C,B, label='Riemann-Siegel Z-function, Z(t)', lw=0.8)
    ax.plot(C,D, label='modulus of Riemann zeta function along re(s) as sated in title', lw=0.8)
    ax.set_title("Zeta in Blue (re(s)=%s) and Green (re(s)=%s), Z(t) in Orange"%(real, real+(0.5-real)*2))
    ax.set_ylabel("Z(t)")
    ax.set_xlabel("t")

    #Include legend
    leg = ax.legend(shadow=True)
    #Edit font size of legend to make it fit into chart
    for t in leg.get_texts():
        t.set_fontsize('small')
    #Edit the line width in the legend
    for l in leg.get_lines():
        l.set_linewidth(2.0)
    #Plot the zeroes of zeta
    #IAN MARTIN AJZENSZMIDT MELBOURNE, AUSTRALIA  EDITED NEXT LINE
    for i in xrange:
        zero = zetazero(i)
        ax.plot(zero.imag, [0.0], "ro")
    
    #save plot and print that it was saved 
    ax.set_ylim(-7, 7)
    plt.savefig(image_name)
    #IAN MARTIN AJZENSZMIDT MELBOURNE, AUSTRALIA  EDITED NEXT LINE INSERTED ()
    print ("Successfully plotted %s !" % image_name)
    plt.close()

counter = 1
for i in np.arange(-0.5, 0.5, 0.01):
    counter += 1
    graph_zeta(i, "zeta_plot1_%s.png" % counter)

