# Lista de números en la que vamos a buscar
numerosbusqueda = [23, 45, 12, 876, 156]

# Número que queremos encontrar
numeroaencontrar = 876

# Variable para indicar si encontramos el número
encontrado = False

# Busqueda secuencial
for numero in numerosbusqueda:
    # Comparamos el número actual con el número que queremos encontrar
    if numero == numeroaencontrar:
        # Si son iguales, marcamos como encontrado y salimos del bucle
        encontrado = True
        break

# Verificamos si el número fue encontrado o no
if encontrado:
    print("El número", numeroaencontrar, "fue encontrado en la lista.")
else:
    print("El número", numeroaencontrar, "no fue encontrado en la lista.")
