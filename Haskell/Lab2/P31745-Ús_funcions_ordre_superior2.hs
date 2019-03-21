{-
Feu les funcions següents utilitzant funcions d’ordre superior (i altres funcions predefinides) de Haskell.

Feu una funció flatten :: [[Int]] -> [Int] que aplana una llista de llistes d’enters en una llista d’enters.
Feu una funció myLength :: String -> Int que retorna la llargada d’una cadena de caràcters.
Feu una funció myReverse :: [Int] -> [Int] que inverteix els elements d’una llista d’enters.
Feu una funció countIn :: [[Int]] -> Int -> [Int] que, donada una llista de llistes d’elements ℓ i un element x ens torna la llista que indica quants cops apareix x en cada llista de ℓ.
Feu una funció firstWord :: String -> String que, donat un string amb blancs i caràcacters alfabètics), en retorna la primera paraula.
-}

flatten :: [[Int]] -> [Int]

flatten []        = []
flatten (ll:lls)  = foldl (++) ll lls

myLength :: String -> Int

myLength s  = sum $ zipWith (function) s $ iterate (*1) 1
    where
        function x y    = y

myReverse :: [Int] -> [Int]

myReverse l = foldl (flip (:)) [] l

countIn :: [[Int]] -> Int -> [Int]

countIn lss x  = map function lss
        where
            function a    = length (filter (== x) a)

firstWord :: String -> String

firstWord s     = takeWhile (/= ' ') $ dropWhile (== ' ') s