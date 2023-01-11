from time import perf_counter as pc
def recursion_fibo(n):
    if n==0 or n==1:
        return 1
    return recursion_fibo(n-1)+recursion_fibo(n-2)

cache={}
def dynamic_programming_fib(n):
    if n==0 or n==1:
        return 1
    if n in cache:
        return cache.get(n)
    res1=dynamic_programming_fib(n-1)
    res2 = dynamic_programming_fib(n - 2)
    cache[n]=res1+res2
    return res1+res2


cache={}
def yield_fibo(n):
    if n == 0 or n == 1:
        yield 1
    if n in cache:
        yield cache.get(n)
    res1 = dynamic_programming_fib(n - 1)
    res2 = dynamic_programming_fib(n - 2)
    cache[n] = res1 + res2
    yield res1 + res2



t0=pc()
print(recursion_fibo(60))
t1=pc()
print(f'runtime= [t1-t0]')

t0=pc()
print(dynamic_programming_fib(60))
t1=pc()
print(f'runtime= [t1-t0]')
t0=pc()
print(list(yield_fibo(60))[-1])
t1=pc()
print(f'runtime= [t1-t0]')
cache.clear()


