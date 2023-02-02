import numpy as np
x=s=np.ndarray((5,),buffer=np.arange(10),dtype=int)
for i in x:
    if (x[i]%2==0):
        print("even")




