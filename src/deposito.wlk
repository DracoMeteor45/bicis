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

	
	
}