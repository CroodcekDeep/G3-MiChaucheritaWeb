package models;

public class IngresoGasto extends Cuenta{

	private static final long serialVersionUID = 1L;

	public IngresoGasto(int idCuenta, String nombre) {
		super(idCuenta, nombre, 0);
	}
}
