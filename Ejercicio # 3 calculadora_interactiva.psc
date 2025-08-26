Algoritmo calculadora_interactiva
	// Requerimientos 
	// 1. Un bucle que pregunte que operacion desea
	// 2. Una operacion dependiendo la Opcion 
	// 2. un resultado
	// Declaracion de variables 
	definir suma, resta, multiplicacion, division Como Real
	definir resultado como real 
	// Le da la bienvenida al usuario/a
	Escribir "Bienvenido a su calculadora virtual"
	segopcion <- "1"
	segopcion <- "2"
	segopcion <- "3"
	segopcion <- "4"
	continuar <- "si"
	// Bucle Do While para imprimir resultados de operacion
	Repetir
		// Se selecciona la operacion a realizar 
		Escribir "Digite la opcion con la cual desea hacer la operacion"
		Escribir "1. Suma "
		Escribir "2. Resta "
		Escribir "3. Multiplicacion "
		Escribir "4. Division "
		// Digita opcion para ejecutar operacion
		Leer segopcion
		Segun segopcion Hacer
			Caso "1":
				si segopcion= "1"Entonces
					// confirma lo elegido por el usuario/a 
					Escribir "Perfecto has eligido suma"
					Escribir "Digita los dos numeros que deseas sumar"
					// pide numeros para hacer operacion 
					Leer num1 
					leer num2
					// Se realiza la operacion "suma"
					suma<- num1+ num2
					// Da resultado a la operacion 
					Escribir "La suma es: ", suma
				SiNo
					// Da error en caso de mala digitacion
					Escribir "¡¡¡ERROR ESTA POR FUERA DEL RANGO!!!"
				FinSi
			Caso "2":
				si segopcion = "2" Entonces
					// confirma lo elegido por el usuario/a 
					Escribir "Perfecto has elejido resta"
					Escribir "Digita los dos numeros que desea restar"
					// pide numeros para hacer operacion 
					Leer num1 
					Leer num2
					// Se realiza la operacion "resta"
					resta <- num1 - num2
					// Da resultado a la operacion 
					Escribir "La resta es: ", resta
				SiNo
					// Da error en caso de mala digitacion
					Escribir "¡¡¡ERROR ESTA POR FUERA DEL RANGO!!!"
				FinSi
				
			Caso "3":
				si segopcion = "3" Entonces
					// confirma lo elegido por el usuario/a 
						Escribir "Perfecto has eligido multiplicacion"
						Escribir "Digita los dos numeros que deseas multiplicar"
						// pide numeros para hacer operacion 
						Leer num1 
						leer num2
						// Se realiza la operacion "multiplicacion"
						multiplicacion<- num1 * num2
						// Da resultado a la operacion 
						Escribir "La multiplicacion es: ", multiplicacion
					SiNo
						// Da error en caso de mala digitacion
						Escribir "¡¡¡ERROR ESTA POR FUERA DEL RANGO!!!"
					FinSi
				Caso "4":
					si segopcion = "4" Entonces
						// confirma lo elegido por el usuario/a 
							Escribir "Perfecto has eligido division"
							Escribir "Digita los dos numeros que deseas dividir"
							// pide numeros para hacer operacion 
							Leer num1 
							leer num2
							// Da error en caso de que el numero sea 0
							si num1 = 0 Entonces
								Escribir "ERROR NO SE PUEDE DIVIDIR ENTRE 0"
								si num2 = 0 Entonces
									Escribir "ERROR NO SE PUEDE DIVIDIR ENTRE 0"
								FinSi
							FinSi
							// Se realiza la operacion "division"
							division<- num1 / num2
							// Da resultado a la operacion 
							Escribir "La division es: ", division
						SiNo
							// Da error en caso de mala digitacion
							Escribir "¡¡¡ERROR ESTA POR FUERA DEL RANGO!!!"
						FinSi
						continuar<- "no"
		FinSegun
		// Pregunta al usuario/a para volver ejecutar el codigo
		Escribir "¿Desea hacer otra operacion?"
		Leer continuar
	Hasta Que continuar = "no" o continuar = "NO" 
	// Da gracias al usuario/a por utilizar los servicios
	Escribir "Gracias por utilizar nuestra calculadora virtual"
FinAlgoritmo
