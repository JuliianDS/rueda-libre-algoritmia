Algoritmo descuento_camisas
	Definir cantidad Como Entero
	Definir preciouni, total Como Real
	Escribir 'ingresa el precio unitario de cada camisa'
	Leer preciouni
	Escribir 'ingresa la cantidad de camisas que vas a comprar'
	Leer cantidad
	total <- preciouni*cantidad
	Si cantidad>=10 Entonces
		total <- total*0.8
		Escribir '¡obtuviste un 8% de descuento en tu compra!'
	SiNo
		Escribir 'precio estandar sin descuento'
	FinSi
	Escribir 'El total a pagar es: $', total
FinAlgoritmo
