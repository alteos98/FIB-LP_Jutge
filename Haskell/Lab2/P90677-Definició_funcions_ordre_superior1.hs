{-
Aquest problema explora la definició de funcions d’ordre superior sobre llistes.
Implementeu les funcions següents mimetitzant les funcions originals de Haskell
però sense usar la funció original (és a dir, no podeu usar foldl per implementar
myFoldl però si per implementar myAll). A més, només podeu utilitzar recursivitat
per definir myFoldl, myFoldr, myIterate, myUntil i myZip.

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myIterate :: (a -> a) -> a -> [a]
myUntil :: (a -> Bool) -> (a -> a) -> a -> a
myMap :: (a -> b) -> [a] -> [b]
myFilter :: (a -> Bool) -> [a] -> [a]
myAll :: (a -> Bool) -> [a] -> Bool
myAny :: (a -> Bool) -> [a] -> Bool
myZip :: [a] -> [b] -> [(a, b)]
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
-}

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl _ x []        = x
myFoldl f x (l:ls)    = myFoldl f (f x l) ls

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr _ x []      = x
myFoldr f x (l:ls)  = f l (myFoldr f x ls)

{-
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f x l   = myFoldr' f x (reverse l)

myFoldr' :: (a -> b -> b) -> b -> [a] -> b
myFoldr' _ x []      = x
myFoldr' f x (l:ls)  = myFoldr f (f l x) ls
-}

myIterate :: (a -> a) -> a -> [a]
myIterate f x   = x : myIterate f (f x)

myUntil :: (a -> Bool) -> (a -> a) -> a -> a
myUntil fBool f i
    | fBool i == True   = i
    | otherwise         = myUntil fBool f (f i)

myMap :: (a -> b) -> [a] -> [b]
myMap f l1  = [f l2 | l2 <- l1]

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f l1   = [l2 | l2 <- l1, f l2]

myAll :: (a -> Bool) -> [a] -> Bool
myAll f l   = and $ map f l

myAny :: (a -> Bool) -> [a] -> Bool
myAny f l   = or $ map f l

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _              = []
myZip _ []              = []
myZip (x:xs) (y:ys)     = (x, y) : myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f xs ys   = map (function) (myZip xs ys)
    where function x    = f (fst x) (snd x)