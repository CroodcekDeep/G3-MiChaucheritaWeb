package models;

import Exceptions.MovimientoException;

public class Ingreso extends Cuenta{

	private static final long serialVersionUID = 1L;

	public Ingreso(int idCuenta, String nombre, double monto) {
		super(idCuenta, nombre, monto);
	}

	@Override
	public void depositar(double valor) throws MovimientoException{
		throw new MovimientoException("No se puede depositar Dinero en una Cuenta Ingreso");
		
		
	}

	@Override
	public void retirar(double valor) throws MovimientoException {
		if(this.getMonto() < valor) {
			throw new MovimientoException("No se puede retirar dinero (Saldo Insuficiente)");
		}
		this.setMonto(this.getMonto() - valor);
	}
}
