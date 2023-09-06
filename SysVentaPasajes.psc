Algoritmo SisVentaPasajes
	//Variables que simulan la adquisición y guardado de los datos en una BD
	Definir Servicio Como Numerica
	BoleTurista  = 400
	BolePlus     = 800
	BoleFull     = 1200
	Mayores      = 0
	Menores      = 0
	MenoresDeTres= 0
	TotalVendios = 0
	TotalTurista = 0
	TotalPlus    = 0
	TotalFull    = 0
	Ganancias    = 0
	Lugares      = 30
	PassADM      = "ADMINISTRADOR" 
	
	Repetir//MENU principal del programa
		Limpiar Pantalla
		Escribir "+--------------------------------------+"
		Escribir "|Systema de Venta y Gestion de pasajes |"
		Escribir "+--------------------------------------+"
		Escribir "|          MENU PRINCIPAL              |"
		Escribir "+--------------------------------------+"
		Escribir "|  | 1 |     VENTAS - PASAJES          |"
		Escribir "|  | 2 |     ADMINISTRADOR             |"
		Escribir "|  | 0 |     SALIR                     |"
		Escribir "+--------------------------------------+"
		Escribir "-Elija la opcion correspondiente"
		leer Op
		Si Op=1 Entonces //SUB MENU VENTAS
			Repetir
				Si lugares >= 1 Entonces
					Limpiar Pantalla
					Escribir "+--------------------------------------+"
					Escribir "|         VENTAS - PASAJES             |"
					Escribir "+--------------------------------------+"
					Escribir "      Hay un total de ",Lugares," lugares"
					Escribir "+--------------------------------------+"
					Escribir "| ¿Desea comprar un pasaje?            |"
					Escribir "| Precione 1 para SI o 0 para NO       |"
					Escribir "+--------------------------------------+"
					leer Pasaje
					Si pasaje = 1 Entonces
						Escribir "Ingrese su Nombre"
						leer Nombre 
						Nombre = Mayusculas(Nombre)
						Escribir "Ingrese su Apellido"
						leer Apellido 
						Apellido = Mayusculas(Apellido)
						Repetir // valida la entrada de edad en un rango de 0 a 110 años como maximo
							si Edad < 0 o Edad > 110 Entonces
								Escribir "Edad Fuera de rango"
							FinSi
							Escribir "Ingrese su edad"
							leer Edad
						Hasta Que Edad >=0 y Edad <= 110
						si Edad <= 3 Entonces// muestra mensaje si el pasajero es menor a 3 años
							Escribir "______________________________________"
							Escribir "EL PASAJERO NO PAGA ES MENOR DE 3 AÑOS"
							Escribir "           NO OCUPA LUGAR             "
							Escribir "______________________________________"
							Escribir " preciones una tecla para continuar   "
							Servicio=0
							Esperar Tecla
						SiNo// muestra los distintos tipos de servicios
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
						// estructura que muestra el comprobante de la compra del pasaje
						Escribir "+-------------------------------------+"
						Escribir "|     Usted a comprado un pasaje      |"
						Escribir "+-------------------------------------+"
						Escribir "|         Datos del Pasajero          |"
						Escribir "+-------------------------------------+"
						Escribir "| Nombre  : ",Nombre
						Escribir "| Apellido: ",Apellido
						Escribir "| Edad    : ", Edad," años" 
						// estructura que muestra tipo de servicios
						Si Servicio = 1 Entonces
							Escribir "| El servicio elejido: Turista  " 
						FinSi
						Si Servicio = 2 Entonces
							Escribir "| El servicio elejido: Plus"
						FinSi
						Si Servicio = 3 Entonces
							Escribir "| El servicio elejido: Full"
						FinSi
						// fin de la estructura tipos de servicios
						si Edad <=17 Entonces
							Escribir "+-------------------------------------+"
							Escribir "| Es MENOR de edad                    |"
							Escribir "+-------------------------------------+"
							Menores=Menores+1
						SiNo
							Escribir "+-------------------------------------+"
							Escribir "| Es MAYOR de edad                    |"
							Escribir "+-------------------------------------+"
							Mayores=Mayores+1
						FinSi
						Si Edad <= 3 Entonces
							Menores=Menores-1
							MenoresDeTres=MenoresDeTres+1
						FinSi
						Si Servicio = 0 Entonces
							Escribir "| Costo del pasaje	  $ 0"
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
						Escribir "+-------------------------------------+"
						Escribir " Precione una tecla para continuar"
						// fin de la estructura que muestra el comprobante de la compra del pasaje
						Esperar Tecla
					FinSi
					Si Pasaje >= 2 Entonces// En caso de presionar una opción no valida
						Escribir "ERROR!! OPCION NO VALIDA"
						Esperar Tecla
					FinSi
				SiNo// Mensaje que se muestra al agotarse los lugares disponibles
					Escribir " Lo lamento no quedan mas pasjes disponibles"
					Pasaje = 0
					Esperar 2 Segundos
				FinSi
			Hasta Que pasaje = 0
		FinSi
		Si Op=2 Entonces //MENU ADMINISTRADOR
			si passADM = "ADMINISTRADOR" Entonces
				Escribir " +-------------------------------------------------+"
				Escribir " |                !!!ADVERTENCIA!!!                |"
				Escribir " | La contrasema esta por defecto en ADMINISTRADOR |"
				Escribir " | se recomienda cambiarla por una de su elección  |"
				Escribir " +-------------------------------------------------+"
			FinSi
			Escribir "Ingrese la contraseña."
			leer Pass
			Si Pass = PassADM Entonces
				Repetir// SUB MENU ADMINISTRADOR
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
					Si Op = 1 Entonces //Visualización y modificación de los costos de cada servicio 
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
						Si Op2=1 Entonces//modificación de los costos de cada servicio
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
					Si Op = 2 Entonces// lista información detallada de pasajes vendidos y pasajeros
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
						Escribir " Menores de 3 años:        ",MenoresDeTres
						Escribir "____________________________________"
						Si Lugares >=1 Entonces
							Escribir " Lugares libres            ",Lugares
						SiNo
							Escribir " Lugares libres    NO QUEDAN LUGARES"
						FinSi
						Escribir "____________________________________"
						Escribir " Se vendieron un Total de: ",TotalTurista+TotalPlus+TotalFull
						Escribir "____________________________________"
						Escribir " La recaudacion es de:    $",Ganancias
						Escribir "____________________________________"
						Escribir " Precione una Tecla para continuar"
						Esperar Tecla
					Finsi
					Si Op = 3 Entonces// Permite gestionar la contraseña de ADMINISTRADOR 
						Limpiar Pantalla
						Escribir "_____________________________________"
						Escribir "     CAMBIAR CONTRASEÑA"
						Escribir "_____________________________________"
						Escribir " Ingrese la contraseña ACTUAL"
						Leer Pass 
						SI Pass = PassADM Entonces // compara contraseña para sustituir con la nueva 
							Escribir " La contraseña es correcta."
							Escribir " Ingrese la nueva contraseña."
							leer PassADM
							Escribir "Contraseña cambiada exitosamente" 
							Escribir "Precione una tecla para volver al Menu."
							Esperar Tecla
						SiNo// En caso de que no coincida la contraseña 
						Escribir " La contraseña ingresada es incorrecta"
						Esperar 3 Segundos
						FinSi
					FinSi
					Si Op >= 4 Entonces// En caso de presionar una opción no valida
						Escribir "ERROR!! OPCION NO VALIDA"
						Esperar Tecla
					FinSi
				Hasta Que Op = 0 
				Op = 1
			SiNo
				Escribir "La contraseña ingresada es incorrecta"// En caso de que no coincida la contraseña de ingreso
				Escribir "Presione una tecla "
				Esperar Tecla
			FinSi
		FinSi
		Si Op >= 3 Entonces// En caso de presionar una opción no valida
			Escribir "ERROR!! OPCION NO VALIDA"
			Esperar Tecla
		FinSi
	Hasta Que Op = 0
FinAlgoritmo
