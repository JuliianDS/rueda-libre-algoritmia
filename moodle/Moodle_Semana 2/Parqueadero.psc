Funcion tarifa <- calcularTarifa ( horas, tieneFactura )
	Si horas <= 0 Entonces
		Escribir "Error: tiempo invalido"
	SiNo
		Si horas > 6 Entonces
			Escribir "$20000"
		SiNo
			Si tieneFactura Entonces
				tarifa<-(trunc(horas) - 2)*3000
				Escribir tarifa
			SiNo
				tarifa<-trunc(horas)*3000
			Fin Si
		Fin Si
	Fin Si
	
Fin Funcion

Algoritmo Parqueadero
	Escribir calcularTarifa(6, Verdadero)
FinAlgoritmo
