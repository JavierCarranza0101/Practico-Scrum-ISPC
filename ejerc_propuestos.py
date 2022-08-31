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

encuesta=  {'mejorando':(0),
            'regular':(0),
            'mala':(0)}

for i in range(7):
    dato=str(input('Dentro de las siguientes opciones.\n\
Como piensa que se encuentra la situacion del pais?.\n\
Responda a,b o c.\n\
a.mejorando\n\
b.regular\n\
c.mala\n\
Su respuesta es: '))
    if dato == 'a':
        encuesta['mejorando']= (encuesta['mejorando']+1)
    elif dato == 'b':
        encuesta['regular']= (encuesta['regular']+1)
    elif dato == 'c':
        encuesta['mala']= (encuesta['mala']+1)

for key in encuesta:
    print(f''El resultado de la escuesta a 7 personas fue:\n\
{key} : {encuesta[key]}.\n\
Gracias.'')



