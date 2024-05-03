import personajes.*
import ciudad.*

object voley{
	
	method  energiaQueAporta(tiempo){ 
		return (-1)*2*tiempo
	}
}

object futbol{
	var property unidades = 10
	
	method energiaQueAporta(tiempo) = (-1) * unidades

}

object aerobic{

	method energiaQueAporta() = ciudad.temperatura() /2 

}

object basquet{
	method energiaQueAporta(minutos){
		return (if(minutos < 30)2 else 3) * minutos
	}
}


