import math

# EX1
def absValue(x):
    if x < 0:
        x = -x
    return x

# EX2
def power(x, p):
    return x**p

# EX3
def isPrime(x):
    if x <= 1 or x%2 == 0:
        return False
    elif x == 2 or x == 3:
        return True
    else:
        # del 5 fins a x/2 saltant-se els parells
        possible_divisors = list(range(5, math.ceil(x/2), 2))
        for d in possible_divisors:
            if x % d == 0:
                return False
    return True

# EX4
def slowFib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return (slowFib(n-1) + slowFib(n-2))

# EX5
def quickFib(n):
    return quickFib2(n)[0]

def quickFib2(n):
    if n == 0:
        return (0, 0)
    elif n == 1:
        return (1, 0)
    else:
        (fn1, fn2) = quickFib2(n - 1)
        return (fn1 + fn2, fn1)

# Main
'''
print(absValue(-666))
print(power(2, 3))
print(isPrime(17))
print(slowFib(5))
print(quickFib(40))
'''