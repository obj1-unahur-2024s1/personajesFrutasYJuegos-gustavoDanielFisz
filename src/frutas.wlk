import colores.*

object manzana{
	var color = verde
	
	method color(unColor) {color = unColor}
	method color() = color  
	method madurar(){
		color = rojo 
	}
	
	method energiaQueAporta(){  
		return color.unidades()
	}
	
	method oxidar(){
		color = amarillo
	}
}

object mandarina{
	var gramos = 60
	
	method color() = naranja
	method gramos() = gramos
	method energiaQueAporta(){
		return (gramos*2) / 10
	}
	
	method madurar(){
		gramos = gramos*0.9	
	}
}

object banana {
	
	method color() = amarillo
	method energiaQueAporta(){
		return self.color().unidades()
	}	
	method madurar(){}
	
}

object agua {
	method energiaQueAporta()= 0
	method madurar(){}
}


