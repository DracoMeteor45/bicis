import accesorios.*

class Bici{
	var property rodado = 0
	var property marca = 0
	var accesorios = []
	
    method accesorios(){return accesorios}
    
    method addAccesorios(lista){
        accesorios.addAll(lista)
    }

	method altura(){
		return rodado * 2.5 + 15
	}
	
	method carga(){}
	
	method peso(){}
	
	method tieneLuz(){}
}