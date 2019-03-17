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

remove :: [Int] -> Int -> [Int]

remove (x:xs) p
    | x == p    = xs
    | otherwise = x : remove xs p

ssort :: [Int] -> [Int]

ssort []        = []
ssort xs        = m : ssort (remove xs m)
    where
        m       = minimum xs

merge :: [Int] -> [Int] -> [Int]

merge [] []         = []
merge (x:xs) []     = x : xs
merge [] (y:ys)     = y : ys
merge (x:xs) (y:ys)
    | x < y         = x : merge xs (y:ys)
    | otherwise     = y : merge (x:xs) ys

msort :: [Int] -> [Int]

msort []        = []
msort [x]       = [x]
msort xs        = merge (msort (take (div (length xs) 2) xs)) (msort (drop (div (length xs) 2) xs))

qsort :: [Int] -> [Int]

qsort []        = []
qsort (x:xs)    = (qsort (menors xs x)) ++ (x : qsort (majors xs x))

menors :: [Int] -> Int -> [Int]

menors [] _     = []
menors (x:xs) i
    | x <= i    = x : menors xs i
    | otherwise = menors xs i

majors :: [Int] -> Int -> [Int]

majors [] _     = []
majors (x:xs) i
    | x > i     = x : majors xs i
    | otherwise = majors xs i

genQsort :: Ord a => [a] -> [a]

genQsort []        = []
genQsort (x:xs)    = (genQsort (genMenors xs x)) ++ (x : genQsort (genMajors xs x))

genMenors :: Ord a => [a] -> a -> [a]

genMenors [] _     = []
genMenors (x:xs) i
    | x <= i    = x : genMenors xs i
    | otherwise = genMenors xs i

genMajors :: Ord a => [a] -> a -> [a]

genMajors [] _     = []
genMajors (x:xs) i
    | x > i     = x : genMajors xs i
    | otherwise = genMajors xs i