Algoritmo SisVentaPasajes
	Definir Servicio Como Numerica
	BoleTurista  = 400
	BolePlus     = 800
	BoleFull     = 1200
	Lugares      = 30
	Mayores      = 0
	Menores      = 0
	Repetir//MENU principal del programa
		Limpiar Pantalla
		Escribir"_____________________________________"
		Escribir"Systema de Venta y Gestion de pasajes"
		Escribir"_____________________________________"
		Escribir "          MENU PRINCIPAL"
		Escribir "_____________________________________"
		Escribir "   | 1 |     VENTAS"
		Escribir "   | 2 |     ADMINISTRADOR"
		Escribir "   | 0 |     SALIR"
		Escribir "_____________________________________"
		Escribir "-Elija la opcion correspondiente"
		leer Op
		Si Op=1 Entonces //SUB MENU VENTAS
			Repetir
				Si lugares >= 1 Entonces
					Limpiar Pantalla
					Escribir "_____________________________________"
					Escribir "              VENTAS"
					Escribir "_____________________________________"
					Escribir " Hay un total de ",Lugares," lugares"
					Escribir "_____________________________________"
					Escribir " ¿Desea comprar un pasaje?"
					Escribir " Precione 1 para SI o 0 para NO"
					leer Pasaje
					Si pasaje = 1 Entonces
						Escribir "Ingrese su Nombre"
						leer Nombre 
						Escribir "Ingrese su Apellido"
						leer Apellido 
						Escribir "Ingrese su edad"
						leer Edad
						si Edad <= 3 Entonces
							Escribir "______________________________________"
							Escribir "EL PASAJERO NO PAGA ES MENOR DE 3 AÑOS"
							Escribir "           NO OCUPA LUGAR             "
							Escribir "______________________________________"
							Escribir " preciones una tecla para continuar   "
							//Lugares=Lugares+1
							Servicio=0
							Esperar Tecla
						SiNo
							Escribir "_____________________________________"
							Escribir "    Seleccione tipo de Servicio"
							Escribir "_____________________________________"
							Escribir "   | 1 |     Turista  $",BoleTurista
							Escribir "   | 2 |     Plus     $",BolePlus
							Escribir "   | 3 |     Full     $",BoleFull
							Escribir "_____________________________________"
							Leer Servicio
						FinSI
						Limpiar Pantalla
						Escribir "+------------------------------------+"
						Escribir " Usted a comprado un pasaje Plus"
						Escribir "+------------------------------------+"
						Escribir "| Pasaje a nombre de: ",Nombre," ",Apellido
						Escribir "| Edad del pasajero:  ", Edad 
						si Edad <=17 Entonces
							Escribir "| Es menor de edad"
							Menores=Menores+1
						SiNo
							Escribir "| Es mayor de edad"
							Mayores=mayores+1
						FinSi
						Si Servicio = 0 Entonces
							Escribir "| Costo del pasaje	  $ 0"
							//TotalTurista=TotalTurista+1
							//Lugares=Lugares + 1
						FinSi
						Si Servicio = 1 Entonces
							Escribir "| Costo del pasaje	  $ ", BoleTurista 
							TotalTurista=TotalTurista+1
							Lugares=Lugares-1
							Ganancias = Ganancias + BoleTurista 
						FinSi
						Si Servicio = 2 Entonces
							Escribir "| Costo del pasaje	  $ ", BolePlus 
							TotalPlus=TotalPlus+1
							Lugares=Lugares-1
							Ganancias = Ganancias + BolePlus
						FinSi
						Si Servicio = 3 Entonces
							Escribir "| Costo del pasaje	  $ ", BoleFull
							TotalFull=TotalFull+1
							Lugares=Lugares-1
							Ganancias = Ganancias + BoleFull
						FinSi
						Escribir "+------------------------------------+"
						
						Escribir " Precione una tecla para continuar"
						Esperar Tecla
					FinSi
					Si Pasaje >= 2 Entonces
						Escribir "ERROR!! OPCION NO VALIDA"
						Esperar Tecla
					FinSi
				SiNo
					Escribir " Lo lamento no quedan mas pasjes disponibles"
					Pasaje = 0
					Esperar 2 Segundos
				FinSi
			Hasta Que pasaje = 0
		FinSi
	Hasta Que Op = 0
FinAlgoritmo
