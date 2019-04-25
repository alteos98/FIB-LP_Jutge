{-
Feu un programa que llegeixi un nom de persona i saludi graciosament.

Entrada

L’entrada és un nom de persona.

Sortida

Si el nom és masculí, cal escriure ‘Hola maco!’. Si el nom és femení,
cal escriure ‘Hola maca!’. Suposeu que tots els noms que acaben en A
són femenins.

Observació

Per resoldre aquest problema en Haskell, feu una funció main i escolliu
el compilador GHC.
-}

main = do
    nom <- getLine
    let c = lastChar nom
    if c /= 'a' && c /= 'A' then do
        putStrLn "Hola maco!"
    else
        putStrLn "Hola maca!"

lastChar :: String -> Char
lastChar s = last s