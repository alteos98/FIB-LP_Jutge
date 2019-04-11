{-
Es vol tenir un mòdul per a manipular i avaluar expressions d’enters
amb operacions de suma, resta, multiplicació i divisió. Per això, es
defineix el tipus següent:
    data Expr = Val Int | Add Expr Expr | Sub Expr Expr | Mul Expr Expr | Div Expr Expr
Per exemple, Add (Val 3) (Div (Val 4) (Val 2)) representa 3 + 4 / 2, que s’avalua a 5.

1. Avaluació sense errors (20 punts)
Utilitzant el tipus Expr, definiu una operació eval1 :: Expr -> Int que,
donada una expressió, en retorni la seva avaluació. Podeu suposar que mai
hi haurà divisions per zero.

2. Avaluació amb indicació d’error (30 punts)
Utilitzant el tipus Expr, definiu una operació eval2 :: Expr -> Maybe Int
que, donada una expressió, en retorni la seva avaluació com un valor Just.
En el cas que es produeixi una divisió per zero, el resultat ha de ser Nothing.
Segurament voleu usar la notació do sobre la mònada Maybe a.

3. Avaluació amb text d’error (30 punts)
Utilitzant el tipus Expr, definiu una operació eval3 :: Expr -> Either String Int 
que, donada una expressió, en retorni la seva avaluació com un valor Right. En el
cas que es produeixi una divisió per zero, el resultat ha de ser Left "div0" per
indicar l’error en qüestió. Segurament voleu usar la notació do sobre la mònada Either a b.
-}

data Expr = Val Int | Add Expr Expr | Sub Expr Expr | Mul Expr Expr | Div Expr Expr

eval1 :: Expr -> Int
eval1 (Val x) = x
eval1 (Add x y) = (eval1 x) + (eval1 y)
eval1 (Sub x y) = (eval1 x) - (eval1 y)
eval1 (Mul x y) = (eval1 x) * (eval1 y)
eval1 (Div x y) = div (eval1 x) (eval1 y)

eval2 :: Expr -> Maybe Int
eval2 (Val x) = Just x
eval2 (Add x y) = eval2' (+) x y
eval2 (Sub x y) = eval2' (-) x y
eval2 (Mul x y) = eval2' (*) x y
eval2 (Div x y) = eval2' (div) x y

eval2' :: (Int -> Int -> Int) -> Expr -> Expr -> Maybe Int
eval2' f x y = do
    x' <- eval2 x
    y' <- eval2 y
    Just (f x' y')
