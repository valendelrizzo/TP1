module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

-- Lista de números en la que vamos a buscar
numerosbusqueda = [23, 45, 12, 876, 156]

-- Número que queremos encontrar
numeroaencontrar = 876

-- Función para realizar la búsqueda
buscarNumero :: Number -> [Number] -> Bool
buscarNumero _ [] = False  -- Caso base: lista vacía, número no encontrado
buscarNumero num (x:xs)   -- x es el primer número en la lista, xs es el resto de la lista
    | num == x = True      -- Si encontramos el número, retornamos True
    | otherwise = buscarNumero num xs  -- Si no, seguimos buscando en el resto de la lista

-- Tanto como la lista y el numero se pueden pedir por consola.
