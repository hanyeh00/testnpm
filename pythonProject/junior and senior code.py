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
def fib_dynamic(num):
    p,c=0,1
    for i in range (num):
        yield p
        c,p=p,c
        c=p+c
    return p



for x in fib_dynamic(10):
    pass
print(x)

