package models;

import Exceptions.MovimientoException;

public class Gasto extends Cuenta{

	private static final long serialVersionUID = 1L;

	public Gasto(int idCuenta, String nombre) {
		super(idCuenta, nombre, 0);
	}

	@Override
	public void depositar(double valor) {
		this.setMonto(this.getMonto() + valor);
		
	}

	@Override
	public void retirar(double valor) throws MovimientoException {
		throw new MovimientoException("No se puede retirar Dinero de una Cuenta Gasto");
	}
	
	
	
}
