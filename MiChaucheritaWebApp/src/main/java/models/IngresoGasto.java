package models;

import Exceptions.MovimientoException;

public class IngresoGasto extends Cuenta{

	private static final long serialVersionUID = 1L;

	public IngresoGasto(int idCuenta, String nombre) {
		super(idCuenta, nombre, 0);
	}

	@Override
	public void depositar(double valor) {
		this.setMonto(this.getMonto() + valor);
		
	}

	@Override
	public void retirar(double valor) throws MovimientoException {
		if(this.getMonto() < valor) {
			throw new MovimientoException("No se puede retirar dinero (Saldo Insuficiente)");
		}
		this.setMonto(this.getMonto() - valor);
	}
}

