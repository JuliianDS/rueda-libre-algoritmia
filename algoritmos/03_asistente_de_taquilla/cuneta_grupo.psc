Algoritmo cuneta_grupo
	Definir cant_ciclas, horas, personas, p_bici Como Entero
	Definir p_recorrido, v_bicis, v_recorrido, subtotal, aporte, total Como Real
	p_bici <- 10000
	Escribir 'ingresa la cantidad de bicicletas urbanas'
	Leer cant_ciclas
	Escribir 'ingresa las horas de alquiler'
	Leer horas
	Escribir 'ingresa el precio de recorrido'
	Leer p_recorrido
	Escribir 'ingresa la cantidad de persona por recorrido'
	Leer personas
	v_bicis <- cant_ciclas*horas*p_bici
	v_recorrido <- p_recorrido*personas
	subtotal <- v_bicis+v_recorrido
	aporte <- subtotal*0.10
	total <- subtotal+aporte
	v_persona <- (redon((total/personas)/100))*100
	Escribir ' __________FACTURA | Rueda Libre ________'
	Escribir ' valor total de alquiler de bicicletas: ', v_bicis
	Escribir ' valor total del recorrido: ', v_recorrido
	Escribir ' subtotal: ', subtotal
	Escribir ' aporte 10 %: ', aporte
	Escribir ' total a pagar: ', total
	Escribir ' valor por persona (c/u): ', v_persona
FinAlgoritmo
