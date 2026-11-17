Algoritmo Gimnasio
	definir edad Como Entero
	Escribir "Ingresa la edad: "
	leer edad
	
	definir esEstudiante Como Logico
	Escribir "Eres estudiante? (Verdadero/Falso): "
	Leer esEstudiante
	
	tarifaBase<-50000
	descuentoEstudiante<-0.50
	descuentoMayor60 <-0.60
	
	Si esEstudiante Entonces
		Si edad > 60 Entonces
			Escribir "Tarifa: " tarifaBase - tarifaBase*descuentoMayor60
		SiNo
			Escribir "Tarifa: " tarifaBase - tarifaBase*descuentoEstudiante
		FinSi
	SiNo
		Escribir "Tarifa: " tarifaBase
	FinSi
FinAlgoritmo
