from time import time
def timeit(fn):
    def wraper(*args,**kwargs):
        t1=time()
        res=fn(*args,**kwargs)
        t2=time()
        print(f' running {fn.__name__} function took {t2-t1}')
        return res
    return wraper

@timeit
def fib(num):
    prev,curr=0,1
    for i in range(num):
        if i == 0 or i == 1:
            continue
        else:
            fib=curr+prev
            prev, curr =prev,curr
    return curr
@timeit
def fib_dynamic(num):
    p,c=0,1
    for i in range (num):
        yield p
        temp,p=p,c
        c=temp+c


print(fib(11))
for x in fib_dynamic(10):
    pass
print(x)

