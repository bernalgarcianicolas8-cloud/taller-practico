Algoritmo Compra_tienda
	Definir harina, azucar, cafe, arroz, produ Como Caracter
	Definir cant Como real
	Definir cant_harina, cant_cafe, cant_azucar, cant_arroz Como real
	Definir preciounit, preciototal Como Real
	definir MetodoPago como entero
	cant_harina = 4
	cant_cafe = 4
	cant_azucar = 4
	cant_arroz = 4
	acomulador = " "
	totalcompra = 0
	
	continuar <- "si"
	Repetir
		Escribir "Bienvenido/a al carrito de compra "
		Escribir "Acontinuacion tenemos un stock en los siguientes productos"
		Escribir "1. harina hay: ", cant_harina
		Escribir "2. azucar hay: ", cant_azucar
		Escribir "3. cafe hay: ", cant_cafe
		Escribir "4. arroz hay: ", cant_arroz
		Escribir "digite la opcion del producto: "
		Leer opcion1
		segun opcion1 hacer 
			Caso "1": 
				si cant_harina <= 0 Entonces
					Escribir "Ya no hay stock en el inventario"
				SiNo
					Escribir "perfecto eligio harina"
					escribir "digite el precio del producto"
					leer preciounit
					Escribir "digite cuantos desea llevar"
					Leer cant
					total <- preciounit * cant
					cant_harina<- cant_harina - cant
					Escribir "Ahora hay en el stock"
					Escribir cant_harina
					escribir "total del producto: " total
				FinSi
			Caso "2": 
				si cant_azucar <= 0 Entonces
					Escribir "Ya no hay stock en el inventario"
				SiNo
					Escribir "perfecto eligio azucar"
					escribir "digite el precio del prodcuto"
					leer preciounit
					Escribir "digite cuantos desea llevar"
					Leer cant
					total <- preciounit * cant
					cant_azucar<- cant_azucar - cant
					Escribir "perfecto ahora hay en el stock"
					Escribir cant_azucar
					escribir "total del producto: " total
				FinSi
				
			Caso "3": 
				si cant_cafe <= 0 Entonces
					Escribir "Ya no hay stock en el inventario"
				SiNo
					Escribir "perfecto eligio cafe"
					escribir "digite el precio del producto"
					leer preciounit
					Escribir "digite cuantos desea llevar"
					Leer cant
					total <- preciounit * cant
					cant_cafe<- cant_cafe - cant
					Escribir "perfecto ahora hay en el stock"
					Escribir cant_cafe
					escribir "total del producto: " total
				FinSi
				
			Caso "4":
				si cant_arroz <= 0 Entonces
					Escribir "Ya no hay stock en el inventario"
				SiNo
					Escribir "perfecto eligio arroz"
					escribir "digite el precio del producto"
					leer preciounit
					Escribir "digite cuantos desea llevar"
					Leer cant
					total <- preciounit  * cant
					cant_arroz<- cant_arroz - cant
					Escribir "perfecto ahora hay en el stock"
					Escribir cant_arroz 
					escribir "total del producto: " total
				FinSi
				continuar <- "no"
		FinSegun
		totalcompra <- totalcompra + total
		iva <- totalcompra * 0.19
		montofinal <- totalcompra + iva
		Escribir "desea comprar algun otro producto"
		Leer continuar
	Hasta Que continuar = "no" o continuar= "NO"
	escribir "Deseas pagar con?:"
	escribir "1. efectivo "
	escribir "2. Tarjeta "
	escribir "3. transferencia"
	leer MetodoPago
	segun MetodoPago hacer 
		caso 1: 
			escribir "bien pagas con efectivo"
			escribir "se te aplicara un 10% de descuento en su compra"
			descuento <- montofinal * 0.10
			Escribir "descuento aplicado: " descuento
		caso 2: 
			escribir "bien pagas con tarjeta"
			escribir "se te aplicara un 5% de descuento en su compra"
			descuento <- montofinal * 0.05
			Escribir "descuento aplicado: " descuento
		caso 3: 
			escribir "bien pagas en transferencia"
			escribir "cargando......."
			Escribir "..............."
			escribir "...."
			descuento <- montofinal * 0.00
			escribir "transferencia recibida"
	FinSegun
	montodescuento <- montofinal - descuento
	Escribir "---------------FACTURA DE COMPRA ------------------"
	escribir "el total de su compra fue de: " montofinal 
	escribir "descuento: " descuento
	escribir "total de la compra con descuentos aplicados: " montodescuento
	Escribir "Gracias por hacer sus compras en walmart"
FinAlgoritmo
