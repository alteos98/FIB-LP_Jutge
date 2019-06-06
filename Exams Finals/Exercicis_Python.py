# Final 18-19Q1 - Problema 5.1

def exists(dict):
    def aux(x):
        return x in dict
    return aux

f = exists({3:'a', 2:'q', 13:'o'})
print(f(5)) # False
print(f(3)) # True


# Final 17-18Q1 - Problema 1.3

def compose(f, g):
    def aux(x):
        return f(g(x))
    return aux

def f(x): return x+1
def g(x): return 2*x
h = compose(f, g)
print(h(2)) # 5


# Final 16-17Q1 - Problema 5.2
'''
def s(*xs):
    m = 0
    for x in xs:
        m += x
    return m

def s2(a, b):
    return a + b

def partial(f, x):
    def aux(y):
        l = [x]
        l.append(y)
        return f(l)
    return aux

h = partial(s2, 2)
print(h(3))
ff = partial(partial(s, 3), 1)
print(ff(2))
'''