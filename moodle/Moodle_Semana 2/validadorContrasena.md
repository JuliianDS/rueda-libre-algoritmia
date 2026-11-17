# Ejercicio

## Desarrollo

### Enunciado

Validador de contraseña: debe tener al menos 8 caracteres, al menos un número y no contener la palabra "password". Pista: niega correctamente cada regla para generar el mensaje de error.

#### Entradas

- Contraseña

#### Salidas

- Resultado validación.

#### Proposiciones

- La contraseña tiene al menos 8 caracteres.
- La contraseña contiene al menos 1 número.
- La contraseña contiene la palabra "password".

#### tabla de verdad
A - Contraseña > 8 Caracteres
B - Contraseña tiene al menos 1 número
C - Contraseña contiene la palabra "password"

|A|B|C|A && B && !C|Resultado|
|-|-|-|-|-|
|V|V|V|F|Inválida, contiene "password"|
|V|V|F|V|Válida|
|V|F|V|F|Inválida, no tiene número y contiene "password"|
|V|F|F|F|Inválida, no tiene número|
|F|V|V|-|Error|
|F|V|F|F|Invalida, contraseña menor a 8 caracteres|
|F|F|V|-|Error|
|F|F|F|F|Inválida|


#### Pseudocodigo

```
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

```
