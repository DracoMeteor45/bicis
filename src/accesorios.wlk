class Farolito {
	const peso = 0.5
	const carga = 0
	const esLuminoso = true
	
	method peso(){return peso}
	method carga(){return carga}
	method esLuminoso(){return esLuminoso}
}


class Canasto{
	var property volumen = 0
	var carga = 0
	var peso = 0
	const esLuminoso = false
	
	method peso(){ peso = volumen / 10 return peso}
	method carga(){carga = volumen * 2 return carga}
	method esLuminoso(){return esLuminoso}
}


class MorralDeBici{
	var property largo = 0
	var property tieneOjo = false
	const peso = 1.2
	var carga = 0
	var esLuminoso = false
	
	method peso(){return peso}
	method carga(){carga = largo / 3 return carga}
	method esLuminoso(){
		if(tieneOjo){
			esLuminoso = true
		}
		else{ esLuminoso = false}
		return esLuminoso
	}
}