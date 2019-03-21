{-
Feu les funcions següents utilitzant funcions d’ordre superior (i altres funcions predefinides) de Haskell i sense utilitzar recursivitat.

Feu una funció eql :: [Int] -> [Int] -> Bool que indiqui si dues llistes d’enters són iguals.
Feu una funció prod :: [Int] -> Int que calculi el producte dels elements d’una llista d’enters.
Feu una funció prodOfEvens :: [Int] -> Int que multiplica tots el nombres parells d’una llista d’enters.
Feu una funció powersOf2 :: [Int] que generi la llista de totes les potències de 2.
Feu una funció scalarProduct :: [Float] -> [Float] -> Float que calculi el producte escalar de dues llistes de reals de la mateixa mida.
-}

eql :: [Int] -> [Int] -> Bool

eql x y     = (length x == length y) && (and $ zipWith (==) x y)

prod :: [Int] -> Int

prod l      = foldl (*) 1 l

prodOfEvens :: [Int] -> Int

prodOfEvens l   = foldl (*) 1 $ filter even l

powersOf2 :: [Int]

powersOf2   = iterate (*2) 1

scalarProduct :: [Float] -> [Float] -> Float

scalarProduct x y   = foldl (+) 0 $ zipWith (*) x y