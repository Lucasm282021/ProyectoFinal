Algoritmo SisVentaPasajes
	Definir Servicio Como Numerica
	BoleTurista  = 400
	BolePlus     = 800
	BoleFull     = 1200
	Mayores      = 0
	Menores      = 0
	TotalVendios = 0
	TotalTurista = 0
	TotalPlus    = 0
	TotalFull    = 0
	Ganancias    = 0
	Lugares      = 30
	PassADM      = "ADMINISTRADOR" 
	
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
		Si Op=2 Entonces //SUB MENU ADMINISTRADOR
			Escribir "Ingrese la contraseña."
			leer Pass
			Si Pass = PassADM Entonces
				Repetir// menu de administrador
					Limpiar Pantalla
					Escribir "_____________________________________"
					Escribir "          ADMINISTRADOR"
					Escribir "_____________________________________"
					Escribir "   | 1 |   MODIFICAR COSTO DE PASAJES"
					Escribir "   | 2 |   LISTAR PASAJES VENDIDOS"
					Escribir "   | 3 |   CAMBIAR CONTRASEÑA"
					Escribir "   | 0 |   REGRESAR AL MENU"
					Escribir "_____________________________________"
					Escribir "-Elija la opcion correspondiente"
					leer Op
					Si Op = 1 Entonces 
						Limpiar Pantalla
						Escribir "_____________________________________"
						Escribir "     MODIFICAR COSTO DE PASAJES"
						Escribir "_____________________________________"
						Escribir "| Los valores actuales son          |"
						Escribir "+-----------------------------------+"
						Escribir "| CATEGORIA  |     VALOR            |"
						Escribir "+-----------------------------------+"
						Escribir "| Turista    |  $",boleTurista
						Escribir "| Plus       |  $",bolePlus
						Escribir "| Full       |  $",boleFull
						Escribir "+-----------------------------------+"
						Escribir " ¿Desea cambiar estos valores?"
						Escribir " Presiones 1 para SI o ENTER para NO"
						leer Op2
						Si Op2=1 Entonces
							Limpiar Pantalla
							Escribir "_____________________________________"
							Escribir "     MODIFICAR COSTO DE PASAJES"
							Escribir "_____________________________________"
							Escribir " Indique el nuevo valor para la clase Turista"
							leer BoleTurista
							Escribir " Indique el nuevo valor para la clase Plus"
							leer BolePlus
							Escribir " Indique el nuevo valor para la clase Full"
							leer BoleFull
							Escribir "_____________________________________"
							Escribir "| Los nuevos valores actuales son   |"
							Escribir "+-----------------------------------+"
							Escribir "| CATEGORIA  |     VALOR            |"
							Escribir "+-----------------------------------+"
							Escribir "| Turista    |  $",BoleTurista
							Escribir "| Plus       |  $",BolePlus
							Escribir "| Full       |  $",BoleFull
							Escribir "+-----------------------------------+"
							Escribir " Precione una tecla para continuar"
							Esperar Tecla
						FinSi
					FinSi
					Si Op = 2 Entonces
						Limpiar Pantalla
						Escribir "____________________________________"
						Escribir "      LISTAR PASAJES VENDIDOS"
						Escribir "____________________________________"
						Escribir " Se han vendido un total de pasajes "
						Escribir "____________________________________"
						Escribir " De la clase Turista:      ",TotalTurista
						Escribir "____________________________________"
						Escribir " De la clase Plus:         ",TotalPlus
						Escribir "____________________________________"
						Escribir " De la clase Full:         ",TotalFull
						Escribir "____________________________________"
						Escribir " Ocupados X menores:       ",Menores
						Escribir "____________________________________"
						Escribir " Ocupados X mayores        ",Mayores
						Escribir "____________________________________"
						Escribir " Lugares libres            ",Lugares
						Escribir "____________________________________"
						Escribir " Se vendieron un Total de: ",TotalTurista+TotalPlus+TotalFull
						Escribir "____________________________________"
						Escribir " La recaudacion es de:    $",Ganancias
						Escribir "____________________________________"
						// falta poner recaudacion si el micro va lleno y si son menores de 3 años no paga y no ocupa lugar
						Escribir " Precione una Tecla para continuar"
						Esperar Tecla
					Finsi
					Si Op = 3 Entonces
						Limpiar Pantalla
						Escribir "_____________________________________"
						Escribir "     CAMBIAR CONTRASEÑA"
						Escribir "_____________________________________"
						Escribir " Ingrese la contraseña ACTUAL"
						Leer Pass 
						SI Pass = PassADM Entonces
							Escribir " Ingrese la nueva contraseña"
							leer PassADM
							Escribir "Contraseña cambiada exitisamente, Precione una tecla."
							Esperar Tecla
						SiNo
							Escribir " CONTRASEÑA INCORRECTA"
						FinSi
					FinSi
					Si Op >= 4 Entonces
						Escribir "ERROR!! OPCION NO VALIDA"
						Esperar Tecla
					FinSi
				Hasta Que Op = 0 
				Op = 1
			SiNo
				Escribir "La contraseña ingresada es incorrecta"
				Escribir "Presione una tecla "
				Esperar Tecla
			FinSi
		FinSi
		Si Op >= 3 Entonces
			Escribir "ERROR!! OPCION NO VALIDA"
			Esperar Tecla
		FinSi
	Hasta Que Op = 0
FinAlgoritmo
