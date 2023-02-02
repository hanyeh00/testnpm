import numpy as np
from time import perf_counter as pc
def numpysum(n):
    a = np.arange(n) ** 2
    b = np.arange(n) ** 3
    c = a + b
    return c


print(numpysum(1))
x=range(10)
print(x)
start = pc()
c = numpysum(100)
end=pc()
delta = end - start
print("The last 2 elements of the sum", c[-2:])
print("NumPySum elapsed time in seconds", delta)




