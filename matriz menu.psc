Proceso sin_titulo
	
	Definir menu,comida,bebidas Como Caracter;
	definir precios Como Real;
	definir i,j,num,numC como enteros;	
	dimension menu(100,100), precios(100,100);
	
	menu(0,0)<-"Quesadilla ";
	menu(0,1)<-"Tacos ";
	menu(0,2)<-"Fajitas ";
	menu(0,3)<-"Burritos ";
	menu(0,4)<-"Botanas ";
	menu(0,5)<-"Nachos ";
	menu(1,0)<-"Margarita ";
	menu(1,1)<-"Cheladas ";
	menu(1,2)<-"Cerveza Corona ";
	menu(1,3)<-"Tequila ";
	menu(1,4)<-"Gaseosa ";
	menu(1,5)<-"Agua ";
	i<-0;
	j<-0;
	num<-0;
	comida<-" ";
	numC<-0;
	repetir 
	Escribir "Elija un menu: ";
	Leer num;
	

	segun num Hacer
		1:
			para i<-0 hasta 5 con paso 1 Hacer
				escribir menu(0,i);
			FinPara
			Escribir "Elija una opcion";
			Leer numC;
			comida <- concatenar (menu(0,numC),comida);
			
		2:
			para i<-0 hasta 5 con paso 1 Hacer
				escribir menu(1,i);
			FinPara
		3:
			
		De Otro Modo:
			escribir "opcion invalida";
	FinSegun
	escribir comida;
Hasta Que num = 3;

FinProceso