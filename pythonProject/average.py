import numpy as np
c=np.array([1,2,3,4,5,6,7])
v=np.ones(7)
v[2]=6
weight=np.average(c,weights=v)
weight2=np.average(c)
print(f'{weight:.3f}  weight')
print(weight2)









