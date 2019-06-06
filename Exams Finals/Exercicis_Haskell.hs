-- 18-19Q1 - Ex 4.1
fun1 x (y,z) f = let e = snd x in f e y

-- 18-19Q1 - Ex 4.2
fun2 ((x,y):l) = (x == y) : (fun2 l)

-- 17-18Q2 - Ex 3.1
fun3 x = let y = fst x in (y,y)

-- 17-18Q2 - Ex 3.2
fun4 (x:l) y = (x.y) l > 0

-- 16-17Q1 - Ex 4.1
fun5 g (x,y) = (g x, g y)

-- 16-17Q1 - Ex 4.1
fun6 x (y:l) = let s = sum l in if s < x then fun6 x l else y:l