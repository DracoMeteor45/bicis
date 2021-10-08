import accesorios.*

class Bici{
	var property rodado = 0
	var property largo = 0
	var property marca = 0
	const accesorios = []
	
    method accesorios(){return accesorios}
    method rodado(){return rodado}
    method marca(){return marca}
    method largo(){return largo}

    method addAccesorios(lista){
        accesorios.addAll(lista)
    }

	method altura(){
		return rodado * 2.5 + 15
	}
	
	method velocidad(){
		var velocidad
		if(self.largo() > 120){ velocidad = rodado + 6}
		else{velocidad = rodado + 2}
		return velocidad
	}
	
	method carga(){
		return accesorios.sum({cosa => cosa.peso()})
	}
	
	method peso(){
		return (rodado / 2) + self.carga()
	}
	
	method tieneLuz(){
		return accesorios.any({cosa => cosa.esLuminoso()})
	}
}