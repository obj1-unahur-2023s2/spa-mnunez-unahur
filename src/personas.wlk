object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasajes() { gradoDeConcentracion += 3 }

	method discute() { gradoDeConcentracion = 0.max(gradoDeConcentracion - 1) }
	
	method tomarBanioVapor() { }
	

}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	
	method tieneSed() = tieneSed
	
	method peso() = peso
	
	method recibirMasajes() { esFeliz = true }

	method perderPeso(pesoPerdido) {
		peso = 0.max(peso - pesoPerdido)
	}
	
	method tomarBanioVapor() {
		self.perderPeso(500)
		tieneSed = true
	}
	
	method tomarAgua() { tieneSed = false }
	
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	
	method correr() { self.perderPeso(300) }
	
	method verNoticias() { esFeliz = false }
	
	method estaPerfecto() = esFeliz && !tieneSed && peso.between(50000, 70000)
	
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticias()
	}	
}

object ramiro {
	var nivelContractura = 0
	var tienePielGrasosa = false
	
	method recibirMasajes() { nivelContractura = 0.max(nivelContractura - 2) }
	
	method tomarBanioVapor() { tienePielGrasosa = false	}
	
	method comerBigMac() { tienePielGrasosa = true	}
	
	method bajarAFosa() {
		tienePielGrasosa = true
		nivelContractura ++
	}

	method jugarAlPaddle() {
		nivelContractura += 3
	}
	
	method diaDeTrabajo() {
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()		
	}
	
}



