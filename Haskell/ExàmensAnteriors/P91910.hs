-- Parcial 11/04/18

-- EX1
multEq :: Int -> Int -> [Int]
multEq x y = iterate (*m) 1
    where m = x*y

-- EX2
selectFirst :: [Int] -> [Int] -> [Int] -> [Int]
selectFirst [] _ _ = []
selectFirst _ [] _ = []
selectFirst (x:xs) y z
    | (any (==x) y && (posmenor || (all (/=x) z))) = x : selectFirst xs y z
    | otherwise = selectFirst xs y z
    where posmenor = length (takeWhile (/=x) y) < length (takeWhile (/=x) z)

-- EX3
myIterate :: (a -> a) -> a -> [a]
myIterate f x = scanl lambda x (myIterate f x)
    where lambda x1 x2 = f x1

-- EX4
type SymTab a = String -> Maybe a

empty :: SymTab a
empty = f
    where f x = Nothing

get :: SymTab a -> String -> Maybe a
get t s = t s

set :: SymTab a -> String -> a -> SymTab a
set t k v x
    | k == x = return v
    | otherwise = get t x

-- EX5
data Expr a
    = Val a
    | Var String
    | Sum (Expr a) (Expr a)
    | Sub (Expr a) (Expr a)
    | Mul (Expr a) (Expr a)
    deriving Show

eval :: (Num a) => SymTab a -> Expr a -> Maybe a
eval t (Val a) = Just a
eval t (Var s) = get t s
eval t (Sum e1 e2) = do
    x1 <- eval t e1
    x2 <- eval t e2
    Just (x1 + x2)
eval t (Sub e1 e2) = do
    x1 <- eval t e1
    x2 <- eval t e2
    Just (x1 - x2)
eval t (Mul e1 e2) = do
    x1 <- eval t e1
    x2 <- eval t e2
    Just (x1 * x2)