package models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import java.util.Iterator;

public class Persona implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int idPersona;
	private String nombre;
	private String correo;
	private String usuario;
	private String password;
	
	private static List<Cuenta> cuentas = null;
	
	

	public Persona(int idPersona, String nombre, String correo, String usuario, String password) {
		super();
		this.idPersona = idPersona;
		this.nombre = nombre;
		this.correo = correo;
		this.usuario = usuario;
		this.password = password;
		//this.cuentas = new ArrayList<Cuenta>();
	}
	
	public Persona() {
		
	}
	
	public int getIdPersona() {
		return idPersona;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public static List<Cuenta> getCuentas() {
		if(cuentas == null) {
			cuentas = new ArrayList<Cuenta>();
			cuentas.add(new Ingreso(1,"Nomina", 200.0));
			cuentas.add(new IngresoGasto(2,"Banco"));
			cuentas.add(new Gasto(3,"Universidad"));
		}
		
		return cuentas;
	}
	public void crearCuenta(Cuenta c) {
		int max = 0;
		for(Cuenta cuenta: cuentas) {
			if(max < cuenta.getIdCuenta()) {
				max = cuenta.getIdCuenta();
			}
		}
		c.setIdCuenta(max+1);
		cuentas.add(c);
	}
	
	public Cuenta getCuentaById(int idCuenta) {
		Cuenta c = null;
		
		List<Cuenta> listCuentas = this.getCuentas();
		for(Cuenta cuenta: listCuentas) {
			if(cuenta.getIdCuenta()==idCuenta) {
				c=cuenta;
				break;
			}
		}
		return c;
	}
	
	public static Cuenta getCuentaByName(String nombreCuenta) {
		
		Iterator<Cuenta> cuentas = Persona.getCuentas().iterator();
		nombreCuenta = nombreCuenta.trim();
		
		while(cuentas.hasNext()) {
			Cuenta cuentaHallada = cuentas.next();
			if(cuentaHallada.getNombre().equals(nombreCuenta)) {
				return cuentaHallada;
			}
		}
		return null;

	}

	public void setCuentas(List<Cuenta> cuentas) {
		this.cuentas = cuentas;
	}
	public void eliminarCuenta(int id) {
		Iterator<Cuenta> iterator = cuentas.iterator();
		while(iterator.hasNext()) {
			Cuenta c = iterator.next();
			if(c.getIdCuenta() == id) {
				iterator.remove();
				break;
			}
		}
		
	}
	
}
