# Final 18-19Q1 - Problema 5.1

def exists(dict):
    def aux(x):
        return x in dict
    return aux

print('Final 18-19Q1 - Problema 5.1')
f = exists({3:'a', 2:'q', 13:'o'})
print(f(5)) # False
print(f(3)) # True


# Final 17-18Q1 - Problema 1.3

def compose(f, g):
    def aux(x):
        return f(g(x))
    return aux

print('Final 17-18Q1 - Problema 1.3')
def f(x): return x+1
def g(x): return 2*x
h = compose(f, g)
print(h(2)) # 5


# Final 16-17Q1 - Problema 5.2

def s(*xs):
    m = 0
    for x in xs:
        m += x
    return m

def s2(a, b):
    return a + b

def partial(f, x):
    def aux(*xs):
        return f(*tuple([x] + list(xs)))
    return aux

print('Final 16-17Q1 - Problema 5.2')
h = partial(s2, 2)
print(h(3)) # 5
ff = partial(partial(s, 3), 1)
print(ff(2)) # 6


# Final 16-17Q1 - Problema 5.1

def evaluate(e):
    # Cas base
    if type(e) is int:
        return e
    # Cas recursiu
    if type(e) is list:
        r = 1
        for x in e:
            r *= evaluate(x)
        return r
    elif type(e) is tuple:
        r = 0
        for x in e:
            r += evaluate(x)
        return r

print('Final 16-17Q1 - Problema 5.1')
ex1 = (([(),7],[]))
print(evaluate(ex1)) # 1
#ex2 = ([3,(2,[8,"sol"],{}),7,([2,(1,1)],11)])
#print(evaluate(ex2)) # 3150


# Final 17-18Q2 - Problema 4

def encode(s):
    d = {}
    def aux(x):
        if len(x) == 1:
            return ord(x)
        else:
            if x not in d:
                d[x] = aux(x[1:]) + aux(x[:-1])
            return d[x]
    return aux(s)

print('Final 17-18Q2 - Problema 4')
print(encode("h")) # 104
print(encode("o")) # 111
print(encode("l")) # 108
print(encode("a")) # 97
print(encode("hola")) # 858
print(encode("Pyhon es un llenguatge de scripting")) # 1765361508634


# Final 15-16Q2 - Problema 5.1

def invert(l):
    if type(l) is list:
        li = []
        for x in l:
            li.append(invert(x))
        return tuple(li)
    elif type(l) is tuple:
        li = []
        for x in l:
            li.append(invert(x))
        return li
    else:
        return l

print('Final 15-16Q2 - Problema 5.1')
print(invert(([3,3,(2,1)],5,[1,1,[1,1]])))
# [(3, 3, [2, 1]), 5, (1, 1, (1, 1))]
print(invert(invert(([3,3,(2,1)],5,[1,1,[1,1]]))))
# ([3, 3, (2, 1)], 5, [1, 1, [1, 1]])


# Final 15-16Q2 - Problema 5.2
'''
class Trie:
    def __init__(self):
        return
    
    def value(self, k):
        if len(k) == 0:
            return self.val
        elif k[0] not in self.entries:
            return
    
    def insert(self, k, v):
        self.
'''