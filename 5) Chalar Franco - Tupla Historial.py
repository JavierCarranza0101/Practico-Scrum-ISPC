Historial = (2350, 5960, 23000, 1000, 8900) #montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”

def sumar (Historial):
    suma = Historial
    
    if suma in range (0, 30000 + 1):
        return suma
    else:
        return "Gastos por encima de lo presupuestado"
print(sumar(Historial))

#El gasto total fue de 41210 por lo que supera lo presupuestado.

