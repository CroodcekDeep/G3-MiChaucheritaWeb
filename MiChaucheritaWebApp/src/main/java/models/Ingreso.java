package models;

public class Ingreso extends Cuenta{

	private static final long serialVersionUID = 1L;

	public Ingreso(int idCuenta, String nombre, double monto) {
		super(idCuenta, nombre, monto);
	}
}
