# Ejercicio 2. Año Bisiesto

## Desarrollo

### Enunciado

Año bisiesto: un año es bisiesto si es divisible entre 4 y no entre 100, o si es divisible entre 400. Pista: escribe la expresión y prueba 1900, 2000, 2024 y 2026.

#### Entradas

- Año

#### Salidas

- Es bisiesto o no.

#### Proposiciones

- esDivisible4
- esDivisible100
- esDivisible400

#### tabla de verdad

|A: MOD 4|B: MOD 100|C: MOD 400|A && !B|ESPERADO: (A && !B) // C|
|-|-|-|-|-|
|V|V|V|F|V - Bisiesto|
|V|V|F|F|F - No bisiesto|
|V|F|V|F|No posible|
|V|F|F|V|V - Bisiesto|
|F|V|V|-|No posible|
|F|V|F|-|No posible|
|F|F|V|-|No posible|
|F|F|F|F|F - No bisiesto|

#### Pseudocodigo

```
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
```

#### Prueba Escritorio Casos borde

|Año|MOD 4 = 0|MOD 100 != 0|MOD 400 = 0|A & !B|(A & !B) // C|Resultado|
|-|-|-|-|-|-|-|
|1900|V|F|F|F|F|No Bisiesto|
|2000|V|F|V|F|V|Bisiesto|
|2024|V|V|F|V|V|Bisiesto|
|2026|F|V|F|F|F|No bisiesto|
