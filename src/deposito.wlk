import bicis.*
import accesorios.*

class Deposito{
	var bicis = []
	
	method bicisRapidas(){
		return bicis.filter({
			b => b.velocidad > 25
		})
	}

	
	
}