{-
Aquest problema planteja l’escriptura de diverses funcions sobre arbres binaris genèrics. La definició dels arbres ve donada per:
    data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)
    
És a dir, un arbre amb elements de tipus a és, o bé un arbre buit, o bé un node que arrela un element (de tipus a) amb dos altres
arbres. La declaració deriving (Show) permet mostrar els arbres senzillament.

Feu una funció size :: Tree a -> Int que, donat un arbre, retorni la seva talla, és a dir, el nombre de nodes que conté.
Feu una funció height :: Tree a -> Int que, donat un arbre, retorni la seva alçada, assumint que els arbres buits tenen alçada zero.
Feu una funció equal :: Eq a => Tree a -> Tree a -> Bool que, donat dos arbres, indiqui si són el mateix.
Feu una funció isomorphic :: Eq a => Tree a -> Tree a -> Bool que, donat un arbres, indiqui si són el isomorfs, és a dir, si es
    pot obtenir l’un de l’altre tot girant algun dels seus fills.
Feu una funció preOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en pre-ordre.
Feu una funció postOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en post-ordre.
Feu una funció inOrder :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut en in-ordre.
Feu una funció breadthFirst :: Tree a -> [a] que, donat un arbre, retorni el seu recorregut per nivells.
Feu una funció build :: Eq a => [a] -> [a] -> Tree a que, donat el recorregut en pre-ordre d’un arbre i el recorregut en in-ordre
    del mateix arbre, retorni l’arbre original. Assumiu que l’arbre no té elements repetits.
Feu una funció overlap :: (a -> a -> a) -> Tree a -> Tree a -> Tree a que, donats dos arbres, retorni la seva superposició
    utilitzant una funció. Superposar dos arbres amb una funció consisteix en posar els dos arbres l’un damunt de l’altre
    i combinar els nodes doble resultants amb la funció donada o deixant els nodes simples tal qual.
-}