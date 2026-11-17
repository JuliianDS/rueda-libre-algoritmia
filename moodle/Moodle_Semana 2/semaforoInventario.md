# Ejercicio

## Desarrollo

### Enunciado

Semáforo de inventario: si el stock es 0 → "Agotado"; entre 1 y 10 → "Bajo"; más de 10 → "Disponible"; negativo → "Error". Pista: ordena bien las condiciones y prueba 0, 1, 10, 11 y -1

#### Entradas

- Stock

#### Salidas

- Mensaje de disponibilidad

#### Proposiciones

- El stock es mayor a cero.
- El stock se encuentra entre 1 y 10.
- El stock es mayor a 10.

#### tabla de decisión

|Stock < 0|Stock = 0|Stock > 0|Stock>0 && Stock<10|Stock>10|Resultado Esperado|
|-|-|-|-|-|-|
|Si|-|-|-|-|Error|
|No|Si|-|-|-|Agotado|
|No|No|Si|Si|No|Bajo|
|No|No|Si|Si|Si|Disponible|

#### Pseudocodigo

```
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
```

#### Prueba Escritorio Casos borde

|Valor|stock < 0|stock = 0|stock entre 1 y 10|stock > 10|Resultado esperado|Resultado|
|-|-|-|-|-|-|-|
|-1|Si|-|-|-|Error|Error|
|0|No|Si|-|-|Agotado|Agotado|
|1|No|No|Si|Si|Bajo|Bajo|
|5|No|No|Si|Si|Bajo|Bajo|
|10|No|No|Si|Si|Bajo|Bajo|
|11|No|No|Si|Si|Disponible|Disponible|
