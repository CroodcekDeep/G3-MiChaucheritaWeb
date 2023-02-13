package models;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class Cuenta implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int idCuenta;
	private String nombre;
	private double monto;
	private String tipo;
	
	private List<Movimiento> movimientos = null;
	
	public Cuenta(int idCuenta, String nombre, double monto) {
		super();
		this.idCuenta = idCuenta;
		this.nombre = nombre;
		this.monto = monto;
	}

	public Cuenta() {
		
	}
	
	public int getIdCuenta() {
		return idCuenta;
	}
	public void setIdCuenta(int idCuenta) {
		this.idCuenta = idCuenta;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getMonto() {
		return monto;
	}
	public void setMonto(double monto) {
		this.monto = monto;
	}
	public void actualizarCuenta(String nombre) {
		this.nombre = nombre;
	}
	public String getTipo() {
		tipo = this.getClass().getName();
		return tipo.substring(tipo.lastIndexOf('.') + 1);
	}
	public List<Movimiento> getMovimientos() {
		if(movimientos == null) {
			
			Cuenta cuentaOrigen = new Ingreso(1,"Nomina", 200.0);
			Cuenta cuentaDestino = new IngresoGasto(2,"Banco");
			
			movimientos = new ArrayList<Movimiento>();
			
			movimientos.add(new Movimiento(1,cuentaOrigen,cuentaDestino,"Pago de Sueldo",800,LocalDate.of(2022,11,30)));
			movimientos.add(new Movimiento(2,cuentaOrigen,cuentaDestino,"Pago de Sueldo",800,LocalDate.of(2022,12,31)));
			movimientos.add(new Movimiento(3,cuentaOrigen,cuentaDestino,"Pago de Sueldo",800,LocalDate.now()));
		}
		
		return movimientos;
	}
	
	
	public List<Movimiento> getMovimientosByIdCuenta(int idCuenta) {;
		
		Iterator<Cuenta> cuentas = Persona.getCuentas().iterator();
		
		while(cuentas.hasNext()) {
			Cuenta cuentaHallada = cuentas.next();
			if(cuentaHallada.getIdCuenta()==idCuenta) {
				return cuentaHallada.getMovimientos();
			}
		}
		return null;
	}
	
	public Movimiento getMovimientoById(int idMovimiento) {
		Movimiento m = null;
		
		List<Movimiento> listMovimientos = this.getMovimientos();
		for(Movimiento movimiento: listMovimientos) {
			if(movimiento.getIdMovimiento()==idMovimiento) {
				m=movimiento;
				break;
			}
		}
		return m;
	}

	@Override
	public String toString() {
		return nombre;
	}
	
}