#Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

dueno = ['28957346',  'Juan',  'Perez', '4789689',  'Belgrano 101']
telefono = dueno[3]
dni = dueno[0]
dni = int(dni)
if dni > 26000000:
    print('El numero de telefono es:', telefono)
