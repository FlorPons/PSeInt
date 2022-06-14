//Subproceso logo imprime nuestro logo cuando sea necesario
//NO SE DEBE MODIFICAR NI UN ESPACIO POR QUE SE DEFORMA.
SubProceso logo()
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Escribir "		 ____   _____   _____   __  _   _____   _           ";
	Escribir "		|  __| |  _  | |  _  | |  \| | |  _  | | |          ";
	Escribir "		| |    | |_| | | |_|_| | |\\ | | |_| | | |         ";
	Escribir "		| |__  |  _  | |  _ \  | | \ | |  _  | | |___      ";
	Escribir "		|____| |_| |_| |_| |_| |_| |_| |_| |_| |_____|         by TEAM NOCHE";
	Escribir "";
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Esperar 1 segundo;
FinSubProceso

// SubProceso de menu comidas
SubProceso menuComidas(totalPlatos Por Referencia,acumulac Por Referencia)
	
	// Definimos la variable 
	Definir opcion Como Entero;
	Definir cantidad Como Entero;
	Definir Quesadillas Como Entero;
	Definir Tacos Como Entero;
	Definir Fajitas Como Entero;
	Definir Burritos Como Entero;
	Definir Botana Como Entero;
	Definir Nachos Como Entero;
	Definir Tamales Como Entero;
	
	// inicialisamos las variables con los precios de cada plato
	Quesadillas <- 950;
	Tacos <- 1500;
	Fajitas <- 1200;
	Burritos <- 1500;
	Botana <- 2000;
	Nachos <- 500;
	Tamales <- 1000;
	
	//mostramos el logo
	logo();
	Escribir "";
	
	// inicia un ciclo repetir-Hasta Que con una estructura de seleccion anidada
	Repetir
		// iniciamos la variable cantidad aqui por que nesecitamos que se ponga en cero cada vez que elejimos un plato
		cantidad <- 0;
		// mostramos el menu
		Escribir '';
		Escribir '';
		Escribir ' 1.- Quesadillas Rellenas de queso mozzarella, albahaca, olivas negras y tomate ................................$950';
		Escribir ' 2.- Tres tacos de res en tortilla de maíz crujiente con crema ácida, tomate, salsa mexicana y queso cheddar ...$1500';
		Escribir ' 3.- Fajitas de Carne para 2 personas ..........................................................................$1200';
		Escribir ' 4.- Burrito relleno de res con queso mozzarella, frijoles, lechuga, tomate, guacamole y crema ácida ...........$1500';
		Escribir ' 5.- Botanas - Variedad de tacos, flautitas rellenas de pollo, burritos y quesadillas ..........................$2000';
		Escribir ' 6.- Nachos bañados en queso cheddar ...........................................................................$500';
		Escribir ' 7.- Tamales relleno de res con puerros, cebollas y tomates ....................................................$1000';
		Escribir "";
		Escribir ' 8.- Salir del menu de comidas.';
		Leer opcion;
		Escribir '';
		
		//iniciamos el ciclo segun para seleccionar los platos.
		//en este ciclo usamos la variable acumulac que tiene valor 0 y le asignamos el valor de plato * cantidad.
		//tambien usamos totalPlatos con valor 0 y le sumamos totalPlatos + cantidad.
		//de esa forma logramos conseguir el calculo de subtotal y cantidad de platos ordenados.
		Segun opcion  Hacer
			1:
				Escribir 'Has escogido: Quesadillas Rellenas de queso mozzarella, albahaca, olivas negras y tomate';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Quesadillas*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			2:
				Escribir 'Has escogido: Tres tacos de res en tortilla de maíz crujiente con crema ácida, tomate, salsa mexicana y queso cheddar';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Tacos*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			3:
				Escribir 'Has escogido: Fajitas de Carne para 2 personas';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Fajitas*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			4:
				Escribir 'Has escogido: Burrito relleno de res con queso mozzarella, frijoles, lechuga, tomate, guacamole y crema ácida';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Burritos*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			5:
				Escribir 'Has escogido: Botanas - Variedad de tacos, flautitas rellenas de pollo, burritos y quesadillas';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Botana*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			6:
				Escribir 'Has escogido: Nachos bañados en queso cheddar';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Nachos*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			7:
				Escribir 'Has escogido: Tamales relleno de res con puerros, cebollas y tomates';
				Escribir 'Ingrese la cantidad';
				Leer cantidad;
				acumulac <- acumulac+Tamales*cantidad;
				totalPlatos <- totalPlatos+cantidad;
			8:
			De Otro Modo:
				Escribir 'Opcion no valida, ingrese otro numero o marque 8 para salir.';
		FinSegun
		Escribir '';
		Escribir 'Cantidad de platos: ',totalPlatos;
		Escribir 'El subtotal es: ',acumulac;
	Hasta Que opcion=8
	
	//Esperamos 2 segundos para limpiar la pantalla antes de salir del menu
	Esperar 2 Segundos;
	Limpiar Pantalla;
FinSubProceso

//Este subproceso es la parte de bebidas de nuestro menu.
SubProceso menuBebidas(totalBebidas Por Referencia,acumulaB Por Referencia)
	
	//definimos variables
	Definir opcion Como Entero;
	Definir Margarita Como Entero;
	Definir Chelada Como Entero;
	Definir Cerveza Como Entero;
	Definir Agua Como Entero;
	Definir Gaseosa Como Entero;
	Definir cantidadBebidas Como Entero;
	Definir sumar Como Entero;
	
	//inicializamos las variables que contienen el precio de las bebidas.
	Margarita <- 700;
	Chelada <- 500;
	Cerveza <- 500;
	Agua <- 300;
	Gaseosa <- 300;
	cantidadBebidas <- 0;
	
	//mostramos el logo
	logo();
	Escribir '';
	Escribir ' Nuestras bebidas son: ';
	
	//iniciamos un ciclo repetir-Hasta Que con un ciclo segun anidado.
	Repetir
		
		// iniciamos la variable cantidad aqui por que nesecitamos que se ponga en cero cada vez que elejimos una bebida
		cantidadBebidas <- 0;
		
		//mostramos el menu de las bebidas.
		Escribir '';
		Escribir '';
		Escribir ' 1.- Margarita ...................$700';
		Escribir ' 2.- Chelada .....................$500';
		Escribir ' 3.- Cerveza Corona  .............$500';
		Escribir ' 4.- Agua ........................$300';
		Escribir ' 5.- Gasoesas ....................$300';
		Escribir "";
		Escribir ' 6.- Salir del menu de bebidas';
		Leer opcion;
		
		//iniciamos el ciclo segun para seleccionar las bebidas.
		//en este ciclo usamos la variable acumulaB que tiene valor 0 y le asignamos el valor de bebida * cantidad.
		//tambien usamos totalBebidas con valor 0 y le sumamos totalBebidas + cantidad.
		//de esa forma logramos conseguir el calculo de subtotal y cantidad de bebidas ordenadas.
		Segun opcion  Hacer
			1:
				Escribir 'Has escogido: Margarita';
				Escribir 'Ingrese la cantidad';
				Leer cantidadBebidas;
				acumulaB <- acumulaB+Margarita*cantidadBebidas;
				totalBebidas <- totalBebidas+cantidadBebidas;
			2:
				Escribir 'Has escogido: Chelada';
				Escribir 'Ingrese la cantidad';
				Leer cantidadBebidas;
				acumulaB <- acumulaB+Chelada*cantidadBebidas;
				totalBebidas <- totalBebidas+cantidadBebidas;
			3:
				Escribir 'Has escogido: Cerveza Corona';
				Escribir 'Ingrese la cantidad';
				Leer cantidadBebidas;
				acumulaB <- acumulaB+Cerveza*cantidadBebidas;
				totalBebidas <- totalBebidas+cantidadBebidas;
			4:
				Escribir 'Has escogido: Agua';
				Escribir 'Ingrese la cantidad';
				Leer cantidadBebidas;
				acumulaB <- acumulaB+Agua*cantidadBebidas;
				totalBebidas <- totalBebidas+cantidadBebidas;
			5:
				Escribir 'Has escogido: Gaseosa';
				Escribir 'Ingrese la cantidad';
				Leer cantidadBebidas;
				acumulaB <- acumulaB+Gaseosa*cantidadBebidas;
				totalBebidas <- totalBebidas+cantidadBebidas;
			6:
			De Otro Modo:
				Escribir 'Opcion no valida, ingrese otro numero o marque 6 para salir.';
		FinSegun
		Escribir '';
		Escribir 'Cantidad de bebidas: ',totalBebidas;
		Escribir 'El Subtotal es: ',acumulaB;
	Hasta Que opcion=6
	
	//Esperamos 2 segundos para limpiar la pantalla antes de salir del menu
	Esperar 2 Segundos;
	Limpiar Pantalla;
FinSubProceso

Funcion config()
	
	Escribir "Seccion solo para empleados";
	Escribir "";
	Escribir "Inserte la contraseña:";  //Contraseña=1234
	Leer contras;
	
	Si Contras=1234 Entonces
		Borrar Pantalla;
		Escribir "Accediendo al menu de configuracion";
		Escribir "Cargando ||######          ||";
		Esperar  500 Milisegundos;
		Borrar Pantalla;
		Escribir "Accediendo al menu de configuracion";
		Escribir "Cargando ||###########     ||";
		Esperar 500 Milisegundos;
		Borrar Pantalla;
		Escribir "Accediendo al menu de configuracion";
		Escribir "Cargando ||################||";
		Esperar 500 Milisegundos;
		Borrar Pantalla;
	SiNo
		Escribir "Contraseña incorrecta";
		Esperar 1 Segundos;
		Borrar Pantalla;
	FinSi
	
FinFuncion
	
//Proceso principal
Proceso Menu_Restaurante
	
	// Declaramos las variables
	Definir nom Como Caracter;
	Definir opcionMenu Como Entero;
	Definir acumulac Como Entero;
	Definir acumulaB Como Entero;
	Definir totalBebidas Como Entero;
	Definir totalPlatos Como Entero;
	Definir sumar Como Entero;
	Definir contras Como Entero;
	//inicializamos las variable en cero
	sumar <- 0;
	totalPlatos<-0;
	acumulac<-0;
	totalBebidas<-0;
	acumulaB<-0;
	contras<-1234;
	//logotipo del menu
	Esperar 3 segundo;
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Escribir"---------------------------------------------------------------------------------------------------------------------------";
	Escribir"	Bienvenidos a ";
	Esperar 1 segundo;
	
	//mostramos nuestro logo
	logo();
	
	Esperar 1 segundo;
	Escribir "						      Restaurante de comida mexicana.";
	Escribir "";
	Escribir "";
	Escribir "";
	Escribir "";
	Esperar 1 segundo;
	
	// Pedimos el nombre del cliente
	Escribir 'Ingrese nombre del cliente';
	Leer nom;
	
	//convertimos nom en mayuscula para que resalte.
	nom<-Mayusculas(nom);
	Escribir '';
	Esperar 1 segundo;
	Limpiar Pantalla;
	
	//iniciamos un ciclo repetir-Hasta Que con un ciclo segun anidado para la selecion de menu.
	Escribir "";			
	Repetir
		logo();
		Escribir "Bienvenido ",nom;
		Escribir '';
		Escribir 'Elija una opcion';
		Escribir '1.-Menu de comidas';
		Escribir '2.-Menu de bebidas';
		Escribir '3.-Finalizar pedido';
		Escribir "4.-Configuracion";
		Leer opcionMenu;
		Limpiar Pantalla;
		Segun opcionMenu  Hacer
			1:
				//llamamos a los subprocesos y les pasamos los argumentos inicializados en 0.
				//y recibimos la suma de totalPlatos y acumulac para poder hacer la suma total.
				menuComidas(totalPlatos,acumulac);
				
			2:
				//llamamos a los subprocesos y les pasamos los argumentos inicializados en 0.
				//y recibimos la suma de totalBebida y acumulaB para poder hacer la suma total.
				menuBebidas(totalBebidas,acumulaB);
				
			3:
				
			4:
				config();
				
				De Otro Modo:
				Escribir 'Opcion invalida';
		FinSegun
		
	Hasta Que opcionMenu=3
	
	//asignamos a sumar el valor de acumulaB+acumulac para saber el total.
	sumar<-acumulaB+acumulac;
	
	Escribir "";
	
	//mostramos el logo.
	logo();
	
	//mostramos el total
	Escribir "";
	Escribir 'Su cuenta es de : ',sumar;
	Escribir "";
	Escribir 'La cantidad de platos que ordeno son : ',totalPlatos;
	Escribir "";
	Escribir 'La cantidad de bebidas que ordeno son : ',totalBebidas;
	Escribir "";
	//Mostramos los nombres de los integrantes de TEAM NOCHE.
	Escribir 'Muchas gracias, usted fue atendido por TEAM NOCHE";
	Escribir "Alvarenga, Analia";
	Escribir "Contreras, Yamila";
	Escribir "Gonzales, Maria del Carmen";
	Escribir "Marchetti, Bruno";
	Escribir "Marino, Alfredo";
	Escribir "Paves, Paula";
	Escribir "Pons, Florencia";
	Escribir "Soria, Ezequiel";	
	Escribir "Soriano, Marlene";
	Escribir "Suarez, Carlos Hernan";
	Escribir "Videla, Franco J.";
FinProceso