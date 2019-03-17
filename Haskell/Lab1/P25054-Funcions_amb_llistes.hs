{-
En aquest problema heu d’implementar una sèrie de funcions sobre llistes en Haskell.

Feu una funció myLength :: [Int] -> Int que, donada una llista d’enters, calculi la seva llargada.
Feu una funció myMaximum :: [Int] -> Int que, donada una llista d’enters no buida, calculi el seu màxim.
Feu una funció average :: [Int] -> Float que, donada una llista d’enters no buida, calculi la seva mitjana.
Feu una funció buildPalindrome :: [Int] -> [Int] que, donada una llista, retorni el palíndrom que comença amb la llista invertida.
Feu una funció remove :: [Int] -> [Int] -> [Int] que donada una llista d’enters x i una llista d’enters y, retorna la llista x havent eliminat totes les ocurrències dels elements en y.
Feu una funció flatten :: [[Int]] -> [Int] que aplana una llista de llistes produint una llista d’elements.
Feu una funció oddsNevens :: [Int] -> ([Int],[Int]) que, donada una llista d’enters, retorni dues llistes, una que conté els parells i una que conté els senars, en el mateix ordre relatiu que a l’original.
Feu una funció primeDivisors :: Int -> [Int] que retorni la llista de divisors primers d’un enter estrictament positiu.
-}

myLength :: [Int] -> Int

myLength [] = 0
myLength (_:xs) = 1 + myLength xs

{-
També seria correcte:

myLength [] = 0
myLength (_:_:xs) = 2 + myLength xs
myLength _ = 1
-}

myMaximum :: [Int] -> Int

myMaximum [x]   = x
myMaximum (x:xs)
    | x > y     = x
    | otherwise = y
    where y = myMaximum xs

average :: [Int] -> Float

average xs  = suma / llargada
    where
        suma = fromIntegral (sum xs)
        llargada = fromIntegral (myLength xs)

buildPalindrome :: [Int] -> [Int]

buildPalindrome xs = reverse xs ++ xs

remove :: [Int] -> [Int] -> [Int]

remove xs []    = xs
remove xs (y:ys)    = remove (removeOne xs y) ys

removeOne :: [Int] -> Int -> [Int]

removeOne [] _ = []
removeOne (x:xs) y
    | x == y    = removeOne xs y
    | otherwise = x : removeOne xs y

flatten :: [[Int]] -> [Int]

flatten [] = []
flatten (xs:xss) = xs ++ flatten xss

oddsNevens :: [Int] -> ([Int],[Int])

oddsNevens [] = ([], [])
oddsNevens (x:xs)
    | odd x = (x:odds, evens)
    | otherwise = (odds, x:evens)
    where
        (odds, evens) = oddsNevens xs

primeDivisors :: Int -> [Int]

primeDivisors 1 = [1]
primeDivisors n = primeDivisors' n 2

primeDivisors' 1 _ = []
primeDivisors' n i
    | n == i    = [n]
    | mod n i == 0  = i : primeDivisors' (treureDiv n i) i
    | otherwise = primeDivisors' n (i + 1)

treureDiv :: Int -> Int -> Int

treureDiv n d
        | mod n d == 0 = treureDiv (div n d) d
        | otherwise = n