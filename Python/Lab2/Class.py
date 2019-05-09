def any_actual():
    return 2019

class Persona:

    def __init__(self, any_naixement):
        self.any_naixement = any_naixement

    def edat(self):
        return any_actual() - self.any_naixement


## MAIN
p = Persona(1971)

# Podem afegir atributs a un objecte
# ¡¡¡Nomès el té aquest objecte!!!
p.estudiant = True

print(p.edat())