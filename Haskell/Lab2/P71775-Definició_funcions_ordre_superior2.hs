{-
Aquest problema explora la definició de funcions d’ordre superior sobre llistes.

Feu una funció countIf :: (Int -> Bool) -> [Int] -> Int que, donat un predicat
sobre els enters i una llista d’enters, retorna el nombre d’elements de la llista
que satisfan el predicat.
Nota: Aquesta funció d’ordre superior existeix en llenguatges de tractament de
fulls de càlcul com ara EXCEL.

Feu una funció pam :: [Int] -> [Int -> Int] -> [[Int]] que, donada una llista
d’enters i una llista de funcions d’enters a enters, retorna la llista de llistes
resultant d’aplicar cada una de les funcions de la segona llista als elements de
la primera llista.

Feu una funció pam2 :: [Int] -> [Int -> Int] -> [[Int]] que, donada una llista
d’enters i una llista de funcions d’enters a enters, retorna la llista de llistes
on cada llista és el resultat d’aplicar successivament les funcions de la segona
llista a cada element de la primera llista.
Nota: Qualsevol semblança amb La parte contratante de la primera parte será
considerada como la parte contratante de la primera parte és pura casualitat.

Feu una funció filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int
que fa el plegat dels elements que satisfan la propietat donada.

Feu una funció insert :: (Int -> Int -> Bool) -> [Int] -> Int -> [Int] que donada
una relació entre enters, una llista i un element, ens retorna la llista amb l’element
inserit segons la relació.
Utilitzant la funció insert, feu una funció insertionSort :: (Int -> Int -> Bool) -> [Int] -> [Int]
que ordeni la llista per inserció segons la relació donada.
-}

countIf :: (Int -> Bool) -> [Int] -> Int
countIf _ []    = 0
countIf f (x:xs)
    | f x       = 1 + countIf f xs
    | otherwise = countIf f xs

pam :: [Int] -> [Int -> Int] -> [[Int]]
pam l f     = [map fl l | fl <- f]

pam2 :: [Int] -> [Int -> Int] -> [[Int]]
pam2 l f    = [map fl l | fl <- f]

filterFoldl :: (Int -> Bool) -> (Int -> Int -> Int) -> Int -> [Int] -> Int
filterFoldl f1 f2 x xs  = foldl f2 x (filter f1 xs)
    