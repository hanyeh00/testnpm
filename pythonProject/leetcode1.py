from time import perf_counter as pc
#from typing import List

def countBits(num: int):
    counter = [0]
    for i in range(1, num+1):
        counter.append(counter[i >> 1] + i % 2)
    return counter
def countBits2( num: int):
    nextOrder = 2
    tracker = 0
    counter = [0]*(num+1)

    for i in range(1, num+1):
        if i == nextOrder:
            nextOrder *= 2

            tracker = 0
        counter[i] = counter[tracker] + 1
        tracker += 1
    return counter

def countBits3( num: int):
    res = []
    binary = ''
    for i in range(0, num + 1):
        binary = str(bin(i).count('1'))
        res.append(binary)
    return res
t0=pc()
c=countBits(2)
print(c)
t1=pc()
print(t1-t0)

t0=pc()
c=countBits2(2)
print(c)
t1=pc()
print(t1-t0)

t0=pc()
c=countBits3(2)
print(c)
t1=pc()
print(t1-t0)




