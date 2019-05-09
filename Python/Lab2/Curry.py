def curry(f, x):

    def g(*xs):
        return f(*tuple([x] + list(xs)))

    return g

def suma(x, y):
    return x + y

suma2 = curry(suma, 2)
print(suma2(5))