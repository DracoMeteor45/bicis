import bicis.*
import accesorios.*

class Deposito{
	const bicis = []
	
	method depositarBici(bicicleta){
		bicis.add(bicicleta)
	}

	method bicisRapidas(){
		return bicis.filter({
			b => b.velocidad() > 25
		})
	}

	method bicisMarcas(){
		const marcas = []
		bicis.forEach({
			bici => if(not(marcas.contains(bici.marca()))){
				marcas.add(bici.marca())
			}
		})
		return marcas
	}

	method esNocturno(){
		return bicis.all({
			bici => bici.tieneLuz()
		})
	}

	method puedeLlevarCarga(kg){
		return bicis.any({
			bici => bici.carga() > kg
		})
	}
	
	//punto 3

	method marcaBiciMasRapida(){
		return bicis.max({cosa => cosa.velocidad()}).marca()
	}
	
	method bicisLargas(){
		return bicis.filter({cosa => cosa.largo() > 170})
	}
	

	// punto 4
	method sonCompanieras(bici){ 
	return bicis.filter(( {cosa => (cosa.marca() == bici.marca()) and (cosa.largo() - bici.largo()).abs() < 10 and (bici != cosa) }))
	}
}