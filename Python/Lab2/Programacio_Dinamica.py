def fib(n):
    if n <= 1:
        return n
    else:
        return fib(n-1) + fib(n-2)

def mem(f):

    d = {}

    def g(x):
        if x in d:
            return d[x]
        else:
            y = f(x)
            d[x] = y
            return y

    return g

# Crida normal
print(fib(35))

# Programació dinàmica
fib = mem(fib)
print(fib(35))