# Conceptes LP

## Conceptes bàsics

### Sistema de tipus

- Type safe: si cap programa pot donar errors de tipus en temps d'execució. (Haskell)
- Type unsafe: si es poden donar errors de tipus en temps d'execució. (Python, Pascal)
---
- Tipat fort: imposen restriccions que eviten barrejar valors de diferents tipus. (Haskell, Pascal)
- Tipat feble: es permet operar entre variables de diferents tipus. (Python)
---
- Comprovació estàtica: la comprovació de tipus es fa en temps de compilació. (Haskell, Pascal)
- Comprovació dinàmica: la comprovació de tipus es fa en temps d'execució. (Python)

### Paradigmes de programació

- Imperatiu (procedural i/o orientat a objectes): les instruccions precisen canvis d'estat.
- Declaratiu: es caracteritza pel resultat, però no per com calcular-lo.
- Funcional: el resultat és el valor d'una sèrie d'aplicacions de funcions.
---
- Python: imperatiu, orientat a objectes i funcional.
- Haskell: funcional.
- Pascal: imperatiu (inclou estructurat i procedural)

## Preguntes conceptes LP

1. Indiqueu les propietats del sistema de tipus de Haskell.  
És type safe, té un tipat fort i una comprovació de tipus estàtica.

2. Indiqueu quin llenguatge us va tocar en el Treball Dirigit (TD) de Competències Transversals, si és o no de scripting i quins paradigmes inclou. Si té extensions importants, indiqueu quins paradigmes incorporen.  
Pascal. No és d'scripting i inclou el paradigma imperatiu (incloent el procedural i l'estructurat). La seva principal extensió va ser Object Pascal, que inclou el paradigma orientat a objectes també.

3. Indiqueu què signica que el "tipat" en un llenguatge de programació sigui estàtic o dinàmic.  
Estàtic: la comprovació de tipus es fa en temps de compilació.  
Dinàmic: la comprovació de tipus es fa en temps d'execució.

4. Indiqueu si el tipat és dinàmic o estàtic en el llenguatge que us va tocar en el Treball Dirigit (TD) de Competències Transversals.  
Pascal, és estàtic.

5. Indiqueu les propietats del sistema de tipus del llenguatge que us va tocar en el Treball Dirigit de Competències Transversals (digueu quin era el llenguatge!).  
Pascal. És type unsafe (pot donar errors de tipus en temps d'execució), tipat fort (imposen restriccions que eviten barrejar valors de diferents tipus) i té una comprovació de tipus estàtica (es fa la comprovació en temps de compilació).

6. Indiqueu les propietats del sistema de tipus de Python.  
És type unsafe, tipat feble i té una comprovació de tipus dinàmica.

7. Indiqueu quin llenguatge us va tocar en el Treball Dirigit (TD) de Competències Transversals, quines propietats té el seu sistema de tipus i quins paradigmes inclou. Si té extensions importants, indiqueu quins paradigmes incorporen.  
Pascal. 

8. Indiqueu com és el tipat de Python (fort/feble i estàtic/dinàmic). És el tipat de Python com el de la majoria dels llenguatges de scripting?  
Tipat feble i comprovació de tipus dinàmica. Té el tipat com la majoria de LPs.

9. Indiqueu quin és el llenguatge que heu fet al Treball Dirigit (TD) de Competències Transversals i com és el seu tipat.  
Pascal. El seu tipat és unsafe, fort i té una comprovació de tipus estàtica.

10. Paradigmes Python.  
Imperatiu, orientat a objectes i funcional.

11. Paradigmes Haskell.  
Funcional.

12. Paradigmes Pascal.  
Imperatiu (inclou procedural i estructurat).
