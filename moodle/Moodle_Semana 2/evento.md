# Ejercicio 3. Acceso a Evento

## Desarrollo

### Enunciado
Acceso a un evento: pueden entrar los mayores de 18 años con boleta, o los menores acompañados de un adulto con boleta. Pista: construye la tabla de verdad con 3 proposiciones

#### Entradas

- Edad
- En compañia de adulto

#### Salidas

- Ingreso al evento

#### Proposiciones

- Es mayor de edad
- Tiene boleta
- Va acompañado de un adulto con boleta

#### tabla de verdad
|edad > 18|Tiene boleta?|Acompañada|Tiene acceso?
|-|-|-|-|
|V|V|V|V- Sí|
|V|V|F|V - Sí|
|V|F|V|F- NO|
|V|F|F|F- NO|
|F|V|V|V - Sí|
|F|V|F|F- NO|
|F|F|V|V - Sí|
|F|F|F|F- NO|

#### Pseudocodigo

```
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

```