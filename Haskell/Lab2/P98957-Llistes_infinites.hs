{-
L’objectiu d’aquest problema és treballar la definició de llistes infinites.
Concretament, es demana que implementeu funcions que generin llistes infinites per a:

Generar la seqüència dels uns [1,1,1,1,1,1,1,1,…].

Generar la seqüència dels naturals [0,1,2,3,4,5,6,7…].

Generar la seqüència dels enters [0,1,−1,2,−2,3,−3,4…].

Generar la seqüència dels nombres triangulars: 0,1,3,6,10,15,21,28,…].

Generar la seqüència dels nombres factorials: [1,1,2,6,24,120,720,5040,…].

Generar la seqüència dels nombres de Fibonacci: [0,1,1,2,3,5,8,13,…].

Generar la seqüència dels nombres primers: [2,3,5,7,11,13,17,19,…].

Generar la seqüència ordenada dels nombres de Hamming: [1,2,3,4,5,6,8,9,…].
Els nombres de Hamming són aquells que només tenen 2, 3 i 5 com a divisors primers.

Generar la seqüència mira i digues: [1,11,21,1211,111221,312211,13112221,1113213211,…].

Generar la seqüència de les files del triangle de Tartaglia (també anomenat triangle de Pascal): [[1],[1,1],[1,2,1],[1,3,3,1],…].

Especificació
Heu de definir les funcions següents:

     ones :: [Integer]
     nats :: [Integer]
     ints :: [Integer]
     triangulars :: [Integer]
     factorials :: [Integer]
     fibs :: [Integer]
     primes :: [Integer]
     hammings :: [Integer]
     lookNsay :: [Integer]
     tartaglia :: [[Integer]]

     Observació
En aquest problema no podeu utilitzar enumeracions infinites com ara [1..], però és
recomanable utilitzar funcions d’ordre superior com ara map, scanl, iterate, filter, ...
-}

ones :: [Integer]
ones      = 1 : ones

nats :: [Integer]
nats      = 0 : map (+1) nats

fibs :: [Integer]
fibs      = 0 : 1 : zipWith (+) fibs (tail fibs)