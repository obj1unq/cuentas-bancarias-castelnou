
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) {
		saldo = saldo + monto*self.embargo()
	} 

	method extraer(monto) {
		saldo = saldo - monto - self.gastoAdm()
	}
	
	method embargo() = 0.8;
	
	method gastoAdm() = 5;
	 
}
