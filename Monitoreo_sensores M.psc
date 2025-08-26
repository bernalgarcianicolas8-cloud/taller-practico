Algoritmo Monitoreo_sensores
	// comenzamos a definir las variables que vamos a usar
	definir Cantsensores Como Entero
	definir OpcionMenu como caracter
	definir TempCelsius como real
	definir opcion2 Como Caracter
	definir i como entero
	//igualamos a cero algunas variables que se usaran como contadores
	contador = 0
	total = 0
	bajos = 0
	normal = 0
	alto = 0
	continuar = "si"
	//seguimos con el buble repetir pues este nos ayuda a repetir todo el ciclo si el usuario desea Repetir
	repetir 
		escribir "------------Menu------------"
		escribir "    1-monitoreo             "
		escribir "    2-resumen de sensores   "
		escribir "    3-reiniciar lecturas    "
		leer OpcionMenu
		//usamos el condicional segun-caso para realizar el programa de acuerdo alo que el usuairio escoja
		segun OpcionMenu Hacer
			//en el caso 1 nos enfocamos en el monitoreo de las temperaturas 
			caso "1":
				escribir "cuantos sensores desea monitorear"
				leer Cantsensores
				// utilizamos bucle PARA, para hacer que el usuario pueda digitar la cantidad de temperaturas que señalo anteriormente
				Para i = 1 hasta Cantsensores hacer 
					contador<- contador + 1
					escribir "ingrese la temperatura en grados celsius " contador
					escribir "recuerda que la temperatura debe estar entre 0-100°C"
					leer TempCelsius
					mientras TempCelsius < 0 o TempCelsius > 100 Hacer
						escribir "ERROR, la temperatura no es valida"
						Escribir "escribe nuevamente la temperatura en grados celsius"
						leer TempCelsius
					FinMientras
					total = total + TempCelsius
					//usamos condicional si-sino, para señalar si las temperaturas fueron bajas, normales o altas
					si TempCelsius < 20 Entonces
						bajos<- bajos+ 1
					sino 
						si TempCelsius >=20 y TempCelsius <=80 Entonces
							normal <- normal + 1
						SiNo
							alto <- alto + 1
						FinSi
					FinSi
				FinPara
				escribir "el total de las " ConvertirATexto(Cantsensores) " temperaturas es de: " total
				F<-(total * 9/5) + 32
				escribir "el total en grados fahrenheit es de: " F
				escribir "hay " bajos " temperaturas por debajo de la temperatura normal"
				escribir "hay " normal " temperaturas normales"
				Escribir "hay " alto " temperaturas por encima de la temperatura normal"
			caso "2":
				escribir "para mostrate un resumen de la condicion de cada sensor, bajo, normal o alto"
				escribir "cuantos sensores desea registrar para el resumen?"
				leer Cantsensores
				para i = 1 hasta Cantsensores Hacer
					contador<- contador + 1
					escribir "ingrese la temperatura en grados celsius " contador
					escribir "recuerda que la temperatura debe estar entre 0-100°C"
					leer TempCelsius
					si TempCelsius < 20 Entonces
						bajos<- bajos+ 1
					sino 
						si TempCelsius >=20 y TempCelsius <=80 Entonces
							normal <- normal + 1
						SiNo
							alto <- alto + 1
						FinSi
					FinSi
				FinPara
				escribir "--------------RESUMEN-------------"
				escribir "sensores con temperatura baja: " bajos
				escribir "sensores con temperatura normal: " normal
				escribir "sensores con temperatura alta: " alto
			caso "3":
				escribir "esta seguro de reiniciar todas las lecturas? si/no"
				leer opcion2
				si opcion2 = "si" Entonces
					escribir "cargando..."
					escribir "..."
					escribir "..."
					escribir "Reinicio completo"
				sino 
					escribir "okey, entonces..."
				FinSi
		FinSegun
		escribir "desea realizar alguna otra actividad? si/no"
		continuar = "no"
		leer continuar 
	Hasta Que continuar = "no"
	
FinAlgoritmo
