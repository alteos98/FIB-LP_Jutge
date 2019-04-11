{-
Continuem el problema Haskell — Cua (1). En aquest problema tenim les cues representades
en la forma
cua = Queue [2,8,5] [4,7]

Es demana el codi de diverses funcions i instanciacions. Seguiu el format dels exemples
que es mostren als exemples.

Feu que Queue sigui instància de la classe Functor. Per això implementeu la funció
fmap que, donada una funció de tipus p -> q i un Queue d’elements de tipus p, retorna
un Queue de tipus q resultant d’aplicar la funció a tots els elements de la cua.

Feu una funció translation :: Num b => b -> Queue b -> Queue b que aplica una
translació a tots els punts d’una cua (que serà el segon paràmetre).

Feu que Queue sigui instància de la classe Monad. Per a resoldre aquest apartat,
pot ser útil fer una operació que faci la unió de dues cues del mateix tipus.

Feu, utilitzant la notació do, una funció kfilter :: (p -> Bool) -> Queue p -> Queue p
que selecciona tots els elements d’una cua que satisfan una propietat donada.
-}

data Queue a = Queue [a] [a] deriving (Show)

create :: Queue a
create = Queue [] []

push :: a -> Queue a -> Queue a
push elem (Queue a b) = Queue a (elem : b)

pop :: Queue a -> Queue a
pop (Queue [] bss) = Queue (tail (reverse bss)) []
pop (Queue (a:as) bss) = Queue as bss

top :: Queue a -> a
top (Queue [] (bss)) = last bss
top (Queue (a:as) _) = a

empty :: Queue a -> Bool
empty (Queue [] []) = True
empty _ = False

instance Eq a => Eq (Queue a)
    where
        (Queue ass bss) == (Queue css dss) = ass ++ (reverse bss) == css ++ (reverse dss)

instance Functor (Queue) where
    fmap f [] [] = [] []
    fmap f (Queue (x:xs) yss) = Queue (f x : fmap xs) (yss)
    fmap f (Queue xss )