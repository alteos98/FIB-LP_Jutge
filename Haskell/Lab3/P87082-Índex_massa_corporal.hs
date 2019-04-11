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