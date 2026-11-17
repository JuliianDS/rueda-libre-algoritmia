# Ejercicio

## Desarrollo

### Enunciado

Tarifa de un gimnasio: estudiantes pagan 50 %, mayores de 60 años pagan 40 % y si cumplen ambas condiciones aplica el mayor descuento. Pista: la tabla de decisión revelará el caso que se repite.

#### Entradas

- Edad.

#### Salidas

- Valor a pagar

#### Proposiciones

- Es estudiante entonces paga 50%
- Es mayor de 60 años entonces paga 40%
- Es estudiante y mayor de 60 años entonces aplica el descuento mayor.

#### tabla de decisión

|Edad|Tipo persona|Porcentaje descuento|Resultado|
|-|-|-|-|
|<60|Estudiante|50%|Tarifa - (Tarifa x 50%)|
|<60|No estudiante|0%|Tarifa|
|>60|No estudiante|60%|Tarifa - (Tarifa x 60%)|
|>60|Estudiante|50%|Tarifa - (Tarifa x 50%)|


#### Pseudocodigo

```
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
```

#### Prueba Escritorio Casos borde

Se define una tarifa base de $50000. El enunciado dice que paga una tarifa segun el porcentaje, por ende, los descuentos serían del 50% y del 60%.

|Edad|Estudiante?|Descuento que aplica|Tarifa|
|-|-|-|-|
|18|No|0%|$50000|
|60|No|0%|$50000|
|60|Si|50%|$25000|
|61|No|60%|$20000|
|61|Si|60%|$20000|
