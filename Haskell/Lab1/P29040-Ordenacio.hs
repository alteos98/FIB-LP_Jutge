{-
Es vol implementar diversos algorismes d’ordenació de llistes.

Feu una funció insert :: [Int] -> Int -> [Int] que, donada una llista ordenada i un element, insereixi ordenadament el nou element a la llista.
Feu una funció isort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per inserció utilitzant la funció anterior.

Feu una funció remove :: [Int] -> Int -> [Int] que, donada una llista i un element x, elimini la primera ocurrència de x de la llista. Podeu assumir que l’element sempre és a la llista.
Feu una funció ssort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per selecció utilitzant la funció anterior.

Feu una funció merge :: [Int] -> [Int] -> [Int] que, donades dues llistes ordenades, les fusioni per obtenir una llista amb tots els seus elements ordenats.
Feu una funció msort :: [Int] -> [Int] que implementi l’algorisme d’ordenació per fusió utilitzant la funció anterior.

Feu una funció qsort :: [Int] -> [Int] que implementi l’algorisme d’ordenació ràpida.
Generalitzeu la funció anterior per fer ara una funció genQsort :: Ord a => [a] -> [a] que ordeni llistes de qualsevol tipus.
-}

insert :: [Int] -> Int -> [Int]

insert [] x = [x]
insert (x:xs) i
    | i <= x     = i : x : xs
    | otherwise  = x : insert xs i

isort :: [Int] -> [Int]

isort []        = []
isort (x:xs)    = insert (isort xs) x