import juegos.*
import frutas.*
import colores.*
import despensa.*
import ciudad.*
import objetos.*


object martin {
	var energia = 100
	var tieneHambre = false
	var cantActividad = 0
    const miDespensa= despensa
	  
	method esFeliz(){
	 	return ( energia > 80 || cantActividad > 1) && !tieneHambre 	
	 }
	 method ejercitar(deporte,tiempo){	
		
		energia = 0.max(energia - deporte.energiaQueAporta(tiempo))
		cantActividad += 1
		tieneHambre=true
	}
	
	method dormir(){
		energia *= 1.5
		cantActividad = 0
		miDespensa.madurarAlimentoAlmacenado()
	}
	
	method comprar(fruta){
		miDespensa.alimentoAlmacenado(fruta)
	}
	
	method comer(){
		    const alimento = miDespensa.alimentoAlmacenado()
			energia += alimento.energiaQueAporta()
			miDespensa.quitarAlimento()
			tieneHambre= false
	}	 
}


object maria {
	const miAmuleto= amuleto
	var endorfina= 100 
	
	method ejercitar(deporte,tiempo){	
		endorfina = 0.max(endorfina + deporte.energiaQueAporta(tiempo).abs() )
	}
	
	method endorfina() = endorfina
	method energia() {
		return endorfina * 2 + miAmuleto.energia()
	}
	method esFeliz() = endorfina > miAmuleto.energia()
}


object pepe {
	
	method energia() = 77
	method esFeliz() = true 	
	method ejercitar(deporte,tiempo){}
}


object gustavo{
	var energia = 200
	var tieneHambre = true
	var esFeliz = true
	var amigo = martin
	
	method energia() = 0.max(energia)
	method esFeliz() = esFeliz

	
	method comer(){
		const alimento = amigo.despensa().alimentoAlmacenado()
		esFeliz = !alimento.equals(agua)
		energia += alimento.energiaQueAporta()
		amigo.despensa().quitarAlimento()
		tieneHambre = alimento.energiaQueAporta() > 0
	}
			
	method ejercitar(deporte,tiempo){	
		
		energia -= 0.max(deporte.energiaQueConsume(tiempo))
		energia += deporte.energiaQueAporta()

	}
}

