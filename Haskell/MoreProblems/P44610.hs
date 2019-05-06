import Data.List (sort)

-- EX1
zerosNones1 :: Int -> [[Int]]
zerosNones1 0 = [[]]
zerosNones1 n = map (0:) l ++ map (1:) l
    where l = zerosNones1 (n - 1)

-- EX2
zerosNones2 :: Int -> Int -> [[Int]]
zerosNones2 0 _ = [[]]
zerosNones2 n u
    | u > 0 && (n - u) > 0 = map (0:) l ++ map (1:) s
    | u > 0 = map (1:) s
    | otherwise = map (0:) l
    where
        l = zerosNones2 (n - 1) u
        s = zerosNones2 (n - 1) (u - 1)

-- EX3
subsets1 :: [a] -> [[a]]
subsets1 [] = [[]]
subsets1 (x:xs) = map (x:) l ++ l
    where l = subsets1 xs