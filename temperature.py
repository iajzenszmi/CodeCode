#to be run in command line with ipython3
import matplotlib.pyplot as plt
t=[20,21,22,23,24,29,26,34,12,13,23,25,36,22,26,28,32,12,32,12,23,31]
ts = list(range(0,22))
plt.plot(ts, t)
plt.title('The Temperature Function')
plt.xlabel('Time')
plt.ylabel('Temperature')
plt.show()
                       
