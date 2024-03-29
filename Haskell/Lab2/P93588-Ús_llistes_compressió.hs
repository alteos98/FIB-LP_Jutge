{-
En aquest problema heu d’implementar una sèrie de funcions usant llistes per comprensió.

Feu una funció myMap :: (a -> b) -> [a] -> [b] que emuli el map usant llistes per comprensió.
Feu una funció myFilter :: (a -> Bool) -> [a] -> [a] que emuli el filter usant llistes per comprensió.
Feu una funció myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c] que que emuli el zipWith usant llistes per comprensió i zip.
Feu una funció thingify :: [Int] -> [Int] -> [(Int, Int)] que, donades dues llistes d’enters, genera la llista que aparella els elements si l’element de la segona llista divideix al de la primera.
Feu una funció factors :: Int -> [Int] que, donat un natural no nul, genera la llista ordenada amb els seus factors (no necessàriament primers).
-}

myMap :: (a -> b) -> [a] -> [b]
{-
myMap _ []         = []
myMap f (x:xs)     = f x : myMap f xs
-}
myMap f l      = [f x | x <- l]

myFilter :: (a -> Bool) -> [a] -> [a]
{-
myFilter _ []       = []
myFilter f (x:xs)
    | f x       = x : myFilter f xs
    | otherwise = myFilter f xs
-}
myFilter f l    = [x | x <- l, f x]

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]

myZipWith f l1 l2   = [f x y | (x, y) <- zip l1 l2]

thingify :: [Int] -> [Int] -> [(Int, Int)]

thingify l1 l2   = [(x, y) | x <- l1, y <- l2, mod x y == 0]

factors :: Int -> [Int]

factors i       = [x | x <- [1..i], mod i x == 0]
