Algoritmo inventario
	definir stock Como Entero
	Escribir "Ingresa el valor del stock: "
	leer stock
	
	Si stock < 0 Entonces
		Escribir "Error, el stock no puede ser menor a 0"
	SiNo
		Si stock = 0 Entonces
			Escribir "Agotado"
		SiNo
			Si stock >=1 Y stock <=10 Entonces
				Escribir "Bajo"
			SiNo
				Escribir "Disponible"
			FinSi
		Fin Si
	Fin Si
	
FinAlgoritmo
