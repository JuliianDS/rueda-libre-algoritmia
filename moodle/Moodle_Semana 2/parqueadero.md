# Ejercicio 1. Parqueadero

## Desarrollo

### Enunciado

un parqueadero cobra $3.000 por hora o fracción. Si el vehículo permanece más de 6 horas, se cobra una tarifa plana de $20.000. Si el cliente presenta una factura de compra del centro comercial, las primeras 2 horas son gratis. Los tiempos negativos o iguales a cero son inválidos

#### Entradas

- Tiempo en horas, puede tener decimales
- Factura, si posee o no

#### Salidas

- Valor a pagar

#### Proposiciones

- tiempoValido (horas > 0)
- tarifaPlane (horas > 6)
- tieneFactura

#### tabla de decisión

| Valido? | Mas de 6h? | Factura? | Resultado |
|---------|------------|----------|-----------|
|No       | -          | -        | Error: tiempo invalido|
|Sí| Sí| -| $20.000|
|Sí|No|Sí| Max(0 horas redondeadas -2) x 3000|
|Sí| No| No| horas dedondeadas x 3000|

#### Pseudocodigo
```
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
```

#### Prueba Escritorio Casos borde

|Horas|Factura|Esperado|Obtenido|
|-|-|-|-|
|0|No|Error|Error
|0.5|No|3000|3000|
|2|Si|0|0|
|2.1|Si|3000|3000|
|6|No|18000|18000|
|6.01|No|20000|20000|