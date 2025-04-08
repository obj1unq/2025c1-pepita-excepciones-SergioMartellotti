////////         Aves


object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method energia() {
		return energia
	}
	
	method energiaParaVolarA_(distancia)	{
		return 10 + distancia
	}

	method puedeVolarHasta_(distancia){
		return energia >= self.energiaParaVolarA_(distancia)
	}

	method validarVolar(distancia){
		if (not self.puedeVolarHasta_(distancia)){
			self.error("No puedo volar hasta ahí por falta de energía.")
		}
	}

	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - self.energiaParaVolarA_(distancia)
	}
}

object pepon {
	var energia = 30
	var ultimaComida = manzana
	
	method energia() {
		return energia
	}
		
	method validarComida(comida){
		if(comida == ultimaComida){
			self.error("Ya comí esto!")
		}
	}

	method comer(comida) {
		self.validarComida(comida)
		ultimaComida = comida
		energia = energia + comida.energiaQueAporta() / 2
	}
		

	method energiaParaVolarA_(distancia)	{
		return 20 + 2*distancia
	}

	method puedeVolarHasta_(distancia){
		return energia >= self.energiaParaVolarA_(distancia)
	}

	method validarVolar(distancia){
		if (not self.puedeVolarHasta_(distancia)){
			self.error("No puedo volar hasta ahí por falta de energía.")
		}
	}

	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - self.energiaParaVolarA_(distancia)
	}
	
}

///////// 		Roque
object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}

	method cenas(){
		return cenas
	}
}

object milena {

	// Se supone que milena tiene a pepita y pepon
  
	method validarQuePuedenVolar(distancia){
		if 	(! (pepita.puedeVolarHasta_(distancia) and pepon.puedeVolarHasta_(distancia))){
			self.error("Hay aves que no pueden volar tanto.")
		}
	}

	method movilizar(distancia){
		self.validarQuePuedenVolar(distancia)
		pepita.volar(distancia)
		pepon.volar(distancia)
	}
}



// Prueba usando listas
object milenaEstrD {
	var aves = []

	method adoptarAve(ave) {
		aves.add(ave)		// podría validar que no esté en la lista
	}
	
	method soltarAve(ave){
		aves.remove(ave)	// no rompe si no está
	}

	method alimentar(alimento) {
		aves.forEach{ave => ave.comer(alimento)}
	}

// Falta resolver la validación 

//	method validarQuePuedenVolar(distancia){
//		if (aves.forEach{ave => ave.puedeVolarHasta_(distancia)}){
//			self.error("Hay aves que no pueden volar tanto.")
//		}
//	}

	method movilizar(distancia){
//		self.validarQuePuedenVolar(distancia)
	}
}


/////// 		Alimentos


object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}