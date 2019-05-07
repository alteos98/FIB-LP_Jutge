import math

# EX1
def myLength(L):
    return len(L)

# EX2
def myMaximum(L):
    return max(L)

# EX3
def average(L):
    return (sum(L) / len(L))

# EX4
def buildPalindrome(L):
    _L = L.copy()
    _L.reverse()
    return (_L + L)

# EX5
def remove(L1,L2):
    res = [x for x in L1 if x not in L2]
    return res

# EX6
def flatten(L):
    return flatten2(L, [])

def flatten2(L, L_final):
    for x in L:
        if isinstance(x, list):
            L_final = flatten2(x, L_final)
        else:
            L_final.append(x)
    return L_final

# EX7
def oddsNevens(L):
    odds = []
    evens = []
    for x in L:
        if x%2 == 0:
            evens.append(x)
        else:
            odds.append(x)
    return odds, evens

# EX8
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

def primeDivisors(n):
    divisors = [x for x in range(2, math.ceil(n/2)) if n%x == 0]
    divisors_primers = []
    for x in divisors:
        if isPrime(x):
            divisors_primers.append(x)
    return divisors_primers

# Main
'''
print(myLength([1,3,6,1]))
print(myMaximum([4,3,1,5,4,5,2]))
print(myMaximum(['josep', 'jordi', 'albert']))
print(average([1,2,3]))
print(buildPalindrome(['pa','amb','oli']))
print(remove([1,4,5,3,4,5,1,2,7,4,2], [2,4]))
print(oddsNevens([1,4,5,3,4,5,1,2,7,4,2]))
print(primeDivisors(255))
print(flatten([[2,6],[[8,1,4],[3,'uau']],[[],[1]],[[]]]))
'''