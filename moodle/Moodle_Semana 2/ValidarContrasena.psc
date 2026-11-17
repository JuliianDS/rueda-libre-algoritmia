Funcion r <- tieneNumero(texto)
	Definir r Como Logico
	Definir i, d Como Entero
	r <- Falso
	Para i <- 0 Hasta Longitud(texto) - 1 Con Paso 1 Hacer
		Para d <- 0 Hasta 9 Con Paso 1 Hacer
			Si Subcadena(texto, i, i) = ConvertirATexto(d) Entonces
				r <- Verdadero
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion r <- contienePalabra(texto, palabra)
	Definir r Como Logico
	Definir i Como Entero
	r <- Falso
	Para i <- 0 Hasta Longitud(texto) - Longitud(palabra) Con Paso 1 Hacer
		Si Subcadena(texto, i, i + Longitud(palabra) - 1) = palabra Entonces
			r <- Verdadero
		FinSi
	FinPara
FinFuncion

Algoritmo ValidarContrasena
	Definir clave Como Caracter
	Definir A, B, C Como Logico
	
	Escribir "Ingrese la contraseña:"
	Leer clave
	
	A <- Longitud(clave) >= 8
	B <- tieneNumero(clave)
	C <- contienePalabra(Minusculas(clave), "password")
	
	Si A Y B Y NO C Entonces
		Escribir "Contraseña válida."
	SiNo
		Escribir "Contraseña inválida:"
		Si NO A Entonces
			Escribir " - Debe tener al menos 8 caracteres."
		FinSi
		Si NO B Entonces
			Escribir " - Debe contener al menos un número."
		FinSi
		Si C Entonces
			Escribir " - No puede contener la palabra password."
		FinSi
	FinSi
FinAlgoritmo