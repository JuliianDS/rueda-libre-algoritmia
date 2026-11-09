# Minireto 1: Algoritmo de alquiler (Rueda Libre)

## Paso a paso para alquiler de una bicicleta:

1. **Inicio del proceso:** el empleado de recepcion saluda al cliente y pregunta por el tipo de bicicleta que desea alquilar (Urbana, Montaña o Eléctrica).
2. **validacion de disponibilidad:** el empleado consulta en el sistema el inventario actual de bicicletas.
   - *¿Hay disponibilidad de bicicletas?*
     - **Si la respuesta es NO:** El empleado le infroma de manera amable al cliente que no tiene disponibles en este momento, le sugiere que si desea mirar en otro horario y el proceso **termina**
     - **Si la respuesta es SI:** Se continua con el paso 3.
3. **Registro y seleccion:** El empleado le pide amablemente la cedula al cliente, le pregunta le pregunta el tiempo de alquiler (1 hora, medio dia o dia completo). el empleado registra en el sistemas su cedula, el tipo de bicicleta y las horas de alquiler.
4. **Pago:** El empleado le indica el valor total a pagar segun las tarifas vigentes. el cliente cancela el valor en efectivo o bancario, el empleado valida el pago y entrega la factura o recibo.
5. **Entrega de accesorios y equipo:** El empleado asigna el respectivo casco y candada de seguridad al cliente, se revisa que le casco sea de la medida del cliente.
6. **Inpeccion de la bicicleta:** El empleado y en precencia del cliente, se realiza la inspeccion de la bicicleta (frenos, amortiguacion, llantas y marco) para confirmar que se entrega en optimas condiciones.
7. **Salida:** El cliente  firma el recibo, toma la bicicleta, casco y candado, sale del establecimiento.
8. **Fin del proceso**

## Cumplimiento de caracteristicas:

* **Precision:** En cada instruccion se deja claro quien esta realizando el proceso, de que manera y  de manera secuencial
* **Finitud:**  El algoritmo tiene un inicio del proceso claro, (paso 1) y un final, en el (paso 2 sino hay bicicletas, o en el paso 8 cuando sale del establecimineto). no hay bucles.
* **Orden:** Los pasos siguen una secuencia logica (no se puede cobrar sin verificar disponibilidad y entregrar la bicicleta sin antes registrar los datos)
* **Determinismo:** Ante los datos de entrada (una cedula válida presentada por el cliente, la seleccion del tiempo de alquiler: 1 hora, medio dia o dia completo).
* **Efectividad:** Las operaciones son elementales y realizables con los recursos fisicos y humanos con los que cuneta el local de rueda libre.

## Pilares de pensamiento:

- **Descomposicion:** El proceso general de recepcion de dividio en suboperaciones: recepecion, verificacion de stock, identificacion, seleccion, cobro, entrega de accesorios, inspecion de bicicleta y salida.
- **Patrones repetitivos:** Cada cliente repite exactamente el mismo ciclo secuencial de atencion, cobro y entrega.
- **Abstraccion:** Se dejan los detalles operativos irrelevantes para la logica general del flujo, (marca del datafono, conversacion casual, vestuario del cliente, tipo de banco si el pago es bancario).
- **Algoritmo final:** Es la secunecia ordenana de 8 pasos que estandarisa el servicio para todo tipo de cliente en recepcion.


# MiniReto 2: La primera cotizacion en PSeint

## Tabla:
| Entrada                | Proceso                   |Salida                 |
|________________________|___________________________|_______________________|
| Nombre del cliente:    | Constante para precio:    | Mensaje en pantalla:  |
| - nombre               |  precio_h <- 10000        |                       |
| - caracteres           |                           |                       |
|________________________|___________________________| El nombre y el valor  |
| Horas de Alquiler:     | Calcular el valor total:  | total calculado.      |
| - horas                |                           |                       |
| - entero               | total <- horas*precio_h   |                       |
|________________________|___________________________|_______________________|

## Casos de prueba:

* **1 hora:** $10000
* **3 horas:** $30000
* **8 horas:** $80000
* **0 horas:** $0
* **-3 horas:** $-30000
