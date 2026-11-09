Algoritmo Primera_cotizacion
	Definir nombre Como Cadena
	Definir horas Como Entero
	Definir total Como Entero
	Definir precio_h Como Entero
	precio_h <- 10000
	Escribir 'Ingresa el nombre del cliente:'
	Leer nombre
	Escribir 'Ingresar cantidad de horas del alquiler'
	Leer horas
	total <- precio_h*horas
	Escribir 'hola, ', nombre, ': tu alquiler de ', horas, 'horas cuesta $', total
FinAlgoritmo
