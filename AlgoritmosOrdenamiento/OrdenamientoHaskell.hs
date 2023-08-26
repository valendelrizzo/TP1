module Library where
import PdePreludat
import Data.List (sort)

doble :: Number -> Number
doble numero = numero + numero

-- la idea es que dada una lista de datas, poder obtener la lista ordenada. El criterio va a ser un numero, si son usuarios puede ser su DNI

data Usuario = UnUsuario {
    nombre :: String,
    documento :: Number
} deriving (Show, Eq)

juan :: Usuario
juan = UnUsuario "juan" 23567890

pepito :: Usuario
pepito = UnUsuario "pepito" 45678231

manolo :: Usuario
manolo = UnUsuario "manolo" 89021000

genio :: Usuario
genio = UnUsuario "genio" 1000000

luca :: Usuario
luca = UnUsuario "luca" 99000222

sistema :: [Usuario]
sistema = [luca,pepito,juan,manolo,genio]

ordenada :: [Usuario]
ordenada = [genio,juan,pepito,manolo,luca]

ordenarPorDocumento :: [Usuario] -> [Usuario]
ordenarPorDocumento lista = bubbleSort lista
    where
        bubbleSort :: [Usuario] -> [Usuario] -- contempla los casos en que la lista este vacia, tenga un solo elemento y varios
        bubbleSort [] = [] -- La lista vacía ya está ordenada
        bubbleSort [x] = [x] -- Una lista con un solo elemento está ordenada
        bubbleSort xs = bubbleLoop xs (length xs)

        bubbleLoop :: [Usuario] -> Number -> [Usuario] -- contabilizada la cantidad de datas, sabe cuantas "pasadas" tiene que realizar para que la lista este ordenada
        bubbleLoop xs 0 = xs -- Ya no hay pasadas que hacer
        bubbleLoop xs n = bubbleLoop sorted (n - 1)
            where
                sorted = bubblePass xs

        bubblePass :: [Usuario] -> [Usuario] -- cambia elementos de lugar
        bubblePass [] = []
        bubblePass [x] = [x]
        bubblePass (x:y:rest)
            | documento x > documento y = y : bubblePass (x:rest) -- Intercambiar
            | otherwise = x : bubblePass (y:rest) -- No intercambiar

