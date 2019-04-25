{-
L’Índex de massa corporal (IMC) és un nombre que permet avaluar la corpulència
d’una persona tot relacionant la seva massa amb la seva talla. Va ser desenvolupat
pel belga Adolphe Quételet mentre elaborava el seu sistema de “física social"
entre els anys 1830 i 1850 i també es coneix com a Índex de Quételet. La seva
fórmula és
    IMC = m / h^2
on m és la massa de la persona (en quilograms) i h la seva alçària (en metres).

La seva interpretació (aplicable només a persones adultes) és la següent:

IMC	                Interpretació
menys de 18	            magror
18 a 25	                corpulència normal
25 a 30	                sobrepès
30 a 40	                obesitat
més de 40	            obesitat mòrbida

Feu un programa Haskell per interpretar l’índex de massa corporal de diferentes persones.

Entrada

L’entrada es troba organitzada per línies. A cada línia hi ha tres elements 
eparats per blancs: nom, pès i alçaria. La darrera línia és especial i només
conté un asterisc.

Sortida

Per a cada dada de l’entrada, escriviu el seu nom i la interpretació del seu IMC.

Observació

Per resoldre aquest problema en Haskell, feu una funció main i escolliu el compilador GHC.
-}

getName :: String -> String
getName s = takeWhile (/= ' ') s

calculateIMC :: String -> String
calculateIMC s = do
    let weight = read $ takeWhile (/= ' ') (drop 1 (dropWhile (/= ' ') s)) :: Float
    let height = read $ drop 1 (dropWhile (/= ' ') (drop 1 (dropWhile (/= ' ') s))) :: Float
    let imc = calculateIMC' weight height
    getIMCMessage imc

calculateIMC' :: Float -> Float -> Float
calculateIMC' w h = (/) w ((**) h 2)

getIMCMessage :: Float -> String
getIMCMessage imc
    | imc < 18              = "magror"
    | imc >= 18 && imc < 25 = "corpulencia normal"
    | imc >= 25 && imc < 30 = "sobrepes"
    | imc >= 30 && imc < 40 = "obesitat"
    | imc >= 40             = "obesitat morbida"

main = do
    line <- getLine
    if line /= "*" then do
        let name = getName line
        let imc = calculateIMC line
        putStrLn (name ++ ": " ++ imc)
        main
    else
        return()