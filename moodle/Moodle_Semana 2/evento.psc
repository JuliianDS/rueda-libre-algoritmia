Funcion tieneAcceso <- accesoEvento ( edad, tieneBoleta, tieneAcompaniante )
	Si edad >= 18 Entonces
		Si tieneBoleta Entonces
			tieneAcceso<-Verdadero
		SiNo
			tieneAcceso<-Falso
		Fin Si
	SiNo
		Si tieneAcompaniante Entonces
			Si tieneAcceso Entonces
				ingreso<-Verdadero
			SiNo
				tieneAcceso<-Falso
			Fin Si
		SiNo
			tieneAcceso<-Falso
		Fin Si
	Fin Si
	
Fin Funcion

Algoritmo evento
	definir edad Como Entero
	Escribir "Ingrese edad: "
	Leer edad
	
	definir tieneAcompaniante Como Logico
	Escribir "Tiene acompañante?:  "
	Leer tieneAcompaniante
	
	definir tieneBoleta como Logico
	Escribir "Tiene boleta?: "
	Leer tieneBoleta
	
	Si accesoEvento(edad, tieneBoleta, tieneAcompaniante) Entonces
		Escribir "La persona tiene acceso"
	SiNo
		Escribir "La persona no tiene acceso"
	FinSi
	
FinAlgoritmo
