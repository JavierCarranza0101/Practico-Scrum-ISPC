'''
Se propone emplear el repositorio grupal informado a los docentes 
por medio del formulario de registro durante el transcurso del cuatrimestre, 
en el cual deberán subir cada uno de los integrantes en sus propias branches -ramas- 
(las que ya tienen creadas), los puntos solicitados a continuación:'''

'''
1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:
28957346,  Juan,  Perez, 4789689,  Belgrano 101
Dichos datos se corresponden  con los datos del dueño de un perro 
(DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el 
teléfono del dueño si el DNI es mayor a 26000000.
'''
#1)
# dni_muestra=26000000
# dueno= [28957346,  'Juan',  'Perez', 4789689,  'Belgrano 101']
# #(DNI, nombre, apellido, teléfono y dirección)

# for elem in dueno:
#     if dueno[0] > dni_muestra:
#         print(f'el telefono del dueño es: {dueno[3]}')
#         break;
#     else:
#         print('No se muestra Telefono del dueño ya que el Dni es menor a "26000000".')
#         break;

'''
2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  
mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 
'''
#2)

# dueno2=[23546987,  'Maria',  'Perez', 4789689,  'Pueyrredon  811']
# #(DNI, nombre, apellido, teléfono y dirección)
# dni=23546987
# apellido='Perez'
# for elem in dueno2:
#     if elem == dni:
#             print('aqui se quitó elemento Dni.')
#             continue
#     if elem == apellido:
#             print('aqui se quitó elemento Apellido.')
#             continue
#     print(elem)

'''
3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:
13,  Puppy,  12/12/2012 , Macho, 123
Que se corresponde con los datos de un perro de nuestra base de datos 
(Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). 
Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .
'''
#3)

# perro=[13,  'Puppy', '12/12/2012' , 'Macho', 123]
# #(Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño)
# perro[2]='13/12/2012'
# perro[4]= 28957346
# print(perro)

'''
4)Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:
14,  Fido,  12/12/2012 , Macho, 23546987
Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla ,
comenzando desde el último hasta el primero.
'''
#4)

# perro2=[14,  'Fido',  '12/12/2012' , 'Macho', 23546987]
# new_perro2=[]
# for elem in perro2:
#     new_perro2.insert(0,elem)
# print(new_perro2)

'''
5)Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:
2350, 5960, 23000, 1000, 8900
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”.
Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. 
Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, 
caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.
'''
#5)

# historial=2350, 5960, 23000, 1000, 8900

# pres=0

# for mont in historial:
#     if True:
#         pres= (pres+int(mont))
# if pres >= 30000:
#     print("Gastos por encima de lo presupuestado.")
# else: print(f"el gasto fue de: {pres}.")

'''
6)Crear una tupla en Python con el nombre de 
“Historial2” la cual contenga los siguientes valores:
23500, 5960, 2300, 10200, 8900
Que representa montos de atención en pesos por diferentes 
servicios/consultas de la mascota “Frida”. Calcular el monto total 
gastado a lo largo del tiempo por atención de “Frida”. 
Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  
el número calculado en pantalla.
'''
#6)

# historial2=23500, 5960, 2300, 10200, 8900

# gast=0
# for mont in historial2:
#     if True:
#         gast= (gast+int(mont))
# print(f'La suma del total de los gastos fue de: {gast}.')
# gast_sup=0
# for mont in historial2:
#     if mont>5000:
#         gast_sup+=1
# print(f"La cantidad de gastos mayores a $5.000 fueron: {gast_sup}.")

'''
7)  Crear una tupla en Python con el nombre de “Historial3” 
la cual contenga los siguientes valores:
9530, 4120, 4580, 1500, 890,7516,426
Que representa montos de atención en pesos por diferentes servicios/consultas 
de la mascota “Lennon”. Calcular el promedio de gasto en pesos por atención de 
“Lennon” mostrándolo en pantalla. Si el promedio es mayor a 4500 indicar con un 
mensaje “Se ha excedido del gasto promedio para su mascota”.
'''

#7)

# historial3=9530, 4120, 4580, 1500, 890,7516,426

# gast=0
# for mont in historial3:
#     if True:
#         gast= gast+int(mont)
# prom= gast / (len(historial3))
# print(f'El promedio del total de los gastos fue de: ${round(prom,2)} .')

# if prom > 4500:
#     print("Se ha excedido del gasto promedio para su mascota")

'''
8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
7510, 7960, 76180, 800, 4100
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota
 “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia” 
  mostrándolo en pantalla.
'''

#8)

# historial4=7510, 7960, 76180, 800, 4100
# def gasto_menor(a):
#     menor=999999999
#     for elem in a:
#         if elem < menor:
#             menor= elem
#     return menor

# print (f'el valor mínimo de atención gastada en “Olivia” fue de: ${gasto_menor(historial4)}.')


'''
9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:
8520, 9510, 7530, 3570, 1590
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”.
Crear una función para determinar el valor máximo de atención gastada en “Toto”.
'''
#9)

# historial5=8520, 9510, 7530, 3570, 1590
# def gasto_mayor(b):
#     mayor=0
#     for elem in b:
#         if elem > mayor:
#             mayor= elem
#     return mayor

# print (f'el valor maximo de atención gastada en “Toto” fue de: ${gasto_mayor(historial5)}.')

'''
10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.
Juan,  Mario,  Ariel,  Josefina,  Marianella.
Ordenarla alfabéticamente y mostrarla por pantalla.
'''
#10)

clientes=['Juan',  'Mario',  'Ariel',  'Josefina', 'Zonzo',  'Marianella']

clientes.sort()
print(clientes)







'''
El archivo en Python (.py) debe ser subido a la rama de la persona 
que creó el código, ya que los docentes verificaremos la participación por el historial.
'''