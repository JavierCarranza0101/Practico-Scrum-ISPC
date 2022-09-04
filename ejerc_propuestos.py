'''
Diseñe un algoritmo que permita ingresar una N cantidad de números. 
El programa se debe finalizar al ingresar 0 y al finalizar mostrar 
en pantalla la cantidad de números ingresados.'''

#ejer 1)
# list=[]

# entrada=int(input("Para teminar ingrese 0. De lo contrario ingrese un numero: "))

# while entrada !=0:
#     list.insert(0,entrada)
#     entrada=int(input("Para teminar ingrese 0. De lo contrario ingrese un numero: "))
# else:
#     print("proceso finalizado. Se ingreso 0.")
#     print("los numeros ingresados fueron: ", list)

'''
Diseñar un algoritmo. Dado las variables P=27 y Q=457.
Mostrar en pantalla los múltiplos de 9 comprendidos entre P y Q.
'''
#ejer2)

# from calendar import c


# p=27
# q=457
# lista=[]
# for i in range(p, (q+1), 9):
#     lista.append(i)
# print(lista)

'''
Diseñar un algoritmo que muestre los resultados de encuestas. 
Se deben encuestar a 7 personas que opinen sobre la situación económica del país.
Las posibles respuestas son: mejorando, regular, muy mala. Las respuestas almacenarla 
en una lista y mostrar los resultados obtenidos, por ejemplo:
Mejorando: 3
Regular: 1
Mala: 3

'''

#ejer3)

# encuesta=  {'mejorando':(0),
#             'regular':(0),
#             'mala':(0)}

# for i in range(7):
#     dato=str(input('Dentro de las siguientes opciones.\n\
# Como piensa que se encuentra la situacion del pais?.\n\
# Responda a,b o c.\n\
# a.mejorando\n\
# b.regular\n\
# c.mala\n\
# Su respuesta es: '))
#     if dato == 'a':
#         encuesta['mejorando']= (encuesta['mejorando']+1)
#     elif dato == 'b':
#         encuesta['regular']= (encuesta['regular']+1)
#     elif dato == 'c':
#         encuesta['mala']= (encuesta['mala']+1)

# for key in encuesta:
#     print(f''El resultado de la escuesta a 7 personas fue:\n\
# {key} : {encuesta[key]}.\n\
# Gracias.'')


'''
Diseñe un algoritmo. Se ingresan N cantidad de números por teclado. 
Contar cuántas veces se ingresaron los números 8 y 11 y cuántos 
números distintos a estos se presentan. El proceso finaliza cuando se ingresa 0.  
'''
#eje 4)
# num_8=0
# num_11=0
# num_dist=0
# ing=int (input("Para finalizar coloca 0. De lo contrario ingresa un numero:  "))
# while ing !=0:
#     if ing == 8:
#         num_8 = num_8+ 1
#     elif ing == 11:
#         num_11 =num_11 + 1
#     else:
#          num_dist = num_dist + 1
#     ing=int (input("Para finalizar coloca 0. De lo contrario ingresa un numero:  "))
    
# print(f'La cuenta de los numeros fueron los siguientes: \n\
# Numeros 8={num_8}\nNumeros 11={num_11}\ny numeros distintos:{num_dist}.\nGracias. ')

'''
Diseñe un algoritmo. Una fábrica de postes de alumbrado produce N 
cantidad de postes por día. Confeccionar un programa que pida ingresar 
por teclado la cantidad de postes a fabricar un día específico y luego ingrese 
la longitud de cada poste fabricado. Dichos postes deben tener una longitud de 1.7m y 1.8m 
para que sean aptos para alumbrado público. El resto de postes se desecha.  
Mostrar por pantalla la cantidad de postes aptos que hay en el lote fabricado.

'''

#eje5)

# dia_x= []

# ingreso_dias= float(input('(Para Finalizar ingrese 0.)\n\
# -->Ingrese tamaño de un poste:.'))

# while ingreso_dias !=0:
#     dia_x.append(ingreso_dias)
    
#     ingreso_dias= float(input('(Para Finalizar ingrese 0.)\n\
# -->Ingrese tamaño de un poste:.'))

# print("*****Finalizo el ingreso de postes*****")
# n=0
# for i in dia_x:
#     n= n+1
#     print(f'El poste n° {n} tiene una medida de {i} Mts.')
    
# Postes_aptos=[]
# Postes_NO_Aptos=[]
# for y in dia_x:
#     if y >= 1.700 and y <=1.800:
#         Postes_aptos.append(y)
#     else: Postes_NO_Aptos.append(y)
# print(f'Los postes aptos son {len(Postes_aptos)}.\n\
# Cuya lista es:')
# for i in Postes_aptos:
#     print('Medida: ',i,'-->ES APTO.',end="\n")
# print(f'Los postes NO aptos son {len(Postes_NO_Aptos)}.\n\
# Cuya lista es:')
# for i in Postes_NO_Aptos:
#     print('Medida: ',i, 'NO ES APTO.',end="\n")


'''
Diseñe un algoritmo que permita ingresar una N cantidad de palabras. 
El programa se debe finalizar al ingresar “a” y mostrar en pantalla la cantidad 
de palabras ingresadas que comienzan con la letra “m”.
'''

#eje6)

palabras=[]

ingr=input("Para Finalizar ingrese 'a'.\n\
-->Ingrese una palabra: ")

while ingr != "a":
    palabras.append(ingr)
    ingr=input("Para Finalizar ingrese 'a'.\n\
-->Ingrese una palabra: ")

pal_con_m=[]

for i in palabras:
    if "m" in i:
        pal_con_m.insert(0,i)
print(f'La cantidad de palabras ingresadas con "m" son:{len(pal_con_m)}.\n\
Las palabras son: {pal_con_m}.')
