package models;

public class Gasto extends Cuenta{

	private static final long serialVersionUID = 1L;

	public Gasto(int idCuenta, String nombre) {
		super(idCuenta, nombre, 0);
	}
}
