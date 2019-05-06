-- PROBLEMA 1 --
eval1 :: String -> Int
eval1 expr = eval1' (words expr) []

eval1' :: [String] -> [Int] -> Int
eval1' [] (n:ns) = n
eval1' (x:xs) (n:m:ls)
    | x == "+" = eval1' xs ((n + m) ++ ls)
    | x == "-" = eval1' xs ((n - m) ++ ls)
    | x == "*" = eval1' xs ((n * m) ++ ls)
    | x == "/" = eval1' xs ((n / m) ++ ls)
    | otherwise = eval1' xs ((read x) ++ (n : m : ls))

-- PROBLEMA 3 --
fsmap :: a -> [a -> a] -> a
fsmap x fs = map  (iterate a)