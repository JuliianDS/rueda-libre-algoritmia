Algoritmo sin_titulo
	Definir peso Como Real
	Definir costo Como Real
	Escribir 'Ingresa el peso del paquete en kg:'
	Leer peso
	Si peso<=3 Entonces
		costo <- 5000
	SiNo
		Si peso<=10 Entonces
			costo <- 15000
		SiNo
			costo <- 50000
		FinSi
	FinSi
	Escribir 'El costo total de envío es: $', costo
FinAlgoritmo
