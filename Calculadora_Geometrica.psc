Algoritmo sin_titulo
	definir base, altura, radio Como real
	definir opcion1 Como Caracter
	definir opcionFigura Como Caracter
	definir longitud1, ancho1 Como Real
	
	continuar = "si"
	Repetir
		escribir "¿Que desea calcular?"
		escribir "    1-area         "
		escribir "    2-volumen      "
		leer opcion1
		si opcion1 == "1"
			Escribir "okey, en este caso hallaremos el Area de la figura"
		SiNo
			si opcion1 == "2"
				escribir "okey, en este caso hallaremos el volumen de la figura"
			FinSi
		FinSi		
		escribir "con que figura desea hacer la operacion?"
		escribir "----------------FIGURAS-----------------"
		escribir "           1-triangulo                   "
		escribir "           2-esfera                      "
		escribir "           3-rectangulo                  "
		escribir "           4-cilindro                    "
		Escribir "           5-cono                        "
		leer opcionFigura
		segun opcionFigura Hacer
			Caso "1":
				si opcion1 = "1" Entonces
					escribir "Digite la base del triangulo"
					leer base
					escribir "Digite la altura del triangulo"
					leer altura
					area <- (base*altura)/2
					Escribir "el area de la figura es: " area
				sino 
					si opcion1 = "2" Entonces
						escribir "esta es una figura bidimensional, por lo cual no tiene volumen"
					FinSi
				FinSi
			caso "2":
				si opcion1 = "1" Entonces
					escribir "digite el radio de la esfera"
					leer radio
					area<- 4 * PI * radio^2
					escribir "El area de la esfera es de: " area
				SiNo
					si opcion1 = "2" Entonces
						escribir "digite el radio de la esfera"
						leer radio
						volumen<- (4/3) * PI * radio^3
						escribir "el volumen de la esfera es: " volumen
					FinSi
				FinSi
			caso "3":
				si opcion1 = "1" entonces 
					escribir "digite la longitud del rectangulo"
					leer longitud1
					escribir "digite el ancho del rectangulo"
					leer ancho1
					area <- longitud1 * ancho1
					Escribir "el area del rectangulo es de: " area
				sino 
					si opcion1 = "2" Entonces
						escribir "el rectangulo es un figura bidimencional, por lo cual no tiene volumen"
					FinSi
				FinSi
			caso "4":
				si opcion1= "1" Entonces
					escribir "digite el radio del cilindro"
					leer radio
					escribir "digite la altura del cilindro"
					leer altura 
					area <- 2*PI*radio^2 + 2*PI*radio*altura
					escribir "el area del cilindro es: " area
				SiNo
					si opcion1 = "2" entonces 
						escribir "digite el radio del cilindro"
						leer radio
						escribir "digite la altura del cilindro"
						leer altura 
						volumen <- PI*radio^2*altura
						escribir "el volumen del cilindro es de: " volumen
					FinSi
				FinSi
			caso "5":
				si opcion1 = "1" Entonces
					escribir "digite el radio del cono"
					leer radio
					escribir "digite la altura del cono"
					leer altura 
					escribir "para calcular el area total del cono primero debemos saber la generatriz, esta se calcula asi: "
					escribir " generatriz= raiz(radio^2 + altura^2)"
					G<- raiz(radio^2 + altura^2)
					escribir "la generatriz del cono es: " G
					areat<- PI * radio * (radio + G)
					escribir "el area total del cono es de: " areat
				sino 
					si opcion1 = "2" entonces 
						escribir "digite el radio del cono"
						leer radio 
						escribir "digite la altura del cono"
						leer altura 
						volumen <- (1/3) * PI * radio^2 * altura
						escribir "el volumen del cono es: " volumen
					FinSi
				FinSi
		FinSegun
		continuar = "no"
		escribir "¿Desea calcular el area o volumen de otra figura? si/no"
		leer continuar
	Hasta Que continuar = "no"
	escribir "Hasta pronto, gracias por utilizar nuestros servicios"
FinAlgoritmo
