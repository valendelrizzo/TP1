
def bubble_sort(listadata): 
    n = len(listadata) #largo de la lista (en este caso es de 5)
    for i in range(n):
        for j in range(0, n - i - 1):
            # Si el DNI del elemento actual es mayor que el siguiente elemento, intercambiarlos
            if listadata[j]['DNI'] > listadata[j + 1]['DNI']:
                listadata[j], listadata[j + 1] = listadata[j + 1], listadata[j]

# Datos de ejemplo
juan = {'nombre': "juan", 'DNI': 23567890}
pepito = {'nombre': "pepito", 'DNI': 45678231}
manolo = {'nombre': "manolo", 'DNI': 89021000}
genio = {'nombre': "genio", 'DNI': 1000000}
luca = {'nombre': "luca", 'DNI': 99000222}

sistema = [luca, pepito, juan, manolo, genio]

# Ordenar la lista 'sistema' utilizando Bubble Sort
bubble_sort(sistema)

# Mostrar la lista ordenada
for persona in sistema:
    print(persona)

ordenada = [genio,juan,pepito,manolo,luca]