Algoritmo Cotizacion_recorrido
	Definir recorrido Como Cadena
	Definir precio_persona, total, anticipo, saldo Como Real
	Definir personas Como Entero
	Escribir 'Ingresa el nombre de recorrido (Rio y Parques / Sabores de barrio / Reto Palmas)'
	Leer recorrido
	Escribir 'Ingresa el precio por persona'
	Leer precio_persona
	Escribir 'Ingresa la cantidad de personas'
	Leer personas
	total <- precio_persona*personas
	anticipo <- redon(total*0.30)
	saldo <- total-anticipo
	Escribir ' Resumen de Reserva '
	Escribir ' Recorrido: ', recorrido
	Escribir ' valor total: ', total
	Escribir ' Anticipo del 30%: ', anticipo
	Escribir ' Saldo pendiente: ', saldo
FinAlgoritmo
