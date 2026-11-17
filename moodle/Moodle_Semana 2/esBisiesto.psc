Funcion resultado <- esBisiesto(anio)
	Definir resultado Como Logico
	Si anio MOD 400 = 0 Entonces
		resultado <- Verdadero
	SiNo
		Si anio MOD 100 = 0 Entonces
			resultado <- Falso
		SiNo
			resultado <- (anio MOD 4 = 0)
		FinSi
	FinSi
FinFuncion

Algoritmo ProbarBisiesto
	Definir anio Como Entero
	
	Escribir "Ingrese el año:"
	Leer anio
	
	Si esBisiesto(anio) Entonces
		Escribir anio, " es un año bisiesto."
	SiNo
		Escribir anio, " no es un año bisiesto."
	FinSi
FinAlgoritmo