Algoritmo asistente_de_compras
	Definir opcion, totalCompras, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir cantidad Como Entero
	Definir precioUnitario, totalCompra Como Real
	Definir proveedor, producto, fecha, metodoPago, estado Como Cadena
	Dimension id[100]
	Dimension proveedor[100]
	Dimension producto[100]
	Dimension cantidad[100]
	Dimension precioUnitario[100]
	Dimension totalCompra[100]
	Dimension fecha[100]
	Dimension metodoPago[100]
	Dimension estado[100]
	totalCompras <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_asistente_de_compras|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal asistente de compras"
		Escribir "1) registrar compra"
		Escribir "2) editar compra"
		Escribir "3) eliminar compra"
		Escribir "4) buscar compra"
		Escribir "5) listar compras"
		Escribir "6) ver detalles de la compra"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_compra|--//
			//----------------------//
			1:
				Escribir "registrar compra"
				id[totalCompras + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre del proveedor:"
				Leer proveedor[totalCompras + 1]
				Escribir "ingrese el nombre del producto:"
				Leer producto[totalCompras + 1]
				Escribir "ingrese la cantidad:"
				Leer cantidad[totalCompras + 1]
				Escribir "ingrese el precio unitario:"
				Leer precioUnitario[totalCompras + 1]
				totalCompra[totalCompras + 1] <- cantidad[totalCompras + 1] * precioUnitario[totalCompras + 1]
				Escribir "ingrese la fecha de compra:"
				Leer fecha[totalCompras + 1]
				Escribir "ingrese el estado (pendiente/recibida/cancelada):"
				Leer estado[totalCompras + 1]
				totalCompras <- totalCompras + 1
				Escribir "compra registrada correctamente."
			//-------------------//
			//--|editar_compra|--//
			//-------------------//
			2:
				Escribir "editar compra"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalCompras Hacer
						Escribir id[i]," | ",proveedor[i]," | ",producto[i]," | ",cantidad[i]," | ",precioUnitario[i]," | ",totalCompra[i]," | ",fecha[i]," | ",estado[i]
					FinPara
					Escribir "ingrese el id de la compra:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCompras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nuevo proveedor:"
							Leer proveedor[i]
							Escribir "nuevo producto:"
							Leer producto[i]
							Escribir "nueva cantidad:"
							Leer cantidad[i]
							Escribir "nuevo precio:"
							Leer precioUnitario[i]
							totalCompra[i] <- cantidad[i] * precioUnitario[i]
							Escribir "nueva fecha:"
							Leer fecha[i]
							Escribir "nuevo estado:"
							Leer estado[i]
							Escribir "compra editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una compra con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_compra|--//
			//---------------------//
			3:
				Escribir "eliminar compra"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalCompras Hacer
						Escribir id[i]," | ",proveedor[i]," | ",producto[i]," | ",cantidad[i]," | ",precioUnitario[i]," | ",totalCompra[i]," | ",fecha[i]," | ",estado[i]
					FinPara
					Escribir "ingrese el id:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCompras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalCompras Entonces
								Para j <- i Hasta totalCompras-1 Hacer
									id[j] <- id[j+1]
									proveedor[j] <- proveedor[j+1]
									producto[j] <- producto[j+1]
									cantidad[j] <- cantidad[j+1]
									precioUnitario[j] <- precioUnitario[j+1]
									totalCompra[j] <- totalCompra[j+1]
									fecha[j] <- fecha[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalCompras <- totalCompras - 1
							Escribir "compra eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una compra con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_compra|--//
			//-------------------//
			4:
				Escribir "buscar compra"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					Escribir "ingrese el id:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCompras Hacer
						Si id[i]=idBuscar Entonces
							encontrado <- Verdadero
							Escribir id[i]," | ",proveedor[i]," | ",producto[i]," | ",cantidad[i]," | ",precioUnitario[i]," | ",totalCompra[i]," | ",fecha[i]," | ",estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una compra con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_compras|--//
			//--------------------//
			5:
				Escribir "listar compras"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					Para i <- 1 Hasta totalCompras Hacer
						Escribir id[i]," | ",proveedor[i]," | ",producto[i]," | ",cantidad[i]," | ",precioUnitario[i]," | ",totalCompra[i]," | ",fecha[i]," | ",estado[i]
					FinPara
				FinSi
			//-------------------------//
			//--|ver_detalles_compra|--//
			//-------------------------//
			6:
				Escribir "ver detalles"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					Escribir "ingrese el id:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCompras Hacer
						Si id[i]=idBuscar Entonces
							encontrado <- Verdadero
							Escribir "id: ",id[i]
							Escribir "proveedor: ",proveedor[i]
							Escribir "producto: ",producto[i]
							Escribir "cantidad: ",cantidad[i]
							Escribir "precio unitario: ",precioUnitario[i]
							Escribir "total compra: ",totalCompra[i]
							Escribir "fecha: ",fecha[i]
							Escribir "estado: ",estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una compra con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalCompras = 0 Entonces
					Escribir "no hay compras registradas."
				SiNo
					totalPendientes <- 0
					totalRecibidas <- 0
					totalCanceladas <- 0
					totalGeneral <- 0
					Para i <- 1 Hasta totalCompras Hacer
						totalGeneral <- totalGeneral + totalCompra[i]
						Si estado[i]="pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
						Si estado[i]="recibida" Entonces
							totalRecibidas <- totalRecibidas + 1
						FinSi
						Si estado[i]="cancelada" Entonces
							totalCanceladas <- totalCanceladas + 1
						FinSi
					FinPara
					Escribir "estadisticas generales"
					Escribir "total de compras: ",totalCompras
					Escribir "compras pendientes: ",totalPendientes
					Escribir "compras recibidas: ",totalRecibidas
					Escribir "compras canceladas: ",totalCanceladas
					Escribir "valor total comprado: ",totalGeneral
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistente de compras."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo