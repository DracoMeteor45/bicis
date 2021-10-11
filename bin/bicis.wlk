import accesorios.*

class Bici{
	var property rodado = 0
	var property largo = 0
	var property marca = ""
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
		return accesorios.sum({cosa => cosa.carga()})
	}
	
	method peso(){
		return (rodado / 2) + accesorios.sum({cosa => cosa.peso()})
	}
	
	method tieneLuz(){
		return accesorios.any({cosa => cosa.esLuminoso()})
	}
	
	method cantAccesoriosLivianos(){
		return accesorios.count({cosa => cosa.peso() < 1})
	}
	
}
