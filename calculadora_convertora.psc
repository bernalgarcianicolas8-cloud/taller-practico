Algoritmo calculadora_convertora
	//definimos las variables para comenzar
	definir opcion1 Como Entero
	definir kilometros como real
	definir pulgadas como real
	definir libras Como Real
	definir TipoGalon Como Entero
	// le damos valor a la variable que nos va a permitir decirle al usuario si continua 
	continuar = "si"
	// usamos el bucle repetir para que el usuario al final de cada operacion pueda decidir si continuar o no
	Repetir
		// realizamos el menu para que los usuarios puedan escoger solo digitando el nuemro
		escribir "-----------menu----------"
		escribir "1. Kilometros a Milllas  "
		escribir "2. Pulgadas a Centimetros"
		escribir "3. Libras a Kilogramos   "
		escribir "4. Litros a Galones      "
		escribir "digite la opcion que desee ejecutar"
		Leer opcion1
		//usamos condicion segun-caso para realizar cada una de la conversiones segun lo que seleccione el usuario
		segun opcion1 hacer 
			caso 1:
				escribir "Bien, Vamos a convertir kilometros a millas"
				escribir "cuantos kilometros desea convertir a millas?"
				leer kilometros
				millas<- kilometros * 0.62
				escribir "la conversion de " kilometros " kilometros a millas es: " millas
			caso 2:
				escribir "Bien, Vamos a convertir Pulgadas a centimetros"
				escribir "escriba la cantidad con la que quiere realizar la convercion"
				leer pulgadas
				centimetros <- pulgadas * 2.54
				escribir "la conversion de " pulgadas " pulgadas a centimetros es: " centimetros
			caso 3:
				escribir "Bien, Vamos a convertir libras a kilogramos"
				escribir "escriba la cantidad con la que quiere realizar la convercion"
				leer libras
				kilogramos <- libras * 0.453592
				escribir "la conversion de " libras " libras a kilogramos es: " kilogramos
			caso 4:
				escribir "Bien, Vamos a convertir Litros a Galones"
				escribir "escriba la cantidad con la que quiere realizar la convercion"
				leer litros
				escribir "que tipo de galon desea calcular"
				escribir "1.Galon Estadounidense"
				escribir "2.Galon Imperial      "
				leer TipoGalon
				// usamos condicional si-sino para darle una respuesta al usuario del galon que quizo seleccionar
				si TipoGalon = 1 Entonces
					galones <- litros * 0.264172
					escribir "la conversion de " litros " litros a galones es: " galones
				sino 
					galones <- litros * 0.219969
					escribir "la conversion de " litros " litros a galones es: " galones
				FinSi
		FinSegun
		escribir "desea realizar otro tipo de conversion? si/no"
		continuar = "no"
		leer continuar
	Hasta Que continuar = "no"
	escribir "gracias por utilizar nuestros servicios!! hasta pronto"
	
FinAlgoritmo
