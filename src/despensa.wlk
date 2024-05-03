import frutas.*

object despensa {
	var alimentoAlmacenado= agua
	
	method alimentoAlmacenado() = alimentoAlmacenado
	method alimentoAlmacenado(unAlimento) {alimentoAlmacenado = unAlimento }
	method quitarAlimento(){
		alimentoAlmacenado = agua
	}
	method madurarAlimentoAlmacenado(){
		alimentoAlmacenado.madurar()
	}
}
