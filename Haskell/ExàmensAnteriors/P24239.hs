-- Parcial 06/11/18

-- EX1
value :: Char -> Int
value 'I' = 1
value 'V' = 5
value 'X' = 10
value 'L' = 50
value 'C' = 100
value 'D' = 500
value 'M' = 1000
value 'e' = 0

roman2int :: String -> Int
roman2int [] = 0
roman2int [x] = value x
roman2int (x1:x2:xs)
    | n1 >= n2 = n1 + roman2int (x2:xs)
    | otherwise = roman2int (x2:xs) - n1
    where
        n1 = value x1
        n2 = value x2

-- EX2
roman2int' :: String -> Int
roman2int' s = foldl (+) 0 (zipWith f s ((tail s) ++ "e"))
    where
        f x1 x2
            | n1 >= n2 = n1
            | otherwise = (- n1)
            where
                n1 = value x1
                n2 = value x2

-- EX3
arrels :: Float -> [Float]
arrels x = iterate f x
    where
        f y = ((/) 1 2) * (y + ((/) x y))

-- EX4
arrel :: Float -> Float -> Float
arrel x e = arrel' (zipWith (-) arrel_x (tail arrel_x)) e (tail arrel_x)
    where arrel_x = arrels x

arrel' :: [Float] -> Float -> [Float] -> Float
arrel' (x:xs) e (y:ys)
    | x <= e = y
    | otherwise = arrel' xs e ys

-- EX5
data LTree a = Leaf a | Node (LTree a) (LTree a)

instance (Show a) => Show (LTree a) where
    show (Leaf l) = "{" ++ show l ++ "}"
    show (Node e d) = "<" ++ show e ++ "," ++ show d ++ ">"

-- EX6
build :: [a] -> LTree a
build [x] = Leaf x
build xs
    | even (length xs) = Node (build m) (build n)
    | otherwise = Node (build m') (build n')
    where
        m = take (div (length xs) 2) xs
        n = drop (div (length xs) 2) xs
        m' = take ((div (length xs) 2) + 1) xs
        n' = drop ((div (length xs) 2) + 1) xs

-- EX7
zipLTrees :: LTree a -> LTree b -> Maybe (LTree (a,b))
zipLTrees (Leaf x) (Leaf y) = do
    Just (Leaf (x, y))
zipLTrees (Leaf _) _ = do
    Nothing
zipLTrees _ (Leaf _) = do
    Nothing
zipLTrees (Node e1 d1) (Node e2 d2) = do
    ef <- zipLTrees e1 e2
    df <- zipLTrees d1 d2
    Just (Node ef df)