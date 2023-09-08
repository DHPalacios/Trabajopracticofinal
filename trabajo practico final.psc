	Algoritmo Canchasfutbito
		// Para turnos
		Dimension turnos[35] 
		Dimension dias[7] 
		Dimension horas[5] 
		Definir diaElegido, horaElegida como cadena
		Definir opcionMenu, cantTurno como Entero
		
		// Para catalogo
		Dimension Productos[10]
		Definir cantProductos como Entero
		Definir equipamentoElegido, tamañoElegido como cadena
		Dimension Equipamento[5] 
		Dimension Tamaño[2]
		
		
		Escribir "Bienvenido a la app de Futbito ", "aqui podras reservar turnos para jugar o comprar el mejor equipamento deportivo"
		
		Repetir
			escribir "Que desea hacer?"
			escribir "1. Reservar Cancha"
			escribir "2. Equipamento deportivo"
			escribir "3.Salir"
			Leer menuPrincipal
			
			// reservar turnos
			Si menuPrincipal=1 Entonces
				
				dias[1] <- "Lunes "
				dias[2] <- "Martes "
				dias[3] <- "Miércoles "
				dias[4] <- "Jueves "
				dias[5] <- "Viernes "
				dias[6] <- "Sábado "
				dias[7] <- "Domingo "
				
				horas[1] <- "17:00 AM - 18:00 PM"
				horas[2] <- "18:00 PM - 19:00 PM"
				horas[3] <- "19:00 PM - 20:00 PM"
				horas[4] <- "20:00 PM - 21:00 PM"
				horas[5] <- "21:00 PM - 22:00 PM"
				
				cantTurno<-1 //cant. de turnos tomados
				
				
				Repetir
					Mostrar "Seleccione el día para la reserva:"
					Para i <- 1 Hasta 7
						Mostrar i, ". ", dias[i]
					Fin Para
					Leer diaElegido
					
					Mostrar "Seleccione la hora para el turno:"
					Para i <- 1 Hasta 5
						Mostrar i, ". ", horas[i]
					Fin Para
					Leer horaElegida
					
					turnoElegido<-concatenar(diaElegido,horaElegida) 
					Si cantTurno=1 entonces 		
						turnos[cantTurno]<-turnoElegido	
						Mostrar "Turno reservado exitosamente."
					Sino
						Existe<- Falso //Es verdadero si encontro un turno duplicado
						Para i<-1 Hasta cantTurno Hacer
							Si turnos[i]=turnoelegido Entonces // si ese turno ya esta en el vector
								Existe<-Verdadero
							FinSi
						FinPara
						Si Existe entonces
							Mostrar "El turno seleccionado ya está ocupado. Por favor, elija otro."
						SiNo
							turnos[cantTurno]<-turnoElegido	
							Mostrar "Turno reservado exitosamente."
						FinSi
					FinSi
					cantTurno<-cantTurno+1
					Mostrar "¿Desea reservar otro turno? (1: Sí / 0: No)"
					Leer opcionMenu
				Hasta que opcionMenu = 0	
				Mostrar "Lista de reservas ingresadas:"
				Para i <- 1 Hasta cantTurno-1 // tengo que restar el que sume de mas
					xdias<-subcadena(turnos[i],1,1)
					xhoras<-subcadena(turnos[i],2,2)
					Mostrar dias[xdias]," ",horas[xhoras]//revisar//
				Fin Para		
			FinSi		
			//mantener catalogo
			Si menuPrincipal=2 Entonces
				cantidadProductos <- 1
				
				Equipamento[1] <- "Camisetas Argentina $6000"
				Equipamento[2] <- "Canilleras $1000"
				Equipamento[3] <- "Guantes de arquero $2000"
				Equipamento[4] <- "vendas $500"
				Equipamento[5] <- "Medias deportivas $300"
				
				Tamaño[1] <- "Niño"
				Tamaño[2] <- "Adulto"
				
				
				Repetir
					Mostrar "Seleccione el equipamento deportivo que busca:"
					Para i <- 1 Hasta 5
						Mostrar i, ". ", Equipamento[i]
					Fin Para
					Leer equipamentoElegido
					
					Mostrar "Seleccione el tamaño solicitado:"
					Para i <- 1 Hasta 2
						Mostrar i, ". ", Tamaño[i]
					Fin Para
					Leer tamañoElegido
					
					Productoelegido<-concatenar(equipamentoElegido,tamañoElegido) 
					Si cantProductos=1 entonces 		
						Productos[cantProductos]<-Productoelegido	
						Mostrar "Articulo reservado exitosamente."
					Sino
						Existe<- Falso //Es verdadero si encontro un turno duplicado
						Para i<-1 Hasta cantProductos Hacer
							Si Productos[i]=Productoelegido Entonces // el turno ya esta 
								Existe<-Verdadero
							FinSi
						FinPara
						Si Existe entonces
							Mostrar "El Articulo seleccionado ya fue seleccionado. Por favor, elija otro."
						SiNo
							Productos[cantProductos]<-Productoelegido	
							Mostrar "Articulo reservado exitosamente."
						FinSi
					FinSi
					cantProductos<-cantProductos+1
					Mostrar "¿Desea reservar otro Producto? (1: Sí / 0: No)"
					Leer opcionMenu
				Hasta que opcionMenu = 0	
				Mostrar "Lista de reservas ingresadas:"
				Para i <- 1 Hasta cantProductos-1 // tengo que restar el que sume de mas
					xEquipamento<-subcadena(Productos[i],1,1)
					xTamaño<-subcadena(Productos[i],2,2)
					Mostrar Equipamento[xEquipamento]," ",Tamaño[xTamaño]//revisar//
				Fin Para		
			FinSi		
				
		Hasta Que menuPrincipal=3
		
		Escribir "Gracias por utilizar nuestra App"
		
		
		
FinAlgoritmo