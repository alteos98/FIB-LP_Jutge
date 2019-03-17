{-
En aquest problema heu d’implementar una sèrie de funcions en Haskell. No cal que pregunteu si podeu fer servir funcions auxiliars, és evident que sí.

Feu una funció absValue :: Int -> Int que, donat un enter, retorni el seu valor absolut.
Feu una funció power :: Int -> Int -> Int que, donats un enter x i un natural p, retorni x elevat a p, és a dir, xp.
Feu una funció isPrime :: Int -> Bool que, donat un natural, indiqui si aquest és primer o no.
Feu una funció slowFib :: Int -> Int que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant l’algorisme recursiu que la defineix (f(0)=0, f(1)=1, f(n)=f(n−1)+f(n−2) per n≥ 2).
Feu una funció quickFib :: Int -> Int que retorni l’n-èsim element de la sèrie de Fibonacci tot utilitzant un algorisme més eficient.
-}

absValue :: Int -> Int

absValue n
    | n > 0  = n
    | otherwise  = -n

power :: Int -> Int -> Int

power x 0   = 1
power x p   = x * power x (p - 1)

isPrime :: Int -> Bool

isPrime 1   = False
isPrime n   = not (teAlgunDivisor n 2)

teAlgunDivisor :: Int -> Int -> Bool
-- teAlgunDivisor n j indica si n té algun divisor
-- entre j i n-1

teAlgunDivisor n j
    | j == n            = False
    | mod n j == 0      = True
    | otherwise         = teAlgunDivisor n (j + 1)

slowFib :: Int -> Int

slowFib 0   = 0
slowFib 1   = 1
slowFib n   = slowFib (n - 2) + slowFib (n - 1)

quickFib :: Int -> Int

quickFib n  = fst (quickFib' n)

quickFib' :: Int -> (Int, Int)
-- quickFib' n returns (F n, F n-1)

quickFib' 0   = (0, 0)
quickFib' 1   = (1, 0)
quickFib' n   = (fn, fn1)
    where
        (fn1, fn2)  = quickFib' (n - 1)
        fn = fn1 + fn2

-- map isPrime [0..20]
-- crida a isPrime amb tots els nombres des de 0 fins a 20