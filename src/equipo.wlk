import personajes.*

object equipo {
	var jugadorIzquierdo 
	var jugadorDerecho
	var tecnico
	
	method jugadorIzquierdo() = jugadorIzquierdo 
	method jugadorDerecho() = jugadorDerecho 
	method asignarJugadores(jugador1, jugador2){
		if(jugador1 == jugador2 || jugador1 == tecnico || jugador2 == tecnico ){
			self.error("El jugador ya está en otra posición")
	    }    
	    jugadorIzquierdo = jugador1
	    jugadorDerecho	= jugador2
	}
	
	method intercambiarJugadores(){
		self.asignarJugadores(jugadorDerecho, jugadorIzquierdo )
	}
	
	method incorporarTecnico(nuevoCandidato) {
		if (nuevoCandidato == jugadorDerecho or nuevoCandidato == jugadorIzquierdo) {
			self.error("El nuevo candidato ya se encuentra en una posición")
		}
		if(tecnico== null || nuevoCandidato.energia() > tecnico.energia()) {
			tecnico= nuevoCandidato
		}
	}
	
	method tecnico() = tecnico
	method tecnico(unTecnico){
		if (unTecnico == jugadorDerecho or unTecnico == jugadorIzquierdo) {
			self.error("El tecnico ya se encuentra en una posición")
		}
		tecnico= unTecnico
	}
	
	method promedioDeEnergia()= (jugadorIzquierdo.energia() + jugadorDerecho.energia() + tecnico.energia()) / 3
 	
 	method estanFelices() = (jugadorIzquierdo.esFeliz() && jugadorDerecho.esFeliz() && tecnico.esFeliz())
}
