class Farolito {
	const peso = 0.5
	const carga = 0
	const esLuminoso = true
	
	method peso(){return peso}
	method carga(){return carga}
	method esLuminoso(){return esLuminoso}
}


class Canasto{
	var property volumen
	const peso = volumen / 10
	const carga = volumen * 2
	const esLuminoso = false
	
	method peso(){return peso}
	method carga(){return carga}
	method esLuminoso(){return esLuminoso}
}


class MorralDeBici{
	var property largo = 0
	var property tieneOjo = false
	const peso = 1.2
	const carga = largo / 3
	var esLuminoso = false
	
	method peso(){return peso}
	method carga(){return carga}
	method esLuminoso(){
		if(tieneOjo){
			esLuminoso = true
		}
		else{ esLuminoso = false}
		return esLuminoso
	}
}